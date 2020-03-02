require 'socket'
# サーバ接続 OPEN
serv = TCPServer.new(20000)
loop do
  # ソケット OPEN （クライアントからの接続待ち）
  sock = serv.accept
  while str = sock.gets.chomp
    # クライアントから受信した文字列を出力
    puts "RECV : #{str}"
    # クライアントへ文字列返却
    sock.puts "SERVER received '#{str}' from CLIENT."
  end
  # ソケット CLOSE
  sock.close
end