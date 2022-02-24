class Shared::FooterPoweredByLucky < BaseComponent
  def render
    footer class: "footer mt-auto py-3 bg-light" do
      div class: "container" do
        span "ClovPowered By LuckyerApp", class: "text-muted"
        img src: "https://luckyframework.org/assets/images/logo.png"
      end
    end
  end
end
