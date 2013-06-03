require 'thor/group'

module CwTestGen
  module Generators
    class Project < Thor::Group
      include Thor::Actions
    
      argument :name, :type => :string, :desc => 'The name of the project'
      argument :with_page_templates, :type => :string, :desc => 'Place Page Templates into features/support/pages/'
      argument :with_lib_symlink, :type => :string, :desc => 'Create a symlink to ../lib inside features/support/'
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

      def create_screenshot_directory
        empty_directory("#{name}/features/screenshots")
      end
      
      def copy_hooks
        template "hooks.rb.tt", "#{name}/features/support/hooks.rb"
      end

      def copy_env
        template "env.rb.tt", "#{name}/features/support/env.rb"
      end
      
      def create_pages_directory
        empty_directory("#{name}/features/support/pages")
      end

      def copy_page_templates
        if gen_page_templates
          template "clockwork_page.rb.tt", "#{name}/features/support/pages/clockwork_page.rb" 
          template "home_page.rb.tt", "#{name}/features/support/pages/home_page.rb"
          template "sample_cucumber.feature.tt", "#{name}/features/sample_cucumber.feature"
          template "sample_steps.rb.tt", "#{name}/step_definitions/#{name}_steps.rb"
        end
      end

      def create_symlink_to_lib
        if gen_symlink_to_lib
          if File.symlink?("#{name}/features/support/lib")
            return nil
          end

          if File.directory?("../lib")
            File.symlink("../../../../lib","#{name}/features/support/lib")
          end
        end
      end
      
      private

      def gen_page_templates
        with_page_templates == 'true'
      end

      def gen_symlink_to_lib
        with_lib_symlink == 'true'        
      end

    end
  end
end
