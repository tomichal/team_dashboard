module Sources
  module Boolean
    class Shell < Sources::Boolean::Base

      def custom_fields
        [ { :name => "command", :title => "Shell Command", :mandatory => true } ]
      end

      def get(options = {})
        widget = Widget.find(options.fetch(:widget_id))
        cmd    = widget.settings.fetch(:command)
        negate({ :value => execute_command(cmd) }, widget)
      end

      private

      def execute_command(cmd)
        system(cmd)
      end

    end
  end
end