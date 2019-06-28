class File
  attr_accessor :name, :byte_content

  def initialize(name)
    @name = name
  end

  alias_method :read,  :byte_content
  alias_method :write, :byte_content=

  def copy(target_file_name)
    target_file = self.class.new(target_file_name)
    target_file.write(read)

    target_file
  end

  def to_s
    #"#{name}.#{FORMAT}"                        # bug.
    "#{name}.#{self.class::FORMAT}"             # https://stackoverflow.com/questions/3174563/how-to-use-an-overridden-constant-in-an-inheritanced-class     
                                                # https://engineering.thriveglobal.com/a-puzzle-about-ruby-constants-e958d15dbada
                                                
  end
end

class MarkdownFile < File                        
  FORMAT = :md
end

class VectorGraphicsFile < File
  FORMAT = :svg
end

class MP3File < File
  FORMAT = :mp3
end

# Test

blog_post = MarkdownFile.new('Adventures_in_OOP_Land')
blog_post.write('Content will be added soon!'.bytes)

copy_of_blog_post = blog_post.copy('Same_Adventures_in_OOP_Land')

puts copy_of_blog_post.is_a? MarkdownFile     # true
puts copy_of_blog_post.read == blog_post.read # true

puts blog_post
