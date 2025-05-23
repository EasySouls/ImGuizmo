project "ImGuizmo"
  kind "StaticLib"
  language "C++"
  cppdialect "C++20"
  staticruntime "on"

  targetdir("bin/" .. outputdir .. "/%{prj.name}")
  objdir("bin-int/" .. outputdir .. "/%{prj.name}")

  files
  {
	  "ImGuizmo.h",
	  "ImGuizmo.cpp",
  }

  includedirs
  {
	  "",
     "../imgui"
  }

  filter "system:windows"
    systemversion "latest"

  filter "system:linux"
    pic "On"
    systemversion "latest"

  filter "configurations:Debug"
    runtime "Debug"
    symbols "on"

  filter "configurations:Release"
    runtime "Release"
    optimize "on"
