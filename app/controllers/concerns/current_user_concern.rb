module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Clu Program"
    guest.first_name = "Clu"
    guest.last_name = "Program"
    guest.email = "clu@grid.net"
    guest
  end
end