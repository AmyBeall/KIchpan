class MainController < ApplicationController
  def index
  	@taxonomies = Spree::Taxonomy.includes(root: :children)
  	@taxon = Spree::Taxon.find(params[:taxon]) if params[:taxon].present?
  end
end
