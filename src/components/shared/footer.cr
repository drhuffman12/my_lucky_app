class Shared::Footer < BaseComponent
  def render
    footer class: "footer mt-auto py-3 bg-light" do
      div class: "container" do
        span "CloverApp", class: "text-muted"
        div "Hello World", class: "foobar"
        img src: asset("images/example_lucky_app.home_page.png")
      end
    end
  end
end
