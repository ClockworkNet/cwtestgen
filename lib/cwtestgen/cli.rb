require 'thor'
require 'cwtestgen/generators/project'

module CwTestGen
  class CLI < Thor

    desc "project <project_name>", "Create a new test project"
    method_option :with_page_templates, :type => :boolean, :desc => "Copy page templates to features/support/pages/"

    def project(name)
      with_page_templates = options[:with_page_templates] ? 'true' : 'false'
      CwTestGen::Generators::Project.start([name, with_page_templates])
    end
  end
end