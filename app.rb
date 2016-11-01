require 'sinatra'

class App < Sinatra::Base
  get '/' do
    escusas =  [
      "Es un desarollo que lleva su tiempo, tenemos que evaluarlo con el equipo antes",
      "Estamos cerrando otros desarollos, antes lo tengo que charlar con el equipo",
      "Lo vamos a hablar con el gerente de tecnologia",
      "Hay que esperar que se propaguen los dns",
      "No me anda el click",
      "No estoy en la máquina"
    ]
    escusas << "El equipo esta de vacaciones" if Time.now.month <= 2 #si es enero/febrero

    escusas.sample
  end
end
