-- Base
hl.curve("smoothOut", { type = "bezier", points = { { 0.10, 1.0 }, { 0.36, 1.0 } } })
hl.curve("smoothLinear", { type = "bezier", points = { { 0.50, 0.50 }, { 0.75, 1.0 } } })
hl.curve("easeOutQuint", { type = "bezier", points = { {0.22 , 1   } , {0.36 , 1} } })

-- Windows
hl.animation({ leaf = "global", enabled = true, speed = 8, bezier = "smoothOut" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.5, bezier = "smoothOut", style = "popin 95%" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, bezier = "smoothOut", style = "popin 90%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "smoothLinear", style = "popin 90%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 5, bezier = "smoothOut" })

-- Workspaces
hl.animation({ leaf = "workspaces"          , enabled = true , speed = 7 , bezier = "easeOutQuint" , style = "slidefade 10%" })
hl.animation({ leaf = "workspacesIn"        , enabled = true , speed = 7 , bezier = "easeOutQuint" , style = "slidefade 10%" })
hl.animation({ leaf = "workspacesOut"       , enabled = true , speed = 5 , bezier = "easeOutQuint" , style = "slidefade 10%" })
hl.animation({ leaf = "specialWorkspace"    , enabled = true , speed = 7 , bezier = "easeOutQuint" , style = "slidefade -10%" })
hl.animation({ leaf = "specialWorkspaceIn"  , enabled = true , speed = 7 , bezier = "easeOutQuint" , style = "slidefade -10%" })
hl.animation({ leaf = "specialWorkspaceOut" , enabled = true , speed = 7 , bezier = "easeOutQuint" , style = "slidefade -10%" })

-- Apps
hl.animation({ leaf = "layers", enabled = true, speed = 3.5, bezier = "smoothOut", style = "fade" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 3, bezier = "smoothOut", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.5, bezier = "smoothLinear", style = "fade" })
hl.animation({ leaf = "fade", enabled = true, speed = 4, bezier = "smoothOut" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 2.5, bezier = "smoothOut" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2, bezier = "smoothLinear" })
hl.animation({ leaf = "fadeSwitch", enabled = true, speed = 3, bezier = "smoothOut" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 4, bezier = "smoothOut" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 3, bezier = "smoothLinear" })
hl.animation({ leaf = "border", enabled = true, speed = 3, bezier = "smoothOut" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 3, bezier = "smoothOut" })
