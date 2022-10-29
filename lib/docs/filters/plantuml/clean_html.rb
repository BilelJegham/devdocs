module Docs
  class Plantuml
    class CleanHtmlFilter < Filter
      def call
        css('.links').remove
        doc
      end
    end
  end
end
