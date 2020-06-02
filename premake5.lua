project "microui"
   kind "StaticLib"
   language "C"
   staticruntime "On"

   targetdir ("bin/" .. outputdir .. "/%{prj.name}")
   objdir ("bin-obj/" .. outputdir .. "/%{prj.name}")

   files 
   { 
      "%{prj.name}/src/**.h",
      "%{prj.name}/src/**.c" 
   }

   --includedirs
   --{
   --   "AlbaEngine/src",
   --}

   filter "system:windows"
      systemversion "latest"      

   filter "configurations:Debug"
      symbols "On"

   filter "configurations:Release"
      optimize "On"

   filter "configurations:Dist"
      optimize "On"