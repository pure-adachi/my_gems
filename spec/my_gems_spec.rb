require 'spec_helper'

RSpec.describe MyGems do
  describe MyGems::FizzBuzz do
    describe '#say' do
      let(:fizz_buzz) { described_class.new(number) }
      subject { fizz_buzz.say }

      context '３で割り切れる場合' do
        let(:number) { 3 }
        example 'Fizz という' do
          expect(subject).to eq 'Fizz'
        end
      end

      context '５で割り切れる場合' do
        let(:number) { 5 }
        example 'Buzz という' do
          expect(subject).to eq 'Buzz'
        end
      end

      context '１５で割り切れる場合' do
        let(:number) { 15 }
        example 'FizzBuzz という' do
          expect(subject).to eq 'FizzBuzz'
        end
      end

      context '３や１５で割り切れない場合' do
        let(:number) { 1 }
        example 'その 数字 をいう' do
          expect(subject).to eq '1'
        end
      end
    end
  end
end
