LetsEncrypts::Engine.routes.draw do
	# root of the plugin
        root :to => 'lets_encrypts#index'
	# examples of controllers built in this generator. delete at will
	match 'settings' => 'lets_encrypts#settings',:via=> :all
	match 'advanced' => 'lets_encrypts#advanced',:via => :all
end
