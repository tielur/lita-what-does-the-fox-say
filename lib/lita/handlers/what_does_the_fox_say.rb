module Lita
  module Handlers
    class WhatDoesTheFoxSay < Handler
      route /what does the fox say/i, :what_the_fox_says, command: true, help: {
        "what does the fox say" => "Lita tells you what the fox says"}

      def what_the_fox_says response
        response.reply ":dog: goes woof"
        response.reply ":cat2: goes meow" 
        response.reply ":bird: goes tweet"
        response.reply "and the :mouse2: goes squeek"
        response.reply ":cow: goes moo"
        response.reply ":frog: goes croak"
        response.reply "and the :elephant: goes toot"
        response.reply ":baby_chick: says quack"
        response.reply "and :fish: goes blub"
        response.reply "and the :dolphin: goes ow ow ow"
        response.reply "But there's one sound"
        response.reply "That no one knows..."
        response.reply "What does the :wolf: say!?"

      end
    end

    Lita.register_handler(WhatDoesTheFoxSay)
  end
end
