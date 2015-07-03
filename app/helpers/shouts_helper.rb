module ShoutsHelper

  # Return gravatar for the given user.
  def gravatar(user, options = { size: 48} )
    digest = Digest::MD5::hexdigest(user.email)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{digest}?s=#{size}"
    image_tag(gravatar_url, alt: user.username)
  end
end
