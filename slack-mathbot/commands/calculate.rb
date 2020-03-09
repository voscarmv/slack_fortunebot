module SlackMathbot
  module Commands
    class Calculate < SlackRubyBot::Commands::Base
      command 'calculate' do |client, data, _match|
        result = _match[:expression]
        #client.say(channel: data.channel, text: "#{result} !!!")
        client.say(channel: data.channel, text: "#{_match[:command]}: #{_match[:expression]}")
      end
    end
  end
end
