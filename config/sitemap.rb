SitemapGenerator::Sitemap.default_host = "https://bikezsale.us"

SitemapGenerator::Sitemap.create do
  # Add static pages
  add '/', changefreq: 'daily', priority: 1.0
  add '/about', changefreq: 'monthly', priority: 0.5
  add '/contact', changefreq: 'monthly', priority: 0.5

  # Add dynamic category pages
  categories = ['atvs-quad', 'cruisers', 'dirt-bikes', 'electric', 'utvs', 'scooters']
  categories.each do |category|
    add "/categories/#{category}", changefreq: 'weekly', priority: 0.8
  end

  # Add individual bike pages
  Bike.find_each do |bike|
    add bike_path(bike), lastmod: bike.updated_at, changefreq: 'daily', priority: 0.9
  end

  # Add articles
  Article.find_each do |article|
    add articles_index_path(article), lastmod: article.updated_at, changefreq: 'monthly', priority: 0.7
  end
end
