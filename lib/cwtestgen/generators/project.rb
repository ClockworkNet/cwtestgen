require 'thor/group'

module CwTestGen
  module Generators
    class Project < Thor::Group
      include Thor::Actions
    
      argument :name, :type => :string, :desc => 'The name of the project'
      desc "Generates a project structure for testing with Cucumber"
      
      def self.source_root
        File.dirname(__FILE__) + "/project"
      end
    
      def create_top_directory
        empty_directory(name)
      end
      
      def copy_cucumber_yml
        template "cucumber.yml.tt", "#{name}/cucumber.yml"
      end
      
      def create_cucumber_directories
        empty_directory("#{name}/features")
        empty_directory("#{name}/features/support")
        empty_directory("#{name}/features/step_definitions")
      end

      def create_log_directory
        empty_directory("#{name}/features/logs")
      end
      
      def copy_env
        template "env.rb.tt", "#{name}/features/support/env.rb"
      end
      
      def create_pages_directory
        empty_directory("#{name}/features/support/pages")
      end
      
      private

    end
  end
end
