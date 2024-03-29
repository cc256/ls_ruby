class Book
  attr_reader :author, :title

  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{self.title}", by #{self.author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)      # => The author of "Snow Crash" is Neil Stephenson.
puts %(book = #{book}.)                                       # => book = "Snow Crash", by Neil Stephenson.