module ApplicationHelper
  include Pagy::Frontend

  def side_action_panel(actions:)
    render partial: "shared/side_action_panel", locals: { actions: actions }
  end
end
