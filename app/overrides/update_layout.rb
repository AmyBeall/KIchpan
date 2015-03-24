Deface::Override.new(
	:virtual_path => 'spree/layouts/spree_application',
	:name => 'redo main layout',
	:replace => '.container',
	:text => "<div class='container' id='products_body'>
			      <div class='row' data-hook>
					<div id='content' class='<%= !content_for?(:sidebar) ? 'col-sm-12' : 'col-sm-12 col-md-12' %>' data-hook>
			          <%= flash_messages %>
			          <%= yield %>
			        </div>

			        <%= yield :templates %>
			      </div>
			  </div>",
	:original => 'd0524e9c85c9e893a2742f33693c3c70ec4468df'		  
	)