module RedmineSilencer
  class ViewHooks < Redmine::Hook::ViewListener
    render_on :view_issues_edit_notes_bottom,
      :partial => 'hooks/silencer_suppress_mail_edit'

    render_on :view_issues_bulk_edit_details_bottom,
      :partial => 'hooks/silencer_suppress_mail_bulk'
  end
end
