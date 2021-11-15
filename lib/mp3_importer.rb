require 'pry'

class MP3Importer

    attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
       @mp3_files = Dir.entries(@path)
       @mp3_files.delete_if{|tunes| tunes == "." || tunes == ".."}
    end

    def import
        files.each {|file| Song.new_by_filename(file)} # uses the array returned from the files method,
    end                                                # iterates through each filename and sends them to Song.new_by_filename
end