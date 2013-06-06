module ApplicationHelper
  def icon(icon_name)
    content_tag :i, '', class: icon_name
  end
end
