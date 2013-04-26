require 'thor'
require 'cwtestgen/generators/project'

module CwTestGen
  class CLI < Thor

    desc "project <project_name>", "Create a new test project"
    method_option :with_page_templates, :type => :boolean, :desc => "Copy page templates to features/support/pages/"
    method_option :with_lib_symlink, :type => :boolean, :desc => "Create a fixed symlink to ../lib"

    def project(name)
      with_page_templates = options[:with_page_templates] ? 'true' : 'false'
      with_lib_symlink = options[:with_lib_symlink] ? 'true' : 'false'
      CwTestGen::Generators::Project.start([name, with_page_templates, with_lib_symlink])
    end
  end
end