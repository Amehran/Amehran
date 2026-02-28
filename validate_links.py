import os
import re

def get_permalinks(root_dir):
    permalinks = {}
    for dirpath, dirnames, filenames in os.walk(root_dir):
        for filename in filenames:
            if filename.endswith(".md") or filename.endswith(".html"):
                path = os.path.join(dirpath, filename)
                try:
                    with open(path, 'r', encoding='utf-8') as f:
                        content = f.read()
                        match = re.search(r'permalink:\s*(.+)', content)
                        if match:
                            p = match.group(1).strip()
                            permalinks[p] = path
                            if p.endswith('/'):
                                permalinks[p[:-1]] = path
                except:
                    pass
    return permalinks

def check_structure(root_dir):
    permalinks = get_permalinks(root_dir)
    print("Found permalinks:", list(permalinks.keys()))
    
    broken_links = []
    
    for dirpath, dirnames, filenames in os.walk(root_dir):
        if "_site" in dirpath or ".git" in dirpath:
            continue
            
        for filename in filenames:
            if filename.endswith(".md") or filename.endswith(".html"):
                filepath = os.path.join(dirpath, filename)
                with open(filepath, 'r', encoding='utf-8') as f:
                    content = f.read()
                    
                # Find markdown links
                md_links = re.findall(r'\]\(([^)]+)\)', content)
                # Find html hrefs
                html_links = re.findall(r'href=["\']([^"\']+)["\']', content)
                
                all_links = md_links + html_links
                
                for link in all_links:
                    original_link = link
                    link = link.strip()
                    
                    if link.startswith("http") or link.startswith("mailto:") or link.startswith("#"):
                        continue
                        
                    if "{{" in link or "}}" in link: # liquid tags
                        continue

                    # Strip anchor
                    if "#" in link:
                        link = link.split("#")[0]
                        
                    if not link:
                        continue
                        
                    # Check if it's an asset
                    if link.startswith("/assets/"):
                        if not os.path.isfile(os.path.join(root_dir, link[1:])):
                             broken_links.append(f"{filepath} -> {original_link}")
                        continue
                        
                    # Check if it's a permalink
                    if link in permalinks:
                        continue
                        
                    # Check if it's a root relative path that resolves to a file
                    # e.g. /robots.txt
                    if link.startswith("/"):
                        local_path = os.path.join(root_dir, link[1:])
                        if os.path.isfile(local_path):
                            continue
                            
                    broken_links.append(f"{filepath} -> {original_link}")

    return broken_links

broken = check_structure("/Users/arminmehran/dev/Amehran")
print("\nBROKEN LINKS FOUND:")
for b in broken:
    print(b)
