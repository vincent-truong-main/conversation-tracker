class Conversation < ApplicationRecord
  enum :energy, { draining: 0, neutral: 1, energizing: 2 }
  enum :engagement, { boring: 0, neutral: 1, engaging: 2 }
end
