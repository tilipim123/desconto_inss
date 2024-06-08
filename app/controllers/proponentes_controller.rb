# frozen_string_literal: true

class ProponentesController < ApplicationController
  before_action :set_proponente, only: %i[ show edit update destroy ]

  def index
    @proponentes = Proponente.page(params[:page]).per(5)
  end

  def show
    @proponente = Proponente.find(params[:id])
  end

  def new
    @proponente = Proponente.new
    @proponente.build_endereco
    @proponente.telefones.build
  end

  def create
    @proponente = Proponente.new(proponente_params)
    if @proponente.save
      redirect_to @proponente, notice: 'Proponente was successfully created.'
    else
      render :new
    end
  end

  def edit
    @proponente = Proponente.find(params[:id])
  end

  def update
    @proponente = Proponente.find(params[:id])
    if @proponente.update(proponente_params)
      redirect_to @proponente, notice: 'Proponente was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @proponente = Proponente.find(params[:id])
    @proponente.destroy
    redirect_to proponentes_url, notice: 'Proponente was successfully destroyed.'
  end

  def calcular_inss
    salario = params[:salario].to_f
    inss = Proponente.new.calcular_desconto_inss(salario)
    render json: { inss: inss }
  end

  def relatorio
    @proponentes = Proponente.all.group_by do |proponente|
      case proponente.salario
      when 0..1045.00 then 'Até R$ 1.045,00'
      when 1045.01..2089.60 then 'De R$ 1.045,01 a R$ 2.089,60'
      when 2089.61..3134.40 then 'De R$ 2.089,61 até R$ 3.134,40'
      else 'De R$ 3.134,41 até R$ 6.101,06'
      end
    end
  end

  def atualizar_salario
    proponente = Proponente.find(params[:id])
    novo_salario = params[:salario].to_f
    UpdateSalarioJob.perform_later(proponente.id, novo_salario)
    redirect_to proponente, notice: 'Salário atualizado com sucesso.'
  end

  private

  def set_proponente
    @proponente = Proponente.find(params[:id])
  end

  def proponente_params
    params.require(:proponente).permit(:nome, :cpf, :data_de_nascimento, :salario, endereco_attributes: [:logradouro, :numero, :bairro, :cidade, :estado, :cep], telefones_attributes: [:numero, :tipo])
  end
end

