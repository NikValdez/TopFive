FactoryGirl.define do 

	factory :user do 
		username "foo"
		password "foobar"
		email { "#{username}@example.com" }

		# email {FFaker::Internet.email }

		# password {Devise.friendly_token.first(8) }
	end
end