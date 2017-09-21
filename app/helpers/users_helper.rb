module UsersHelper
  def is_trusted?(user)
    number_of_comments = user.comments.count

    if number_of_comments >= 5
      p "YES"
      # return user.trusted_status = true
    else
      # user.trusted_status = false
    end
  end
end
