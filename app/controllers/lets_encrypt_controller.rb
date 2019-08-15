class LetsEncryptController < ApplicationController
	before_action :admin_required

	def index
		@page_title = t('lets_encrypt')
	end
end
