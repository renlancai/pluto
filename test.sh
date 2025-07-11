ckpt=2025.07.05.10.07.16.ckpt
#ckpt=pluto_1M_aux_cil.ckpt
ckpt=2025.07.10.07.37.01.ckpt

sh ./script/run_pluto_planner.sh pluto_planner nuplan_mini mini_demo_scenario $ckpt /workspace/alex1_slam/pluto
