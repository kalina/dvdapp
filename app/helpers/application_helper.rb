module ApplicationHelper
  
  #for page titles
  def full_title(page_title)
    title = "DVD Library"
    if page_title.empty?
      title
    else
      "#{title} - #{page_title}"
    end
  end
end
