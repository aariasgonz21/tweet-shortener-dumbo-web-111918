# Write your code here.
require 'pry'

def dictionary 
  replacement = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
     tweet.split(" ").collect do |word|
      if dictionary.has_key?(word.downcase)
        word = dictionary[word.downcase]
      else
        word
    end
  end.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.each do |tweet|
          binding.pry
    if(tweet.length > 140)
      puts word_substituter(tweet)
    else
      puts tweet
    end
  end
end