require "active_model"

class Customer < Struct.new(:name, :id)
  extend ActiveModel::Naming
  include ActiveModel::Conversion

  def to_param
    id.to_s
  end
end

class BadCustomer < Customer
end

class GoodCustomer < Customer
end

module Quiz
  class Question < Struct.new(:name, :id)
    extend ActiveModel::Naming
    include ActiveModel::Conversion

    def to_param
      id.to_s
    end
  end
end
