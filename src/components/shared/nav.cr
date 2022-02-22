class Shared::Nav < BaseComponent
  # TODO: Handle conditionally show a component (e.g.: show/hide a nav button based on if a user is logged in)
  # * See: the "https://luckyframework.org/guides/tutorial/beyond-basics" section
  # needs current_user : User

  def render
    # Below translated from: https://www.w3schools.com/bootstrap/bootstrap_navbar.asp
    nav class: "navbar navbar-default" do
      div class: "container-fluid" do
        div class: "navbar-header" do
          a "WebSiteName", class: "navbar-brand", href: "#"
        end
        ul class: "nav navbar-nav" do
          li class: "active" do
            a "Home", href: "#Home"
          end
          li do
            link "Join", to: SignUps::New, class: "btn btn-primary btn-lg px-4 me-sm-3"
          end
          li do
            link "Login", to: SignIns::New, class: "btn btn-outline-secondary btn-lg px-4"
          end
          # if current_user.present?
          li do
            link "Sign Out", to: SignIns::Delete, class: "btn btn-primary btn-lg px-4 me-sm-3"
          end
          # end
          li do
            link "Me", to: Me::Show, class: "btn btn-primary btn-lg px-4 me-sm-3"
          end
          li do
            link "Fortunes", to: Fortunes::Index, class: "btn btn-primary btn-lg px-4 me-sm-3"
          end
        end
      end
    end
  end
end
