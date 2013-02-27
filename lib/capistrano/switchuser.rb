require "capistrano/switchuser/version"

module Capistrano
  module Switchuser
    # switch to using a different ssh user
    def switchuser(new_user)
      old_user = fetch(:user)
      set(:user, new_user)
      close_sessions
      if block_given?
        yield 
        set(:user, old_user)
        close_sessions
      end
    end
    
    # close any open ssh sessions to force login as a new user
    def close_sessions
      sessions.values.each { |session| session.close }
      sessions.clear
    end
  end
end

if Capistrano::Configuration.instance
  Capistrano::Configuration.instance.extend Capistrano::Switchuser
end