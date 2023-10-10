# https://www.hackerrank.com/challenges/climbing-the-leaderboard/problem
ranked_count = gets.strip.to_i
ranked = gets.rstrip.split.map(&:to_i)
player_count = gets.strip.to_i
player = gets.rstrip.split.map(&:to_i)

uniq_ranked = ranked.uniq << -1
player.map do |player_score|
    puts(uniq_ranked.bsearch_index { |score| player_score >= score } + 1)
end