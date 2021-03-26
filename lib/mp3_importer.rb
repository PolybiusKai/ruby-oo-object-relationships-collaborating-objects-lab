
class MP3Importer
    attr_reader :path

    def initialize(path)
        @path = path
    end

    def files
        file_path = Dir.glob("#{self.path}/*.mp3")
        @files = file_path.collect {|file| file = File.basename(file)}
    end
    
    def import
      self.files.each{ |filename| Song.new_by_filename(filename) }
    end
  end 