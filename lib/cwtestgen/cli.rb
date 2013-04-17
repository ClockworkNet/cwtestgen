require 'thor'
require 'cwtestgen/generators/project'

module CwTestGen
  class CLI < Thor
    desc "project <project_name>", "Create a new test project"
    def project(name)
      CwTestGen::Generators::Project.start([name])
    end
  end
end