module Private::Withdraws
  class DigibytesController < ::Private::Withdraws::BaseController
    include ::Withdraws::CtrlCoinable
  end
end
