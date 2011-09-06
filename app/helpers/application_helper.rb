module ApplicationHelper

  # Image tag for the Celll-Monitor logo.
  def logo
    image_tag("logo_div_logo.jpg")
  end

  # Return a title on a per-page basis.
  def title
    base_title = "Celll Monitor Development App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end

