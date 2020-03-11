require_relative '../../stack-overflow-command-line/lib/stackoverflow.rb'
require_relative '../../fortune_gem/lib/fortune_gem.rb'

module SlackMathbot
  module Commands
    class Calculate < SlackRubyBot::Commands::Base
      command 'search' do |client, data, _match|
        result = _match[:expression]
        #client.say(channel: data.channel, text: "#{result} !!!")
        client.say(channel: data.channel, text: StackOverflowMod::Command.new.run(result))
      end
      command 'fortune' do |client, data, _match|
        client.say(channel: data.channel, text: FortuneGem.give_fortune)
      end
    end
  end
end
