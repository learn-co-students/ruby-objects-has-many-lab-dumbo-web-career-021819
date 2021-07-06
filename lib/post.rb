class Post 

	@@all = []

	attr_accessor :title, :author

	def initialize(title)
		@title = title 
		@@all << self
		# binding.pry

	end

	def self.all 
		@@all
	end

	def author_name
		if author == nil
			nil
		else
		self.author.name
	end

	end



	
end
