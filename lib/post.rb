class Post
    @@all = []
  attr_accessor :author, :message, :title
  def initialize(message)
    @message = message
    @author = nil
    @title = message
    @@all << self
  end
  def author=(author)
    @author = author
  end
  def self.all
    @@all
  end
  def author_name
    self.author ? self.author.name : self.author
  end
end
