#
# Use the "Value Path" setting to select nested value from JSON structure:
#   {
#     "parent" : {
#       "child" : {
#         "child2" : "myValue"
#       }
#     }
#   }
#
# Example: parent.child.nestedChild.value
module Sources
  module Boolean
    class HttpProxy < Sources::Boolean::Base
      include HttpProxyResolver

      def get(options = {})
        data = super
        if data.is_a?(Hash)
          widget = Widget.find(options.fetch(:widget_id))
          negate = widget.settings[:negate]
          data[:value] = !data[:value] if (negate != nil && negate)
          data
        end
        data
      end
    end
  end
end