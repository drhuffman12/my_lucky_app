class Fortunes::EditPage < MainLayout
  needs operation : SaveFortune
  needs fortune : Fortune
  quick_def page_title, "Edit Fortune with id: #{fortune.id}"

  def content
    link "Back to all Fortunes", Fortunes::Index
    h1 "Edit Fortune with id: #{fortune.id}"
    render_fortune_form(operation)
  end

  def render_fortune_form(op)
    form_for Fortunes::Update.with(fortune.id) do
      # Edit fields in src/components/fortunes/form_fields.cr
      mount Fortunes::FormFields, op

      submit "Update", data_disable_with: "Updating..."
    end
  end
end
