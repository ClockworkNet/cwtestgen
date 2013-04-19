class ClockworkPage 
  include PageObject

  # Common Page
  # Identify common links here that will be found on most/all pages
  # Each Page should inherit from ClockworkPage

  # Common Header links
  link(:header_home, :href => "/")

  # Common Utility Navigation
  link(:log_in, :href => "/log_in/")

  # Common Footer Navigation
  link(:footer_contact_us, :href => "/contact_us/")

  # Common Social Links
  link(:social_youtube, :id => "")
  link(:social_facebook, :id => "")
  link(:social_twitter, :id => "")
  link(:social_google_plus, :id => "")
  
end