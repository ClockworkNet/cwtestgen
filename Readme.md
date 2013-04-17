# CwTestGen

Based on Jeff Morgan's Testgen gem, but hacked for specific Clockwork test setup.

A gem that contains generators that create things Clockwork testers need.

Currently it only generates a cucumber project.  You can do this by executing:

    testgen project <project_name>
    
This command will create a project in the <em>project_name</em> directory with the files needed to begin
developing cucumber features.