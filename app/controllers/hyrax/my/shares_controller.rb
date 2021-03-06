module Hyrax
  module My
    class SharesController < MyController
      # Override of Blacklight::RequestBuilders
      def search_builder_class
        Hyrax::My::SharesSearchBuilder
      end

      def index
        super
      end

      private

        def search_action_url(*args)
          hyrax.dashboard_shares_url(*args)
        end

        # The url of the "more" link for additional facet values
        def search_facet_path(args = {})
          hyrax.dashboard_shares_facet_path(args[:id])
        end
    end
  end
end
