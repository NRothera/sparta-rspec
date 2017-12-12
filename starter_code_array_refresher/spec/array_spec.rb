require 'spec_helper'

describe 'working through various arrays' do

  context 'standard 1 dimensional arrays' do
    dog_breeds = ['boxer','jack russell', 'bloodhound', 'greyhound']

    it 'the first entry should equal boxer' do
      expect(dog_breeds[0]).to eql("boxer")
    end

    it 'the last entry should equal greyhound' do
      expect(dog_breeds[-1]).to eql('greyhound')
    end

    it 'the second entry should equal jack russell' do
      expect(dog_breeds[1]).to eql("jack russell")

    end

  end

  context 'test 2 dimensional arrays' do

    dog_breed_and_names = [['jack russell', 'archie'],['boxer', 'bruce'],['bloodhound', 'droopy'], ['greyhound', 'streak']]

    it 'the first dog name should equal archie' do
      expect(dog_breed_and_names[0][1]).to eql('archie')
    end

    it 'the second last entry should be a bloodhound called droopy' do
      expect(dog_breed_and_names[-2][1]).to eql("droopy")
    end

    it 'the second entry should be a boxer' do
      expect(dog_breed_and_names[1][0]).to eql("boxer")
    end

  end

  context 'test multidimensional arrays' do
    dog_breed_names_age_and_health = [['jack russell', 'archie',[4, 'healthy']],['boxer', 'bruce',[7,'bad back']],['bloodhound', 'droopy', [6, 'healthy']], ['greyhound', 'streak',[12, 'old dog']]]
    bloodhound_index = dog_breed_names_age_and_health.index("bloodhound")

    it 'the last dog should be called streak and is an old dog' do
      expect(dog_breed_names_age_and_health.last[1]).to eql('streak')
      expect(dog_breed_names_age_and_health.last.last[1]).to eql("old dog")
    end

    it 'the bloodhound should be 6 years old and healthy' do
      expect(dog_breed_names_age_and_health[2][2][0]).to eql(6)
      expect(dog_breed_names_age_and_health[2][2][1]).to eql('healthy')
    end

    it 'the first dog should be a jack russell and 4 years old' do
      expect(dog_breed_names_age_and_health.first[0]).to eql('jack russell')
      expect(dog_breed_names_age_and_health.first.last[0]).to eql(4)
    end

  end

end
