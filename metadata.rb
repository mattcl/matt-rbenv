name             'matt-rbenv'
maintainer       'Matt Chun-Lum'
maintainer_email 'mchunlum@gmail.com'
license          'All rights reserved'
description      'Installs/Configures matt-rbenv'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'rbenv'

%w{ ubuntu }.each do |os|
  supports os
end
