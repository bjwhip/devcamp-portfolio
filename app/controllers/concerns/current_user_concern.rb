module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Program Clu",
                   first_name: "Program",
                   last_name: "Clu",
                   email: "program@grid.net")
  end
end