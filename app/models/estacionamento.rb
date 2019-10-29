class Estacionamento < ApplicationRecord
has_one :vaga
has_one :veiculo
end
