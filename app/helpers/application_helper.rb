module ApplicationHelper
  def get_twitter_card_info()
    twitter_card = {}
    twitter_card[:url] = 'https://tasumane.herokuapp.com/'
    twitter_card[:title] = '簡易的なタスク記録アプリ「タスマネ」'
    twitter_card[:description] = 'タスマネであなたが頑張ったタスクを記録してシェアしよう'
    twitter_card[:image] = 'https://drive.google.com/open?id=17JhetgU5YX1e82iWEVcf1nAIA_3FVXse'
    twitter_card[:card] = 'summary_large_image'
    twitter_card[:site] = '@agepiitweets'
    twitter_card
  end


end
