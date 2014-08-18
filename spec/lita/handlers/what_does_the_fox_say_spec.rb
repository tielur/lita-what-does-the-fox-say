require "spec_helper"

describe Lita::Handlers::WhatDoesTheFoxSay, lita_handler: true do
  it { routes_command("what does the fox say").to(:what_the_fox_says) }

  describe '#what_the_fox_says' do
    it 'responds  with what the fox says' do
      send_command "what does the fox say"
      expect(replies.first).to match(":dog: goes woof")
      expect(replies.last).to match("What does the :wolf: say!?")
    end
  end
end
