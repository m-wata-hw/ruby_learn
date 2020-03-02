require 'natto'

txt = '今日は晴れだね花粉がきつい'

natto = Natto::MeCab.new
natto.parse(txt) do |n|
  puts "#{n.surface}: #{n.feature}"
end