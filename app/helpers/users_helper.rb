module UsersHelper
  def is_trusted?(user)
    number_of_comments = user.comments.count

    if number_of_comments >= 5
      return user.trusted? = true
    else
      user.trusted? = false
    end
  end
end
