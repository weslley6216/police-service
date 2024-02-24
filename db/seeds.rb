3.times do |index|
  FactoryBot.create(:policy, :with_data)
end

p 'Banco de dados populado com sucesso :)'