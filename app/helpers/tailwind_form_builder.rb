class TailwindFormBuilder < ActionView::Helpers::FormBuilder
  %i[text_field email_field password_field text_area number_field].each do |method_name|
    define_method(method_name) do |name, *args|
      options = args.extract_options!
      options[:class] = "w-full px-4 py-2 border p-30 border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-400 #{options[:class]}"
      super(name, options)
    end
  end

  def datetime_field(method, options = {})
    options[:class] = "w-full px-4 py-2 border p-30 border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-400 #{options[:class]}"
      @template.datetime_field(@object_name, method, objectify_options(options))
  end

  def label(method, text = nil, options = {}, &block)
    options[:class] = "block text-gray-700 font-medium mb-2 #{options[:class]}"
    super
  end

  def submit(value = nil, options = {})
    options[:class] ||= "bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded"
    super(value, options)
  end
end