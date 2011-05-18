authorization do
  
  role :administrator do
    has_permission_on [:roles, :users],  :to => [:index, :show, :new, :create, :edit, :update, :destroy]
    has_permission_on :authorization_rules, :to => :read
  end
  
  role :guest do
    has_permission_on :users, :to => [:new, :create]
  end
end