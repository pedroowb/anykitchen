module ApplicationHelper
  def admin?
    session[:admin]
  end

  def format_price(price)
    number_to_currency(price, unit: "R$", separator: ",", delimiter: ".")
  end
end
