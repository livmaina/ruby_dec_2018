require "stringer/version"

module Stringer
  def self.spacify *strings
    string =""
    strings.each do |s|
      string += s + " "
    end
    string.strip!
  end
  def self.minify string, num
    string.byteslice(0..num)
  end 
  def self.replacify string, find, replacement
    string.sub(find, replacement)
  end
  def self.tokenize string
    string.split
  end
  def self.removify original, string
    original.slice! " " + string
    original
  end
end
