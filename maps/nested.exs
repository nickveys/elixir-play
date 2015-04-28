defmodule Customer do

  defstruct name: "", company: ""

end

defmodule BugReport do

  defstruct owner: %Customer{}, details: ""

  def company_name(%BugReport{ owner: %Customer{ company: company } }) do
    company
  end

end
