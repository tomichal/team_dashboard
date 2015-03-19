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
        negate(super, Widget.find(options.fetch(:widget_id)))
      end
    end
  end
end