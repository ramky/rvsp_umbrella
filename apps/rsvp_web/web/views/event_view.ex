defmodule RsvpWeb.EventView do
  use RsvpWeb.Web, :view

  def format_date(date) do
    {{y,m,d}, {h,mm,s}} = Ecto.DateTime.to_erl(date)
    "#{m}/#{d}/#{y} at #{h}:#{mm}:#{s}"
  end
end
