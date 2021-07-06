
# class Author
  
#   attr_accessor :name
  
#   @@post_count = 0
  
  
#   def initialize (name)
#     @name = name
#   end
  
#   def posts
#     @song = []
#   end
  
#   def add_post(post)
#     self.post << post       #argument goes into self.post creating value to self.post
#     post.author = self      # saying post belongs to author?
#     @@post_count += 1
#   end
  
#   def add_post_by_title(title)
#     post = Post.new(title)
#     self.posts << post
#     post.author = self
#     @@post_count += 1
#   end
  
#   # def posts
#   #   @posts
#   # end
  
#   def self.post_count
#     @@post_count
#   end
# end

class Author

  attr_accessor :name, :posts

  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end