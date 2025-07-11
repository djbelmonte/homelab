module FormHelper
  def styled_form_with(**args, &block)
    defaults = {
      builder: TailwindFormBuilder,
      html: { class: "space-y-6" }
    }

    form_with(**defaults.deep_merge(args), &block)
  end
end