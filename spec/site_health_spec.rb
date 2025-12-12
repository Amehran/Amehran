
describe 'Site Health & Content Structure' do
  let(:site_dir) { '_site' }

  describe 'Homepage' do
    let(:index_path) { File.join(site_dir, 'index.html') }
    let(:index_content) { File.read(index_path) }

    it 'exists' do
      expect(File.exist?(index_path)).to be true
    end

    it 'has the proper layout class for scoped CSS (Blue Titles)' do
      # Critical for the "Blue Titles on Homepage Only" feature
      # We check that the body tag contains the class "homepage"
      expect(index_content).to match(/<body\s+class="[^"]*homepage[^"]*"/)
    end
  end

  describe 'Hobbies Page' do
    let(:page_path) { File.join(site_dir, 'hobbies', 'index.html') }
    let(:page_content) { File.read(page_path) }

    it 'exists' do
      expect(File.exist?(page_path)).to be true
    end

    it 'contains the correct intro text' do
      # Verify the content reversion (checking for key unique phrase)
      expect(page_content).to include("When I’m not designing agentic systems")
      expect(page_content).to include("structuring code and structuring matter")
    end
  end

  describe 'Woodworking Page' do
    let(:page_path) { File.join(site_dir, 'woodworking', 'index.html') }
    let(:page_content) { File.read(page_path) }

    it 'exists' do
      expect(File.exist?(page_path)).to be true
    end

    it 'renders the carousel structure' do
      # Verify carousel include is working
      expect(page_content).to include('id="projectCarousel"')
      expect(page_content).to include('class="carousel-track"')
    end

    it 'does NOT have the removed navigation buttons' do
      # Verify clean up of arrows
      expect(page_content).not_to include('onclick="scrollCarousel(-1)"')
      expect(page_content).not_to include('onclick="scrollCarousel(1)"')
    end

    it 'contains the updated project titles' do
      expect(page_content).to include('Jewelry Box')
      expect(page_content).to include('The Flower')
    end
  end

  describe 'Navigation' do
    let(:index_path) { File.join(site_dir, 'index.html') }
    let(:index_content) { File.read(index_path) }

    it 'includes the Hobbies link' do
      expect(index_content).to include('/hobbies/')
    end
  end

  describe 'Mobile AI Page' do
    let(:page_path) { File.join(site_dir, 'mobile-ai', 'index.html') }
    let(:page_content) { File.read(page_path) }

    it 'exists' do
      expect(File.exist?(page_path)).to be true
    end

    it 'includes cross-reference to Android SDKs page' do
      expect(page_content).to include('/android-sdks/')
      expect(page_content).to include('BarcodeScannerSDK')
      expect(page_content).to include('90%+ test coverage')
    end
  end
end
