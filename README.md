# Kimchistan
[![Coverage Status](https://coveralls.io/repos/github/CraftAcademy/Kimchistan-BackEnd/badge.svg?branch=develop)](https://coveralls.io/github/CraftAcademy/Kimchistan-BackEnd?branch=develop)
August 2017 Craft Academy Course Final Project

We are using RAILS as an API only application. 

## Website
https://kimchistan-dev.surge.sh/

## Prerequisites
- ruby 2.4.1
- ruby rails 5.1.4

### Installing
Ensure that the gem versions on your local machine are as specified in the Gemfile.
Run bundle install to install dependencies.

## Running the tests
Run rake to see all the tests pass.  

### For unit tests we use Rspec
It is a behavior-driven development (BDD) framework which is extensively used in the production applications. The basic idea behind this concept is that of Test Driven Development(TDD) where the tests are written first and the development is based on writing just enough code that will fulfill those tests followed by refactoring.  

Rspec example:
```
RSpec.describe Dish, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :price }
    it { is_expected.to have_db_column :image }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :price }
    it { is_expected.to validate_presence_of :image }
  end

  describe 'Factory' do
    it 'should be valid' do
      expect(FactoryBot.create(:dish)).to be_valid
    end
  end
end
```

## Deployment
We automatically deploy this app with [Heroku](https://www.heroku.com/) through [Github](https://github.com/) and [Semaphore](https://semaphoreci.com/).

## Built With

#### Main Gems and Helpers
* [Rails](https://github.com/rails/rails)
* [Devise](https://github.com/plataformatec/devise)
* [Stripe Rails](https://github.com/Everapps/stripe-rails)

#### Development Gems
* [Pry Byebug](https://github.com/deivid-rodriguez/pry-byebug)

#### Testing Gems
* [Rspec-rails](https://github.com/rspec/rspec-rails)
* [Shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
* [Factory_Bot_rails](https://github.com/thoughtbot/factory_girl_rails)
* [Coveralls](https://rubygems.org/gems/coveralls/versions/0.8.15)
* [Database_cleaner](https://github.com/DatabaseCleaner/database_cleaner)

## Authors
* [BasilMawejje](https://github.com/BasilMawejje)
* [Magnus-thor](https://github.com/magnus-thor)
* [NurlanEmir](https://github.com/nurlanemir)
* [Olofvi](https://github.com/olofvi)
* [Sajaas](https://github.com/Sajaas)

## License
MIT license

## Acknowledgments
The entire project is comprised of open source code so a huge **THANKS** to the open source community.
Built with help from the coaches and some cool gems.
* [Tochman](https://github.com/tochman)
* [Diraoulo](https://github.com/diraulo)
