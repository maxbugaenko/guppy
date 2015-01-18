helpers do
  def find_template(views, name, engine, &block)
    _, folder = views.detect { |k,v| engine == Tilt[k] }
    folder ||= views[:default]
    super(folder, name, engine, &block)
  end

  def cloud_url(url)
    "<span class='lighten-default'>guppy.io/#{url}</span>"
  end
end
