class Shared::LayoutHead < BaseComponent
  needs page_title : String

  def render
    head do
      utf8_charset
      title "My App - #{@page_title}"
      css_link asset("css/app.css"), data_turbolinks_track: "reload"
      js_link asset("js/app.js"), defer: "true", data_turbolinks_track: "reload"
      meta name: "turbolinks-cache-control", content: "no-cache"
      csrf_meta_tags
      responsive_meta_tag

      # For custom nav bar, based on: https://www.w3schools.com/bootstrap/bootstrap_navbar.asp
      # .. not 100% working in browser (visually), but good enough for a tutorial
      empty_tag "link", rel: "stylesheet", href: "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
      js_link "https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"    # , defer: "true", data_turbolinks_track: "reload"
      js_link "https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" # , defer: "true", data_turbolinks_track: "reload"
    end
  end
end
