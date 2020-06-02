project "microui"
   kind "StaticLib"
   language "C"
   staticruntime "On"

   targetdir ("bin/" .. outputdir .. "/%{prj.name}")
   objdir ("bin-obj/" .. outputdir .. "/%{prj.name}")

   files 
   { 
      "src/**.h",
      "src/**.c" 
   }

   filter "system:windows"
      systemversion "latest"      

   filter "configurations:Debug"
      symbols "On"

   filter "configurations:Release"
      optimize "On"

   filter "configurations:Dist"
      optimize "On"