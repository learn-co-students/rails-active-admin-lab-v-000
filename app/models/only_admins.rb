class OnlyAdmins < ActiveAdmin::AuthorizationAdapter

   # def authorized?(action, subject = nil)
   #  case subject
   #  when ActiveAdmin::Page
   #    action == :read &&
   #      subject.name == "Dashboard" &&
   #      subject.namespace.name == :admin
   #  else
   #    false
   #  end
  # end

  # def only_admins(action, subject - nil)
  #   binding.pry
  # end

end