Deface::Override.new(
	:virtual_path => 'spree/shared/_header',
	:name => 'redo main_nav_bar',
	:replace_contents => '#tabs',
	:text => "<nav>
				  <div id='main-nav-bar' class='navbar'>
					  <ul id='nav-bar' class='nav navbar-nav navbar-right' data-hook>
			    		
			  		  </ul>
				  </div> 
			</nav>",
	:original => '5f436e5e848691cf7afffcf5e7906b32eecb6bd4'		
	)
# <li><%= render partial: 'spree/shared/sidebar' if content_for? :sidebar %></li>

# <li id='search-bar' data-hook>
# 			      			<div class='navbar container-fluid' id='search_main_2'>
# 	       						<% @taxons = @taxon && @taxon.parent ? @taxon.parent.children : Spree::Taxon.roots %>
# 								<%= form_tag spree.products_path, :method => :get, class: 'navbar-form', id:'main_search_2' do %>
# 						        	<div class='form-group'>
# 						          		<%= search_field_tag :keywords, params[:keywords], :placeholder => 'Search all of our products!', class: 'form-control' %>
# 						        	</div>
# 	        						<%= submit_tag Spree.t(:search), :name => nil, class: 'btn', id:'search_button_2' %>
# 	       						<% end %>
#       						</div> 
# 			   			</li>
# 			   			<li id='home-link' data-hook> <a href='/'>Home</a></li>
# 				      	<li id='link-to-cart' data-hook>
# 				          <%= link_to Spree.t(:cart), spree.cart_path %>
# 				        &nbsp;
# 				      	</li>
# 				      	<script>Spree.fetch_cart()</script>