class Fortunes::IndexPage < MainLayout
  needs fortunes : FortuneQuery
  quick_def page_title, "All Fortunes"

  def content
    h1 "All Fortunes"
    link "New Fortune", to: Fortunes::New
    render_fortunes
  end

  def render_fortunes
    ul do
      fortunes.each do |fortune|
        li do
          link fortune.text, Fortunes::Show.with(fortune)
        end
      end
    end
  end
end
