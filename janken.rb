def janken
  
  puts "ジャンケン. . ."
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  player_hand = gets.to_i
  program_hand = rand(3)

  if player_hand != 0 && player_hand != 1 && player_hand != 2 && player_hand != 3 #無効処理
	  puts "入力された値が無効です"
	  puts "-----------------"
  	return true
  end
  
  if player_hand == 3 #戦わない
  	return false
  end
  
    puts "ホイ!"
    puts "-----------------"
  
  jankens=["グー","チョキ","パー"]
    puts "あなた:#{jankens[player_hand]}, プログラム:#{jankens[program_hand]}"

  if player_hand == program_hand
	  puts "あいこ"
	  puts "-----------------"
	  return true
	  
  elsif (player_hand == 0 && program_hand ==1) ||(player_hand == 1 && program_hand ==2) || (player_hand == 2 && program_hand ==0)
	  puts "あなたの勝ちです"
    puts "-----------------"
    case_pattern = "pattern1"
     
  else
	  puts "負け"
	  puts "-----------------"
	  case_pattern = "pattern2"
  end
  
  
  case case_pattern #あっちむいてホイ
    when "pattern1"
      puts "あっちむいて〜"
  　　puts "0(上)1(下)2(左)3(右)"
  　　
  　　player_finger = gets.to_i
  　　program_face = rand(4)

  　　if player_finger != 0 && player_finger != 1 && player_finger != 2 && player_finger != 3
	  　　puts "入力された値が無効です"
  	　　return true
  　　end

  　　puts "ホイ!"
  　　puts "-----------------"

      direction=["上","下","左","右"]
  　　puts "あなた:#{direction[player_finger]}, プログラム:#{direction[program_face]}"
  　　
  　　if 　player_finger == program_face
        puts "あなたの勝利"
        return false
      else
        return true
      end

    when "pattern2"
      puts "あっちむいて〜"
  　　puts "0(上)1(下)2(左)3(右)"

  　　player_face = gets.to_i
  　　program_finger = rand(4)

  　　if player_face != 0 && player_face != 1 && player_face != 2 && player_face != 3
	  　　puts "入力された値が無効です"
  	　　return true
  　　end

  　　puts "ホイ!"
  　　puts "-----------------"

      direction=["上","下","左","右"]
  　　puts "あなた:#{direction[player_face]}, プログラム:#{direction[program_finger]}"

  　　if player_face == program_finger
        puts "あなたの敗北"
        return false
      else
        return true
      end
  end#あっちむいてホイ
end #janken

next_game = true

while next_game
  next_game = janken
end