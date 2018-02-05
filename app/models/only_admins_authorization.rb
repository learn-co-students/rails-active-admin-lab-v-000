class OnlyAdminsAuthorization < ActiveAdmin::AuthorizationAdapter
 
   def authorized? #(action, subject = nil)
     user.admin?
 #    case subject
 #    when normalized(Post)
 #      # Only let the author update and delete posts
 #      if action == :update || action == :destroy
 #        subject.author == user
 #      else
 #        true
 #      end
 #    else
 #      true
 #    end
   end

 end
