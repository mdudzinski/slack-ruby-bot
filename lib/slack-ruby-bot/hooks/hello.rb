module SlackRubyBot
  module Hooks
    class Hello
      attr_accessor :logger

      def initialize(logger)
        self.logger = logger
      end

      def call(client, _data)
        return unless client && client.team
        logger.info "Successfully connected to https://#{client.team.domain}.slack.com."
      end
    end
  end
end
