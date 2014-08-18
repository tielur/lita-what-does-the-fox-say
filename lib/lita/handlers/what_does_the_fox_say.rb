module Lita
  module Handlers
    class WhatDoesTheFoxSay < Handler
      route /what does the fox say/i, :what_the_fox_says, command: true, help: {
        "what does the fox say" => "Lita tells you what the fox says"}

      def what_the_fox_says response
        response.reply ":dog: goes woof",
                       ":cat2: goes meow",
                       ":bird: goes tweet",
                       "and the :mouse2: goes squeek",
                       ":cow: goes moo",
                       ":frog: goes croak",
                       "and the :elephant: goes toot",
                       ":baby_chick: says quack",
                       "and :fish: goes blub",
                       "and the :dolphin: goes ow ow ow",
                       "But there's one sound",
                       "That no one knows...",
                       "What does the :wolf: say!?"

      end
    end

    Lita.register_handler(WhatDoesTheFoxSay)
  end
end
