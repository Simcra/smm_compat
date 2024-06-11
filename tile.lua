---@diagnostic disable:undefined-global

smm_compat.tile = {}
if smm_compat.mtg_available then
    smm_compat.tile.stone = "default_stone.png"
elseif smm_compat.mcl_available then
    smm_compat.tile.stone = "default_stone.png"
    smm_compat.tile.deepslate = "mcl_deepslate.png"
    smm_compat.tile.deepslate_top = "mcl_deepslate_top.png"
end
