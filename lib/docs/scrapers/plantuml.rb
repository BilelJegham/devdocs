module Docs
  class Plantuml < UrlScraper
    self.type = 'simple'
    self.links = {
      home: 'https://plantuml.com/en/',
      code: 'https://github.com/plantuml/plantuml'
    }
    self.release = '1.2022.11'
    self.base_url = "https://plantuml.com/en/"
    self.initial_paths = %w(intro)

    # html_filters.push 'axios/entries', 'axios/clean_html'


    options[:container] = 'body > .root'


    options[:attribution] = <<-HTML
      &copy; Copyright 2009-2017, Arnaud Roques<br>
      Licensed under the GNU General Public License.
    HTML

    def get_latest_version(opts)
      get_latest_github_release('plantuml', 'plantuml', opts)
    end
  end
end
