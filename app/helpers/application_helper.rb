module ApplicationHelper
  def background_image_url
    Tenant.current.image_url
  end

  def logo_img_url
    Tenant.current.image_url
  end

  def nav_link(link_text, link_path, http_method)
    class_name = current_page?(link_path) ? 'active' : ''

    content_tag(:li, class: class_name) do
      if http_method
        link_to(link_text, link_path, method: http_method)
      else
        link_to(link_text, link_path)
      end
    end
  end
end
