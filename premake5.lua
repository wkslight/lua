project("lua")
    location(path.join(g_wkslight.workspacedir, "%{prj.name}"))
    targetdir(g_wkslight.targetdir)
    objdir(path.join(g_wkslight.baseobjdirs[2], "%{prj.name}"))
    kind("StaticLib")
    language("C")
    files({
        "src/**.c",
    })
    removefiles({
        "src/luac.c",
    })
    includedirs({
        g_wkslight.workspace.libraries.projects.lua.includedirs,
    })
    --filter("files:src/luac.c")
    --  flags({ "ExcludeFromBuild" })