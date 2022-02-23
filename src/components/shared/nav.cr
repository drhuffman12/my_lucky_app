class Shared::Nav < BaseComponent
  # TODO: Handle conditionally show a component (e.g.: show/hide a nav button based on if a user is logged in)
  # * See: the "https://luckyframework.org/guides/tutorial/beyond-basics" section
  needs current_user : User?

  def render
    # Below translated from: https://www.w3schools.com/bootstrap/bootstrap_navbar.asp
    # TODO: Why is the bootstrap nav bar NOT horizontal?
    nav class: "navbar navbar-default" do
      div class: "container-fluid" do
        div class: "navbar-header" do
          a "WebSiteName", class: "navbar-brand", href: "#"
        end
        ul class: "nav navbar-nav" do
          li class: "active" do
            a "Home", href: "#Home"
          end
          nav_per_user(current_user)
        end
      end
    end
  end

  def render_tbd
    nav class: "navbar navbar-expand-lg navbar-light bg-light" do
      a "Navbar", class: "navbar-brand", href: "#"
      button aria_controls: "navbarNav", aria_expanded: "false", aria_label: "Toggle navigation", class: "navbar-toggler", data_target: "#navbarNav", data_toggle: "collapse", type: "button" do
        span class: "navbar-toggler-icon"
      end
      div class: "collapse navbar-collapse", id: "navbarNav" do
        ul class: "navbar-nav" do
          li class: "nav-item active" do
            a class: "nav-link", href: "#" do
              text "Home "
              span "(current)", class: "sr-only"
            end
          end
          li class: "nav-item" do
            a "Features", class: "nav-link", href: "#"
          end
          li class: "nav-item" do
            a "Pricing", class: "nav-link", href: "#"
          end
          li class: "nav-item" do
            a "Disabled", aria_disabled: "true", class: "nav-link disabled", href: "#", tabindex: "-1"
          end
        end
      end
    end
  end

  private def nav_per_user(user : User)
    li do
      link "Sign Out", to: SignIns::Delete, class: "btn btn-primary btn-lg px-4 me-sm-3"
    end
    li do
      link "Me", to: Me::Show, class: "btn btn-primary btn-lg px-4 me-sm-3"
    end
    li do
      link "Fortunes", to: Fortunes::Index, class: "btn btn-primary btn-lg px-4 me-sm-3"
    end
  end

  private def nav_per_user(no_user : Nil)
    li do
      link "Join", to: SignUps::New, class: "btn btn-primary btn-lg px-4 me-sm-3"
    end
    li do
      link "Login", to: SignIns::New, class: "btn btn-outline-secondary btn-lg px-4"
    end
  end
end
