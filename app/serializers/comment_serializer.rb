class CommentSerializer < ActiveModel::Serializer
  attributes(:text,:user,:trail_id)

  def user
    @user = User.all.find{|u| u.id == object.user_id}
    if @user
      return @user.name
    else
      return nil
    end
  end

end
