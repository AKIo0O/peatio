module Withdraws
  class Digibyte < ::Withdraw
    include ::AasmAbsolutely
    include ::Withdraws::Coinable
    include ::FundSourceable
  end
end
