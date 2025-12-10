require 'yaml'

describe 'LinkedIn Badge Integration' do
  let(:footer_path) { '_includes/footer.html' }
  let(:head_path) { '_includes/head/custom.html' }
  let(:config_path) { '_config.yml' }



  it 'includes the custom LinkedIn button in the footer' do
    footer_content = File.read(footer_path)
    expect(footer_content).to include('Connect on LinkedIn')
    expect(footer_content).to include('href="https://www.linkedin.com/in/arminmehran"')
  end

  it 'includes the button to the specific Medium article' do
    footer_content = File.read(footer_path)
    expect(footer_content).to include('Read on Medium')
    expect(footer_content).to include('href="https://medium.com/@a.mehran/my-journey-from-silicon-constraints-to-intelligent-agents-3e2e3094ac88"')
  end

  it 'includes Google Scholar link in author sidebar' do
    config_content = YAML.load_file(config_path)
    scholar_link = config_content['author']['links'].find { |link| link['label'] == 'Google Scholar' }
    
    expect(scholar_link).not_to be_nil
    expect(scholar_link['url']).to eq('https://scholar.google.ca/citations?user=FhaZXmwAAAAJ&hl=en')
    expect(scholar_link['icon']).to eq('fas fa-graduation-cap')
  end
end
