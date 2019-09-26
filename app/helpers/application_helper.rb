module ApplicationHelper
  def page
    "#{params[:controller]}##{params[:action]}"
  end

  def bar_item_index
    {
      'dashboards#index' => 0,
      'movies#show' => 0,
      'tastes#new' => 1,
      'movies#index' => 2,
      'users#show' => 3
    }[page].to_i.next
  end

  def slider_label(index)
    label_tag(
      "slide-item-#{index}",
      class: bar_item_index == index ? 'active' : ''
    ) { yield }
  end
end
