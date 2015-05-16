require_relative '../../rakefile_morph.rb'

@MORPH = 'tmtmtmtm/portugal-democratica-scraper'

namespace :raw do

  @DEFAULT_MORPH_TERM_QUERY = 'SELECT * FROM terms'
  file 'morph.csv' => 'terms.csv'

  file 'terms.csv' do
    File.write('terms.csv', morph_select(@MORPH_TERM_QUERY || @DEFAULT_MORPH_TERM_QUERY))
  end

end


