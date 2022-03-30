require 'SVG/Graph/Bar'

x_axis = ['Architektur', 'Bauingenieurwesen',
          'Informatik', 'Maschinenbau',
          'Technische Mathematik', 'Technische Physik']

options = {
  :width             => 1200,
  :height            => 700,
  :stack             => :side,  # the stack option is valid for Bar graphs only
  :fields            => x_axis,
  :graph_title       => 'Studierende der TU Wien',
  :show_graph_title  => true,
  :show_x_title      => true,
  :x_title           => 'Studienrichtung',
  :show_y_title      => true,
  :y_title           => 'Studentierende',
  :y_title_location  => :end,
  :no_css            => true
}

# from https://www.tuwien.at/tu-wien/ueber-die-tuw/zahlen-und-fakten (2012-03-28)
female_data = [3061,  758,  804,  203, 386, 375]
male_data   = [2412, 1725, 3995, 1632, 949, 1467]

g = SVG::Graph::Bar.new(options)

g.add_data( {
    :data => female_data,
    :title => "Frauen"
  })
g.add_data( {
    :data => male_data,
    :title => "Männer"
  })

g.burn_svg_only
