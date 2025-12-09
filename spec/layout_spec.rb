

describe 'Agentic AI Page Layout' do
  let(:page_path) { File.join(Dir.pwd, '_site', 'agentic-ai', 'index.html') }
  let(:page_content) { File.read(page_path) }

  it 'exists' do
    expect(File.exist?(page_path)).to be true
  end

  it 'contains the full-width hero overlay CSS fix' do
    # Check for the critical CSS property that forces full width
    expect(page_content).to include('.page__hero--overlay')
    expect(page_content).to include('margin-left: -50vw')
    expect(page_content).to include('width: 100vw')
  end
end
