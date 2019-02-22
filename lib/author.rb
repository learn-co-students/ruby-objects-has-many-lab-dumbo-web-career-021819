class Author
@@count = 0
attr_accessor :name, :posts, :author, :count

	def initialize(name)
		@name = name
		@posts = []
        
	end

def add_post(post)
	post.author = self
	posts << post
	@@count += 1
end

def add_post_by_title(book_title)
	add_post(Post.new(book_title))
end
def self.post_count
	@@count
end

end