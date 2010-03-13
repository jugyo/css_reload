module CssReload
  class Filter
    class << self
      def after(controller)
        return unless controller.params.key?(:css_reload) &&
                        controller.response.headers['Content-Type'] == "text/html"

        html = File.read(File.join(File.dirname(__FILE__), 'css_reload.html'))
        controller.response.body.gsub!(/(<\/body>)/i, "#{html}\\1")
      end
    end
  end
end
