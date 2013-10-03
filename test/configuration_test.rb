require 'minitest/spec'
require 'minitest/autorun'

require 'turntable_configuration'

describe TurntableConfiguration do
    it "can be read from a file" do
        config = TurntableConfiguration.new('sample_config.json')
        config.must_be_instance_of TurntableConfiguration
    end

    it "should have a user id" do
        config = TurntableConfiguration.new('sample_config.json')
        config.user_id.must_equal 'test'
    end

    it "should have an auth key" do
        config = TurntableConfiguration.new('sample_config.json')
        config.auth.must_equal 'auth...or'
    end

    it "should have a room id" do
        config = TurntableConfiguration.new('sample_config.json')
        config.room_id.must_equal 'world on the wing'
    end
end

