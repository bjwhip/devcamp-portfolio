module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:)
    "https://hzboyw.dm2301.livefilestore.com/y4mC9zX_IYHebgupreRjPN-YKwPg9b39g_6gAmC3VG4rNHfQb7Llf9rLInRJMTtXGEcVsH83pMDL34o-y05eTa5sW9st6typHNJ4nTky1MU8F28gxLfcbafPPDnn3gSeV2mO-U3Me0vP0tzDrP8w7665huxBtu78iO9eEcAVbY7SmS9mK5KVXgUlAwhBH6TC51_MXIdxGKbW-Sz11Po5iUJaA?width=#{width}&height=#{height}&cropmode=none"
  end
end