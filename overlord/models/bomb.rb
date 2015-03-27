class Bomb
  attr_accessor :status
  attr_reader :activate_code, :deactivate_code, :attempts

  def initialize(activate_code: '1234', deactivate_code: '0000')
    @activate_code = check_code?(activate_code)
    @deactivate_code = check_code?(deactivate_code)
    @status = :inactive
    @attempts = 0
  end

  def inactive?
    @status.eql?(:inactive)
  end

  def active?
    @status.eql?(:active)
  end

  def exploded?
    @status.eql?(:explode)
  end

  def activate(user_input)
    return @status unless @activate_code.eql?(user_input) && inactive?
    @status = :active
  end

  def deactivate(user_inputted_code)
    @attempts += 1
    explode if @attempts ==  3
    @status = :inactive if @deactivate_code.eql?(user_inputted_code)
  end

  def explode
    return @status unless active?
    @status = :explode
  end

  def valid_code?(pin)
    /^\d{4}$/ === pin
  end

  def check_code?(pin)
    return pin if valid_code?(pin)
  end

  def to_s
    "#{@activate_code} #{@deactivate_code} #{@status}"
  end
end
