cask 'glip' do
  version '20.2.10'
  sha256 '86ad5690a059c1bb329bc7577ab05e1e00fe9b9b3c6079fd7db1782a0500dc6d'

  # downloads.ringcentral.com/glip/rc was verified as official when first introduced to the cask
  url "https://downloads.ringcentral.com/glip/rc/#{version}/mac/RingCentral-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads.ringcentral.com/glip/rc/GlipForMac'
  name 'Glip'
  homepage 'https://glip.com/'

  app 'Glip.app'

  uninstall signal: [
                      ['TERM', 'com.Glip.Glip.helper'],
                      ['TERM', 'com.Glip.Glip'],
                    ]

  zap trash: [
               '~/Library/Application Support/Glip',
               '~/Library/Caches/com.Glip.Glip',
               '~/Library/Caches/com.Glip.Glip.ShipIt',
               '~/Library/Preferences/com.Glip.Glip.helper.plist',
               '~/Library/Preferences/com.Glip.Glip.plist',
               '~/Library/Saved Application State/com.Glip.Glip.savedState',
             ]
end
