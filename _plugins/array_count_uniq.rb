# use like {{ myarray | array_count_uniq }}
# where myarray is a liquid array 
# returns a hash of the unique values + counts
module Jekyll
  module AssetFilter
    def array_count_uniq(input)
      clean = input.compact.reject(&:empty?).collect(&:strip)
      clean.uniq.map { |x| [x, clean.count(x)] }.sort_by {|k, v| -v}.to_h
    end
  end
end
  
Liquid::Template.register_filter(Jekyll::AssetFilter)