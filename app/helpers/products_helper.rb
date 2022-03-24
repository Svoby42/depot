module ProductsHelper
  def gravatar(title)
    hash = Digest::MD5.hexdigest(title)
    "https://www.gravatar.com/avatar/#{hash}?d=wavatar"
  end
end
