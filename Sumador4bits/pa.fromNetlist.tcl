
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Sumador4bits -dir "D:/Sistemas digitales/Sumador4bits/planAhead_run_4" -part xc3s100ecp132-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Sistemas digitales/Sumador4bits/Top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Sistemas digitales/Sumador4bits} }
set_property target_constrs_file "Top.ucf" [current_fileset -constrset]
add_files [list {Top.ucf}] -fileset [get_property constrset [current_run]]
link_design
