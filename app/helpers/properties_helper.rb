module PropertiesHelper  
  def property_thumbnail property
    img = property.photo.attached? ? url_for(property.photo) : "placeholder.png"
    image_tag(img, class: "property-thumb")
  end

   def property_thumbnail_url property
    img = property.photo.attached? ? url_for(property.photo) : "placeholder.png"    
  end

  def property_photo_url property     
    img = property.photo.attached? ? url_for(property.photo) : 'placeholder.png'   
  end
end
