require 'link'

describe Link do

	let(:link) do
		Link.new('Superpage', 'good', 'http://hello.com')
	end

	it 'has a title' do
		expect(link.title).to eq 'Superpage'
	end

	it 'has a description' do
		expect(link.description).to eq 'good'
	end

	it 'has a uri' do
		expect(link.uri).to eq 'http://hello.com'
	end

end