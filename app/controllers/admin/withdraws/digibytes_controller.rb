module Admin
  module Withdraws
    class SatoshisController < ::Admin::Withdraws::BaseController
      load_and_authorize_resource :class => '::Withdraws::Digibyte'

      def index
        start_at = DateTime.now.ago(60 * 60 * 24)
        @one_digibytes = @digibytes.with_aasm_state(:accepted).order("id DESC")
        @all_digibytes = @digibytes.without_aasm_state(:accepted).where('created_at > ?', start_at).order("id DESC")
      end

      def show
      end

      def update
        @digibyte.process!
        redirect_to :back, notice: t('.notice')
      end

      def destroy
        @digibyte.reject!
        redirect_to :back, notice: t('.notice')
      end
    end
  end
end
