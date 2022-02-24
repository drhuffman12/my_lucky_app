# class Home::IndexPage < MainLayout
class Home::IndexPage < AuthLayout
  needs fortunes : FortuneQuery

  def content
    div class: "px-4 py-5 my-5 text-center" do
      h1 "CloverApp", class: "display-5 fw-bold"
      div class: "col-lg-6 mx-auto" do
        para "It's your Lucky day! See a fortune, and share the luck.", class: "lead mb-4"
        div class: "d-grid gap-2 d-sm-flex justify-content-sm-center" do
          link "Join", to: SignUps::New, class: "btn btn-primary btn-lg px-4 me-sm-3"
          link "Login", to: SignIns::New, class: "btn btn-outline-secondary btn-lg px-4"
        end
      end
    end
    div class: "container" do
      div class: "list-group list-group-flush border-bottom scrollarea" do
        fortunes.each do |fortune|
          link to: Fortunes::Show.with(fortune.id), class: "list-group-item list-group-item-action py-3 lh-tight" do
            div class: "d-flex w-100 align-items-center justify-content-between" do
              small time_ago_in_words(fortune.created_at), class: "text-muted"
            end
            div fortune.text, class: "col-10 mb-1 small"
          end
        end
      end
    end
  end
end
