require_relative '../../stack-overflow-command-line/lib/stackoverflow.rb'

module SlackMathbot
  module Commands
    class Calculate < SlackRubyBot::Commands::Base
      command 'calculate' do |client, data, _match|
        result = _match[:expression]
        #client.say(channel: data.channel, text: "#{result} !!!")
        client.say(channel: data.channel, text: StackOverflowMod::Command.new.run("html css"))
      end
    end
  end
end
