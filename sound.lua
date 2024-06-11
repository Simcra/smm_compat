---@diagnostic disable:undefined-global

smm_compat.sound = {}
if smm_compat.mtg_available then
    smm_compat.sound.node_sound_stone_defaults = default.node_sound_stone_defaults
    smm_compat.sound.node_sound_metal_defaults = default.node_sound_metal_defaults
elseif smm_compat.mcl_available then
    smm_compat.sound.node_sound_stone_defaults = mcl_sounds.node_sound_stone_defaults
    smm_compat.sound.node_sound_metal_defaults = mcl_sounds.node_sound_metal_defaults
end
