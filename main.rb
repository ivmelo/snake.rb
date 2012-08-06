#main.rb

$LOAD_PATH << "./"
$LOAD_PATH << "./src"

require 'gosu'
require 'window'
require 'snake'
require 'snake_body'
require 'power_up'

window = Window.new
window.show 