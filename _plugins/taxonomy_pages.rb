# frozen_string_literal: true

module Jekyll
  class TaxonomyPages < Generator
    safe true

    def generate(site)
      site.tags.each do |tag, posts|
        site.pages << TaxonomyPage.new(
          site,
          site.source,
          File.join('tags', tag.downcase.gsub(' ', '-')),
          'tag.html',
          tag,
          posts
        )
      end

      site.categories.each do |category, posts|
        site.pages << TaxonomyPage.new(
          site,
          site.source,
          File.join('categories', category.downcase.gsub(' ', '-')),
          'category.html',
          category,
          posts
        )
      end
    end
  end

  class TaxonomyPage < Page
    def initialize(site, base, dir, layout, name, posts)
      @site = site
      @base = base
      @dir  = dir
      @name = 'index.html'

      process(@name)
      read_yaml(File.join(base, '_layouts'), layout)

      data['posts'] = posts
      data[layout.sub('.html', '')] = name
      data['title'] = name
    end
  end
end
