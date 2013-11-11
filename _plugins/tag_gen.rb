module Jekyll

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

  Liquid::Template.register_filter(Jekyll::TagFilter)


  class TagIndex < Page
    def initialize(site, base, dir, tag)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'

      self.process(@name)
      self.read_yaml(File.join(base, '_layouts'), 'tag_index.html')
      self.data['tag'] = tag
      self.data['title'] = "Posts Tagged &ldquo;"+tag+"&rdquo;"
    end
  end

  class TagGenerator < Generator
    safe true

    def generate(site)
      if site.layouts.key? 'tag_index'
        dir = 'tag'
        site.tags.keys.each do |tag|
          write_tag_index(site, File.join(dir, tag.to_permalink ), tag)
        end
      end
    end

    def write_tag_index(site, dir, tag)
      index = TagIndex.new(site, site.source, dir, tag)
      index.render(site.layouts, site.site_payload)
      index.write(site.dest)
      site.pages << index
    end
  end

end
