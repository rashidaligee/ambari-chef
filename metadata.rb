name 'ambari-chef'
maintainer 'Artem Ervits'
maintainer_email 'generic13 at gmail dot com'
license 'Apache'
description 'Installs/Configures ambari-views-chef'
long_description 'Installs/Configures ambari-views-chef'
version '0.3.0'
# source_url 'https://github.com/dbist/ambari-views-chef' if respond_to?(:source_url)
# issues_url 'https://github.com/dbist/ambari-views-chef' if respond_to?(:issues_url)

depends "java"
depends "apt", '~> 6.1.4'
depends 'java_properties', '~> 0.1.3'
# depends "mysql_connector"
