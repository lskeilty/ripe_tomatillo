module UsersHelper
  def is_trusted?(user)
    number_of_comments = user.comments.count

    if number_of_comments >= 5
      user.trusted_status = true
      return true
    else
      user.trusted_status = false
      return false
    end
  end
end
