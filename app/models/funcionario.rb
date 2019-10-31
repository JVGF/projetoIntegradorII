class Funcionario < ApplicationRecord
has_many :veiculo
belongs_to :estacionamento
end
