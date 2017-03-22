module ForemanStatusHelper
  def status_icon(executable)
    case executable.status.to_sym
    when :success
      generate_icon('ok')
    when :fail
      generate_icon('error-circle-o')
    when :skipped
      generate_icon('info')
    end
  end

  private

  def generate_icon(icon_type)
    content_tag(:span, nil, :class => ['pficon', 'list-view-pf-icon-bg', "pficon-#{icon_type}"])
  end
end
