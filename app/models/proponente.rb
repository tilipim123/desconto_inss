# frozen_string_literal: true

# app/models/proponente.rb
class Proponente < ApplicationRecord
  has_one :endereco, dependent: :destroy
  has_many :telefones, dependent: :destroy
  accepts_nested_attributes_for :endereco, :telefones

  before_save :calcular_inss

  private

  def calcular_inss
    self.inss = calcular_desconto_inss(self.salario)
  end

  def calcular_desconto_inss(salario)
    if salario <= 1045.00
      salario * 0.075
    elsif salario <= 2089.60
      (1045.00 * 0.075) + ((salario - 1045.00) * 0.09)
    elsif salario <= 3134.40
      (1045.00 * 0.075) + (1044.60 * 0.09) + ((salario - 2089.60) * 0.12)
    elsif salario <= 6101.06
      (1045.00 * 0.075) + (1044.60 * 0.09) + (1044.80 * 0.12) + ((salario - 3134.40) * 0.14)
    else
      713.08
    end
  end
end