module DvdsHelper
  def include_boxcover
    unless @dvd.url.blank?
      include_image(@dvd.url, @dvd.title, "center")
    end
  end 
end
