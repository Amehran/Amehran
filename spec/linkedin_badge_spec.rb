require 'yaml'

describe 'LinkedIn Badge Integration' do
  let(:footer_path) { '_includes/footer.html' }
  let(:head_path) { '_includes/head/custom.html' }
  let(:config_path) { '_config.yml' }

  it 'includes the LinkedIn badge div in the footer' do
    footer_content = File.read(footer_path)
    expect(footer_content).to include('class="badge-base LI-profile-badge"')
    expect(footer_content).to include('data-vanity="arminmehran"')
  end

  it 'includes the LinkedIn profile script in the footer' do
    footer_content = File.read(footer_path)
    expect(footer_content).to include('src="https://platform.linkedin.com/badges/js/profile.js"')
  end

  it 'has the correct LinkedIn URL in _config.yml' do
    config = YAML.load_file(config_path)
    linkedin_link = config['author']['links'].find { |l| l['label'] == 'LinkedIn' }
    expect(linkedin_link['url']).to eq('https://www.linkedin.com/in/arminmehran')
  end
end
