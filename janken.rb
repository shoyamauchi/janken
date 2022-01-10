  def janken
      puts "ジャンケン..."
      puts "0(グー)1(チョキ)2(パー)3(戦わない)"
        player_hand = gets.to_i
        program_hand = rand(0..2)
        jankens = ["グー","チョキ","パー"]
    
    if player_hand > 3
	    puts "入力された値が無効です"
	    puts "-----------------"
  	  return true
    end
  
    if player_hand == 3 #戦わない
  	  return false
    end
    
      puts "ホイ！"
      puts "--------------"
      puts "あなた:#{jankens[player_hand]},相手:#{jankens[program_hand]}"
      
    if player_hand == program_hand #あいこ
      puts "あいこで..."
      case_pattern = "パターン1"
    elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
      puts "あなたの勝ちです"
      case_pattern = "パターン2"
    else(player_hand == 1 && program_hand == 0) || (player_hand == 2 && program_hand == 1) || (player_hand == 0 && program_hand == 2)
      puts "あなたの負けです"
      case_pattern = "パターン3"
    end

    case case_pattern
      when "パターン1"
        return true
      when "パターン2"
          puts "--------------"
          puts "あっち向いて〜"
          puts "0(上)1(下)2(左)3(右)"
          player_finger = gets.to_i
          program_face = rand(3)
          direction = ["上","下","左","右"]
          puts "ホイ！"
          puts "--------------"
          puts "あなた:#{direction[player_finger]},相手:#{direction[program_face]}"
        if player_finger == program_face
          puts "あなたの勝利"
          return false
        else
          puts "--------------"
          return true
        end
        
      when "パターン3"
          puts "--------------"
          puts "あっち向いて〜"
          puts "0(上)1(下)2(左)3(右)"
          player_face = gets.to_i
          program_finger = rand(3)
          direction = ["上","下","左","右"]
          puts "ホイ！"
          puts "--------------"
          puts "あなた:#{direction[player_face]},相手:#{direction[program_finger]}"
        if player_face == program_finger
          puts "あなたの敗北"
          return false
        else
          puts "--------------"
          return true
        end
    end
  end
      next_game = true
    while next_game do
      next_game = janken
    end