module ApplicationHelper
  def gravatar_for(user, options = { size: 80})
    gravator_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravator_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: "img-circle")   
  end
end
