class Fortunes::NewPage < MainLayout
  needs operation : SaveFortune
  quick_def page_title, "New Fortune"

  def content
    h1 "New Fortune"
    render_fortune_form(operation)
  end

  def render_fortune_form(op)
    form_for Fortunes::Create do
      # Edit fields in src/components/fortunes/form_fields.cr
      mount Fortunes::FormFields, op

      submit "Save", data_disable_with: "Saving..."
    end
  end
end
