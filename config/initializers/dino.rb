begin
  DinoRails::Application.config.board = Dino::Board.new(Dino::TxRx.new)
  button = Dino::Components::Button.new(pin: 13, board: DinoRails::Application.config.board)

  button.down do
    puts 'down'
    Pusher['button'].trigger!('down', { :some => 'data' })
  end

  button.up do
    puts 'up'
    Pusher['button'].trigger!('up', { :some => 'data' })
  end

rescue Dino::BoardNotFound
  puts 'The board is not connected'
end