project("lua")
    location(path.join(g_wkslight.workspacedir, g_wkslight.placeholders[2], "%{prj.name}"))
    targetdir(g_wkslight.targetdir)
    objdir(path.join(g_wkslight.baseobjdir, g_wkslight.placeholders[2], "%{prj.name}"))
    kind("StaticLib")
    language("C")
    files({
        "src/**.c",
    })
    removefiles({
        "src/lua.c",
        "src/luac.c",
    })
    includedirs({
        g_wkslight.workspace.libraries.projects.lua.includedirs,
    })
    --[[
    filter("files:src/luac.c")
        flags({ "ExcludeFromBuild" })
    --]]