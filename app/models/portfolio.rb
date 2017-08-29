class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  after_initialize :set_defaults

#Custom Scopes------------------------------------------------------------
  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }
#end custom Scopes--------------------------------------------------------

  def set_defaults
    self.main_image ||= "https://hzboyw.dm2301.livefilestore.com/y4mC9zX_IYHebgupreRjPN-YKwPg9b39g_6gAmC3VG4rNHfQb7Llf9rLInRJMTtXGEcVsH83pMDL34o-y05eTa5sW9st6typHNJ4nTky1MU8F28gxLfcbafPPDnn3gSeV2mO-U3Me0vP0tzDrP8w7665huxBtu78iO9eEcAVbY7SmS9mK5KVXgUlAwhBH6TC51_MXIdxGKbW-Sz11Po5iUJaA?width=1024&height=392&cropmode=none"
    self.thumb_image ||= "https://hzboyw.dm2301.livefilestore.com/y4mC9zX_IYHebgupreRjPN-YKwPg9b39g_6gAmC3VG4rNHfQb7Llf9rLInRJMTtXGEcVsH83pMDL34o-y05eTa5sW9st6typHNJ4nTky1MU8F28gxLfcbafPPDnn3gSeV2mO-U3Me0vP0tzDrP8w7665huxBtu78iO9eEcAVbY7SmS9mK5KVXgUlAwhBH6TC51_MXIdxGKbW-Sz11Po5iUJaA?width=660&height=252&cropmode=none"
  end
end