$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'turntabler'
require 'lib/turntable_configuration'

config = TurntableConfiguration.new('turntable.json')

EMAIL = ''
PASSWORD = ''
USER_ID = config.user_id
AUTH = config.auth

Turntabler.run do
    client = Turntabler::Client.new(EMAIL,
                                    PASSWORD,
                                    :user_id => USER_ID,
                                    :auth => AUTH)
end
