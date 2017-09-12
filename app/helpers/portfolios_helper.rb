module PortfoliosHelper

  def image_generator(height:, width:)
    "http://assets.imgix.net/examples/bluehat.jpg?w=#{width}&h=#{height}&fit=crop"
  end

  def portfolio_img img, type
    if img.model.main_image? || img.model.thumb_image?
      img
    elsif type == 'thumb'
      image_generator(height: '200', width: '350')
    else
      image_generator(height: '400', width: '600')
    end
  end
end
