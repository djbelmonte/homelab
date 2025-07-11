module ApplicationHelper

  def side_action_panel(actions:)
    render partial: "shared/side_action_panel", locals: { actions: actions }
  end
end
