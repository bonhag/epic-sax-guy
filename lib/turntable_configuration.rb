require 'json'

class TurntableConfiguration
    attr_reader :user_id, :auth, :room_id

    def initialize(filename)
        json_data = JSON.parse( IO.read(filename) )
        @auth = json_data["auth"]
        @user_id = json_data["user_id"]
        @room_id = json_data["room_id"]
    end
end
