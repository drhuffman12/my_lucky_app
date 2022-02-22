# class Home::IndexPage < MainLayout
class Home::IndexPage < AuthLayout
  def content
    h1 "Modify this page at ./src/pages/home"
    h2 "Hello World!"
  end
end
