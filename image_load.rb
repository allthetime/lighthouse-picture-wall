module Sass::Script::Functions  
 def listFiles(path)
   return Sass::Script::List.new(
       Dir.glob(path.value).map! { |x| Sass::Script::String  .new(x) }, :comma)
  end
  declare :listFiles, :args => [:string]
end