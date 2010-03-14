module CssReload
  class Filter
    class << self
      def after(controller)
        return unless controller.params.key?(:css_reload) &&
                        controller.response.headers['Content-Type'] == "text/html"

        html = File.read(File.join(File.dirname(__FILE__), 'css_reload.html.erb'))

        if controller.params[:css_reload].present?
          time = controller.params[:css_reload].to_i * 1000
        else
          time = 5000
        end

        erbed_html = ERB.new(html).result(binding)

        controller.response.body.gsub!(/(<\/body>)/i, "#{erbed_html}\\1")
      end
    end
  end
end
