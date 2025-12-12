
describe 'Android SDKs Page' do
  let(:site_dir) { '_site' }
  let(:page_path) { File.join(site_dir, 'android-sdks', 'index.html') }
  let(:page_content) { File.read(page_path) }

  describe 'Page Structure' do
    it 'exists and is accessible' do
      expect(File.exist?(page_path)).to be true
    end

    it 'has the correct title' do
      expect(page_content).to include('Android SDKs &amp; Libraries')
    end

    it 'includes the table of contents' do
      expect(page_content).to include('SDK Portfolio')
    end

    it 'has the banner overlay image' do
      expect(page_content).to include('portfolio_banner.png')
    end
  end

  describe 'Content Sections' do
    it 'includes SDK development philosophy section' do
      expect(page_content).to include('SDK Development Philosophy')
      expect(page_content).to include('Clean Architecture')
      expect(page_content).to include('Testing First')
      expect(page_content).to include('Developer Experience')
      expect(page_content).to include('Production Ready')
    end

    it 'includes BarcodeScannerSDK section' do
      expect(page_content).to include('BarcodeScannerSDK')
      expect(page_content).to include('production-ready Android SDK')
      expect(page_content).to include('Google ML Kit')
    end

    it 'highlights key features' do
      expect(page_content).to include('Real-time Camera Scanning')
      expect(page_content).to include('Multi-Format Support')
      expect(page_content).to include('90%+ test coverage')
      expect(page_content).to include('Thread-Safe')
    end

    it 'includes architecture highlights' do
      expect(page_content).to include('Architecture Highlights')
      expect(page_content).to include('Dependency Injection')
      expect(page_content).to include('SOLID Principles')
      expect(page_content).to include('Kotlin Coroutines')
    end

    it 'includes testing and quality section' do
      expect(page_content).to include('Testing &amp; Quality')
      expect(page_content).to include('24 Unit Tests')
      expect(page_content).to include('Automated CI/CD')
      expect(page_content).to include('Mock-Based Testing')
    end

    it 'includes technical stack details' do
      expect(page_content).to include('Technical Stack')
      expect(page_content).to include('Kotlin 2.0+')
      expect(page_content).to include('Jetpack Compose')
      expect(page_content).to include('Dagger Hilt')
    end
  end

  describe 'Links and CTAs' do
    it 'includes GitHub link to BarcodeScannerSDK' do
      expect(page_content).to include('https://github.com/Amehran/BarcodeScannerSDK')
      expect(page_content).to include('View on GitHub')
    end

    it 'has properly styled GitHub button' do
      expect(page_content).to include('btn--github')
    end
  end

  describe 'SEO and Metadata' do
    it 'includes key technical terms for SEO' do
      expect(page_content).to include('Clean Architecture')
      expect(page_content).to include('ML Kit')
      expect(page_content).to include('Android SDK')
      expect(page_content).to include('production-ready')
    end
  end
end
