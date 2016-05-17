def sign_up(details={})
  visit '/users/new'
    fill_in :first_name, with: details[:first_name]
    fill_in :last_name, with: details[:last_name]
    fill_in :email, with: details[:email]
    fill_in :password, with: details[:password]
    fill_in :password_confirm, with: details[:password_confirm]
end

def new_user
  {first_name: 'andy', last_name: 'peters', email: 'a@gmail.com',
  password: '123', password_confirm: '123'}
end

def bad_email_user
  {first_name: 'andy', last_name: 'peters', email: 'a@gmail',
  password: '123', password_confirm: '123'}
end

def bad_password_user
  {first_name: 'a', last_name: 'b', email: 'a@gmail.com',
  password: '123', password_confirm: 'abc'}
end
