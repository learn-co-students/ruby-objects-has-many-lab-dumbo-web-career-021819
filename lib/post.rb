class Post
  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @author = nil
    @@all << self
  end

  def title
    @title
  end

  def self.all
    @@all
  end

  def author_name
    if self.author
      self.author.name
    else
      return nil
    end
  end
end
