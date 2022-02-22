class Fortunes::ShowPage < MainLayout
  needs fortune : Fortune
  quick_def page_title, "Fortune with id: #{fortune.id}"

  def content
    link "Back to all Fortunes", Fortunes::Index
    h1 "Fortune with id: #{fortune.id}"
    render_actions
    render_fortune_fields
  end

  def render_actions
    section do
      link "Edit", Fortunes::Edit.with(fortune.id)
      text " | "
      link "Delete",
        Fortunes::Delete.with(fortune.id),
        data_confirm: "Are you sure?"
    end
  end

  def render_fortune_fields
    ul do
      li do
        text "text: "
        strong fortune.text.to_s
      end
    end
  end
end
