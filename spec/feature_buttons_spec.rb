

describe 'Feature Row Buttons' do
  let(:feature_row_file) { File.read('_includes/feature_row.html') }
  let(:buttons_scss_file) { File.read('_sass/custom/_buttons.scss') }
  let(:variables_scss_file) { File.read('_sass/custom/_variables.scss') }

  it 'renders buttons in feature row with standard button classes' do
    expect(feature_row_file).to include('class="btn')
    # Use regex to handle potential newlines/spaces in the liquid tag
    expect(feature_row_file).to match(/\{\{\s*f.btn_label\s*\}\}/)
  end

  it 'wraps titles in anchor tags when URL is present' do
    expect(feature_row_file).to match(%r{<a href="\{\{ f\.url \| relative_url \}\}">\{\{ f\.title \}\}</a>})
  end

  it 'defines the primary button color as blue (accent color)' do
    # Verify variable definition
    expect(variables_scss_file).to match(/\$color-accent:\s*#3b82f6;/)
    
    # Verify .btn--primary uses the accent color
    expect(buttons_scss_file).to match(/\.btn--primary\s*\{[^}]*background:\s*\$color-accent/m)
  end

  it 'defines the base button class to default to blue' do
    # This was the specific fix for "grey background" issues
    expect(buttons_scss_file).to match(/\.btn\s*\{[^}]*background-color:\s*\$color-accent/m)
  end

  it 'does not contain hardcoded formatting that would override the blue' do
    # Ensure no accidentally remaining inline styles or overrides that force grey
    expect(feature_row_file).not_to include('style="background-color:')
  end
end
