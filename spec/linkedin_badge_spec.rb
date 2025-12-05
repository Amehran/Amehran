require 'yaml'

describe 'LinkedIn Badge Integration' do
  let(:footer_path) { '_includes/footer.html' }
  let(:head_path) { '_includes/head/custom.html' }
  let(:config_path) { '_config.yml' }



  it 'includes the custom LinkedIn button in the footer' do
    footer_content = File.read(footer_path)
    expect(footer_content).to include('class="btn btn--linkedin"')
    expect(footer_content).to include('Connect on LinkedIn')
  end

  it 'has the correct LinkedIn URL in _config.yml' do
    config = YAML.load_file(config_path)
    linkedin_link = config['author']['links'].find { |l| l['label'] == 'LinkedIn' }
    expect(linkedin_link['url']).to eq('https://www.linkedin.com/in/arminmehran')
  end
end
