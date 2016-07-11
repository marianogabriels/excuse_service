require 'sinatra'

get '/' do
  escusas =  [
    "Lo voy a hablar con los chicos",
    "Es un desarollo que lleva su tiempo, tenemos que evaluarlo con el equipo antes",
    "Estamos cerrando otros desarollos, antes lo tengo que charlar con el equipo",
    "Lo vamos a hablar con manu",
    "Manu no esta",
    "no funciona porque todavia no refrescaron los dns"
  ]
  escusas << "El equipo esta de vacaciones" if Time.now.month <= 2 #si es enero/febrero

  escusas.sample
end
