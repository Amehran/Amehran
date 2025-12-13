# 🚀 Deployment Guide

## Quick Deploy to GitHub Pages

### Step 1: Prepare for Production

Edit `_config.yml` and uncomment the remote theme settings:

```yaml
# Theme Settings
# theme: "minimal-mistakes-jekyll"  # Comment out for GitHub Pages
remote_theme: "mmistakes/minimal-mistakes@4.27.0"  # Uncomment for GitHub Pages
minimal_mistakes_skin: "default"
locale: "en-US"

# Plugins
plugins:
  - jekyll-include-cache
  - jekyll-remote-theme  # Uncomment for GitHub Pages
  - jekyll-sitemap
```

### Step 2: Commit Your Changes

```bash
# Add all changes
git add .

# Commit with a meaningful message
git commit -m "Simplified portfolio with CI/CD pipeline"

# Push to main branch
git push origin main
```

### Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **Settings** → **Pages**
3. Under **Source**, select **GitHub Actions**
4. The workflow will automatically deploy your site

### Step 4: Verify Deployment

1. Go to **Actions** tab in your repository
2. Watch the "Deploy Jekyll site to GitHub Pages" workflow
3. Once complete (green checkmark), your site is live!
4. Visit: `https://arminmehran.com`

---

## 🔄 Development Workflow

### Local Development
```bash
# Start local server
bundle exec jekyll serve --livereload

# View at http://localhost:4000
# Make changes and see them instantly
```

### Deploy to Production
```bash
# Commit your changes
git add .
git commit -m "Your commit message"

# Push to trigger CI/CD
git push origin main

# GitHub Actions automatically deploys
```

---

## 🛠️ Troubleshooting

### If GitHub Actions Fails

1. Check the Actions tab for error messages
2. Verify `_config.yml` has `remote_theme` uncommented
3. Ensure `jekyll-remote-theme` plugin is enabled
4. Check that all files are committed

### If Site Doesn't Update

1. Clear browser cache (Cmd+Shift+R on Mac)
2. Wait 2-3 minutes for GitHub Pages to update
3. Check Actions tab to ensure deployment succeeded

### If Local Server Won't Start

```bash
# Clean and rebuild
rm -rf .jekyll-cache _site
bundle install
bundle exec jekyll serve
```

---

## 📋 Pre-Deployment Checklist

- [ ] All pages load correctly on localhost
- [ ] Navigation works on all pages
- [ ] Images display properly
- [ ] Links are not broken
- [ ] Content is up to date
- [ ] `_config.yml` has remote_theme uncommented
- [ ] All changes are committed
- [ ] Ready to push to main branch

---

## 🎯 Post-Deployment

After successful deployment:

1. **Verify Live Site**: Visit https://arminmehran.com
2. **Test All Pages**: Click through all navigation links
3. **Check Mobile**: Test on mobile devices
4. **Monitor**: Watch GitHub Actions for future deployments
5. **Update**: Make changes locally, commit, and push to deploy

---

## 🔐 GitHub Pages Settings

Recommended settings in your repository:

- **Source**: GitHub Actions
- **Custom domain**: arminmehran.com (already configured)
- **Enforce HTTPS**: ✅ Enabled
- **Build and deployment**: GitHub Actions

---

## 📊 CI/CD Pipeline

Your workflow (`.github/workflows/jekyll.yml`) automatically:

1. **Triggers on**:
   - Push to `main` branch
   - Pull requests to `main`
   - Manual workflow dispatch

2. **Build Process**:
   - Checks out code
   - Sets up Ruby 3.1
   - Installs dependencies
   - Builds Jekyll site
   - Uploads artifact

3. **Deploy Process**:
   - Deploys to GitHub Pages
   - Updates live site
   - Provides deployment URL

---

## 🎉 You're Ready!

Your simplified portfolio is ready for production deployment with:
- ✅ Automated CI/CD pipeline
- ✅ Clean, maintainable codebase
- ✅ Professional workflow
- ✅ All content preserved

**Just push to main and let GitHub Actions handle the rest!** 🚀
