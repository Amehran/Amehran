

describe 'Social Button Design Compliance (Inline Styles)' do
  let(:footer_content) { File.read('_includes/footer.html') }

  context 'Visual Design (Inline Styles)' do
    it 'applies the classic LinkedIn Blue (#0077b5) via inline style' do
      expect(footer_content).to include('background-color: #0077b5')
    end

    it 'applies Pure Black (#000000) for Medium via inline style' do
      expect(footer_content).to include('background-color: #000000')
    end

    it 'enforces white text with !important to prevent grey font' do
      # We look for the pattern in the style attribute
      expect(footer_content).to include('color: #ffffff !important')
    end

    it 'enforces rectangular shape (4px radius) via inline style' do
      expect(footer_content).to include('border-radius: 4px')
    end

    it 'styles the Medium icon for white box effect' do
       expect(footer_content).to include('background-color: #ffffff; color: #000000')
    end
  end
end
