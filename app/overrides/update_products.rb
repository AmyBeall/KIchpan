Deface::Override.new(
	:virtual_path => 'spree/shared/_products',
	:name => 'redo product thumbnails',
	:replace => '#products',
	:text => "<div id='products' class='row container-fluid' data-hook>
              <% products.each do |product| %>
                <% url = spree.product_url(product, taxon_id: @taxon.try(:id)) %>
                <div id='product_<%= product.id %>' class='product-list-item' data-hook='products_list_item' itemscope itemtype='http://schema.org/Product'>
                  <div class='thumbnail products_page'>
                    <% cache(@taxon.present? ? [I18n.locale, current_currency, @taxon, product] : [I18n.locale, current_currency, product]) do %>
                        <div class='product-body'>
                          <%= link_to product_image(product, itemprop: 'image'), url, itemprop: 'url' %>
                          <%= link_to truncate(product.name, length: 18), url, class:'caption', itemprop: 'name', title: product.name %>
                        </div>
                        <div class='panel-footer'>
                          <a href='<%= url %>'><p class='hide_des'><%= product.description %></p></a>
                           <a href='<%= url %>'>
                           <div id='plus_sign'></div>
                            <span itemprop='offers' itemscope itemtype='http://schema.org/Offer'>
                              <span class='price selling lead' itemprop='price'><%= display_price(product) %>
                              </span>
                            </span>
                          </a>
                        </div> 
                    <% end %>
                  </div>
                </div>
              <% end %>
              <% reset_cycle('classes') %>
          </div>",
  :original => '0e8c6aaf62730ef4e5f40a59963ef0edfeb703cc'         
	)

    #  <div class='add-to-cart'><br/>
    #   <div class='input-group'>
    #     <%= number_field_tag :quantity, 1, :class => 'title form-control', :min => 1 %>
    #     <span class='input-group-btn'>
    #       <%= button_tag :class => 'btn btn-success', :id => 'add-to-cart-button', :type => :submit do %>
    #         <%= Spree.t(:add_to_cart) %>
    #       <% end %>
    #     </span>
    #   </div>
    # </div>