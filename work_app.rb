#お仕事に疲れたら癒してくれるよ
def good_condition
  3.times do
    puts "仕事しろ〜"
    sleep 1
  end
  puts "まだまだ行けますか?\n[1]もう無理\n[2]まだまだいける"
  input = gets.to_i
  if input == 2
    good_condition
  else
    puts "お疲れ様でした\n休んでください"
    exit!
  end
end
def normal
  num = rand(10)
  puts "今日のラッキーナンバーは#{num}です！"
  if num == 7
    puts "7が出たから帰っていいよ!"
    exit!
  else
    puts "まだまだラッキーナンバー出していいよ"
  sleep 1
    normal
  end
end
def bad_condition
  puts "本当に体調悪いんですか?\n[1]本当です\n[2]嘘です"
  input = gets.to_i
  if input == 1
    puts "お疲れ様でした\n休んでください"
    exit!
  elsif input == 2
    puts "嘘はよくないです"
    good_condition
  else
    puts "ちゃんと入力してないから仕事して"
    good_condition
  end
end
puts "今日の調子はどう？"
puts "１：元気\n２：普通\n３：悪い"
input = gets.to_i
if input == 1
  good_condition
elsif input == 2
  normal
else input == 3
  bad_condition
end
