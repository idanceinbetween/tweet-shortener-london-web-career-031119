def dictionary
  the_dict = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
    "four"=>"4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"}
end

def tweet_splitter(tweet)
  tweet.split(" ").to_a
end

def replace_word(tweet) #for words that matched only
  tweet_splitter(tweet).each do |word|
    if dictionary.key?(word.downcase) == true
      word = word.gsub! (word),dictionary
    end
  end
end

def word_substituter(tweet)
    replace_word(tweet).join(" ")
end

#to access: each tweet in the array Array.each
#action: run word_substituter(tweet) on each tweet
#puts

def bulk_tweet_shortener(tweet_array)
  tweet_array.each {|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

#feed an original twet, run selective_tweet_shortener, if the new thing is still long

def shortened_tweet_truncator(tweet)
  if selective_tweet_shortener(tweet).length > 140
    tweet[0..136]+ '...'
  else
    tweet
  end
end

#OUTPUT: an Array of strings. Notice characters go with the word before them.
#USAGE: tweet_splitter(tweet)[0] => first word in the tweet
#USAGE: tweet_splitter(tweet).each => goes over each word
#USAGE: tweet_splitter(tweet).ARRAYENUMS

#to access: each word from tweet. Strings. These are elements in an Array.
#to access: keys (Strings) from Hash. Hash.keys
#to access: corresponding values from Hash
#action: Access each element, check if it's is a key in Hash, if yes, replace itself with the value.
#notes: have to keep its order in the array.
