class PDF
    def open
        puts "Opening the file."
    end
end

class Word
    def open
        raise "Error to open file."
    end
end

class FileOpener
    def open(file)
        if file == nil
            raise "Error to open file when it is null."
        end
        file.open
        true
    rescue Exception => e
        puts e.message + " - rescue section"
        false
    ensure
        puts "Running ensure block."
    end
end

opener = FileOpener.new()

puts "Open PDF."
pdf = PDF.new()
opener.open(pdf)

puts ""
puts "Open Word."
word = Word.new()
opener.open(word)

puts ""
puts "Open Null."
file = nil
opener.open(file)