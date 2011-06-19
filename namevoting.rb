# Small programm to combine syllables, where some syllables
# are used only as suffix/prefix
# 1. Install ruby
# 3. Run: ruby namevoting.rb '[Pre "neo", Suf "master", Pre "turbo", Uni "leo", Suf "3000"]'
 
class NameVote
  def self.combine words
    ps = []
    ss = []
    words[1..-2].split(/,\s*/).each do |word| 
      wt = word.split()
      val = wt[1][1..-2]
      case wt[0]
      when "Pre"
        ps << val
      when "Suf"
        ss << val
      else
        ps << val
        ss << val
      end
    end
    ps.product(ss).reject{|x| x[0] == x[1]}.map{|x| x.reduce(:+) }
  end
end

puts (NameVote.combine ARGV[0]).inspect
