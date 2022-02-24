module OnlyAllowCurrentUser
  class UnauthorizedEntryError < Lucky::Error
  end

  def ensure_owned_by_current_user!(fortune : Fortune)
    if fortune.user_id != current_user.id
      raise UnauthorizedEntryError.new
    end
  end
end