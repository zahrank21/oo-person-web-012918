class Person
  attr_reader :name, :hygiene, :happiness
  attr_accessor :bank_account

  def initialize(name, happiness = 8, hygiene = 8, bank_account = 25)
    @name = name

    @happiness = happiness
    @hygiene = hygiene
    @bank_account = bank_account
  end

  def happiness=(happiness)
    @happiness = happiness
    if @happiness > 10
      @happiness = 10
    else
      @happiness
    end
  end

  def happiness
    @happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness
    end
  end

  def hygiene=(hygiene)
    @hygiene = hygiene
    if @hygiene > 10
      @hygiene = 10
    else
      @hygiene
    end
  end

  def hygiene
    @hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else
      @hygiene
    end
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    return 'all about the benjamins'
  end

  def take_bath
     self.hygiene += 4
     hygiene=(@hygiene)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -=3
    hygiene=(@hygiene)
    self.happiness += 2
    happiness=(@happiness)

    return "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness +=3
    happiness=(@happiness)
    person.happiness += 3
    # person.happiness=(@happiness)

    return "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      happiness=(@happiness)
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      happiness=(@happiness)
      person.happiness +=1
      return "blah blah sun blah rain"
    else
      return 'blah blah blah blah blah'
    end
  end
end
