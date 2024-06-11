---@diagnostic disable:undefined-global
local MOD_NAME = minetest.get_current_modname()
local MOD_PATH = minetest.get_modpath(MOD_NAME)

smm_compat = {}
function smm_compat.is_module_available(module_name)
    return minetest.get_modpath(module_name) ~= nil
end

smm_compat.mtg_available_modules = {
    -- Required
    default = smm_compat.is_module_available("default"),
    bucket = smm_compat.is_module_available("bucket"),
    dye = smm_compat.is_module_available("dye"),
    farming = smm_compat.is_module_available("farming"),
    fire = smm_compat.is_module_available("fire"),
    stairs = smm_compat.is_module_available("stairs"),
    tnt = smm_compat.is_module_available("tnt"),
    vessels = smm_compat.is_module_available("vessels"),
    wool = smm_compat.is_module_available("wool"),
    -- Optional
}
smm_compat.mtg_available =
    smm_compat.mtg_available_modules.default == true and
    smm_compat.mtg_available_modules.bucket == true and
    smm_compat.mtg_available_modules.dye == true and
    smm_compat.mtg_available_modules.farming == true and
    smm_compat.mtg_available_modules.fire == true and
    smm_compat.mtg_available_modules.stairs == true and
    smm_compat.mtg_available_modules.tnt == true and
    smm_compat.mtg_available_modules.vessels == true and
    smm_compat.mtg_available_modules.wool == true
smm_compat.mcl_available_modules = {
    -- Required
    mcl_core = smm_compat.is_module_available("mcl_core"),
    mcl_armor = smm_compat.is_module_available("mcl_armor"),
    mcl_buckets = smm_compat.is_module_available("mcl_buckets"),
    mcl_copper = smm_compat.is_module_available("mcl_copper"),
    mcl_deepslate = smm_compat.is_module_available("mcl_deepslate"),
    mcl_dye = smm_compat.is_module_available("mcl_dye"),
    mcl_explosions = smm_compat.is_module_available("mcl_explosions"),
    mcl_nether = smm_compat.is_module_available("mcl_nether"),
    mcl_raw_ores = smm_compat.is_module_available("mcl_raw_ores"),
    mcl_sounds = smm_compat.is_module_available("mcl_sounds"),
    mcl_stairs = smm_compat.is_module_available("mcl_stairs"),
    mcl_util = smm_compat.is_module_available("mcl_util"),
    -- Optional
}
smm_compat.mcl_available =
    smm_compat.mcl_available_modules.mcl_core == true and
    smm_compat.mcl_available_modules.mcl_armor == true and
    smm_compat.mcl_available_modules.mcl_buckets == true and
    smm_compat.mcl_available_modules.mcl_copper == true and
    smm_compat.mcl_available_modules.mcl_deepslate == true and
    smm_compat.mcl_available_modules.mcl_dye == true and
    smm_compat.mcl_available_modules.mcl_explosions == true and
    smm_compat.mcl_available_modules.mcl_nether == true and
    smm_compat.mcl_available_modules.mcl_sounds == true and
    smm_compat.mcl_available_modules.mcl_stairs == true and
    smm_compat.mcl_available_modules.mcl_util == true

if smm_compat.mtg_available then
    minetest.debug(MOD_NAME .. " detected minetest game...")
    smm_compat.max_stack_size = 99
    smm_compat.texture_prefix = "mtg"
elseif smm_compat.mcl_available then
    minetest.debug(MOD_NAME .. " detected mineclonia...")
    smm_compat.max_stack_size = 64
    smm_compat.texture_prefix = "mcl"
end

dofile(MOD_PATH .. "/itemstring.lua")
dofile(MOD_PATH .. "/sound.lua")
dofile(MOD_PATH .. "/tile.lua")
