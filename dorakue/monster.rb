
require './character.rb'

class Monster < Character

  POWER_UP_RATE = 1.5
  CALC_HALF_UP = 0.5

  def initialize(**params)
    super(
      name: params[:name],
      hp: params[:hp],
      offense: params[:offense],
      defense: params[:defense]
    )
    @is_angry = false
    @trigger_of_transform = params[:hp] * CALC_HALF_UP
  end

  def attack(brave)
    if @hp <= @trigger_of_transform && @is_angry == false
      @is_angry = true
      transform
    end
    damage = calculate_damage(brave)
    cause_damage(target: brave, damage: damage)

    attack_message
    damage_message(target: brave, damage: damage)
  end


  private

    def calculate_damage(target)
      @offense - target.defense
    end

    def cause_damage(**params)
      damage = params[:damage]
      target = params[:target]

      target.hp -= damage

      target.hp = 0 if target.hp < 0

      puts "#{target.name}は#{damage}のダメージを受けた"
    end

    def transform
      transform_name = "ドラゴン"

      @offense *= POWER_UP_RATE
      @name = transform_name
    end
end

