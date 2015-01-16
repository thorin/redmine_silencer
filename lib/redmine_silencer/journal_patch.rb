module RedmineSilencer
  module JournalPatch
    def notify?
      @notify
    end

    def notify=(arg)
      @notify = !!arg
    end

    def self.included(base)
      base.class_eval do
        alias_method_chain :send_notification, :silencer
      end
    end

    def send_notification_with_silencer(*args)
      send_notification_without_silencer(*args) if notify?
    end
  end
end
