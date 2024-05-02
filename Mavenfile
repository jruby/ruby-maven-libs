# -*- mode:ruby -*-

gemspec

plugin :dependency do
  execute_goal(:unpack, phase: 'process-sources',
               outputAbsoluteArtifactFilename: false,
               artifactItems: [{ :groupId => 'org.apache.maven',
                                :artifactId => 'apache-maven',
                                :version => '${maven.version}',
                                :classifier => 'bin',
                                :type => 'zip',
                                :outputDirectory => '${project.build.directory}' }])
end # maven-dependency-plugin

plugin :clean do
    execute_goals( 'clean',
                   :id => 'default-clean',
                   :phase => 'clean',
                   'filesets' => [ { 'directory' =>  '${project.basedir}/pkg',
                                     'includes' => [ '*' ] },
                                   { 'directory' =>  '${project.basedir}/maven-home',
                                     'includes' => [ '*' ] } ],
                   'failOnError' =>  'false' )
end

build do
  resource do
    target_path "${project.basedir}/maven-home"
    directory "${project.build.directory}/apache-maven-${maven.version}"
  end
end

# just lock the versions
properties 'jruby.version': '9.4.5.0'

# vim: syntax=Ruby
