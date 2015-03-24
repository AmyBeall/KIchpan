Deface::Override.new(
	:virtual_path => 'spree/shared/_taxonomies',
	:name => 'redo sidebar',
	:replace => '#taxonomies',
	:text => "<nav id='taxonomies' class='sidebar-item' data-hook>
				  <% @taxonomies.each do |taxonomy| %>
				    <% cache [I18n.locale, taxonomy, max_level] do %>
				      <select class='btn btn-default dropdown-toggle' id='n_search'>
				      	<option><%= Spree.t(:shop_by_taxonomy, :taxonomy => taxonomy.name) %><span class='caret'></span></option>
				      	<%= taxons_tree(taxonomy.root, @taxon, max_level) %>
				      </select>
				    <% end %>
				  <% end %>
			</nav>",
	:original => '359f655741045bc959e61b78e6a7e9fa307de32c'		
	)