# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

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
 
p "Created #{Client.count} Clients"


Employee.destroy_all
 
employee_list = [
  [ 5196, "MARIO GABRIEL", "RUIZ", "BARREDA", "CR", "PRATS DE LLUÇANES", "57", "2 1", "08208", "SABADELL", "ESPAÑOLA", "66-035.90.13", "93-129.18.58", "46829771-T", "08/1189081640", "DNI", "GENERAL", "", "10/8/86", "BARCELONA", "H", "Sí", "ES40 0239 2027 09 3040000238", "", "239", "2027", "9", "3040000238" ],
  [ 5197, "DAVID", "DIAZ", "DELGADO", "CR", "COLLBLANC", "150", "BAJOS", "08028", "BARCELONA", "ESPAÑOLA", "61-864.21.23", "", "38137029-Q", "08/1007756510", "DNI", "GENERAL", "", "2/26/74", "BARCELONA", "H", "Sí", "ES23 2013 0076 19 0200866195", "", "2013", "76", "19", "200866195" ],
  [ 5198, "MIGUEL ANGEL", "PICO", "MOLERO", "C/", "AMADEU TORNER", "33-37", "10 3", "08902", "L´HOSPITALET DE LLOBREGAT", "ESPAÑOLA", "67-763.42.97", "", "37392179-K", "08/1063840290", "DNI", "GENERAL", "", "5/19/83", "BARCELONA", "H", "Sí", "ES53 0081 0161 7700 06363949", "", "81", "161", "77", "6363949" ],
  [ 5199, "MIREIA", "CASTELLVÍ", "GAETA", "C/", "VALLESPIR", "", "", "08014", "BARCELONA", "", "66-932.77.49", "", "46233536V", "", "DNI", "GENERAL", "", "1/31/70", "BARCELONA", "M", "Sí", "", "", "", "", "", "" ],
  [ 5200, "ESTHER", "MORENO", "CERCOS", "RD", "GUINARDO", "24", "6 4 ESC. D", "08024", "BARCELONA", "ESPAÑOLA", "66-792.66.46", "93-219.00.07", "46408798-L", "08/1123083850", "DNI", "GENERAL", "", "2/2/85", "BARCELONA", "M", "Sí", "ES86 2100 3022 50 2104230021", "", "2100", "3022", "50", "2104230021" ],
  [ 5201, "BEATRIZ", "CASTRO", "JIMENEZ", "AV", "RIO DE JANEIRO", "79", "2 3", "08016", "BARCELONA", "ESPAÑOLA", "64-432.73.32", "", "48020877-M", "43/1031834558", "DNI", "GENERAL", "", "1/28/89", "BARCELONA", "M", "Sí", "ES41 0019 0010 1740 10027794", "", "19", "10", "17", "4010027794" ],
  [ 5202, "SILVIA", "CODES", "ZAFRA", "C/", "PELAI", "20", "1 3", "08860", "CASTELLDEFELS", "ESPAÑOLA", "61-526.94.40", "", "38458480-L", "08/1024028258", "DNI", "GENERAL", "", "10/13/72", "BARCELONA", "M", "Sí", "ES35 2038 8937 8930 00692616", "", "2038", "8937", "89", "3000692616" ],
  [ 5203, "MARIA", "VENTURA", "VALDE", "C/", "JULI GARRETA", "25", "BAJOS 2", "08950", "ESPLUGUES DE LLOBREGAT", "ESPAÑOLA", "63-090.86.64", "93-125.11.53", "52622567-Q", "08/1056548520", "DNI", "GENERAL", "", "9/29/75", "BARCELONA", "M", "Sí", "ES29 2100 3308 91 2200100499", "", "2100", "3308", "91", "2200100499" ],
  [ 5204, "ANA MARIA", "MARTINEZ", "BONET", "C/", "JOAN", "23", "15 ESC C 2 2", "08690", "SANTA COLOMA DE CERVELLO", "ESPAÑOLA", "63-846.19.97", "", "38084975-B", "08/0490649668", "GENERAL", "GENERAL", "", "11/11/68", "BARCELONA", "M", "Sí", "ES49 2100 2952 81 0100595430", "", "2100", "2952", "81", "100595430" ],
  [ 5205, "GEMMA", "CASTELLS", "CAMBRAY", "C/", "RAMON LLULL", "17", "ATICO 2º", "08830", "SANT BOI DE LLOBREGAT", "ESPAÑOLA", "61-025.55.25", "", "52623741-V", "08/1052970836", "DNI", "GENERAL", "", "4/17/77", "BARCELONA", "M", "Sí", "ES21 0182 4259 04 0201547047", "", "182", "4259", "4", "201547047" ],
  [ 5206, "MARIA", "QUIJADA", "CASTILLO", "C/", "COMTE BORRELL", "220", "4 1", "08029", "BARCELONA", "ESPAÑOLA", "64-946.67.65", "", "40976270-E", "08/0449886834", "DNI", "GENERAL", "", "6/15/66", "BARCELONA", "M", "Sí", "0081 5055 35 0001450354", "", "81", "5055", "35", "1450354" ],
  [ 5207, "RAQUEL", "FERNANDEZ", "PRIETO", "C/", "SIS", "8", "URB. STA. Mª DE LA VALL", "08757", "CORBERA DE LLOBREGAT", "ESPAÑOLA", "62-549.43.09", "93-688.21.93", "46137166-V", "08/1065948022", "DNI", "GENERAL", "", "9/12/72", "BARCELONA", "M", "Sí", "ES74 2100 1005 01 0100197185", "", "2100", "1005", "1", "100197185" ],
  [ 5208, "LAURA", "ARIAS", "GONZALEZ", "C/", "FONT", "74-76", "1 1", "08905", "HOSPITALET DE LLOBREGAT", "ESPAÑOLA", "67-824.30.76", "", "46460329-F", "08/1096306695", "DNI", "GENERAL", "", "8/7/82", "BARCELONA", "M", "Sí", "ES47 0049 0759 35 2391248875", "", "49", "759", "35", "2391248875" ],
  [ 5209, "VICTORIA", "LOSTALO", "I VILA-TRIAS", "C/", "PROVENÇA", "154", "ENTRESOL 2ª", "08036", "BARCELONA", "ESPAÑOLA", "69-131.09.93", "", "44007660N", "", "DNI", "GENERAL", "", "9/21/72", "BARCELONA", "M", "Sí", "", "", "", "", "", "" ],
  [ 5210, "JAUME", "TEULE", "TORRELLES", "C/", "PARIS", "126", "2 1", "08036", "BARCELONA", "ESPAÑOLA", "60-542.63.14", "", "47679688-K", "25/1011689877", "DNI", "GENERAL", "", "5/24/84", "LLEIDA", "H", "Sí", "ES93 0081 5398 72 0006207936", "", "81", "5398", "72", "6207936" ],
  [ 5211, "FRANCESC", "VILELLA", "ABELLO", "C/", "DOCTOR KLEIN", "162", "1 3", "08440", "CARDEDEU", "ESPAÑOLA", "67-865.79.88", "", "46650563-P", "08/1019587880", "DNI", "GENERAL", "", "3/4/69", "REUS", "H", "Sí", "ES49 3025 0012 1814 0005 2346", "", "3025", "12", "18", "1400052346" ],
  [ 5212, "MONTSERRAT", "MERINO", "SANT", "C/", "SELVA DE MAR", "265", "4 1", "08020", "BARCELONA", "ESPAÑOLA", "65-232.00.92", "", "41006039-Y", "08/1131786164", "DNI", "GENERAL", "", "7/8/86", "BARCELONA", "M", "Sí", "ES92 2100 1187 15 0100245081", "", "2100", "1187", "15", "100245081" ],
  [ 5213, "RAQUEL", "SOLER", "CARRASCO", "C/", "PIFERRER", "148", "4 1", "08016", "BARCELONA", "ESPAÑOLA", "60-624.06.82", "", "43533381-Q", "08/1086585174", "DNI", "GENERAL", "", "11/26/76", "BARCELONA", "M", "Sí", "ES65 0081 0149 99 0001400250", "", "81", "149", "99", "1400250" ],
  [ 5214, "LAIA", "RECASENS", "ANDRES", "RB", "RAMBLA DEL POBLENOU", "64", "3 1", "08005", "BARCELONA", "ESPAÑOLA", "63-536.36.53", "", "48095717-A", "08/1302654189", "DNI", "GENERAL", "", "7/13/92", "BARCELONA", "M", "Sí", "ES14 2100 3200 99 2104860313", "", "2100", "3200", "99", "2104860313" ],
  [ 5215, "MARIA SOLEDAD", "LOPEZ", "SANTAOLAYA", "AV", "PARAL.LEL", "46", "ENT. 102", "08001", "BARCELONA", "ESPAÑOLA-ARGENTINA", "68-795.05.68", "", "45603992-Y", "04/1032855831", "DNI", "GENERAL", "", "9/10/80", "ARGENTINA", "M", "Sí", "ES52 1465 0120 34 1720797086", "", "1465", "120", "34", "1720797086" ],
]

employee_list.each do |codoper, nombre, apellido1, apellido2, siglas, calle, numero, direccion, codpos, municipio, nacionalidad, telefono, telefono1, dni, nss, docidentificativo, regimen, fecmod, fecnacimiento, lugarnacimiento, sexo, volveravisar, observaciones, iban, banco, oficina, dc, cuenta|
  Employee.create( codoper: codoper, nombre: nombre, apellido1: apellido1, apellido2: apellido2, siglas: siglas, calle: calle, numero: numero, direccion: direccion, codpos: codpos, municipio: municipio, nacionalidad: nacionalidad, telefono: telefono, telefono1: telefono1, dni: dni, nss: nss, docidentificativo: docidentificativo, regimen: regimen, fecmod: fecmod, fecnacimiento: fecnacimiento, lugarnacimiento: lugarnacimiento, sexo: sexo, volveravisar: volveravisar, observaciones: observaciones, iban: iban, banco: banco, oficina: oficina, dc: dc, cuenta: cuenta )
end
 
p "Created #{Employee.count} Employees"