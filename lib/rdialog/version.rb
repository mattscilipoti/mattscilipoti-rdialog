module Rdialog #:nodoc:
  def self.version
    version_file = File.expand_path("../../VERSION", File.dirname(__FILE__))
    File.open( version_file, "r") do |version_file|
      version_file.read.strip
    end
  end

  VERSION = Rdialog.version
end
