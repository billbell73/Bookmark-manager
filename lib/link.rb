class Link
	attr_reader :title, :description, :uri
	def initialize title, description, uri
		@title = title
		@description = description
		@uri = uri
	end
end