class String
  def to_permalink
    self.downcase.gsub( /&/, 'and' ).gsub( /\s/, '-' )
  end
end

module Jekyll

  module ImageSourceFilter
    def filename( input )
      input.gsub(/(.*\/)|(\..*)/, '')
    end
  end


  module TagFilter
    require 'digest'

    def tag_url( input )
      "/tag/#{ input.to_permalink }"
    end

    # Returns the same 'color' given the same input string
    def tag_color_name( _input )
      colors = [
        "primary",
        "success",
        "info",
        "warning",
        "danger",
      ]
      hash        = Digest::MD5.hexdigest _input
      color_index = hash.to_i(16) % colors.count
      colors[ color_index ]
    end
  end

end

Liquid::Template.register_filter(Jekyll::ImageSourceFilter)
Liquid::Template.register_filter(Jekyll::TagFilter)

