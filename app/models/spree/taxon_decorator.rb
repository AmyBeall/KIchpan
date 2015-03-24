 Spree::Taxon.class_eval do
   
    Spree::Taxon.attachment_definitions[:icon][:styles] = { 
            :mini => '32x32>', 
            :normal => '140x82>', 
            :my_size => '350x220#' 
        }
end