module Docs
  class Plantuml
    class EntriesFilter < Docs::EntriesFilter
      def get_name
        at_css('h1').content
      end

      def get_type
        'plantuml'
      end
    end
  end
end
