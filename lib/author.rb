class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post 
  end

  def add_post_by_title(post)
    post = Post.new(post)
    post.author = self
    @posts << post
  end

  def self.post_count
    Post.all.collect { |post| !post.author.nil? }.length
  end

end
