module Jekyll
  module CategoryLinksFilter
    def category_links(categories)
      return '' if categories.empty?
      output = []
      categories.each do |cat|
        output << cat
      end
      
      configs = @context.registers[:site].config
      seperator = configs['categories_seperator'] || ', '
      
      output.join(seperator)
    end
   end
 end
