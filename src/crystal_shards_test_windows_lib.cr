# TODO: Write documentation for `CrystalShardsTestWindowsLib`
module CrystalShardsTestWindowsLib
  VERSION = "0.1.0"

  {% if flag?(:win32) %}
  OS_VERSION = {{ `cmd /C wmic os get Caption,CSDVersion /value`.stringify.chomp }}
  {% else %}
  OS_VERSION = nil
  {% end %}
end
