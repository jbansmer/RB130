require 'pry'

class TextAnalyzer
  def process
    file = File.open('sample_text.txt')
    yield(file.read)
    file.close
  end
end

analyzer = TextAnalyzer.new
# paragraphs
analyzer.process { |file| puts "#{file.split("\n\n").length} paragraphs"}
# lines
analyzer.process { |file| puts "#{file.split("\n").length} lines"}
# words
analyzer.process {|file| puts "#{file.split(' ').length} words"}

# 3 paragraphs
# 15 lines
# 126 words