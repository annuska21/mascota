module ApplicationHelper

 def status_tag(boolean, options={})
    options[:true_text]  ||= ' Sí'
    options[:false_text] ||= ' No'

    if boolean
      content_tag(:span, options[:true_text], :class => 'glyphicon glyphicon-ok')
    else
      content_tag(:span, options[:false_text], :class => 'glyphicon glyphicon-remove')
    end
  end

  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? 'current' : ''

    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end

end

