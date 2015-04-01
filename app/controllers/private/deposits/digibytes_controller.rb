module Private
  module Deposits
    class DigibytesController < ::Private::Deposits::BaseController
      include ::Deposits::CtrlCoinable
    end
  end
end
