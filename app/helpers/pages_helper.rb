module PagesHelper
  def extlink(link)
    unless link.include?("https://")
      link.insert(0, "https://")
    end
  end
end
