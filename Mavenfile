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

build do
  resource do
    target_path "${project.basedir}/maven-home"
    directory "${project.build.directory}/apache-maven-${maven.version}"
  end
end

# just lock the versions
properties 'jruby.version': '9.2.6.0'

# vim: syntax=Ruby
