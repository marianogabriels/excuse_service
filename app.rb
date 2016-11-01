require 'sinatra'

class App < Sinatra::Base
  get '/' do
    excusa =  [
      "Es un desarollo que lleva su tiempo, tenemos que evaluarlo con el equipo antes",
      "Estamos cerrando otros desarollos, antes lo tengo que charlar con el equipo",
      "Lo vamos a hablar con el gerente de tecnologia",
      "Hable más fuerte que tengo una toalla",
      "Hay que esperar que se propaguen los dns",
      "Nuestros monos no están capacitados para ese trabajo",
      "No me anda el click",
      "No estoy en la máquina"
    ]
    excusa << "El equipo esta de vacaciones" if Time.now.month <= 2 #si es enero/febrero

    excusa.sample
  end
end
