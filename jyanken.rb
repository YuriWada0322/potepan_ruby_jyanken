def janken
    puts "じゃんけん...ポンッ！"
    puts "[0]グー\n[1]チョキ\n[2]パー"
    
    player_hand = gets.to_i
    program_hand = rand(3)
    jankens = ["グー","チョキ","パー"]
    puts "You:#{jankens[player_hand]},Computer:#{jankens[program_hand]}"

#あいこの場合
if player_hand == program_hand
    puts "あいこだよ！もう一回"
    return true
#プレイヤーがじゃんけんに勝った場合
elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "あなたの勝ち♪あっちむいてホイッ！"
    puts "[0]上\n[1]右\n[2]下\n[3]左"
    
    player_direction = gets.to_i
    program_direction = rand(4)
    directions = ["上","右","下","左"]
    puts "You:#{directions[player_direction]},Computer:#{jankens[program_direction]}"
    
if player_direction == program_direction
    puts "あなたの優勝！"
else
    puts "ざんねーん、またジャンケンからスタート！"
     return false
end
#プレイヤーがじゃんけんに負けた場合
else
    puts "あなたの負け、あっちむいてホイッ"
    puts "[0]上\n[1]右\n[2]下\n[3]左"
    
    player_direction = gets.to_i
    program_direction = rand(4)
    directions = ["上","右","下","左"]
    puts "You:#{directions[player_direction]},Computer:#{jankens[program_direction]}"
    
if player_direction == program_direction
    puts "あなたの大負け確定！ドンマイ！"
else
    puts "危機一髪！リベンジチャンスget！またジャンケンからスタート！"
     return false
end
end
end

next_game = true

while next_game
    next_game= janken
end