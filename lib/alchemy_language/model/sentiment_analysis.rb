module AlchemyLanguage
  class SentimentAnalysis < ActiveModel::Base
    add_response_field(:totalTransactions)
    add_response_field(:language)
    add_response_field(:docSentiment)

    def end_point
      "#{@type}/URLGetTextSentiment?apikey=#{@auth_token}&url=#{@path}&outputMode=json"
    end
  end
end