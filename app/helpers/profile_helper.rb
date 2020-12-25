module ProfileHelper
  def cover_image_url account     
    account.cover_image.attached? ? url_for(account.cover_image) : 'placeholder.png'   
  end
end