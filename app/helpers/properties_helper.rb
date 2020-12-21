module PropertiesHelper

  def property_thumbnail property
    img = property.photo.attached? ? property.photo.thumb : "placeholder.png"
    image_tag img, class: "property-thumb"
  end

  def property_photo_url property     
    img = property.photo.attached? ? url_for(property.photo) : 'placeholder.png'   
  end
end
