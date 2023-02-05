local status, leap = pcall(require, "leap")
if not status then
  print("Leap not found")
  return
end

leap.add_default_mappings()
