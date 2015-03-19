module Sources
  module Boolean
    class Demo < Sources::Boolean::Base
      def get(options = {})
        negate({ :value => rand(2) == 1 }, Widget.find(options[:widget_id]))
      end
    end
  end
end