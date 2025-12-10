

describe 'Agentic AI Page Layout' do
  let(:page_path) { File.join(Dir.pwd, '_site', 'agentic-ai', 'index.html') }
  let(:page_content) { File.read(page_path) }

  it 'exists' do
    expect(File.exist?(page_path)).to be true
  end

  it 'contains the full-width hero overlay class' do
    # Verify the class exists, implying the external SCSS will handle the styling
    expect(page_content).to include('page__hero--overlay')
  end
end
