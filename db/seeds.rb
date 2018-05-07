# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Client.destroy_all
 
client_list = [
  [ 4300244, "LA CARPETA; EL PAPER S.A. (RAIMA)", "A58094624" ],
  [ 4300245, "SELECCIONES KONEMA, S.L.", "B-08265993" ],
  [ 4300246, "MATRUST, S.L.", "B58113697" ],
  [ 4300247, "VITRULAN, S.L.U.", "B-66668138" ],
  [ 4300248, "PROCURADURIA SEGURA TOLL, S.L.P.", "B-66028424" ],
  [ 4300249, "TRANSPORTES Y CONSIGNACIONES MARÍTIMAS S.A. (TRANSCOMA)", "A08140998" ],
  [ 4300250, "NOTARIA RUBIES TARRAGONA CB", "E60376480" ],
  [ 4300251, "GRUPO MAIN IMAGEN GLOBAL S.A.", "A60904687" ]
]

client_list.each do |codcli, razsocial, nif|
  Client.create( codcli: codcli, razsocial: razsocial, nif: nif )
end
 
p "Created #{Client.count} clients"
