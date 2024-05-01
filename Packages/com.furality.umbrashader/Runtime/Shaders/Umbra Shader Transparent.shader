// Made with Amplify Shader Editor v1.9.3.3
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Furality/Umbra Shader/Umbra Transparent"
{
	Properties
	{
		[ToggleUI]_GlintIgnoreNormals("Glint Ignore Normals", Float) = 0
		_FleckShape("FleckShape", 2D) = "white" {}
		_FleckVariance("FleckVariance", Range( 0 , 1)) = 0
		[HDR]_FleckColor("Fleck Color", Color) = (1,1,1,1)
		[ToggleUI]_UseAlbedo("Use Albedo", Float) = 0
		_FleckIntensity("Fleck Intensity", Range( 0 , 10)) = 1
		[Enum(UnityEngine.Rendering.CullMode)]_Culling("Culling", Float) = 2
		[HDR]_EmissionGlowTint("EmissionGlowTint", Color) = (1,1,1,0)
		[Enum(None,0,Zone 1,1,Zone 2,2,Zone 3,3,Zone 4,4,Gradient 1,5,Gradient 2,6,Gradient 3,7)]_EmissionGlowZone("EmissionGlowZone", Int) = 0
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4)]_EmissionGlowMode("EmissionGlowMode", Int) = 0
		[Enum(Multiply,0,Additive,1)]_EmissionGlowBlendMode("EmissionGlowBlendMode", Int) = 0
		_EmissionGlowMinBrightness("EmissionGlowMinBrightness", Range( 0 , 1)) = 0
		_EmissionGlowPulseDir("EmissionGlowPulseDir", Float) = 0
		_EmissionGlowPulseScale("EmissionGlowPulseScale", Float) = 127
		_EmissionGlowPulseOffset("EmissionGlowPulseOffset", Float) = 0
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_EmissionGlowAnimationBand("EmissionGlowAnimationBand", Int) = 10
		[Enum(Default,0,Wobble,1,Smooth,2,Hard Stop,3,Constant,4)]_EmissionGlowAnimationMode("EmissionGlowAnimationMode", Int) = 0
		[Enum(Slow,0,Fast,1)]_EmissionGlowAnimationSpeed("EmissionGlowAnimationSpeed", Int) = 0
		_EmissionGlowAnimationStrength("EmissionGlowAnimationStrength", Float) = 1
		_EmissionGlowRadialCenter("EmissionGlowRadialCenter", Vector) = (0.5,0.5,0,0)
		[HDR]_EmissionReactiveTint("EmissionReactiveTint", Color) = (1,1,1,0)
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_EmissionReactiveBand("EmissionReactiveBand", Int) = 10
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4,Smooth Global,5)]_EmissionReactiveMode("EmissionReactiveMode", Int) = 0
		[Enum(Multiply,0,Additive,1,Reversed Multiply,2,Reversed Additve,3)]_EmissionReactiveBlendMode("EmissionReactiveBlendMode", Int) = 0
		_EmissionReactiveMinBrightness("EmissionReactiveMinBrightness", Range( 0 , 1)) = 0
		_EmissionReactiveGlobalSmoothing("EmissionReactiveGlobalSmoothing", Range( 0 , 2)) = 1
		_EmissionReactivePulseDir("EmissionReactivePulseDir", Float) = 0
		_EmissionReactivePulseScale("EmissionReactivePulseScale", Float) = 127
		_EmissionReactivePulseOffset("EmissionReactivePulseOffset", Float) = 0
		_EmissionReactiveRadialCenter("EmissionReactiveRadialCenter", Vector) = (0.5,0.5,0,0)
		_ShowEmissGlow("_ShowEmissGlow", Float) = 0
		_ShowEmissAL("_ShowEmissAL", Float) = 0
		_DirectionalMap("DirectionalMap", 2D) = "white" {}
		[ToggleUI]_UseFallback0("Use Fallback 0", Float) = 0
		[HDR]_RedChGlowTint("RedChGlowTint", Color) = (1,1,1,0)
		[HDR]_RedChGlowFallback("RedChGlowFallback", Color) = (1,1,1,0)
		[Enum(None,0,Zone 1,1,Zone 2,2,Zone 3,3,Zone 4,4,Gradient 1,5,Gradient 2,6,Gradient 3,7)]_RedChGlowZone("RedChGlowZone", Int) = 0
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4)]_RedChGlowMode("RedChGlowMode", Int) = 0
		_RedChGlowMinBrightness("RedChGlowMinBrightness", Range( 0 , 1)) = 0
		_RedChGlowPulseDir("RedChGlowPulseDir", Float) = 0
		_RedChGlowPulseScale("RedChGlowPulseScale", Float) = 127
		_RedChGlowPulseOffset("RedChGlowPulseOffset", Float) = 0
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_RedChGlowAnimationBand("RedChGlowAnimationBand", Int) = 10
		[Enum(Default,0,Wobble,1,Smooth,2,Hard Stop,3,Constant,4)]_RedChGlowAnimationMode("RedChGlowAnimationMode", Int) = 0
		[Enum(Slow,0,Fast,1)]_RedChGlowAnimationSpeed("RedChGlowAnimationSpeed", Int) = 0
		_RedChGlowAnimationStrength("RedChGlowAnimationStrength", Float) = 1
		_RedChGlowRadialCenter("RedChGlowRadialCenter", Vector) = (0.5,0.5,0,0)
		[HDR]_RedChReactiveTint("RedChReactiveTint", Color) = (1,1,1,0)
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_RedChReactiveBand("RedChReactiveBand", Int) = 10
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4,Smooth Global,5)]_RedChReactiveMode("RedChReactiveMode", Int) = 0
		[Enum(Multiply,0,Additive,1,Reversed Multiply,2,Reversed Additve,3)]_RedChReactiveBlendMode("RedChReactiveBlendMode", Int) = 0
		_RedChReactiveMinBrightness("RedChReactiveMinBrightness", Range( 0 , 1)) = 0
		_RedChReactiveGlobalSmoothing("RedChReactiveGlobalSmoothing", Range( 0 , 2)) = 1
		_RedChReactivePulseDir("RedChReactivePulseDir", Float) = 0
		_RedChReactivePulseScale("RedChReactivePulseScale", Float) = 127
		_RedChReactivePulseOffset("RedChReactivePulseOffset", Float) = 0
		_RedChReactiveRadialCenter("RedChReactiveRadialCenter", Vector) = (0.5,0.5,0,0)
		_ShowRedGlow("_ShowRedGlow", Float) = 0
		_ShowRedAL("_ShowRedAL", Float) = 0
		[ToggleUI]_EnableRedChannel("_EnableRedChannel", Float) = 0
		[ToggleUI]_UseFallback1("Use Fallback 1", Float) = 0
		[HDR]_GreenChGlowTint("GreenChGlowTint", Color) = (1,1,1,0)
		[HDR]_GreenChGlowFallback("GreenChGlowFallback", Color) = (1,1,1,0)
		[Enum(None,0,Zone 1,1,Zone 2,2,Zone 3,3,Zone 4,4,Gradient 1,5,Gradient 2,6,Gradient 3,7)]_GreenChGlowZone("GreenChGlowZone", Int) = 0
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4)]_GreenChGlowMode("GreenChGlowMode", Int) = 0
		_GreenChReactiveMinBrightness("GreenChReactiveMinBrightness", Range( 0 , 1)) = 0
		_GreenChGlowPulseDir("GreenChGlowPulseDir", Float) = 0
		_GreenChGlowPulseScale("GreenChGlowPulseScale", Float) = 127
		_GreenChGlowPulseOffset("GreenChGlowPulseOffset", Float) = 0
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_GreenChGlowAnimationBand("GreenChGlowAnimationBand", Int) = 10
		[Enum(Default,0,Wobble,1,Smooth,2,Hard Stop,3,Constant,4)]_GreenChGlowAnimationMode("GreenChGlowAnimationMode", Int) = 0
		[Enum(Slow,0,Fast,1)]_GreenChGlowAnimationSpeed("GreenChGlowAnimationSpeed", Int) = 0
		_GreenChGlowAnimationStrength("GreenChGlowAnimationStrength", Float) = 1
		_GreenChGlowRadialCenter("GreenChGlowRadialCenter", Vector) = (0.5,0.5,0,0)
		[HDR]_GreenChReactiveTint("GreenChReactiveTint", Color) = (1,1,1,0)
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_GreenChReactiveBand("GreenChReactiveBand", Int) = 10
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4,Smooth Global,5)]_GreenChReactiveMode("GreenChReactiveMode", Int) = 0
		[Enum(Multiply,0,Additive,1,Reversed Multiply,2,Reversed Additve,3)]_GreenChReactiveBlendMode("GreenChReactiveBlendMode", Int) = 0
		_GreenChGlowMinBrightness("GreenChGlowMinBrightness", Range( 0 , 1)) = 0
		_GreenChReactiveGlobalSmoothing("GreenChReactiveGlobalSmoothing", Range( 0 , 2)) = 1
		_GreenChReactivePulseDir("GreenChReactivePulseDir", Float) = 0
		_GreenChReactivePulseScale("GreenChReactivePulseScale", Float) = 127
		_GreenChReactivePulseOffset("GreenChReactivePulseOffset", Float) = 0
		_GreenChReactiveRadialCenter("GreenChReactiveRadialCenter", Vector) = (0.5,0.5,0,0)
		_ShowGreenGlow("_ShowGreenGlow", Float) = 0
		_ShowGreenAL("_ShowGreenAL", Float) = 0
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		[ToggleUI]_EnableGreenChannel("_EnableGreenChannel", Float) = 0
		[ToggleUI]_UseFallback2("Use Fallback 2", Float) = 0
		[HDR]_BlueChGlowTint("BlueChGlowTint", Color) = (1,1,1,0)
		[HDR]_BlueChGlowFallback("BlueChGlowFallback", Color) = (1,1,1,0)
		[Enum(None,0,Zone 1,1,Zone 2,2,Zone 3,3,Zone 4,4,Gradient 1,5,Gradient 2,6,Gradient 3,7)]_BlueChGlowZone("BlueChGlowZone", Int) = 0
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4)]_BlueChGlowMode("BlueChGlowMode", Int) = 0
		_BlueChGlowMinBrightness("BlueChGlowMinBrightness", Range( 0 , 1)) = 0
		_BlueChGlowPulseDir("BlueChGlowPulseDir", Float) = 0
		_BlueChGlowPulseScale("BlueChGlowPulseScale", Float) = 127
		_BlueChGlowPulseOffset("BlueChGlowPulseOffset", Float) = 0
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_BlueChGlowAnimationBand("BlueChGlowAnimationBand", Int) = 10
		[Enum(Default,0,Wobble,1,Smooth,2,Hard Stop,3,Constant,4)]_BlueChGlowAnimationMode("BlueChGlowAnimationMode", Int) = 0
		[Enum(Slow,0,Fast,1)]_BlueChGlowAnimationSpeed("BlueChGlowAnimationSpeed", Int) = 0
		_BlueChGlowAnimationStrength("BlueChGlowAnimationStrength", Float) = 1
		_BlueChGlowRadialCenter("BlueChGlowRadialCenter", Vector) = (0.5,0.5,0,0)
		[HDR]_BlueChReactiveTint("BlueChReactiveTint", Color) = (1,1,1,0)
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_BlueChReactiveBand("BlueChReactiveBand", Int) = 10
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4,Smooth Global,5)]_BlueChReactiveMode("BlueChReactiveMode", Int) = 0
		[Enum(Multiply,0,Additive,1,Reversed Multiply,2,Reversed Additve,3)]_BlueChReactiveBlendMode("BlueChReactiveBlendMode", Int) = 0
		_BlueChReactiveMinBrightness("BlueChReactiveMinBrightness", Range( 0 , 1)) = 0
		_BlueChReactiveGlobalSmoothing("BlueChReactiveGlobalSmoothing", Range( 0 , 2)) = 1
		_BlueChReactivePulseDir("BlueChReactivePulseDir", Float) = 0
		_BlueChReactivePulseScale("BlueChReactivePulseScale", Float) = 127
		_BlueChReactivePulseOffset("BlueChReactivePulseOffset", Float) = 0
		_BlueChReactiveRadialCenter("BlueChReactiveRadialCenter", Vector) = (0.5,0.5,0,0)
		_ShowBlueGlow("_ShowBlueGlow", Float) = 0
		_ShowBlueAL("_ShowBlueAL", Float) = 0
		[ToggleUI]_EnableBlueChannel("_EnableBlueChannel", Float) = 0
		[ToggleUI]_UseFallback3("Use Fallback 3", Float) = 0
		[HDR]_AlphaChGlowTint("AlphaChGlowTint", Color) = (1,1,1,0)
		[HDR]_AlphaChGlowFallback("AlphaChGlowFallback", Color) = (1,1,1,0)
		[Enum(None,0,Zone 1,1,Zone 2,2,Zone 3,3,Zone 4,4,Gradient 1,5,Gradient 2,6,Gradient 3,7)]_AlphaChGlowZone("AlphaChGlowZone", Int) = 0
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4)]_AlphaChGlowMode("AlphaChGlowMode", Int) = 0
		_AlphaChGlowMinBrightness("AlphaChGlowMinBrightness", Range( 0 , 1)) = 0
		_AlphaChGlowPulseDir("AlphaChGlowPulseDir", Float) = 0
		_AlphaChGlowPulseScale("AlphaChGlowPulseScale", Float) = 127
		_AlphaChGlowPulseOffset("AlphaChGlowPulseOffset", Float) = 0
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_AlphaChGlowAnimationBand("AlphaChGlowAnimationBand", Int) = 10
		[Enum(Default,0,Wobble,1,Smooth,2,Hard Stop,3,Constant,4)]_AlphaChGlowAnimationMode("AlphaChGlowAnimationMode", Int) = 0
		[Enum(Slow,0,Fast,1)]_AlphaChGlowAnimationSpeed("AlphaChGlowAnimationSpeed", Int) = 0
		_AlphaChGlowAnimationStrength("AlphaChGlowAnimationStrength", Float) = 1
		_AlphaChGlowRadialCenter("AlphaChGlowRadialCenter", Vector) = (0.5,0.5,0,0)
		[HDR]_AlphaChReactiveTint("AlphaChReactiveTint", Color) = (1,1,1,0)
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_AlphaChReactiveBand("AlphaChReactiveBand", Int) = 10
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4,Smooth Global,5)]_AlphaChReactiveMode("AlphaChReactiveMode", Int) = 0
		[Enum(Multiply,0,Additive,1,Reversed Multiply,2,Reversed Additve,3)]_AlphaChReactiveBlendMode("AlphaChReactiveBlendMode", Int) = 0
		_AlphaChReactiveMinBrightness("AlphaChReactiveMinBrightness", Range( 0 , 1)) = 0
		_AlphaChReactiveGlobalSmoothing("AlphaChReactiveGlobalSmoothing", Range( 0 , 2)) = 1
		_AlphaChReactivePulseDir("AlphaChReactivePulseDir", Float) = 0
		_AlphaChReactivePulseScale("AlphaChReactivePulseScale", Float) = 127
		_AlphaChReactivePulseOffset("AlphaChReactivePulseOffset", Float) = 0
		_AlphaChReactiveRadialCenter("AlphaChReactiveRadialCenter", Vector) = (0.5,0.5,0,0)
		_ShowAlphaGlow("_ShowAlphaGlow", Float) = 0
		_ShowAlphaAL("_ShowAlphaAL", Float) = 0
		[ToggleUI]_EnableAlphaChannel("_EnableAlphaChannel", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_DirectionMapUV("DirectionMapUV", Float) = 0
		_MaskClipValue("MaskClipValue", Float) = 0.5
		[Enum(UnityEngine.Rendering.BlendOp)]_BlendOpRGB("Blend Op RGB", Float) = 0
		[Enum(UnityEngine.Rendering.BlendMode)]_DestinationBlendRGB("Destination Blend RGB", Float) = 10
		[Enum(UnityEngine.Rendering.BlendMode)]_SourceBlendRGB("Source Blend RGB", Float) = 1
		[ToggleUI]_AffectDiffuseColor("Affect Diffuse Color", Float) = 0
		[ToggleUI]_AffectDiffuseNormals("AffectDiffuseNormals", Float) = 0
		[ToggleUI]_AffectIndirectColor("AffectIndirectColor", Float) = 0
		_FleckMetallic("FleckMetallic", Range( 0 , 2)) = 1
		[ToggleUI]_AffectIndirect("Affect Indirect", Float) = 0
		_FleckScale("Fleck Scale", Float) = 500
		_FleckSize("Fleck Size", Float) = 0.35
		_GlintTimescale("Glint Timescale", Float) = 0.001
		_DictionaryTex("Texture 0", 2D) = "white" {}
		_ShowMaps("ShowMaps", Float) = 0
		_Color("Color", Color) = (1,1,1,1)
		_ShowLighting("ShowLighting", Float) = 0
		_ShowEmissionMain("ShowEmissionMain", Float) = 0
		_ShowEmission("ShowEmission", Float) = 0
		_ShowTileDiscard("ShowTileDiscard", Float) = 0
		_ShowEmission04("ShowEmission04", Float) = 0
		_ShowEmission02("ShowEmission02", Float) = 0
		_ShowEmission03("ShowEmission03", Float) = 0
		_ShowEmission01("ShowEmission01", Float) = 0
		_ShowMain("ShowMain", Float) = 0
		[Toggle(_EMISSION)] _EnableEmission("Emission", Float) = 0
		[Header(Main)]_MainTex("Main Tex", 2D) = "white" {}
		_EmissionMap("EmissionMap", 2D) = "white" {}
		[HDR]_EmissionColor("Emission Tint", Color) = (0,0,0,0)
		_BumpMap("Normal Map", 2D) = "bump" {}
		_BumpScale("Normal Scale", Range( 0 , 1)) = 1
		[Enum(Furality,3,Metallic,0,Specular,1,Packed,2)]_Workflow("Workflow", Float) = 3
		_MaskMap01("Mask Map 01", 2D) = "white" {}
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_MaskMap01UV("MaskMap01UV", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_DetailUV("DetailUV", Float) = 0
		_MaskMap02("Mask Map 02", 2D) = "white" {}
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_MaskMap02UV("MaskMap02UV", Float) = 0
		_MaskMap03("Mask Map 03", 2D) = "white" {}
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_MaskMap03UV("MaskMap03UV", Float) = 0
		_MaskMap04("Mask Map 04", 2D) = "white" {}
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_MaskMap04UV("MaskMap04UV", Float) = 0
		[ToggleUI]_ReplaceBaseColor("Replace Base Color", Float) = 0
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_EmissionMaskMap("Emission Mask Map", Float) = 4
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_EmissionMaskChannel("Emission Mask Channel", Float) = 0
		_MetallicMult("MetallicMult", Range( 0 , 2)) = 1
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_MetallicMask("Metallic Map", Float) = 1
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_FleckMetallicMap("Fleck Metallic Map", Float) = 4
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_FleckMetallicChannel("Fleck Metallic Channel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_MetallicChannel("Metallic Channel", Float) = 0
		_GlossMult("GlossMult", Range( 0 , 1)) = 1
		[ToggleUI]_InvertGloss("Invert Gloss", Float) = 0
		[ToggleUI]_InvertHighlightGloss("Invert Highlight Gloss", Float) = 0
		[ToggleUI]_InvertReflectionGloss("InvertReflectionGloss", Float) = 0
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_GlossMap("Gloss Map", Float) = 1
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_GlossChannel("Gloss Channel", Float) = 3
		_OcclusionPower("Occlusion Power", Range( 0 , 1)) = 1
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_OcclusionMap("Occlusion Map", Float) = 1
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_OcclusionChannel("Occlusion Channel", Float) = 1
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_ReflectionMask("Reflection Mask", Float) = 4
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_ReflectionMaskChannel("Reflection Mask Channel", Float) = 0
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_GlowMask0("Glow Mask 0", Float) = 4
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_GlowMask0Channel("Glow Mask 0 Channel", Float) = 0
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_GlowMask1("Glow Mask 1", Float) = 4
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_GlowMask1Channel("Glow Mask 1 Channel", Float) = 0
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_GlowMask2("Glow Mask 2", Float) = 4
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_GlowMask2Channel("Glow Mask 2 Channel", Float) = 0
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_GlowMask3("Glow Mask 3", Float) = 4
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_GlowMask3Channel("Glow Mask 3 Channel", Float) = 0
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_SpecularMask("Specular Mask", Float) = 4
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_SpecularMaskChannel("Specular Mask Channel", Float) = 0
		_SpecularTint("Specular Tint", Color) = (1,1,1,0)
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_FleckColorMap("Fleck Color Map", Float) = 4
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_SpecularTintMap("Specular Tint Map", Float) = 4
		[Toggle(_CLEARCOAT_ON)] _ClearCoat("Clear Coat", Float) = 0
		_ClearCoatHighlight("Clear Coat Highlight", Range( 0 , 1)) = 0.9
		[Header()][Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_ClearCoatHighlightMap("Clear Coat Highlight Map", Float) = 4
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_ClearCoatHighlightChannel("Clear Coat Highlight Channel", Float) = 0
		_BlendModeIndex("_BlendModeIndex", Float) = 0
		_ClearCoatReflection("Clear Coat Reflection", Range( 0 , 1)) = 1
		_BlendOPsrc("_BlendOPsrc", Float) = 5
		[Header()][Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_ClearCoatReflectionMap("Clear Coat Reflection Map", Float) = 4
		_BlendOPIndex("_BlendOPIndex", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_ClearCoatReflectionChannel("Clear Coat Reflection Channel", Float) = 0
		_BlendOPdst("_BlendOPdst", Float) = 10
		_ClearCoatNormalScale("Clear Coat Normal Scale", Range( 0 , 1)) = 1
		_ClearCoatDetailNormalScale("Clear Coat Detail Normal Scale", Range( 0 , 1)) = 1
		[Enum(None,0,Normal,1,Detail Normal,2,Both,3)]_ClearCoatNormal("Clear Coat Normal", Float) = 0
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_ClearCoatMap("Clear Coat Map", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_ClearCoatChannel("Clear Coat Channel", Float) = 2
		[Toggle(_GLINT_ON)] _SpecularGlint("Specular Glint", Float) = 0
		[Toggle(_GLINT_HIGHLIGHT_ON)] _GlintHighlightToggle("Glint Highlight", Float) = 0
		_GlintHighlight("Glint Highlight", Range( 0 , 1)) = 0.5
		[Header()][Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_GlintHighlightMap("Glint Highlight Map", Float) = 4
		[Header()][Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,MainTex,5,None,4)]_OpacityMap("Opacity Map", Float) = 5
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_GlintHighlightChannel("Glint Highlight Channel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_OpacityChannel("Opacity Channel", Float) = 3
		_GlintIntensity("Glint Intensity", Range( 0 , 2)) = 1
		_GlintGloss("Glint Gloss", Range( 0 , 1)) = 0.95
		[Header()][Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_GlintGlossMap("Glint Gloss Map", Float) = 4
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_GlintGlossChannel("Glint Gloss Channel", Float) = 0
		_GlintAmount("Glint Amount", Range( 0 , 1)) = 0.5
		_GlintDensity("Glint Density", Range( 0 , 1)) = 0.5
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_GlintMap("Glint Map", Float) = 4
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_GlintChannel("Glint Channel", Float) = 0
		[Header(Detail Normal)]_DetailNormal("DetailNormal", 2D) = "bump" {}
		_BumpScale1("Detail Normal Scale", Range( 0 , 1)) = 1
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_DetailNormalMask("Detail Normal Mask", Float) = 4
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_DetailNormalChannel("Detail Normal Channel", Float) = 0
		_UVTileDissolveAlpha_Row3_0("Row 3 Column 0", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row3_1("Row 3 Column 1", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row3_2("Row 3 Column 2", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row3_3("Row 3 Column 3", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row2_0("Row 2 Column 0", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row2_1("Row 2 Column 1", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row2_2("Row 2 Column 2", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row2_3("Row 2 Column 3", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row1_0("Row 1 Column 0", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row1_1("Row 1 Column 1", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row1_2("Row 1 Column 2", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row1_3("Row 1 Column 3", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row0_0("Row 0 Column 0", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row0_1("Row 0 Column 1", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row0_2("Row 0 Column 2", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row0_3("Row 0 Column 3", Range( 0 , 1)) = 0
		[ToggleUI]_UDIMDiscardRow3_0("UDIMDiscardRow3_0", Float) = 0
		[ToggleUI]_UDIMDiscardRow3_1("UDIMDiscardRow3_1", Float) = 0
		[ToggleUI]_UDIMDiscardRow3_2("UDIMDiscardRow3_2", Float) = 0
		[ToggleUI]_UDIMDiscardRow3_3("UDIMDiscardRow3_3", Float) = 0
		[ToggleUI]_UDIMDiscardRow2_0("UDIMDiscardRow2_0", Float) = 0
		[ToggleUI]_UDIMDiscardRow2_1("UDIMDiscardRow2_1", Float) = 0
		[ToggleUI]_UDIMDiscardRow2_2("UDIMDiscardRow2_2", Float) = 0
		[ToggleUI]_UDIMDiscardRow2_3("UDIMDiscardRow2_3", Float) = 0
		[ToggleUI]_UDIMDiscardRow1_0("UDIMDiscardRow1_0", Float) = 0
		[ToggleUI]_UDIMDiscardRow1_1("UDIMDiscardRow1_1", Float) = 0
		[ToggleUI]_UDIMDiscardRow1_2("UDIMDiscardRow1_2", Float) = 0
		[ToggleUI]_UDIMDiscardRow1_3("UDIMDiscardRow1_3", Float) = 0
		[ToggleUI]_UDIMDiscardRow0_0("UDIMDiscardRow0_0", Float) = 0
		[ToggleUI]_UDIMDiscardRow0_1("UDIMDiscardRow0_1", Float) = 0
		[ToggleUI]_UDIMDiscardRow0_2("UDIMDiscardRow0_2", Float) = 0
		[ToggleUI]_UDIMDiscardRow0_3("UDIMDiscardRow0_3", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_TileDiscardUV("TileDiscardUV", Float) = 0
		[HideInInspector] __dirty( "", Int ) = 1
	}

	SubShader
	{
		Pass
		{
			ColorMask 0
			ZWrite On
		}

		Tags{ "RenderType" = "Transparent"  "Queue" = "Transparent+0" "IgnoreProjector" = "True" "IsEmissive" = "true"  }
		Cull [_Culling]
		Blend [_SourceBlendRGB] [_DestinationBlendRGB]
		BlendOp [_BlendOpRGB]
		CGINCLUDE
		#include "UnityPBSLighting.cginc"
		#include "UnityStandardUtils.cginc"
		#include "UnityShaderVariables.cginc"
		#include "UnityCG.cginc"
		#include "Lighting.cginc"
		#pragma target 4.0
		#pragma shader_feature_local _EMISSION
		#pragma shader_feature_local _CLEARCOAT_ON
		#pragma shader_feature_local _GLINT_ON
		#pragma shader_feature_local _GLINT_HIGHLIGHT_ON
		#include "Packages/com.llealloo.audiolink/Runtime/Shaders/AudioLink.cginc"
		#ifdef UNITY_PASS_SHADOWCASTER
			#undef INTERNAL_DATA
			#undef WorldReflectionVector
			#undef WorldNormalVector
			#define INTERNAL_DATA half3 internalSurfaceTtoW0; half3 internalSurfaceTtoW1; half3 internalSurfaceTtoW2;
			#define WorldReflectionVector(data,normal) reflect (data.worldRefl, half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal)))
			#define WorldNormalVector(data,normal) half3(dot(data.internalSurfaceTtoW0,normal), dot(data.internalSurfaceTtoW1,normal), dot(data.internalSurfaceTtoW2,normal))
		#endif

		struct appdata_full_custom
		{
			float4 vertex : POSITION;
			float4 tangent : TANGENT;
			float3 normal : NORMAL;
			float4 texcoord : TEXCOORD0;
			float4 texcoord1 : TEXCOORD1;
			float4 texcoord2 : TEXCOORD2;
			float4 texcoord3 : TEXCOORD3;
			float4 color : COLOR;
			UNITY_VERTEX_INPUT_INSTANCE_ID
			float4 ase_texcoord4 : TEXCOORD4;
		};
		struct Input
		{
			float2 vertexToFrag51_g5486;
			float2 vertexToFrag51_g5487;
			float2 vertexToFrag51_g5488;
			float2 vertexToFrag51_g5489;
			float2 uv_texcoord;
			float2 vertexToFrag51_g7502;
			float3 worldNormal;
			INTERNAL_DATA
			float2 vertexToFrag51_g5577;
			half ASEIsFrontFacing : VFACE;
			float3 worldPos;
		};

		struct SurfaceOutputCustomLightingCustom
		{
			half3 Albedo;
			half3 Normal;
			half3 Emission;
			half Metallic;
			half Smoothness;
			half Occlusion;
			half Alpha;
			Input SurfInput;
			UnityGIInput GIData;
		};

		uniform float _ShowBlueGlow;
		uniform float _ShowBlueAL;
		uniform float _ShowEmissGlow;
		uniform float _ShowEmissAL;
		uniform float _ShowRedGlow;
		uniform float _ShowRedAL;
		uniform float _ShowGreenGlow;
		uniform float _ShowGreenAL;
		uniform float _ShowAlphaGlow;
		uniform float _ShowAlphaAL;
		uniform float _Culling;
		uniform float _BlendOPdst;
		uniform float _BlendModeIndex;
		uniform float _BlendOPIndex;
		uniform float _BlendOPsrc;
		uniform float _ShowMaps;
		uniform float _ShowMain;
		uniform float _ShowLighting;
		uniform float _ShowEmission;
		uniform float _ShowEmissionMain;
		uniform float _ShowEmission01;
		uniform float _ShowEmission02;
		uniform float _ShowEmission03;
		uniform float _ShowEmission04;
		uniform float _ShowTileDiscard;
		uniform float _GlintIntensity;
		uniform float _GlintIgnoreNormals;
		uniform float _SourceBlendRGB;
		uniform float _DestinationBlendRGB;
		uniform float _BlendOpRGB;
		uniform float _MaskClipValue;
		uniform float _TileDiscardUV;
		uniform float _UVTileDissolveAlpha_Row0_0;
		uniform float _UDIMDiscardRow0_0;
		uniform float _UVTileDissolveAlpha_Row0_1;
		uniform float _UDIMDiscardRow0_1;
		uniform float _UVTileDissolveAlpha_Row0_2;
		uniform float _UDIMDiscardRow0_2;
		uniform float _UVTileDissolveAlpha_Row0_3;
		uniform float _UDIMDiscardRow0_3;
		uniform float _UVTileDissolveAlpha_Row1_0;
		uniform float _UDIMDiscardRow1_0;
		uniform float _UVTileDissolveAlpha_Row1_1;
		uniform float _UDIMDiscardRow1_1;
		uniform float _UVTileDissolveAlpha_Row1_2;
		uniform float _UDIMDiscardRow1_2;
		uniform float _UVTileDissolveAlpha_Row1_3;
		uniform float _UDIMDiscardRow1_3;
		uniform float _UVTileDissolveAlpha_Row2_0;
		uniform float _UDIMDiscardRow2_0;
		uniform float _UVTileDissolveAlpha_Row2_1;
		uniform float _UDIMDiscardRow2_1;
		uniform float _UVTileDissolveAlpha_Row2_2;
		uniform float _UDIMDiscardRow2_2;
		uniform float _UVTileDissolveAlpha_Row2_3;
		uniform float _UDIMDiscardRow2_3;
		uniform float _UVTileDissolveAlpha_Row3_0;
		uniform float _UDIMDiscardRow3_0;
		uniform float _UVTileDissolveAlpha_Row3_1;
		uniform float _UDIMDiscardRow3_1;
		uniform float _UVTileDissolveAlpha_Row3_2;
		uniform float _UDIMDiscardRow3_2;
		uniform float _UVTileDissolveAlpha_Row3_3;
		uniform float _UDIMDiscardRow3_3;
		uniform float4 _RedChGlowFallback;
		uniform float _UseFallback0;
		uniform sampler2D _MaskMap01;
		uniform float4 _MaskMap01_ST;
		uniform float _MaskMap01UV;
		uniform sampler2D _MaskMap02;
		uniform float4 _MaskMap02_ST;
		uniform float _MaskMap02UV;
		uniform float _GlowMask0;
		uniform sampler2D _MaskMap03;
		uniform float4 _MaskMap03_ST;
		uniform float _MaskMap03UV;
		uniform sampler2D _MaskMap04;
		uniform float4 _MaskMap04_ST;
		uniform float _MaskMap04UV;
		uniform float _GlowMask0Channel;
		uniform float _GlowMask1;
		uniform float _GlowMask1Channel;
		uniform float _GlowMask2;
		uniform float _GlowMask2Channel;
		uniform float _GlowMask3;
		uniform float _GlowMask3Channel;
		uniform int _RedChGlowZone;
		uniform float _RedChGlowPulseDir;
		uniform float _RedChGlowPulseScale;
		uniform float _RedChGlowPulseOffset;
		uniform float _RedChGlowAnimationStrength;
		uniform int _RedChGlowAnimationBand;
		uniform int _RedChGlowAnimationMode;
		uniform int _RedChGlowAnimationSpeed;
		uniform float2 _RedChGlowRadialCenter;
		uniform int _RedChGlowMode;
		uniform sampler2D _DirectionalMap;
		uniform float4 _DirectionalMap_ST;
		uniform float _DirectionMapUV;
		uniform float _RedChGlowMinBrightness;
		uniform float4 _RedChGlowTint;
		uniform int _RedChReactiveBand;
		uniform float _RedChReactivePulseDir;
		uniform float _RedChReactivePulseScale;
		uniform float _RedChReactivePulseOffset;
		uniform float2 _RedChReactiveRadialCenter;
		uniform int _RedChReactiveMode;
		uniform float _RedChReactiveGlobalSmoothing;
		uniform float _RedChReactiveMinBrightness;
		uniform float4 _RedChReactiveTint;
		uniform int _RedChReactiveBlendMode;
		uniform float _EnableRedChannel;
		uniform float4 _GreenChGlowFallback;
		uniform float _UseFallback1;
		uniform int _GreenChGlowZone;
		uniform float _GreenChGlowPulseDir;
		uniform float _GreenChGlowPulseScale;
		uniform float _GreenChGlowPulseOffset;
		uniform float _GreenChGlowAnimationStrength;
		uniform int _GreenChGlowAnimationBand;
		uniform int _GreenChGlowAnimationMode;
		uniform int _GreenChGlowAnimationSpeed;
		uniform float2 _GreenChGlowRadialCenter;
		uniform int _GreenChGlowMode;
		uniform float _GreenChGlowMinBrightness;
		uniform float4 _GreenChGlowTint;
		uniform int _GreenChReactiveBand;
		uniform float _GreenChReactivePulseDir;
		uniform float _GreenChReactivePulseScale;
		uniform float _GreenChReactivePulseOffset;
		uniform float2 _GreenChReactiveRadialCenter;
		uniform int _GreenChReactiveMode;
		uniform float _GreenChReactiveGlobalSmoothing;
		uniform float _GreenChReactiveMinBrightness;
		uniform float4 _GreenChReactiveTint;
		uniform int _GreenChReactiveBlendMode;
		uniform float _EnableGreenChannel;
		uniform float4 _BlueChGlowFallback;
		uniform float _UseFallback2;
		uniform int _BlueChGlowZone;
		uniform float _BlueChGlowPulseDir;
		uniform float _BlueChGlowPulseScale;
		uniform float _BlueChGlowPulseOffset;
		uniform float _BlueChGlowAnimationStrength;
		uniform int _BlueChGlowAnimationBand;
		uniform int _BlueChGlowAnimationMode;
		uniform int _BlueChGlowAnimationSpeed;
		uniform float2 _BlueChGlowRadialCenter;
		uniform int _BlueChGlowMode;
		uniform float _BlueChGlowMinBrightness;
		uniform float4 _BlueChGlowTint;
		uniform int _BlueChReactiveBand;
		uniform float _BlueChReactivePulseDir;
		uniform float _BlueChReactivePulseScale;
		uniform float _BlueChReactivePulseOffset;
		uniform float2 _BlueChReactiveRadialCenter;
		uniform int _BlueChReactiveMode;
		uniform float _BlueChReactiveGlobalSmoothing;
		uniform float _BlueChReactiveMinBrightness;
		uniform float4 _BlueChReactiveTint;
		uniform int _BlueChReactiveBlendMode;
		uniform float _EnableBlueChannel;
		uniform float4 _AlphaChGlowFallback;
		uniform float _UseFallback3;
		uniform int _AlphaChGlowZone;
		uniform float _AlphaChGlowPulseDir;
		uniform float _AlphaChGlowPulseScale;
		uniform float _AlphaChGlowPulseOffset;
		uniform float _AlphaChGlowAnimationStrength;
		uniform int _AlphaChGlowAnimationBand;
		uniform int _AlphaChGlowAnimationMode;
		uniform int _AlphaChGlowAnimationSpeed;
		uniform float2 _AlphaChGlowRadialCenter;
		uniform int _AlphaChGlowMode;
		uniform float _AlphaChGlowMinBrightness;
		uniform float4 _AlphaChGlowTint;
		uniform int _AlphaChReactiveBand;
		uniform float _AlphaChReactivePulseDir;
		uniform float _AlphaChReactivePulseScale;
		uniform float _AlphaChReactivePulseOffset;
		uniform float2 _AlphaChReactiveRadialCenter;
		uniform int _AlphaChReactiveMode;
		uniform float _AlphaChReactiveGlobalSmoothing;
		uniform float _AlphaChReactiveMinBrightness;
		uniform float4 _AlphaChReactiveTint;
		uniform int _AlphaChReactiveBlendMode;
		uniform float _EnableAlphaChannel;
		uniform float4 _EmissionColor;
		uniform sampler2D _EmissionMap;
		uniform float4 _EmissionMap_ST;
		uniform float _EmissionMaskMap;
		uniform float _EmissionMaskChannel;
		uniform int _EmissionGlowZone;
		uniform float _EmissionGlowPulseDir;
		uniform float _EmissionGlowPulseScale;
		uniform float _EmissionGlowPulseOffset;
		uniform float _EmissionGlowAnimationStrength;
		uniform int _EmissionGlowAnimationBand;
		uniform int _EmissionGlowAnimationMode;
		uniform int _EmissionGlowAnimationSpeed;
		uniform float2 _EmissionGlowRadialCenter;
		uniform int _EmissionGlowMode;
		uniform float _EmissionGlowMinBrightness;
		uniform float4 _EmissionGlowTint;
		uniform int _EmissionReactiveBand;
		uniform float _EmissionReactivePulseDir;
		uniform float _EmissionReactivePulseScale;
		uniform float _EmissionReactivePulseOffset;
		uniform float2 _EmissionReactiveRadialCenter;
		uniform int _EmissionReactiveMode;
		uniform float _EmissionReactiveGlobalSmoothing;
		uniform float _EmissionReactiveMinBrightness;
		uniform float4 _EmissionReactiveTint;
		uniform int _EmissionReactiveBlendMode;
		uniform int _EmissionGlowBlendMode;
		uniform sampler2D _BumpMap;
		uniform float4 _BumpMap_ST;
		uniform float _BumpScale;
		uniform sampler2D _DetailNormal;
		uniform float4 _DetailNormal_ST;
		uniform float _DetailUV;
		uniform float _BumpScale1;
		uniform float _DetailNormalMask;
		uniform float _DetailNormalChannel;
		uniform float _FleckScale;
		uniform float _GlintDensity;
		uniform sampler2D _FleckShape;
		uniform float _FleckSize;
		uniform float _GlintAmount;
		uniform sampler2D _DictionaryTex;
		uniform float _GlintTimescale;
		uniform float4 _FleckColor;
		uniform float _GlintMap;
		uniform float _GlintChannel;
		uniform float _AffectDiffuseNormals;
		uniform float _GlossMap;
		uniform float _GlossChannel;
		uniform float _Workflow;
		uniform float _InvertGloss;
		uniform float _GlossMult;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		uniform float4 _Color;
		uniform float _ReplaceBaseColor;
		uniform float _MetallicMask;
		uniform float _MetallicChannel;
		uniform float _MetallicMult;
		uniform float4 _SpecularTint;
		uniform float _SpecularTintMap;
		uniform float _FleckColorMap;
		uniform float _UseAlbedo;
		uniform float _FleckVariance;
		uniform float _FleckMetallicMap;
		uniform float _FleckMetallicChannel;
		uniform float _FleckMetallic;
		uniform float _AffectIndirectColor;
		uniform float _FleckIntensity;
		uniform float _GlintGloss;
		uniform float _GlintGlossMap;
		uniform float _GlintGlossChannel;
		uniform float _GlintHighlight;
		uniform float _GlintHighlightMap;
		uniform float _GlintHighlightChannel;
		uniform float _ClearCoatNormalScale;
		uniform float _ClearCoatNormal;
		uniform float _ClearCoatDetailNormalScale;
		uniform float _ClearCoatHighlight;
		uniform float _ClearCoatHighlightMap;
		uniform float _ClearCoatHighlightChannel;
		uniform float _InvertHighlightGloss;
		uniform float _ClearCoatMap;
		uniform float _ClearCoatChannel;
		uniform float _SpecularMask;
		uniform float _SpecularMaskChannel;
		uniform float _ReflectionMask;
		uniform float _ReflectionMaskChannel;
		uniform float _AffectIndirect;
		uniform float _OcclusionMap;
		uniform float _OcclusionChannel;
		uniform float _OcclusionPower;
		uniform float _ClearCoatReflection;
		uniform float _ClearCoatReflectionMap;
		uniform float _ClearCoatReflectionChannel;
		uniform float _InvertReflectionGloss;
		uniform float _OpacityMap;
		uniform float _OpacityChannel;
		uniform float _AffectDiffuseColor;


		float3 ProbeDir(  )
		{
			return half3(unity_SHAr.r,unity_SHAg.g,unity_SHAb.b);
		}


		float3 Hash32( float2 p )
		{
				float3 p3 = frac(float3(p.xyx) * float3(.1031, .1030, .0973));
			    p3 += dot(p3, p3.yxz+33.33);
			    return frac((p3.xxy+p3.yzz)*p3.zyx);
		}


		half OneMinusReflectivity( half metallic )
		{
			   return OneMinusReflectivityFromMetallic(metallic);
		}


		float3 getThemeData( int Zone )
		{
			float3 result = lerp(AudioLinkData(ALPASS_THEME_COLOR0),AudioLinkData(ALPASS_THEME_COLOR1),saturate(Zone));
			result = lerp(result,AudioLinkData(ALPASS_THEME_COLOR2),saturate(Zone-1));
			result = lerp(result,AudioLinkData(ALPASS_THEME_COLOR3),saturate(Zone-2));
			return result;
		}


		inline int IsLumaActive11_g7543( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline float3 LumaGlowData2_g7542( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) );
		}


		inline int IsLumaActive11_g7545( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g7549( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float glslmod13_g7536( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod12_g7536( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod34_g7536( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float3 LumaGlowLerp11_g7544( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline float4 AudioLinkLerp1_g7548( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float3 LumaGlowLerp11_g7546( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline int IsLumaActive11_g7547( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g7552(  )
		{
			int w = 0; 
			int h; 
			int res = 0;
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w, h); 
			#endif
			if (w == 128) res = 1;
			return res;
		}


		inline float AudioLinkData3_g7537( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) ).rrrr;
		}


		inline float glslmod96_g7536( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod97_g7536( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod98_g7536( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float AudioLinkLerp3_g7539( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline float AudioLinkLerp3_g7541( int Band, float FilteredAmount )
		{
			return AudioLinkLerp( ALPASS_FILTEREDAUDIOLINK + float2( FilteredAmount, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g7551(  )
		{
			int w = 0; 
			int h; 
			int res = 0;
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w, h); 
			#endif
			if (w == 128) res = 1;
			return res;
		}


		inline int IsLumaActive11_g7560( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline float3 LumaGlowData2_g7559( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) );
		}


		inline int IsLumaActive11_g7562( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g7566( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float glslmod13_g7553( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod12_g7553( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod34_g7553( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float3 LumaGlowLerp11_g7561( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline float4 AudioLinkLerp1_g7565( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float3 LumaGlowLerp11_g7563( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline int IsLumaActive11_g7564( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g7569(  )
		{
			int w = 0; 
			int h; 
			int res = 0;
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w, h); 
			#endif
			if (w == 128) res = 1;
			return res;
		}


		inline float AudioLinkData3_g7554( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) ).rrrr;
		}


		inline float glslmod96_g7553( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod97_g7553( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod98_g7553( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float AudioLinkLerp3_g7556( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline float AudioLinkLerp3_g7558( int Band, float FilteredAmount )
		{
			return AudioLinkLerp( ALPASS_FILTEREDAUDIOLINK + float2( FilteredAmount, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g7568(  )
		{
			int w = 0; 
			int h; 
			int res = 0;
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w, h); 
			#endif
			if (w == 128) res = 1;
			return res;
		}


		inline int IsLumaActive11_g7510( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline float3 LumaGlowData2_g7509( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) );
		}


		inline int IsLumaActive11_g7512( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g7516( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float glslmod13_g7503( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod12_g7503( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod34_g7503( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float3 LumaGlowLerp11_g7511( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline float4 AudioLinkLerp1_g7515( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float3 LumaGlowLerp11_g7513( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline int IsLumaActive11_g7514( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g7519(  )
		{
			int w = 0; 
			int h; 
			int res = 0;
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w, h); 
			#endif
			if (w == 128) res = 1;
			return res;
		}


		inline float AudioLinkData3_g7504( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) ).rrrr;
		}


		inline float glslmod96_g7503( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod97_g7503( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod98_g7503( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float AudioLinkLerp3_g7506( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline float AudioLinkLerp3_g7508( int Band, float FilteredAmount )
		{
			return AudioLinkLerp( ALPASS_FILTEREDAUDIOLINK + float2( FilteredAmount, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g7518(  )
		{
			int w = 0; 
			int h; 
			int res = 0;
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w, h); 
			#endif
			if (w == 128) res = 1;
			return res;
		}


		inline int IsLumaActive11_g7577( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline float3 LumaGlowData2_g7576( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) );
		}


		inline int IsLumaActive11_g7579( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g7583( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float glslmod13_g7570( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod12_g7570( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod34_g7570( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float3 LumaGlowLerp11_g7578( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline float4 AudioLinkLerp1_g7582( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float3 LumaGlowLerp11_g7580( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline int IsLumaActive11_g7581( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g7586(  )
		{
			int w = 0; 
			int h; 
			int res = 0;
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w, h); 
			#endif
			if (w == 128) res = 1;
			return res;
		}


		inline float AudioLinkData3_g7571( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) ).rrrr;
		}


		inline float glslmod96_g7570( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod97_g7570( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod98_g7570( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float AudioLinkLerp3_g7573( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline float AudioLinkLerp3_g7575( int Band, float FilteredAmount )
		{
			return AudioLinkLerp( ALPASS_FILTEREDAUDIOLINK + float2( FilteredAmount, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g7585(  )
		{
			int w = 0; 
			int h; 
			int res = 0;
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w, h); 
			#endif
			if (w == 128) res = 1;
			return res;
		}


		inline int IsLumaActive11_g7532( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline float3 LumaGlowData2_g7531( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) );
		}


		inline int IsLumaActive11_g7534( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g7526( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float glslmod13_g7520( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod12_g7520( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod34_g7520( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float3 LumaGlowLerp11_g7533( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline float4 AudioLinkLerp1_g7530( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float3 LumaGlowLerp11_g7528( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline int IsLumaActive11_g7529( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline float AudioLinkData3_g7521( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) ).rrrr;
		}


		inline float glslmod96_g7520( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod97_g7520( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod98_g7520( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float AudioLinkLerp3_g7523( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline float AudioLinkLerp3_g7525( int Band, float FilteredAmount )
		{
			return AudioLinkLerp( ALPASS_FILTEREDAUDIOLINK + float2( FilteredAmount, Band ) ).r;
		}


		inline float glslmod270_g7520( float x, float y )
		{
			return glsl_mod(x,y);
		}


		int IfAudioLinkv2Exists1_g7535(  )
		{
			int w = 0; 
			int h; 
			int res = 0;
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w, h); 
			#endif
			if (w == 128) res = 1;
			return res;
		}


		float2 voronoihash10_g7489( float2 p )
		{
			
			p = float2( dot( p, float2( 127.1, 311.7 ) ), dot( p, float2( 269.5, 183.3 ) ) );
			return frac( sin( p ) *43758.5453);
		}


		float voronoi10_g7489( float2 v, float time, inout float2 id, inout float2 mr, float smoothness, inout float2 smoothId )
		{
			float2 n = floor( v );
			float2 f = frac( v );
			float F1 = 8.0;
			float F2 = 8.0; float2 mg = 0;
			for ( int j = -1; j <= 1; j++ )
			{
				for ( int i = -1; i <= 1; i++ )
			 	{
			 		float2 g = float2( i, j );
			 		float2 o = voronoihash10_g7489( n + g );
					o = ( sin( time + o * 6.2831 ) * 0.5 + 0.5 ); float2 r = f - g - o;
					float d = 0.5 * dot( r, r );
			 		if( d<F1 ) {
			 			F2 = F1;
			 			F1 = d; mg = g; mr = r; id = o;
			 		} else if( d<F2 ) {
			 			F2 = d;
			
			 		}
			 	}
			}
			return F1;
		}


		int LightExists8_g7387(  )
		{
			int lightEnv = int(any(_WorldSpaceLightPos0.xyz));       
			if(lightEnv != 1){
				return 0;
				}
			return 1;
		}


		float3 ASESafeNormalize(float3 inVec)
		{
			float dp3 = max(1.175494351e-38, dot(inVec, inVec));
			return inVec* rsqrt(dp3);
		}


		float3 HSVToRGB( float3 c )
		{
			float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
			float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
			return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
		}


		float3 RGBToHSV(float3 c)
		{
			float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
			float4 p = lerp( float4( c.bg, K.wz ), float4( c.gb, K.xy ), step( c.b, c.g ) );
			float4 q = lerp( float4( p.xyw, c.r ), float4( c.r, p.yzx ), step( p.x, c.r ) );
			float d = q.x - min( q.w, q.y );
			float e = 1.0e-10;
			return float3( abs(q.z + (q.w - q.y) / (6.0 * d + e)), d / (q.x + e), q.x);
		}

		float3 sampleReflectionProbe1686( float3 uvw )
		{
			half4 skyData = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, uvw, 5); //('cubemap', 'sample coordinate', 'map-map level')
			         half3 skyColor = DecodeHDR (skyData, unity_SpecCube0_HDR);
			         return half4(skyColor, 1.0);
		}


		inline int IsLumaActive11_g7299( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g7386(  )
		{
			int w = 0; 
			int h; 
			int res = 0;
			#ifndef SHADER_TARGET_SURFACE_ANALYSIS
			_AudioTexture.GetDimensions(w, h); 
			#endif
			if (w == 128) res = 1;
			return res;
		}


		int LightExists8_g7498(  )
		{
			int lightEnv = int(any(_WorldSpaceLightPos0.xyz));       
			if(lightEnv != 1){
				return 0;
				}
			return 1;
		}


		float3 CenterEye1_g7492(  )
		{
			#if defined(USING_STEREO_MATRICES)
			float3 leftEye = unity_StereoWorldSpaceCameraPos[0];
			float3 rightEye = unity_StereoWorldSpaceCameraPos[1];
			float3 centerEye = lerp(leftEye, rightEye, 0.5);
			#else
			float3 centerEye = _WorldSpaceCameraPos;
			#endif
			return centerEye;
		}


		int LightExists8_g7494(  )
		{
			int lightEnv = int(any(_WorldSpaceLightPos0.xyz));       
			if(lightEnv != 1){
				return 0;
				}
			return 1;
		}


		int LightExists8_g7496(  )
		{
			int lightEnv = int(any(_WorldSpaceLightPos0.xyz));       
			if(lightEnv != 1){
				return 0;
				}
			return 1;
		}


		int LightExists8_g7500(  )
		{
			int lightEnv = int(any(_WorldSpaceLightPos0.xyz));       
			if(lightEnv != 1){
				return 0;
				}
			return 1;
		}


		void vertexDataFunc( inout appdata_full_custom v, out Input o )
		{
			UNITY_INITIALIZE_OUTPUT( Input, o );
			float2 _Vector4 = float2(0,0);
			float temp_output_14_0_g7587 = _TileDiscardUV;
			float2 lerpResult31_g7587 = lerp( v.texcoord.xy , v.texcoord1.xy , saturate( temp_output_14_0_g7587 ));
			float temp_output_36_0_g7587 = ( temp_output_14_0_g7587 - 1.0 );
			float2 lerpResult34_g7587 = lerp( lerpResult31_g7587 , v.texcoord2.xy , saturate( temp_output_36_0_g7587 ));
			float temp_output_40_0_g7587 = ( temp_output_36_0_g7587 - 1.0 );
			float2 lerpResult38_g7587 = lerp( lerpResult34_g7587 , v.texcoord3.xy , saturate( temp_output_40_0_g7587 ));
			float2 lerpResult41_g7587 = lerp( lerpResult38_g7587 , v.ase_texcoord4.xy , saturate( ( temp_output_40_0_g7587 - 1.0 ) ));
			float2 vertexToFrag51_g7587 = lerpResult41_g7587;
			float2 TileDiscardUVs18_g7588 = ( vertexToFrag51_g7587 + -1.0 );
			float2 break10_g7588 = TileDiscardUVs18_g7588;
			float Row0Col071_g7588 = saturate( ( max( max( step( _Vector4.x , break10_g7588.x ) , step( -( _Vector4.x - 1.0 ) , -break10_g7588.x ) ) , max( step( _Vector4.y , break10_g7588.y ) , step( -( _Vector4.y - 1.0 ) , -break10_g7588.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_0 ) * ( 1.0 - _UDIMDiscardRow0_0 ) ) ) );
			float2 _Vector5 = float2(1,0);
			float2 break82_g7588 = TileDiscardUVs18_g7588;
			float Row0Col189_g7588 = saturate( ( max( max( step( _Vector5.x , break82_g7588.x ) , step( -( _Vector5.x - 1.0 ) , -break82_g7588.x ) ) , max( step( _Vector5.y , break82_g7588.y ) , step( -( _Vector5.y - 1.0 ) , -break82_g7588.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_1 ) * ( 1.0 - _UDIMDiscardRow0_1 ) ) ) );
			float2 _Vector6 = float2(2,0);
			float2 break100_g7588 = TileDiscardUVs18_g7588;
			float Row0Col2106_g7588 = saturate( ( max( max( step( _Vector6.x , break100_g7588.x ) , step( -( _Vector6.x - 1.0 ) , -break100_g7588.x ) ) , max( step( _Vector6.y , break100_g7588.y ) , step( -( _Vector6.y - 1.0 ) , -break100_g7588.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_2 ) * ( 1.0 - _UDIMDiscardRow0_2 ) ) ) );
			float2 _Vector7 = float2(3,0);
			float2 break118_g7588 = TileDiscardUVs18_g7588;
			float Row0Col3124_g7588 = saturate( ( max( max( step( _Vector7.x , break118_g7588.x ) , step( -( _Vector7.x - 1.0 ) , -break118_g7588.x ) ) , max( step( _Vector7.y , break118_g7588.y ) , step( -( _Vector7.y - 1.0 ) , -break118_g7588.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_3 ) * ( 1.0 - _UDIMDiscardRow0_3 ) ) ) );
			float2 _Vector8 = float2(0,1);
			float2 break141_g7588 = TileDiscardUVs18_g7588;
			float Row1Col0148_g7588 = saturate( ( max( max( step( _Vector8.x , break141_g7588.x ) , step( -( _Vector8.x - 1.0 ) , -break141_g7588.x ) ) , max( step( _Vector8.y , break141_g7588.y ) , step( -( _Vector8.y - 1.0 ) , -break141_g7588.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_0 ) * ( 1.0 - _UDIMDiscardRow1_0 ) ) ) );
			float2 _Vector9 = float2(1,1);
			float2 break159_g7588 = TileDiscardUVs18_g7588;
			float Row1Col1165_g7588 = saturate( ( max( max( step( _Vector9.x , break159_g7588.x ) , step( -( _Vector9.x - 1.0 ) , -break159_g7588.x ) ) , max( step( _Vector9.y , break159_g7588.y ) , step( -( _Vector9.y - 1.0 ) , -break159_g7588.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_1 ) * ( 1.0 - _UDIMDiscardRow1_1 ) ) ) );
			float2 _Vector10 = float2(2,1);
			float2 break177_g7588 = TileDiscardUVs18_g7588;
			float Row1Col2183_g7588 = saturate( ( max( max( step( _Vector10.x , break177_g7588.x ) , step( -( _Vector10.x - 1.0 ) , -break177_g7588.x ) ) , max( step( _Vector10.y , break177_g7588.y ) , step( -( _Vector10.y - 1.0 ) , -break177_g7588.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_2 ) * ( 1.0 - _UDIMDiscardRow1_2 ) ) ) );
			float2 _Vector11 = float2(3,1);
			float2 break195_g7588 = TileDiscardUVs18_g7588;
			float Row1Col3201_g7588 = saturate( ( max( max( step( _Vector11.x , break195_g7588.x ) , step( -( _Vector11.x - 1.0 ) , -break195_g7588.x ) ) , max( step( _Vector11.y , break195_g7588.y ) , step( -( _Vector11.y - 1.0 ) , -break195_g7588.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_3 ) * ( 1.0 - _UDIMDiscardRow1_3 ) ) ) );
			float2 _Vector12 = float2(0,2);
			float2 break222_g7588 = TileDiscardUVs18_g7588;
			float Row2Col0229_g7588 = saturate( ( max( max( step( _Vector12.x , break222_g7588.x ) , step( -( _Vector12.x - 1.0 ) , -break222_g7588.x ) ) , max( step( _Vector12.y , break222_g7588.y ) , step( -( _Vector12.y - 1.0 ) , -break222_g7588.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_0 ) * ( 1.0 - _UDIMDiscardRow2_0 ) ) ) );
			float2 _Vector13 = float2(1,2);
			float2 break239_g7588 = TileDiscardUVs18_g7588;
			float Row2Col1245_g7588 = saturate( ( max( max( step( _Vector13.x , break239_g7588.x ) , step( -( _Vector13.x - 1.0 ) , -break239_g7588.x ) ) , max( step( _Vector13.y , break239_g7588.y ) , step( -( _Vector13.y - 1.0 ) , -break239_g7588.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_1 ) * ( 1.0 - _UDIMDiscardRow2_1 ) ) ) );
			float2 _Vector14 = float2(2,2);
			float2 break256_g7588 = TileDiscardUVs18_g7588;
			float Row2Col2262_g7588 = saturate( ( max( max( step( _Vector14.x , break256_g7588.x ) , step( -( _Vector14.x - 1.0 ) , -break256_g7588.x ) ) , max( step( _Vector14.y , break256_g7588.y ) , step( -( _Vector14.y - 1.0 ) , -break256_g7588.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_2 ) * ( 1.0 - _UDIMDiscardRow2_2 ) ) ) );
			float2 _Vector15 = float2(3,2);
			float2 break273_g7588 = TileDiscardUVs18_g7588;
			float Row2Col3279_g7588 = saturate( ( max( max( step( _Vector15.x , break273_g7588.x ) , step( -( _Vector15.x - 1.0 ) , -break273_g7588.x ) ) , max( step( _Vector15.y , break273_g7588.y ) , step( -( _Vector15.y - 1.0 ) , -break273_g7588.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_3 ) * ( 1.0 - _UDIMDiscardRow2_3 ) ) ) );
			float2 _Vector19 = float2(0,3);
			float2 break294_g7588 = TileDiscardUVs18_g7588;
			float Row3Col0352_g7588 = saturate( ( max( max( step( _Vector19.x , break294_g7588.x ) , step( -( _Vector19.x - 1.0 ) , -break294_g7588.x ) ) , max( step( _Vector19.y , break294_g7588.y ) , step( -( _Vector19.y - 1.0 ) , -break294_g7588.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_0 ) * ( 1.0 - _UDIMDiscardRow3_0 ) ) ) );
			float2 _Vector16 = float2(1,3);
			float2 break309_g7588 = TileDiscardUVs18_g7588;
			float Row3Col1351_g7588 = saturate( ( max( max( step( _Vector16.x , break309_g7588.x ) , step( -( _Vector16.x - 1.0 ) , -break309_g7588.x ) ) , max( step( _Vector16.y , break309_g7588.y ) , step( -( _Vector16.y - 1.0 ) , -break309_g7588.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_1 ) * ( 1.0 - _UDIMDiscardRow3_1 ) ) ) );
			float2 _Vector17 = float2(2,3);
			float2 break325_g7588 = TileDiscardUVs18_g7588;
			float Row3Col2350_g7588 = saturate( ( max( max( step( _Vector17.x , break325_g7588.x ) , step( -( _Vector17.x - 1.0 ) , -break325_g7588.x ) ) , max( step( _Vector17.y , break325_g7588.y ) , step( -( _Vector17.y - 1.0 ) , -break325_g7588.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_2 ) * ( 1.0 - _UDIMDiscardRow3_2 ) ) ) );
			float2 _Vector18 = float2(3,3);
			float2 break341_g7588 = TileDiscardUVs18_g7588;
			float Row3Col3349_g7588 = saturate( ( max( max( step( _Vector18.x , break341_g7588.x ) , step( -( _Vector18.x - 1.0 ) , -break341_g7588.x ) ) , max( step( _Vector18.y , break341_g7588.y ) , step( -( _Vector18.y - 1.0 ) , -break341_g7588.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_3 ) * ( 1.0 - _UDIMDiscardRow3_3 ) ) ) );
			float3 temp_cast_0 = (( 0.0 / 0.0 )).xxx;
			float3 ase_vertex3Pos = v.vertex.xyz;
			v.vertex.xyz = ( ( ( ( Row0Col071_g7588 * Row0Col189_g7588 * Row0Col2106_g7588 * Row0Col3124_g7588 ) * ( Row1Col0148_g7588 * Row1Col1165_g7588 * Row1Col2183_g7588 * Row1Col3201_g7588 ) ) * ( ( Row2Col0229_g7588 * Row2Col1245_g7588 * Row2Col2262_g7588 * Row2Col3279_g7588 ) * ( Row3Col0352_g7588 * Row3Col1351_g7588 * Row3Col2350_g7588 * Row3Col3349_g7588 ) ) ) < 0.001 ? temp_cast_0 : ase_vertex3Pos );
			v.vertex.w = 1;
			float2 uv_MaskMap01 = v.texcoord.xy * _MaskMap01_ST.xy + _MaskMap01_ST.zw;
			float2 uv2_MaskMap01 = v.texcoord1.xy * _MaskMap01_ST.xy + _MaskMap01_ST.zw;
			float temp_output_14_0_g5486 = _MaskMap01UV;
			float2 lerpResult11_g5486 = lerp( uv_MaskMap01 , uv2_MaskMap01 , saturate( temp_output_14_0_g5486 ));
			float2 uv3_MaskMap01 = v.texcoord2.xy * _MaskMap01_ST.xy + _MaskMap01_ST.zw;
			float temp_output_16_0_g5486 = ( temp_output_14_0_g5486 - 1.0 );
			float2 lerpResult12_g5486 = lerp( lerpResult11_g5486 , uv3_MaskMap01 , saturate( temp_output_16_0_g5486 ));
			float2 uv4_MaskMap01 = v.texcoord3.xy * _MaskMap01_ST.xy + _MaskMap01_ST.zw;
			float temp_output_21_0_g5486 = ( temp_output_16_0_g5486 - 1.0 );
			float2 lerpResult19_g5486 = lerp( lerpResult12_g5486 , uv4_MaskMap01 , saturate( temp_output_21_0_g5486 ));
			float2 uv5_MaskMap01 = v.ase_texcoord4 * _MaskMap01_ST.xy + _MaskMap01_ST.zw;
			float2 lerpResult27_g5486 = lerp( lerpResult19_g5486 , uv5_MaskMap01.xy , saturate( ( temp_output_21_0_g5486 - 1.0 ) ));
			o.vertexToFrag51_g5486 = lerpResult27_g5486;
			float2 uv_MaskMap02 = v.texcoord.xy * _MaskMap02_ST.xy + _MaskMap02_ST.zw;
			float2 uv2_MaskMap02 = v.texcoord1.xy * _MaskMap02_ST.xy + _MaskMap02_ST.zw;
			float temp_output_14_0_g5487 = _MaskMap02UV;
			float2 lerpResult11_g5487 = lerp( uv_MaskMap02 , uv2_MaskMap02 , saturate( temp_output_14_0_g5487 ));
			float2 uv3_MaskMap02 = v.texcoord2.xy * _MaskMap02_ST.xy + _MaskMap02_ST.zw;
			float temp_output_16_0_g5487 = ( temp_output_14_0_g5487 - 1.0 );
			float2 lerpResult12_g5487 = lerp( lerpResult11_g5487 , uv3_MaskMap02 , saturate( temp_output_16_0_g5487 ));
			float2 uv4_MaskMap02 = v.texcoord3.xy * _MaskMap02_ST.xy + _MaskMap02_ST.zw;
			float temp_output_21_0_g5487 = ( temp_output_16_0_g5487 - 1.0 );
			float2 lerpResult19_g5487 = lerp( lerpResult12_g5487 , uv4_MaskMap02 , saturate( temp_output_21_0_g5487 ));
			float2 uv5_MaskMap02 = v.ase_texcoord4 * _MaskMap02_ST.xy + _MaskMap02_ST.zw;
			float2 lerpResult27_g5487 = lerp( lerpResult19_g5487 , uv5_MaskMap02.xy , saturate( ( temp_output_21_0_g5487 - 1.0 ) ));
			o.vertexToFrag51_g5487 = lerpResult27_g5487;
			float2 uv_MaskMap03 = v.texcoord.xy * _MaskMap03_ST.xy + _MaskMap03_ST.zw;
			float2 uv2_MaskMap03 = v.texcoord1.xy * _MaskMap03_ST.xy + _MaskMap03_ST.zw;
			float temp_output_14_0_g5488 = _MaskMap03UV;
			float2 lerpResult11_g5488 = lerp( uv_MaskMap03 , uv2_MaskMap03 , saturate( temp_output_14_0_g5488 ));
			float2 uv3_MaskMap03 = v.texcoord2.xy * _MaskMap03_ST.xy + _MaskMap03_ST.zw;
			float temp_output_16_0_g5488 = ( temp_output_14_0_g5488 - 1.0 );
			float2 lerpResult12_g5488 = lerp( lerpResult11_g5488 , uv3_MaskMap03 , saturate( temp_output_16_0_g5488 ));
			float2 uv4_MaskMap03 = v.texcoord3.xy * _MaskMap03_ST.xy + _MaskMap03_ST.zw;
			float temp_output_21_0_g5488 = ( temp_output_16_0_g5488 - 1.0 );
			float2 lerpResult19_g5488 = lerp( lerpResult12_g5488 , uv4_MaskMap03 , saturate( temp_output_21_0_g5488 ));
			float2 uv5_MaskMap03 = v.ase_texcoord4 * _MaskMap03_ST.xy + _MaskMap03_ST.zw;
			float2 lerpResult27_g5488 = lerp( lerpResult19_g5488 , uv5_MaskMap03.xy , saturate( ( temp_output_21_0_g5488 - 1.0 ) ));
			o.vertexToFrag51_g5488 = lerpResult27_g5488;
			float2 uv_MaskMap04 = v.texcoord.xy * _MaskMap04_ST.xy + _MaskMap04_ST.zw;
			float2 uv2_MaskMap04 = v.texcoord1.xy * _MaskMap04_ST.xy + _MaskMap04_ST.zw;
			float temp_output_14_0_g5489 = _MaskMap04UV;
			float2 lerpResult11_g5489 = lerp( uv_MaskMap04 , uv2_MaskMap04 , saturate( temp_output_14_0_g5489 ));
			float2 uv3_MaskMap04 = v.texcoord2.xy * _MaskMap04_ST.xy + _MaskMap04_ST.zw;
			float temp_output_16_0_g5489 = ( temp_output_14_0_g5489 - 1.0 );
			float2 lerpResult12_g5489 = lerp( lerpResult11_g5489 , uv3_MaskMap04 , saturate( temp_output_16_0_g5489 ));
			float2 uv4_MaskMap04 = v.texcoord3.xy * _MaskMap04_ST.xy + _MaskMap04_ST.zw;
			float temp_output_21_0_g5489 = ( temp_output_16_0_g5489 - 1.0 );
			float2 lerpResult19_g5489 = lerp( lerpResult12_g5489 , uv4_MaskMap04 , saturate( temp_output_21_0_g5489 ));
			float2 uv5_MaskMap04 = v.ase_texcoord4 * _MaskMap04_ST.xy + _MaskMap04_ST.zw;
			float2 lerpResult27_g5489 = lerp( lerpResult19_g5489 , uv5_MaskMap04.xy , saturate( ( temp_output_21_0_g5489 - 1.0 ) ));
			o.vertexToFrag51_g5489 = lerpResult27_g5489;
			float2 uv_DirectionalMap = v.texcoord.xy * _DirectionalMap_ST.xy + _DirectionalMap_ST.zw;
			float2 uv2_DirectionalMap = v.texcoord1.xy * _DirectionalMap_ST.xy + _DirectionalMap_ST.zw;
			float temp_output_14_0_g7502 = _DirectionMapUV;
			float2 lerpResult11_g7502 = lerp( uv_DirectionalMap , uv2_DirectionalMap , saturate( temp_output_14_0_g7502 ));
			float2 uv3_DirectionalMap = v.texcoord2.xy * _DirectionalMap_ST.xy + _DirectionalMap_ST.zw;
			float temp_output_16_0_g7502 = ( temp_output_14_0_g7502 - 1.0 );
			float2 lerpResult12_g7502 = lerp( lerpResult11_g7502 , uv3_DirectionalMap , saturate( temp_output_16_0_g7502 ));
			float2 uv4_DirectionalMap = v.texcoord3.xy * _DirectionalMap_ST.xy + _DirectionalMap_ST.zw;
			float temp_output_21_0_g7502 = ( temp_output_16_0_g7502 - 1.0 );
			float2 lerpResult19_g7502 = lerp( lerpResult12_g7502 , uv4_DirectionalMap , saturate( temp_output_21_0_g7502 ));
			float2 uv5_DirectionalMap = v.ase_texcoord4 * _DirectionalMap_ST.xy + _DirectionalMap_ST.zw;
			float2 lerpResult27_g7502 = lerp( lerpResult19_g7502 , uv5_DirectionalMap.xy , saturate( ( temp_output_21_0_g7502 - 1.0 ) ));
			o.vertexToFrag51_g7502 = lerpResult27_g7502;
			float2 uv_DetailNormal = v.texcoord.xy * _DetailNormal_ST.xy + _DetailNormal_ST.zw;
			float2 uv2_DetailNormal = v.texcoord1.xy * _DetailNormal_ST.xy + _DetailNormal_ST.zw;
			float temp_output_14_0_g5577 = _DetailUV;
			float2 lerpResult11_g5577 = lerp( uv_DetailNormal , uv2_DetailNormal , saturate( temp_output_14_0_g5577 ));
			float2 uv3_DetailNormal = v.texcoord2.xy * _DetailNormal_ST.xy + _DetailNormal_ST.zw;
			float temp_output_16_0_g5577 = ( temp_output_14_0_g5577 - 1.0 );
			float2 lerpResult12_g5577 = lerp( lerpResult11_g5577 , uv3_DetailNormal , saturate( temp_output_16_0_g5577 ));
			float2 uv4_DetailNormal = v.texcoord3.xy * _DetailNormal_ST.xy + _DetailNormal_ST.zw;
			float temp_output_21_0_g5577 = ( temp_output_16_0_g5577 - 1.0 );
			float2 lerpResult19_g5577 = lerp( lerpResult12_g5577 , uv4_DetailNormal , saturate( temp_output_21_0_g5577 ));
			float2 uv5_DetailNormal = v.ase_texcoord4 * _DetailNormal_ST.xy + _DetailNormal_ST.zw;
			float2 lerpResult27_g5577 = lerp( lerpResult19_g5577 , uv5_DetailNormal.xy , saturate( ( temp_output_21_0_g5577 - 1.0 ) ));
			o.vertexToFrag51_g5577 = lerpResult27_g5577;
		}

		inline half4 LightingStandardCustomLighting( inout SurfaceOutputCustomLightingCustom s, half3 viewDir, UnityGI gi )
		{
			UnityGIInput data = s.GIData;
			Input i = s.SurfInput;
			half4 c = 0;
			#ifdef UNITY_PASS_FORWARDBASE
			float ase_lightAtten = data.atten;
			if( _LightColor0.a == 0)
			ase_lightAtten = 0;
			#else
			float3 ase_lightAttenRGB = gi.light.color / ( ( _LightColor0.rgb ) + 0.000001 );
			float ase_lightAtten = max( max( ase_lightAttenRGB.r, ase_lightAttenRGB.g ), ase_lightAttenRGB.b );
			#endif
			#if defined(HANDLE_SHADOWS_BLENDING_IN_GI)
			half bakedAtten = UnitySampleBakedOcclusion(data.lightmapUV.xy, data.worldPos);
			float zDist = dot(_WorldSpaceCameraPos - data.worldPos, UNITY_MATRIX_V[2].xyz);
			float fadeDist = UnityComputeShadowFadeDistance(data.worldPos, zDist);
			ase_lightAtten = UnityMixRealtimeAndBakedShadows(data.atten, bakedAtten, UnityComputeShadowFade(fadeDist));
			#endif
			float2 uv_BumpMap = i.uv_texcoord * _BumpMap_ST.xy + _BumpMap_ST.zw;
			float3 Normal23 = UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap ), _BumpScale );
			float3 DetailNormal596 = UnpackScaleNormal( tex2D( _DetailNormal, i.vertexToFrag51_g5577 ), _BumpScale1 );
			float4 tex2DNode9 = tex2D( _MaskMap01, i.vertexToFrag51_g5486 );
			float4 MM01RGBA295 = tex2DNode9;
			float4 tex2DNode52 = tex2D( _MaskMap02, i.vertexToFrag51_g5487 );
			float4 MM02RGBA296 = tex2DNode52;
			float4 lerpResult606 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _DetailNormalMask ));
			float4 tex2DNode406 = tex2D( _MaskMap03, i.vertexToFrag51_g5488 );
			float4 MM03RGBA412 = tex2DNode406;
			float temp_output_600_0 = ( _DetailNormalMask - 1.0 );
			float4 lerpResult609 = lerp( lerpResult606 , MM03RGBA412 , saturate( temp_output_600_0 ));
			float4 tex2DNode414 = tex2D( _MaskMap04, i.vertexToFrag51_g5489 );
			float4 MM04RGBA420 = tex2DNode414;
			float temp_output_605_0 = ( temp_output_600_0 - 1.0 );
			float4 lerpResult610 = lerp( lerpResult609 , MM04RGBA420 , saturate( temp_output_605_0 ));
			float4 temp_cast_231 = (1.0).xxxx;
			float4 lerpResult945 = lerp( lerpResult610 , temp_cast_231 , saturate( ( temp_output_605_0 - 1.0 ) ));
			float lerpResult617 = lerp( (lerpResult945).r , (lerpResult945).g , saturate( _DetailNormalChannel ));
			float temp_output_616_0 = ( _DetailNormalChannel - 1.0 );
			float lerpResult622 = lerp( lerpResult617 , (lerpResult945).b , saturate( temp_output_616_0 ));
			float lerpResult625 = lerp( lerpResult622 , (lerpResult945).a , saturate( ( temp_output_616_0 - 1.0 ) ));
			float DetailNormalChannel626 = lerpResult625;
			float3 lerpResult639 = lerp( Normal23 , BlendNormals( Normal23 , DetailNormal596 ) , DetailNormalChannel626);
			float3 InitialNormal1580 = lerpResult639;
			float time10_g7489 = 0.0;
			float2 voronoiSmoothId10_g7489 = 0;
			float2 temp_output_53_0_g7489 = i.uv_texcoord;
			float2 coords10_g7489 = temp_output_53_0_g7489 * _FleckScale;
			float2 id10_g7489 = 0;
			float2 uv10_g7489 = 0;
			float voroi10_g7489 = voronoi10_g7489( coords10_g7489, time10_g7489, id10_g7489, uv10_g7489, 0, voronoiSmoothId10_g7489 );
			float2 FleckID79_g7489 = id10_g7489;
			float2 p19_g7489 = FleckID79_g7489;
			float3 localHash3219_g7489 = Hash32( p19_g7489 );
			float3 temp_output_23_0_g7489 = (float3( -1,-1,-1 ) + (localHash3219_g7489 - float3( 0,0,0 )) * (float3( 1,1,1 ) - float3( -1,-1,-1 )) / (float3( 1,1,1 ) - float3( 0,0,0 )));
			float dotResult4_g7490 = dot( FleckID79_g7489 , float2( 12.9898,78.233 ) );
			float lerpResult10_g7490 = lerp( 0.0 , 360.0 , frac( ( sin( dotResult4_g7490 ) * 43758.55 ) ));
			float cos182_g7489 = cos( radians( lerpResult10_g7490 ) );
			float sin182_g7489 = sin( radians( lerpResult10_g7490 ) );
			float2 rotator182_g7489 = mul( uv10_g7489 - float2( 0,0 ) , float2x2( cos182_g7489 , -sin182_g7489 , sin182_g7489 , cos182_g7489 )) + float2( 0,0 );
			float2 temp_output_6_0_g7491 = float2( 0.5,0.5 );
			float2 temp_output_68_0_g7489 = ( ( ( (float2( 0,0 ) + (rotator182_g7489 - float2( -1,-1 )) * (float2( 1,1 ) - float2( 0,0 )) / (float2( 1,1 ) - float2( -1,-1 ))) - temp_output_6_0_g7491 ) * _FleckSize ) + temp_output_6_0_g7491 );
			float2 temp_output_198_0_g7489 = max( temp_output_68_0_g7489 , float2( 0,0 ) );
			float4 tex2DNode64_g7489 = tex2D( _FleckShape, temp_output_68_0_g7489, ddx( temp_output_198_0_g7489 ), ddy( temp_output_198_0_g7489 ) );
			float temp_output_54_0_g7489 = ( 1.0 - _GlintAmount );
			float mulTime12_g7489 = _Time.y * _GlintTimescale;
			float2 temp_output_16_0_g7489 = ddx( temp_output_53_0_g7489 );
			float2 temp_output_17_0_g7489 = ddy( temp_output_53_0_g7489 );
			float4 tex2DNode21_g7489 = tex2D( _DictionaryTex, ( FleckID79_g7489 + mulTime12_g7489 ), temp_output_16_0_g7489, temp_output_17_0_g7489 );
			float smoothstepResult26_g7489 = smoothstep( temp_output_54_0_g7489 , 1.0 , tex2DNode21_g7489.r);
			float temp_output_28_0_g7489 = ( _GlintDensity * tex2DNode64_g7489.a * smoothstepResult26_g7489 * _FleckColor.a );
			float3 temp_output_60_0_g7489 = InitialNormal1580;
			float3 normalizeResult133_g7489 = normalize( ( ( temp_output_23_0_g7489 * temp_output_28_0_g7489 ) + temp_output_60_0_g7489 ) );
			float4 lerpResult522 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _GlintMap ));
			float temp_output_516_0 = ( _GlintMap - 1.0 );
			float4 lerpResult525 = lerp( lerpResult522 , MM03RGBA412 , saturate( temp_output_516_0 ));
			float temp_output_521_0 = ( temp_output_516_0 - 1.0 );
			float4 lerpResult526 = lerp( lerpResult525 , MM04RGBA420 , saturate( temp_output_521_0 ));
			float4 temp_cast_232 = (1.0).xxxx;
			float4 lerpResult957 = lerp( lerpResult526 , temp_cast_232 , saturate( ( temp_output_521_0 - 1.0 ) ));
			float lerpResult533 = lerp( (lerpResult957).r , (lerpResult957).g , saturate( _GlintChannel ));
			float temp_output_532_0 = ( _GlintChannel - 1.0 );
			float lerpResult538 = lerp( lerpResult533 , (lerpResult957).b , saturate( temp_output_532_0 ));
			float lerpResult541 = lerp( lerpResult538 , (lerpResult957).a , saturate( ( temp_output_532_0 - 1.0 ) ));
			float GlintChannel542 = lerpResult541;
			float3 lerpResult1529 = lerp( InitialNormal1580 , normalizeResult133_g7489 , GlintChannel542);
			#ifdef _GLINT_ON
				float3 staticSwitch1561 = lerpResult1529;
			#else
				float3 staticSwitch1561 = InitialNormal1580;
			#endif
			float3 FleckNorm1443 = staticSwitch1561;
			float3 lerpResult1581 = lerp( lerpResult639 , FleckNorm1443 , _AffectDiffuseNormals);
			#ifdef _GLINT_ON
				float3 staticSwitch1584 = lerpResult1581;
			#else
				float3 staticSwitch1584 = lerpResult639;
			#endif
			float3 NormalFinal643 = staticSwitch1584;
			float temp_output_1130_0 = (NormalFinal643).z;
			float switchResult1132 = (((i.ASEIsFrontFacing>0)?(temp_output_1130_0):(-temp_output_1130_0)));
			float3 appendResult1134 = (float3((NormalFinal643).xy , switchResult1132));
			float3 temp_output_30_0_g7497 = appendResult1134;
			float3 normalizeResult25_g7497 = normalize( (WorldNormalVector( i , temp_output_30_0_g7497 )) );
			float3 normalDir28_g7497 = normalizeResult25_g7497;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 viewDir15_g7497 = ase_worldViewDir;
			float dotResult56_g7497 = dot( normalDir28_g7497 , viewDir15_g7497 );
			float NdotV55_g7497 = saturate( dotResult56_g7497 );
			float MM01A18 = tex2DNode9.a;
			float4 lerpResult321 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _GlossMap ));
			float temp_output_429_0 = ( _GlossMap - 1.0 );
			float4 lerpResult435 = lerp( lerpResult321 , MM03RGBA412 , saturate( temp_output_429_0 ));
			float temp_output_432_0 = ( temp_output_429_0 - 1.0 );
			float4 lerpResult436 = lerp( lerpResult435 , MM04RGBA420 , saturate( temp_output_432_0 ));
			float4 temp_cast_233 = (1.0).xxxx;
			float4 lerpResult961 = lerp( lerpResult436 , temp_cast_233 , saturate( ( temp_output_432_0 - 1.0 ) ));
			float lerpResult328 = lerp( (lerpResult961).r , (lerpResult961).g , saturate( _GlossChannel ));
			float temp_output_327_0 = ( _GlossChannel - 1.0 );
			float lerpResult333 = lerp( lerpResult328 , (lerpResult961).b , saturate( temp_output_327_0 ));
			float lerpResult336 = lerp( lerpResult333 , (lerpResult961).a , saturate( ( temp_output_327_0 - 1.0 ) ));
			float GlossChannel244 = lerpResult336;
			float Workflow212 = _Workflow;
			float temp_output_239_0 = ( Workflow212 - 1.0 );
			float lerpResult241 = lerp( MM01A18 , GlossChannel244 , saturate( temp_output_239_0 ));
			float lerpResult1709 = lerp( lerpResult241 , MM01A18 , saturate( ( temp_output_239_0 - 1.0 ) ));
			float lerpResult213 = lerp( lerpResult1709 , ( 1.0 - lerpResult1709 ) , _InvertGloss);
			float3 newWorldNormal1673 = (WorldNormalVector( i , InitialNormal1580 ));
			float3 temp_output_1675_0 = ddx( newWorldNormal1673 );
			float dotResult1677 = dot( temp_output_1675_0 , temp_output_1675_0 );
			float3 temp_output_1676_0 = ddy( newWorldNormal1673 );
			float dotResult1678 = dot( temp_output_1676_0 , temp_output_1676_0 );
			float Gloss10 = ( 1.0 - max( ( 1.0 - ( lerpResult213 * _GlossMult ) ) , pow( saturate( max( dotResult1677 , dotResult1678 ) ) , 0.333 ) ) );
			float temp_output_147_0_g7497 = Gloss10;
			float smoothness169_g7497 = temp_output_147_0_g7497;
			float perceprualRoughness188_g7497 = ( 1.0 - smoothness169_g7497 );
			half Roughness64_g7497 = max( ( perceprualRoughness188_g7497 * perceprualRoughness188_g7497 ) , 0.002 );
			int localLightExists8_g7387 = LightExists8_g7387();
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float3 break1_g7387 = ase_lightColor.rgb;
			float smoothstepResult14_g7387 = smoothstep( 0.0 , 0.15 , saturate( max( max( break1_g7387.x , break1_g7387.y ) , break1_g7387.z ) ));
			#ifdef UNITY_PASS_FORWARDBASE
				float staticSwitch7_g7387 = smoothstepResult14_g7387;
			#else
				float staticSwitch7_g7387 = 1.0;
			#endif
			float temp_output_793_0 = ( localLightExists8_g7387 * staticSwitch7_g7387 );
			float3 localProbeDir775 = ProbeDir();
			float3 normalizeResult821 = ASESafeNormalize( localProbeDir775 );
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float3 LightDir776 = ( temp_output_793_0 < 0.9 ? normalizeResult821 : ase_worldlightDir );
			float3 lightDir14_g7497 = LightDir776;
			float dotResult21_g7497 = dot( lightDir14_g7497 , normalDir28_g7497 );
			float temp_output_347_0_g7497 = max( dotResult21_g7497 , 0.0 );
			float NdotL20_g7497 = temp_output_347_0_g7497;
			half SmithJointGGXVisibilityTerm42_g7497 = ( 0.5 / ( ( ( ( NdotV55_g7497 * ( 1.0 - Roughness64_g7497 ) ) + Roughness64_g7497 ) * NdotL20_g7497 ) + 1E-05 + ( NdotV55_g7497 * ( Roughness64_g7497 + ( ( 1.0 - Roughness64_g7497 ) * NdotL20_g7497 ) ) ) ) );
			float a266_g7497 = ( Roughness64_g7497 * Roughness64_g7497 );
			float3 normalizeResult87_g7497 = ASESafeNormalize( ( lightDir14_g7497 + viewDir15_g7497 ) );
			float dotResult88_g7497 = dot( normalDir28_g7497 , normalizeResult87_g7497 );
			float NdotH90_g7497 = saturate( dotResult88_g7497 );
			float d99_g7497 = ( ( ( ( NdotH90_g7497 * a266_g7497 ) - NdotH90_g7497 ) * NdotH90_g7497 ) + 1.0 );
			half GGXTerm43_g7497 = ( ( ( 1.0 / UNITY_PI ) * a266_g7497 ) / ( ( d99_g7497 * d99_g7497 ) + 1E-07 ) );
			float temp_output_36_0_g7497 = ( SmithJointGGXVisibilityTerm42_g7497 * GGXTerm43_g7497 * UNITY_PI );
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g7497 = sqrt( max( 0.0001 , temp_output_36_0_g7497 ) );
			#else
				float staticSwitch5_g7497 = temp_output_36_0_g7497;
			#endif
			#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g7497 = 0.0;
			#else
				float staticSwitch119_g7497 = max( 0.0 , ( staticSwitch5_g7497 * NdotL20_g7497 ) );
			#endif
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
			float4 EmissionRGBA590 = ( _EmissionColor * tex2D( _EmissionMap, uv_EmissionMap ) );
			float4 lerpResult656 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _EmissionMaskMap ));
			float temp_output_650_0 = ( _EmissionMaskMap - 1.0 );
			float4 lerpResult659 = lerp( lerpResult656 , MM03RGBA412 , saturate( temp_output_650_0 ));
			float temp_output_655_0 = ( temp_output_650_0 - 1.0 );
			float4 lerpResult660 = lerp( lerpResult659 , MM04RGBA420 , saturate( temp_output_655_0 ));
			float4 temp_cast_234 = (1.0).xxxx;
			float4 lerpResult941 = lerp( lerpResult660 , temp_cast_234 , saturate( ( temp_output_655_0 - 1.0 ) ));
			float lerpResult667 = lerp( (lerpResult941).r , (lerpResult941).g , saturate( _EmissionMaskChannel ));
			float temp_output_666_0 = ( _EmissionMaskChannel - 1.0 );
			float lerpResult672 = lerp( lerpResult667 , (lerpResult941).b , saturate( temp_output_666_0 ));
			float lerpResult675 = lerp( lerpResult672 , (lerpResult941).a , saturate( ( temp_output_666_0 - 1.0 ) ));
			float EmissionMaskChannel676 = lerpResult675;
			float4 lerpResult689 = lerp( ( tex2D( _MainTex, uv_MainTex ) * _Color ) , EmissionRGBA590 , ( _ReplaceBaseColor * EmissionMaskChannel676 ));
			float4 MainTexRGBA7 = lerpResult689;
			float MM01R16 = tex2DNode9.r;
			float lerpResult226 = lerp( MM01R16 , 0.0 , saturate( Workflow212 ));
			float4 lerpResult298 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _MetallicMask ));
			float temp_output_424_0 = ( _MetallicMask - 1.0 );
			float4 lerpResult403 = lerp( lerpResult298 , MM03RGBA412 , saturate( temp_output_424_0 ));
			float temp_output_426_0 = ( temp_output_424_0 - 1.0 );
			float4 lerpResult404 = lerp( lerpResult403 , MM04RGBA420 , saturate( temp_output_426_0 ));
			float4 temp_cast_236 = (1.0).xxxx;
			float4 lerpResult965 = lerp( lerpResult404 , temp_cast_236 , saturate( ( temp_output_426_0 - 1.0 ) ));
			float lerpResult302 = lerp( (lerpResult965).r , (lerpResult965).g , saturate( _MetallicChannel ));
			float temp_output_311_0 = ( _MetallicChannel - 1.0 );
			float lerpResult307 = lerp( lerpResult302 , (lerpResult965).b , saturate( temp_output_311_0 ));
			float lerpResult308 = lerp( lerpResult307 , (lerpResult965).a , saturate( ( temp_output_311_0 - 1.0 ) ));
			float MetallicChannel232 = lerpResult308;
			float temp_output_230_0 = ( Workflow212 - 1.0 );
			float lerpResult229 = lerp( lerpResult226 , MetallicChannel232 , saturate( temp_output_230_0 ));
			float lerpResult1705 = lerp( lerpResult229 , MM01R16 , saturate( ( temp_output_230_0 - 1.0 ) ));
			float Metallic224 = saturate( ( lerpResult1705 * _MetallicMult ) );
			half3 specColor2 = (0).xxx;
			half oneMinusReflectivity2 = 0;
			half3 diffuseAndSpecularFromMetallic2 = DiffuseAndSpecularFromMetallic(MainTexRGBA7.rgb,Metallic224,specColor2,oneMinusReflectivity2);
			float4 lerpResult903 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _SpecularTintMap ));
			float temp_output_897_0 = ( _SpecularTintMap - 1.0 );
			float4 lerpResult906 = lerp( lerpResult903 , MM03RGBA412 , saturate( temp_output_897_0 ));
			float temp_output_902_0 = ( temp_output_897_0 - 1.0 );
			float4 lerpResult907 = lerp( lerpResult906 , MM04RGBA420 , saturate( temp_output_902_0 ));
			float4 temp_cast_237 = (1.0).xxxx;
			float4 lerpResult926 = lerp( lerpResult907 , temp_cast_237 , saturate( ( temp_output_902_0 - 1.0 ) ));
			float4 SpecularTintCol923 = lerpResult926;
			float3 temp_output_223_0 = (( _SpecularTint * SpecularTintCol923 )).rgb;
			float3 temp_output_220_0 = ( specColor2 * temp_output_223_0 );
			float3 temp_output_1387_0 = (( _SpecularTint * MM01RGBA295 )).rgb;
			float3 lerpResult264 = lerp( temp_output_220_0 , temp_output_1387_0 , saturate( Workflow212 ));
			float3 lerpResult267 = lerp( lerpResult264 , temp_output_220_0 , saturate( ( Workflow212 - 1.0 ) ));
			float3 InitialSpec1489 = lerpResult267;
			float3 temp_output_72_0_g7489 = MainTexRGBA7.rgb;
			float3 InitialAlbedo193_g7489 = temp_output_72_0_g7489;
			float4 lerpResult1623 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _FleckColorMap ));
			float temp_output_1618_0 = ( _FleckColorMap - 1.0 );
			float4 lerpResult1626 = lerp( lerpResult1623 , MM03RGBA412 , saturate( temp_output_1618_0 ));
			float temp_output_1624_0 = ( temp_output_1618_0 - 1.0 );
			float4 lerpResult1629 = lerp( lerpResult1626 , MM04RGBA420 , saturate( temp_output_1624_0 ));
			float4 temp_cast_239 = (1.0).xxxx;
			float4 lerpResult1632 = lerp( lerpResult1629 , temp_cast_239 , saturate( ( temp_output_1624_0 - 1.0 ) ));
			float4 FleckTintCol1633 = lerpResult1632;
			float4 temp_output_196_0_g7489 = ( float4( FleckTintCol1633.rgb , 0.0 ) * _FleckColor * float4( (tex2DNode64_g7489).rgb , 0.0 ) );
			float4 lerpResult130_g7489 = lerp( temp_output_196_0_g7489 , ( float4( temp_output_72_0_g7489 , 0.0 ) * temp_output_196_0_g7489 ) , _UseAlbedo);
			float3 hsvTorgb87_g7489 = RGBToHSV( lerpResult130_g7489.rgb );
			float2 break82_g7489 = (float2( -1,-1 ) + (FleckID79_g7489 - float2( 0,0 )) * (float2( 1,1 ) - float2( -1,-1 )) / (float2( 1,1 ) - float2( 0,0 )));
			float3 hsvTorgb91_g7489 = HSVToRGB( float3(( hsvTorgb87_g7489.x + ( ( break82_g7489.x + break82_g7489.y ) * _FleckVariance ) ),hsvTorgb87_g7489.y,hsvTorgb87_g7489.z) );
			float temp_output_112_0_g7489 = ( tex2DNode64_g7489.a * smoothstepResult26_g7489 * _FleckColor.a );
			float FleckShape78_g7489 = temp_output_112_0_g7489;
			float3 lerpResult96_g7489 = lerp( InitialAlbedo193_g7489 , hsvTorgb91_g7489 , FleckShape78_g7489);
			float lerpResult1502 = lerp( MM01R16 , 0.0 , saturate( Workflow212 ));
			float4 lerpResult1455 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _FleckMetallicMap ));
			float temp_output_1454_0 = ( _FleckMetallicMap - 1.0 );
			float4 lerpResult1461 = lerp( lerpResult1455 , MM03RGBA412 , saturate( temp_output_1454_0 ));
			float temp_output_1458_0 = ( temp_output_1454_0 - 1.0 );
			float4 lerpResult1463 = lerp( lerpResult1461 , MM04RGBA420 , saturate( temp_output_1458_0 ));
			float4 temp_cast_247 = (1.0).xxxx;
			float4 lerpResult1466 = lerp( lerpResult1463 , temp_cast_247 , saturate( ( temp_output_1458_0 - 1.0 ) ));
			float lerpResult1473 = lerp( (lerpResult1466).r , (lerpResult1466).g , saturate( _FleckMetallicChannel ));
			float temp_output_1472_0 = ( _FleckMetallicChannel - 1.0 );
			float lerpResult1478 = lerp( lerpResult1473 , (lerpResult1466).b , saturate( temp_output_1472_0 ));
			float lerpResult1481 = lerp( lerpResult1478 , (lerpResult1466).a , saturate( ( temp_output_1472_0 - 1.0 ) ));
			float FleckMetallicChannel1482 = lerpResult1481;
			float lerpResult1505 = lerp( lerpResult1502 , FleckMetallicChannel1482 , saturate( ( Workflow212 - 1.0 ) ));
			float MetallicForFleck1509 = saturate( ( lerpResult1505 * _FleckMetallic ) );
			float temp_output_102_0_g7489 = MetallicForFleck1509;
			half3 specColor116_g7489 = (0).xxx;
			half oneMinusReflectivity116_g7489 = 0;
			half3 diffuseAndSpecularFromMetallic116_g7489 = DiffuseAndSpecularFromMetallic(lerpResult96_g7489,temp_output_102_0_g7489,specColor116_g7489,oneMinusReflectivity116_g7489);
			float3 GlintSpecCol11510 = temp_output_223_0;
			float3 temp_output_117_0_g7489 = ( specColor116_g7489 * GlintSpecCol11510 );
			float3 GlintSpecCol21511 = temp_output_1387_0;
			float temp_output_125_0_g7489 = Workflow212;
			float3 lerpResult118_g7489 = lerp( temp_output_117_0_g7489 , GlintSpecCol21511 , saturate( temp_output_125_0_g7489 ));
			float3 lerpResult122_g7489 = lerp( lerpResult118_g7489 , temp_output_117_0_g7489 , saturate( ( temp_output_125_0_g7489 - 1.0 ) ));
			float3 lerpResult103_g7489 = lerp( InitialSpec1489 , lerpResult122_g7489 , FleckShape78_g7489);
			float3 lerpResult1490 = lerp( InitialSpec1489 , lerpResult103_g7489 , _AffectIndirectColor);
			float3 lerpResult1527 = lerp( InitialSpec1489 , lerpResult1490 , GlintChannel542);
			#ifdef _GLINT_ON
				float3 staticSwitch1562 = lerpResult1527;
			#else
				float3 staticSwitch1562 = InitialSpec1489;
			#endif
			float3 GlintSpecColor1486 = staticSwitch1562;
			#ifdef _GLINT_ON
				float3 staticSwitch1488 = GlintSpecColor1486;
			#else
				float3 staticSwitch1488 = lerpResult267;
			#endif
			float3 SpecularColor42 = staticSwitch1488;
			float3 SpecColor140_g7497 = SpecularColor42;
			float SpecularTerm34_g7497 = ( staticSwitch119_g7497 * ( SpecColor140_g7497.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
			UnityGI gi790 = gi;
			float3 diffNorm790 = normalizeResult821;
			gi790 = UnityGI_Base( data, 1, diffNorm790 );
			float3 indirectDiffuse790 = gi790.indirect.diffuse + diffNorm790 * 0.0001;
			float3 temp_output_820_0 = max( indirectDiffuse790 , float3( 0,0,0 ) );
			float3 uvw1686 = (WorldNormalVector( i , InitialNormal1580 ));
			float3 localsampleReflectionProbe1686 = sampleReflectionProbe1686( uvw1686 );
			float3 lerpResult1689 = lerp( temp_output_820_0 , localsampleReflectionProbe1686 , 0.5);
			int Band11_g7299 = 56;
			int localIsLumaActive11_g7299 = IsLumaActive11_g7299( Band11_g7299 );
			int localIfAudioLinkv2Exists1_g7386 = IfAudioLinkv2Exists1_g7386();
			float3 lerpResult1691 = lerp( temp_output_820_0 , lerpResult1689 , (float)min( localIsLumaActive11_g7299 , localIfAudioLinkv2Exists1_g7386 ));
			float3 LightCol782 = ( temp_output_793_0 < 0.9 ? lerpResult1691 : ase_lightColor.rgb );
			float3 temp_output_328_0_g7497 = LightCol782;
			int localLightExists8_g7498 = LightExists8_g7498();
			float3 break1_g7498 = ase_lightColor.rgb;
			float smoothstepResult14_g7498 = smoothstep( 0.0 , 0.15 , saturate( max( max( break1_g7498.x , break1_g7498.y ) , break1_g7498.z ) ));
			#ifdef UNITY_PASS_FORWARDBASE
				float staticSwitch7_g7498 = smoothstepResult14_g7498;
			#else
				float staticSwitch7_g7498 = 1.0;
			#endif
			float temp_output_344_0_g7497 = saturate( ( max( 0.0 , ase_lightAtten ) + ( 1.0 - ( localLightExists8_g7498 * staticSwitch7_g7498 ) ) ) );
			float3 lightAtten296_g7497 = ( temp_output_328_0_g7497 * temp_output_344_0_g7497 );
			float3 normalizeResult136_g7497 = ASESafeNormalize( ( lightDir14_g7497 + viewDir15_g7497 ) );
			float dotResult137_g7497 = dot( lightDir14_g7497 , normalizeResult136_g7497 );
			float LdotH139_g7497 = saturate( dotResult137_g7497 );
			half3 FresnelTerm130_g7497 = ( ( pow( ( 1.0 - LdotH139_g7497 ) , 5.0 ) * ( 1.0 - SpecColor140_g7497 ) ) + SpecColor140_g7497 );
			float3 temp_output_144_0_g7497 = ( SpecularTerm34_g7497 * lightAtten296_g7497 * FresnelTerm130_g7497 );
			float OnlyShadow349_g7497 = temp_output_344_0_g7497;
			float4 appendResult1333 = (float4(temp_output_144_0_g7497 , ( SpecularTerm34_g7497 * OnlyShadow349_g7497 )));
			float4 ggxSpec186 = appendResult1333;
			float3 temp_output_63_0_g7489 = LightDir776;
			float3 newWorldNormal201_g7489 = (WorldNormalVector( i , temp_output_60_0_g7489 ));
			float dotResult204_g7489 = dot( temp_output_63_0_g7489 , newWorldNormal201_g7489 );
			float dotResult200_g7489 = dot( ase_worldViewDir , newWorldNormal201_g7489 );
			float3 temp_output_30_0_g7493 = normalizeResult133_g7489;
			float3 normalizeResult25_g7493 = normalize( (WorldNormalVector( i , temp_output_30_0_g7493 )) );
			float3 normalDir28_g7493 = normalizeResult25_g7493;
			float3 localCenterEye1_g7492 = CenterEye1_g7492();
			float3 normalizeResult5_g7492 = normalize( ( localCenterEye1_g7492 - ase_worldPos ) );
			float3 viewDir15_g7493 = normalizeResult5_g7492;
			float dotResult56_g7493 = dot( normalDir28_g7493 , viewDir15_g7493 );
			float NdotV55_g7493 = saturate( dotResult56_g7493 );
			float4 lerpResult1215 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _GlintGlossMap ));
			float temp_output_1210_0 = ( _GlintGlossMap - 1.0 );
			float4 lerpResult1218 = lerp( lerpResult1215 , MM03RGBA412 , saturate( temp_output_1210_0 ));
			float temp_output_1216_0 = ( temp_output_1210_0 - 1.0 );
			float4 lerpResult1221 = lerp( lerpResult1218 , MM04RGBA420 , saturate( temp_output_1216_0 ));
			float4 temp_cast_250 = (1.0).xxxx;
			float4 lerpResult1224 = lerp( lerpResult1221 , temp_cast_250 , saturate( ( temp_output_1216_0 - 1.0 ) ));
			float lerpResult1231 = lerp( (lerpResult1224).r , (lerpResult1224).g , saturate( _GlintGlossChannel ));
			float temp_output_1230_0 = ( _GlintGlossChannel - 1.0 );
			float lerpResult1236 = lerp( lerpResult1231 , (lerpResult1224).b , saturate( temp_output_1230_0 ));
			float lerpResult1239 = lerp( lerpResult1236 , (lerpResult1224).a , saturate( ( temp_output_1230_0 - 1.0 ) ));
			float GlintGlossChannel1240 = lerpResult1239;
			float lerpResult136_g7489 = lerp( 0.0 , ( _GlintGloss * GlintGlossChannel1240 ) , FleckShape78_g7489);
			float temp_output_147_0_g7493 = lerpResult136_g7489;
			float smoothness169_g7493 = temp_output_147_0_g7493;
			float perceprualRoughness188_g7493 = ( 1.0 - smoothness169_g7493 );
			half Roughness64_g7493 = max( ( perceprualRoughness188_g7493 * perceprualRoughness188_g7493 ) , 0.002 );
			float3 lightDir14_g7493 = temp_output_63_0_g7489;
			float dotResult21_g7493 = dot( lightDir14_g7493 , normalDir28_g7493 );
			float temp_output_347_0_g7493 = max( dotResult21_g7493 , 0.0 );
			float NdotL20_g7493 = temp_output_347_0_g7493;
			half SmithJointGGXVisibilityTerm42_g7493 = ( 0.5 / ( ( ( ( NdotV55_g7493 * ( 1.0 - Roughness64_g7493 ) ) + Roughness64_g7493 ) * NdotL20_g7493 ) + 1E-05 + ( NdotV55_g7493 * ( Roughness64_g7493 + ( ( 1.0 - Roughness64_g7493 ) * NdotL20_g7493 ) ) ) ) );
			float a266_g7493 = ( Roughness64_g7493 * Roughness64_g7493 );
			float3 normalizeResult87_g7493 = ASESafeNormalize( ( lightDir14_g7493 + viewDir15_g7493 ) );
			float dotResult88_g7493 = dot( normalDir28_g7493 , normalizeResult87_g7493 );
			float NdotH90_g7493 = saturate( dotResult88_g7493 );
			float d99_g7493 = ( ( ( ( NdotH90_g7493 * a266_g7493 ) - NdotH90_g7493 ) * NdotH90_g7493 ) + 1.0 );
			half GGXTerm43_g7493 = ( ( ( 1.0 / UNITY_PI ) * a266_g7493 ) / ( ( d99_g7493 * d99_g7493 ) + 1E-07 ) );
			float temp_output_36_0_g7493 = ( SmithJointGGXVisibilityTerm42_g7493 * GGXTerm43_g7493 * UNITY_PI );
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g7493 = sqrt( max( 0.0001 , temp_output_36_0_g7493 ) );
			#else
				float staticSwitch5_g7493 = temp_output_36_0_g7493;
			#endif
			#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g7493 = 0.0;
			#else
				float staticSwitch119_g7493 = max( 0.0 , ( staticSwitch5_g7493 * NdotL20_g7493 ) );
			#endif
			float3 SpecColor140_g7493 = lerpResult103_g7489;
			float SpecularTerm34_g7493 = ( staticSwitch119_g7493 * ( SpecColor140_g7493.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
			int localLightExists8_g7494 = LightExists8_g7494();
			float3 break1_g7494 = ase_lightColor.rgb;
			float smoothstepResult14_g7494 = smoothstep( 0.0 , 0.15 , saturate( max( max( break1_g7494.x , break1_g7494.y ) , break1_g7494.z ) ));
			#ifdef UNITY_PASS_FORWARDBASE
				float staticSwitch7_g7494 = smoothstepResult14_g7494;
			#else
				float staticSwitch7_g7494 = 1.0;
			#endif
			float temp_output_344_0_g7493 = saturate( ( max( 0.0 , ase_lightAtten ) + ( 1.0 - ( localLightExists8_g7494 * staticSwitch7_g7494 ) ) ) );
			float OnlyShadow349_g7493 = temp_output_344_0_g7493;
			float temp_output_208_348_g7489 = ( SpecularTerm34_g7493 * OnlyShadow349_g7493 );
			float3 temp_output_328_0_g7493 = LightCol782;
			float3 lightAtten296_g7493 = ( temp_output_328_0_g7493 * temp_output_344_0_g7493 );
			float3 normalizeResult136_g7493 = ASESafeNormalize( ( lightDir14_g7493 + viewDir15_g7493 ) );
			float dotResult137_g7493 = dot( lightDir14_g7493 , normalizeResult136_g7493 );
			float LdotH139_g7493 = saturate( dotResult137_g7493 );
			half3 FresnelTerm130_g7493 = ( ( pow( ( 1.0 - LdotH139_g7493 ) , 5.0 ) * ( 1.0 - SpecColor140_g7493 ) ) + SpecColor140_g7493 );
			float3 temp_output_144_0_g7493 = ( SpecularTerm34_g7493 * lightAtten296_g7493 * FresnelTerm130_g7493 );
			float3 temp_cast_252 = (1.0).xxx;
			float3 lerpResult167_g7489 = lerp( temp_cast_252 , lerpResult122_g7489 , FleckShape78_g7489);
			float4 appendResult76_g7489 = (float4(( min( _FleckIntensity , temp_output_208_348_g7489 ) * temp_output_144_0_g7493 * lerpResult167_g7489 ) , temp_output_208_348_g7489));
			float4 temp_output_1728_0 = ( ( max( dotResult204_g7489 , 0.0 ) * max( dotResult200_g7489 , 0.0 ) ) * appendResult76_g7489 );
			float4 GlintSpec175 = temp_output_1728_0;
			float3 temp_output_30_0_g7495 = appendResult1134;
			float3 normalizeResult25_g7495 = normalize( (WorldNormalVector( i , temp_output_30_0_g7495 )) );
			float3 normalDir28_g7495 = normalizeResult25_g7495;
			float3 viewDir15_g7495 = ase_worldViewDir;
			float dotResult56_g7495 = dot( normalDir28_g7495 , viewDir15_g7495 );
			float NdotV55_g7495 = saturate( dotResult56_g7495 );
			float4 lerpResult1248 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _GlintHighlightMap ));
			float temp_output_1243_0 = ( _GlintHighlightMap - 1.0 );
			float4 lerpResult1251 = lerp( lerpResult1248 , MM03RGBA412 , saturate( temp_output_1243_0 ));
			float temp_output_1249_0 = ( temp_output_1243_0 - 1.0 );
			float4 lerpResult1254 = lerp( lerpResult1251 , MM04RGBA420 , saturate( temp_output_1249_0 ));
			float4 temp_cast_253 = (1.0).xxxx;
			float4 lerpResult1257 = lerp( lerpResult1254 , temp_cast_253 , saturate( ( temp_output_1249_0 - 1.0 ) ));
			float lerpResult1263 = lerp( (lerpResult1257).r , (lerpResult1257).g , saturate( _GlintHighlightChannel ));
			float temp_output_1262_0 = ( _GlintHighlightChannel - 1.0 );
			float lerpResult1268 = lerp( lerpResult1263 , (lerpResult1257).b , saturate( temp_output_1262_0 ));
			float lerpResult1271 = lerp( lerpResult1268 , (lerpResult1257).a , saturate( ( temp_output_1262_0 - 1.0 ) ));
			float GlintHighlightChannel1272 = lerpResult1271;
			float temp_output_147_0_g7495 = ( _GlintHighlight * GlintHighlightChannel1272 );
			float smoothness169_g7495 = temp_output_147_0_g7495;
			float perceprualRoughness188_g7495 = ( 1.0 - smoothness169_g7495 );
			half Roughness64_g7495 = max( ( perceprualRoughness188_g7495 * perceprualRoughness188_g7495 ) , 0.002 );
			float3 lightDir14_g7495 = LightDir776;
			float dotResult21_g7495 = dot( lightDir14_g7495 , normalDir28_g7495 );
			float temp_output_347_0_g7495 = max( dotResult21_g7495 , 0.0 );
			float NdotL20_g7495 = temp_output_347_0_g7495;
			half SmithJointGGXVisibilityTerm42_g7495 = ( 0.5 / ( ( ( ( NdotV55_g7495 * ( 1.0 - Roughness64_g7495 ) ) + Roughness64_g7495 ) * NdotL20_g7495 ) + 1E-05 + ( NdotV55_g7495 * ( Roughness64_g7495 + ( ( 1.0 - Roughness64_g7495 ) * NdotL20_g7495 ) ) ) ) );
			float a266_g7495 = ( Roughness64_g7495 * Roughness64_g7495 );
			float3 normalizeResult87_g7495 = ASESafeNormalize( ( lightDir14_g7495 + viewDir15_g7495 ) );
			float dotResult88_g7495 = dot( normalDir28_g7495 , normalizeResult87_g7495 );
			float NdotH90_g7495 = saturate( dotResult88_g7495 );
			float d99_g7495 = ( ( ( ( NdotH90_g7495 * a266_g7495 ) - NdotH90_g7495 ) * NdotH90_g7495 ) + 1.0 );
			half GGXTerm43_g7495 = ( ( ( 1.0 / UNITY_PI ) * a266_g7495 ) / ( ( d99_g7495 * d99_g7495 ) + 1E-07 ) );
			float temp_output_36_0_g7495 = ( SmithJointGGXVisibilityTerm42_g7495 * GGXTerm43_g7495 * UNITY_PI );
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g7495 = sqrt( max( 0.0001 , temp_output_36_0_g7495 ) );
			#else
				float staticSwitch5_g7495 = temp_output_36_0_g7495;
			#endif
			#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g7495 = 0.0;
			#else
				float staticSwitch119_g7495 = max( 0.0 , ( staticSwitch5_g7495 * NdotL20_g7495 ) );
			#endif
			float3 SpecColor140_g7495 = SpecularColor42;
			float SpecularTerm34_g7495 = ( staticSwitch119_g7495 * ( SpecColor140_g7495.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
			float3 temp_output_328_0_g7495 = LightCol782;
			int localLightExists8_g7496 = LightExists8_g7496();
			float3 break1_g7496 = ase_lightColor.rgb;
			float smoothstepResult14_g7496 = smoothstep( 0.0 , 0.15 , saturate( max( max( break1_g7496.x , break1_g7496.y ) , break1_g7496.z ) ));
			#ifdef UNITY_PASS_FORWARDBASE
				float staticSwitch7_g7496 = smoothstepResult14_g7496;
			#else
				float staticSwitch7_g7496 = 1.0;
			#endif
			float temp_output_344_0_g7495 = saturate( ( max( 0.0 , ase_lightAtten ) + ( 1.0 - ( localLightExists8_g7496 * staticSwitch7_g7496 ) ) ) );
			float3 lightAtten296_g7495 = ( temp_output_328_0_g7495 * temp_output_344_0_g7495 );
			float3 normalizeResult136_g7495 = ASESafeNormalize( ( lightDir14_g7495 + viewDir15_g7495 ) );
			float dotResult137_g7495 = dot( lightDir14_g7495 , normalizeResult136_g7495 );
			float LdotH139_g7495 = saturate( dotResult137_g7495 );
			half3 FresnelTerm130_g7495 = ( ( pow( ( 1.0 - LdotH139_g7495 ) , 5.0 ) * ( 1.0 - SpecColor140_g7495 ) ) + SpecColor140_g7495 );
			float3 temp_output_144_0_g7495 = ( SpecularTerm34_g7495 * lightAtten296_g7495 * FresnelTerm130_g7495 );
			float OnlyShadow349_g7495 = temp_output_344_0_g7495;
			float4 appendResult1332 = (float4(temp_output_144_0_g7495 , ( SpecularTerm34_g7495 * OnlyShadow349_g7495 )));
			float4 GlintHighlight732 = appendResult1332;
			#ifdef _GLINT_HIGHLIGHT_ON
				float4 staticSwitch740 = ( ( GlintSpec175 + GlintHighlight732 + ggxSpec186 ) * 0.5 );
			#else
				float4 staticSwitch740 = ( GlintSpec175 + ggxSpec186 );
			#endif
			float4 lerpResult543 = lerp( ggxSpec186 , staticSwitch740 , GlintChannel542);
			#ifdef _GLINT_ON
				float4 staticSwitch544 = lerpResult543;
			#else
				float4 staticSwitch544 = ggxSpec186;
			#endif
			float4 GlintFinal572 = staticSwitch544;
			float3 tex2DNode747 = UnpackScaleNormal( tex2D( _BumpMap, uv_BumpMap ), _ClearCoatNormalScale );
			float3 lerpResult743 = lerp( float3(0,0,1) , tex2DNode747 , saturate( _ClearCoatNormal ));
			float2 uv_DetailNormal = i.uv_texcoord * _DetailNormal_ST.xy + _DetailNormal_ST.zw;
			float3 tex2DNode753 = UnpackScaleNormal( tex2D( _DetailNormal, uv_DetailNormal ), _ClearCoatDetailNormalScale );
			float temp_output_751_0 = ( _ClearCoatNormal - 1.0 );
			float3 lerpResult750 = lerp( lerpResult743 , tex2DNode753 , saturate( temp_output_751_0 ));
			float3 lerpResult756 = lerp( lerpResult750 , BlendNormals( tex2DNode747 , tex2DNode753 ) , saturate( ( temp_output_751_0 - 1.0 ) ));
			float3 ClearCoatNormal741 = lerpResult756;
			float temp_output_1127_0 = (ClearCoatNormal741).z;
			float switchResult1126 = (((i.ASEIsFrontFacing>0)?(temp_output_1127_0):(-temp_output_1127_0)));
			float3 appendResult1129 = (float3((ClearCoatNormal741).xy , switchResult1126));
			float3 temp_output_30_0_g7499 = appendResult1129;
			float3 normalizeResult25_g7499 = normalize( (WorldNormalVector( i , temp_output_30_0_g7499 )) );
			float3 normalDir28_g7499 = normalizeResult25_g7499;
			float3 viewDir15_g7499 = ase_worldViewDir;
			float dotResult56_g7499 = dot( normalDir28_g7499 , viewDir15_g7499 );
			float NdotV55_g7499 = saturate( dotResult56_g7499 );
			float4 lerpResult1143 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _ClearCoatHighlightMap ));
			float temp_output_1138_0 = ( _ClearCoatHighlightMap - 1.0 );
			float4 lerpResult1146 = lerp( lerpResult1143 , MM03RGBA412 , saturate( temp_output_1138_0 ));
			float temp_output_1144_0 = ( temp_output_1138_0 - 1.0 );
			float4 lerpResult1149 = lerp( lerpResult1146 , MM04RGBA420 , saturate( temp_output_1144_0 ));
			float4 temp_cast_255 = (1.0).xxxx;
			float4 lerpResult1152 = lerp( lerpResult1149 , temp_cast_255 , saturate( ( temp_output_1144_0 - 1.0 ) ));
			float lerpResult1159 = lerp( (lerpResult1152).r , (lerpResult1152).g , saturate( _ClearCoatHighlightChannel ));
			float temp_output_1158_0 = ( _ClearCoatHighlightChannel - 1.0 );
			float lerpResult1164 = lerp( lerpResult1159 , (lerpResult1152).b , saturate( temp_output_1158_0 ));
			float lerpResult1167 = lerp( lerpResult1164 , (lerpResult1152).a , saturate( ( temp_output_1158_0 - 1.0 ) ));
			float lerpResult1662 = lerp( lerpResult1167 , ( 1.0 - lerpResult1167 ) , _InvertHighlightGloss);
			float ClearCoatHighlightChannel1168 = lerpResult1662;
			float temp_output_147_0_g7499 = ( _ClearCoatHighlight * ClearCoatHighlightChannel1168 );
			float smoothness169_g7499 = temp_output_147_0_g7499;
			float perceprualRoughness188_g7499 = ( 1.0 - smoothness169_g7499 );
			half Roughness64_g7499 = max( ( perceprualRoughness188_g7499 * perceprualRoughness188_g7499 ) , 0.002 );
			float3 lightDir14_g7499 = LightDir776;
			float dotResult21_g7499 = dot( lightDir14_g7499 , normalDir28_g7499 );
			float temp_output_347_0_g7499 = max( dotResult21_g7499 , 0.0 );
			float NdotL20_g7499 = temp_output_347_0_g7499;
			half SmithJointGGXVisibilityTerm42_g7499 = ( 0.5 / ( ( ( ( NdotV55_g7499 * ( 1.0 - Roughness64_g7499 ) ) + Roughness64_g7499 ) * NdotL20_g7499 ) + 1E-05 + ( NdotV55_g7499 * ( Roughness64_g7499 + ( ( 1.0 - Roughness64_g7499 ) * NdotL20_g7499 ) ) ) ) );
			float a266_g7499 = ( Roughness64_g7499 * Roughness64_g7499 );
			float3 normalizeResult87_g7499 = ASESafeNormalize( ( lightDir14_g7499 + viewDir15_g7499 ) );
			float dotResult88_g7499 = dot( normalDir28_g7499 , normalizeResult87_g7499 );
			float NdotH90_g7499 = saturate( dotResult88_g7499 );
			float d99_g7499 = ( ( ( ( NdotH90_g7499 * a266_g7499 ) - NdotH90_g7499 ) * NdotH90_g7499 ) + 1.0 );
			half GGXTerm43_g7499 = ( ( ( 1.0 / UNITY_PI ) * a266_g7499 ) / ( ( d99_g7499 * d99_g7499 ) + 1E-07 ) );
			float temp_output_36_0_g7499 = ( SmithJointGGXVisibilityTerm42_g7499 * GGXTerm43_g7499 * UNITY_PI );
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g7499 = sqrt( max( 0.0001 , temp_output_36_0_g7499 ) );
			#else
				float staticSwitch5_g7499 = temp_output_36_0_g7499;
			#endif
			#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g7499 = 0.0;
			#else
				float staticSwitch119_g7499 = max( 0.0 , ( staticSwitch5_g7499 * NdotL20_g7499 ) );
			#endif
			float3 SpecColor140_g7499 = InitialSpec1489;
			float SpecularTerm34_g7499 = ( staticSwitch119_g7499 * ( SpecColor140_g7499.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
			float3 temp_output_328_0_g7499 = LightCol782;
			int localLightExists8_g7500 = LightExists8_g7500();
			float3 break1_g7500 = ase_lightColor.rgb;
			float smoothstepResult14_g7500 = smoothstep( 0.0 , 0.15 , saturate( max( max( break1_g7500.x , break1_g7500.y ) , break1_g7500.z ) ));
			#ifdef UNITY_PASS_FORWARDBASE
				float staticSwitch7_g7500 = smoothstepResult14_g7500;
			#else
				float staticSwitch7_g7500 = 1.0;
			#endif
			float temp_output_344_0_g7499 = saturate( ( max( 0.0 , ase_lightAtten ) + ( 1.0 - ( localLightExists8_g7500 * staticSwitch7_g7500 ) ) ) );
			float3 lightAtten296_g7499 = ( temp_output_328_0_g7499 * temp_output_344_0_g7499 );
			float3 normalizeResult136_g7499 = ASESafeNormalize( ( lightDir14_g7499 + viewDir15_g7499 ) );
			float dotResult137_g7499 = dot( lightDir14_g7499 , normalizeResult136_g7499 );
			float LdotH139_g7499 = saturate( dotResult137_g7499 );
			half3 FresnelTerm130_g7499 = ( ( pow( ( 1.0 - LdotH139_g7499 ) , 5.0 ) * ( 1.0 - SpecColor140_g7499 ) ) + SpecColor140_g7499 );
			float3 temp_output_144_0_g7499 = ( SpecularTerm34_g7499 * lightAtten296_g7499 * FresnelTerm130_g7499 );
			float OnlyShadow349_g7499 = temp_output_344_0_g7499;
			float4 appendResult1331 = (float4(temp_output_144_0_g7499 , ( SpecularTerm34_g7499 * OnlyShadow349_g7499 )));
			float4 ggxClearCoat561 = appendResult1331;
			float4 ClearCoatSpecular580 = ( ( ggxClearCoat561 * 0.5 ) + ( 0.5 * GlintFinal572 ) );
			float4 lerpResult473 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _ClearCoatMap ));
			float temp_output_467_0 = ( _ClearCoatMap - 1.0 );
			float4 lerpResult476 = lerp( lerpResult473 , MM03RGBA412 , saturate( temp_output_467_0 ));
			float temp_output_472_0 = ( temp_output_467_0 - 1.0 );
			float4 lerpResult477 = lerp( lerpResult476 , MM04RGBA420 , saturate( temp_output_472_0 ));
			float4 temp_cast_257 = (1.0).xxxx;
			float4 lerpResult934 = lerp( lerpResult477 , temp_cast_257 , saturate( ( temp_output_472_0 - 1.0 ) ));
			float lerpResult484 = lerp( (lerpResult934).r , (lerpResult934).g , saturate( _ClearCoatChannel ));
			float temp_output_483_0 = ( _ClearCoatChannel - 1.0 );
			float lerpResult489 = lerp( lerpResult484 , (lerpResult934).b , saturate( temp_output_483_0 ));
			float lerpResult492 = lerp( lerpResult489 , (lerpResult934).a , saturate( ( temp_output_483_0 - 1.0 ) ));
			float MM02R53 = tex2DNode52.r;
			float lerpResult1713 = lerp( lerpResult492 , MM02R53 , saturate( ( Workflow212 - 2.0 ) ));
			float ClearCoatChannel493 = lerpResult1713;
			float4 lerpResult576 = lerp( GlintFinal572 , ClearCoatSpecular580 , ClearCoatChannel493);
			#ifdef _CLEARCOAT_ON
				float4 staticSwitch574 = lerpResult576;
			#else
				float4 staticSwitch574 = GlintFinal572;
			#endif
			float4 lerpResult384 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _SpecularMask ));
			float temp_output_456_0 = ( _SpecularMask - 1.0 );
			float4 lerpResult462 = lerp( lerpResult384 , MM03RGBA412 , saturate( temp_output_456_0 ));
			float temp_output_459_0 = ( temp_output_456_0 - 1.0 );
			float4 lerpResult463 = lerp( lerpResult462 , MM04RGBA420 , saturate( temp_output_459_0 ));
			float4 temp_cast_258 = (1.0).xxxx;
			float4 lerpResult930 = lerp( lerpResult463 , temp_cast_258 , saturate( ( temp_output_459_0 - 1.0 ) ));
			float lerpResult390 = lerp( (lerpResult930).r , (lerpResult930).g , saturate( _SpecularMaskChannel ));
			float temp_output_389_0 = ( _SpecularMaskChannel - 1.0 );
			float lerpResult395 = lerp( lerpResult390 , (lerpResult930).b , saturate( temp_output_389_0 ));
			float lerpResult398 = lerp( lerpResult395 , (lerpResult930).a , saturate( ( temp_output_389_0 - 1.0 ) ));
			float SpecularMaskChannel291 = lerpResult398;
			float SpecularMask402 = SpecularMaskChannel291;
			float4 SpecularFinal188 = ( staticSwitch574 * SpecularMask402 );
			float4 lerpResult364 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _ReflectionMask ));
			float temp_output_438_0 = ( _ReflectionMask - 1.0 );
			float4 lerpResult444 = lerp( lerpResult364 , MM03RGBA412 , saturate( temp_output_438_0 ));
			float temp_output_441_0 = ( temp_output_438_0 - 1.0 );
			float4 lerpResult445 = lerp( lerpResult444 , MM04RGBA420 , saturate( temp_output_441_0 ));
			float4 temp_cast_259 = (1.0).xxxx;
			float4 lerpResult949 = lerp( lerpResult445 , temp_cast_259 , saturate( ( temp_output_441_0 - 1.0 ) ));
			float lerpResult370 = lerp( (lerpResult949).r , (lerpResult949).g , saturate( _ReflectionMaskChannel ));
			float temp_output_369_0 = ( _ReflectionMaskChannel - 1.0 );
			float lerpResult375 = lerp( lerpResult370 , (lerpResult949).b , saturate( temp_output_369_0 ));
			float lerpResult378 = lerp( lerpResult375 , (lerpResult949).a , saturate( ( temp_output_369_0 - 1.0 ) ));
			float ReflectionMaskChannel279 = lerpResult378;
			float ReflectionMask277 = ReflectionMaskChannel279;
			float RefperceprualRoughness370_g7497 = ( 1.0 - temp_output_147_0_g7497 );
			half RefRoughness367_g7497 = max( ( RefperceprualRoughness370_g7497 * RefperceprualRoughness370_g7497 ) , 0.002 );
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g7497 = ( 1.0 - ( 0.28 * RefRoughness367_g7497 * RefperceprualRoughness370_g7497 ) );
			#else
				float staticSwitch183_g7497 = ( 1.0 / ( ( RefRoughness367_g7497 * RefRoughness367_g7497 ) + 1.0 ) );
			#endif
			half SurfaceReduction182_g7497 = staticSwitch183_g7497;
			float RefSmoothness376_g7497 = temp_output_147_0_g7497;
			half metallic176_g7497 = 0.0;
			half localOneMinusReflectivity176_g7497 = OneMinusReflectivity( metallic176_g7497 );
			half GrazingTerm163_g7497 = saturate( ( RefSmoothness376_g7497 + ( 1.0 - localOneMinusReflectivity176_g7497 ) ) );
			float3 temp_cast_260 = (GrazingTerm163_g7497).xxx;
			float3 break1585 = InitialNormal1580;
			float switchResult1587 = (((i.ASEIsFrontFacing>0)?(break1585.z):(-break1585.z)));
			float3 appendResult1588 = (float3(break1585.x , break1585.y , switchResult1587));
			float3 lerpResult1427 = lerp( appendResult1588 , FleckNorm1443 , _AffectIndirect);
			float3 temp_output_359_0_g7497 = lerpResult1427;
			float3 IndirectNorm360_g7497 = temp_output_359_0_g7497;
			float dotResult362_g7497 = dot( viewDir15_g7497 , (WorldNormalVector( i , IndirectNorm360_g7497 )) );
			float IndirectNdotV364_g7497 = saturate( dotResult362_g7497 );
			float temp_output_258_0_g7497 = pow( ( 1.0 - IndirectNdotV364_g7497 ) , 5.0 );
			float3 lerpResult159_g7497 = lerp( SpecColor140_g7497 , temp_cast_260 , temp_output_258_0_g7497);
			half3 FresnelLerp165_g7497 = lerpResult159_g7497;
			float3 indirectNormal299_g7497 = normalize( WorldNormalVector( i , temp_output_359_0_g7497 ) );
			float MM02G217 = tex2DNode52.g;
			float4 lerpResult345 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _OcclusionMap ));
			float temp_output_447_0 = ( _OcclusionMap - 1.0 );
			float4 lerpResult453 = lerp( lerpResult345 , MM03RGBA412 , saturate( temp_output_447_0 ));
			float temp_output_450_0 = ( temp_output_447_0 - 1.0 );
			float4 lerpResult454 = lerp( lerpResult453 , MM04RGBA420 , saturate( temp_output_450_0 ));
			float4 temp_cast_261 = (1.0).xxxx;
			float4 lerpResult953 = lerp( lerpResult454 , temp_cast_261 , saturate( ( temp_output_450_0 - 1.0 ) ));
			float lerpResult352 = lerp( (lerpResult953).r , (lerpResult953).g , saturate( _OcclusionChannel ));
			float temp_output_351_0 = ( _OcclusionChannel - 1.0 );
			float lerpResult357 = lerp( lerpResult352 , (lerpResult953).b , saturate( temp_output_351_0 ));
			float lerpResult360 = lerp( lerpResult357 , (lerpResult953).a , saturate( ( temp_output_351_0 - 1.0 ) ));
			float OcclusionChannel257 = lerpResult360;
			float temp_output_249_0 = ( Workflow212 - 1.0 );
			float lerpResult254 = lerp( MM02G217 , OcclusionChannel257 , saturate( temp_output_249_0 ));
			float MM01G216 = tex2DNode9.g;
			float lerpResult1723 = lerp( lerpResult254 , MM01G216 , saturate( ( temp_output_249_0 - 1.0 ) ));
			float Occlusion246 = pow( lerpResult1723 , max( _OcclusionPower , 0.0001 ) );
			float occlusion306_g7497 = Occlusion246;
			Unity_GlossyEnvironmentData g299_g7497 = UnityGlossyEnvironmentSetup( smoothness169_g7497, data.worldViewDir, indirectNormal299_g7497, float3(0,0,0));
			float3 indirectSpecular299_g7497 = UnityGI_IndirectSpecular( data, occlusion306_g7497, indirectNormal299_g7497, g299_g7497 );
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g7497 = float3( 0,0,0 );
			#else
				float3 staticSwitch305_g7497 = ( ReflectionMask277 * SurfaceReduction182_g7497 * FresnelLerp165_g7497 * indirectSpecular299_g7497 );
			#endif
			float lerpResult352_g7497 = lerp( 0.0 , GrazingTerm163_g7497 , temp_output_258_0_g7497);
			float FresnelLerpA355_g7497 = lerpResult352_g7497;
			float temp_output_1730_358 = ( FresnelLerpA355_g7497 * SurfaceReduction182_g7497 * ReflectionMask277 );
			float4 appendResult1343 = (float4(staticSwitch305_g7497 , temp_output_1730_358));
			float4 IndirectSpec192 = appendResult1343;
			float RefSmoothness376_g7499 = _ClearCoatReflection;
			half metallic176_g7499 = 0.0;
			half localOneMinusReflectivity176_g7499 = OneMinusReflectivity( metallic176_g7499 );
			half GrazingTerm163_g7499 = saturate( ( RefSmoothness376_g7499 + ( 1.0 - localOneMinusReflectivity176_g7499 ) ) );
			float3 temp_cast_262 = (GrazingTerm163_g7499).xxx;
			float3 normal198_g7499 = temp_output_30_0_g7499;
			float3 temp_output_359_0_g7499 = normal198_g7499;
			float3 IndirectNorm360_g7499 = temp_output_359_0_g7499;
			float dotResult362_g7499 = dot( viewDir15_g7499 , (WorldNormalVector( i , IndirectNorm360_g7499 )) );
			float IndirectNdotV364_g7499 = saturate( dotResult362_g7499 );
			float temp_output_258_0_g7499 = pow( ( 1.0 - IndirectNdotV364_g7499 ) , 5.0 );
			float3 lerpResult159_g7499 = lerp( SpecColor140_g7499 , temp_cast_262 , temp_output_258_0_g7499);
			half3 FresnelLerp165_g7499 = lerpResult159_g7499;
			float RefperceprualRoughness370_g7499 = ( 1.0 - _ClearCoatReflection );
			half RefRoughness367_g7499 = max( ( RefperceprualRoughness370_g7499 * RefperceprualRoughness370_g7499 ) , 0.002 );
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g7499 = ( 1.0 - ( 0.28 * RefRoughness367_g7499 * RefperceprualRoughness370_g7499 ) );
			#else
				float staticSwitch183_g7499 = ( 1.0 / ( ( RefRoughness367_g7499 * RefRoughness367_g7499 ) + 1.0 ) );
			#endif
			half SurfaceReduction182_g7499 = staticSwitch183_g7499;
			float lerpResult352_g7499 = lerp( 0.0 , GrazingTerm163_g7499 , temp_output_258_0_g7499);
			float FresnelLerpA355_g7499 = lerpResult352_g7499;
			float4 appendResult1340 = (float4(( FresnelLerp165_g7499 * SurfaceReduction182_g7499 * ReflectionMask277 ) , ( FresnelLerpA355_g7499 * SurfaceReduction182_g7499 * ReflectionMask277 )));
			float4 CustomIndirect180 = appendResult1340;
			float3 indirectNormal495 = normalize( WorldNormalVector( i , appendResult1129 ) );
			float4 lerpResult1176 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _ClearCoatReflectionMap ));
			float temp_output_1171_0 = ( _ClearCoatReflectionMap - 1.0 );
			float4 lerpResult1179 = lerp( lerpResult1176 , MM03RGBA412 , saturate( temp_output_1171_0 ));
			float temp_output_1177_0 = ( temp_output_1171_0 - 1.0 );
			float4 lerpResult1182 = lerp( lerpResult1179 , MM04RGBA420 , saturate( temp_output_1177_0 ));
			float4 temp_cast_263 = (1.0).xxxx;
			float4 lerpResult1185 = lerp( lerpResult1182 , temp_cast_263 , saturate( ( temp_output_1177_0 - 1.0 ) ));
			float lerpResult1191 = lerp( (lerpResult1185).r , (lerpResult1185).g , saturate( _ClearCoatReflectionChannel ));
			float temp_output_1190_0 = ( _ClearCoatReflectionChannel - 1.0 );
			float lerpResult1196 = lerp( lerpResult1191 , (lerpResult1185).b , saturate( temp_output_1190_0 ));
			float lerpResult1199 = lerp( lerpResult1196 , (lerpResult1185).a , saturate( ( temp_output_1190_0 - 1.0 ) ));
			float temp_output_1722_0 = saturate( ( Workflow212 - 2.0 ) );
			float lerpResult1718 = lerp( lerpResult1199 , MM02G217 , temp_output_1722_0);
			float lerpResult1726 = lerp( _InvertReflectionGloss , 1.0 , temp_output_1722_0);
			float lerpResult1664 = lerp( lerpResult1718 , ( 1.0 - lerpResult1718 ) , lerpResult1726);
			float ClearCoatReflectionChannel1202 = lerpResult1664;
			Unity_GlossyEnvironmentData g495 = UnityGlossyEnvironmentSetup( ( ClearCoatReflectionChannel1202 * _ClearCoatReflection ), data.worldViewDir, indirectNormal495, float3(0,0,0));
			float3 indirectSpecular495 = UnityGI_IndirectSpecular( data, Occlusion246, indirectNormal495, g495 );
			float4 appendResult1341 = (float4(indirectSpecular495 , 0.0));
			float4 IndirectClearCoat549 = ( ( IndirectSpec192 * 0.5 ) + ( 0.5 * ( CustomIndirect180 * appendResult1341 ) ) );
			float4 lerpResult509 = lerp( IndirectSpec192 , IndirectClearCoat549 , ClearCoatChannel493);
			#ifdef _CLEARCOAT_ON
				float4 staticSwitch503 = lerpResult509;
			#else
				float4 staticSwitch503 = IndirectSpec192;
			#endif
			#ifdef UNITY_PASS_FORWARDADD
				float4 staticSwitch73 = float4( 0,0,0,0 );
			#else
				float4 staticSwitch73 = staticSwitch503;
			#endif
			float4 IndirectSpecFinal195 = staticSwitch73;
			float4 lerpResult1798 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _OpacityMap ));
			float temp_output_1793_0 = ( _OpacityMap - 1.0 );
			float4 lerpResult1801 = lerp( lerpResult1798 , MM03RGBA412 , saturate( temp_output_1793_0 ));
			float temp_output_1799_0 = ( temp_output_1793_0 - 1.0 );
			float4 lerpResult1804 = lerp( lerpResult1801 , MM04RGBA420 , saturate( temp_output_1799_0 ));
			float4 temp_cast_264 = (1.0).xxxx;
			float temp_output_1803_0 = ( temp_output_1799_0 - 1.0 );
			float4 lerpResult1807 = lerp( lerpResult1804 , temp_cast_264 , saturate( temp_output_1803_0 ));
			float temp_output_1826_0 = saturate( ( temp_output_1803_0 - 1.0 ) );
			float4 lerpResult1825 = lerp( lerpResult1807 , MainTexRGBA7 , temp_output_1826_0);
			float lerpResult1814 = lerp( (lerpResult1825).r , (lerpResult1825).g , saturate( _OpacityChannel ));
			float temp_output_1813_0 = ( _OpacityChannel - 1.0 );
			float lerpResult1819 = lerp( lerpResult1814 , (lerpResult1825).b , saturate( temp_output_1813_0 ));
			float temp_output_1820_0 = (lerpResult1825).a;
			float lerpResult1822 = lerp( lerpResult1819 , temp_output_1820_0 , saturate( ( temp_output_1813_0 - 1.0 ) ));
			float lerpResult1824 = lerp( lerpResult1822 , temp_output_1820_0 , temp_output_1826_0);
			float OpacityChannel1823 = lerpResult1824;
			float4 MainTexColor1831 = _Color;
			float temp_output_1834_0 = ( OpacityChannel1823 * (MainTexColor1831).a );
			#ifdef UNITY_PASS_SHADOWCASTER
				float staticSwitch1747 = temp_output_1834_0;
			#else
				float staticSwitch1747 = max( saturate( max( (0.0 + ((SpecularFinal188).w - 0.0) * (0.15 - 0.0) / (4.0 - 0.0)) , (IndirectSpecFinal195).w ) ) , temp_output_1834_0 );
			#endif
			float4 temp_output_337_0 = max( ( 0.05 * MainTexRGBA7 ) , float4( diffuseAndSpecularFromMetallic2 , 0.0 ) );
			float3 lerpResult178_g7489 = lerp( InitialAlbedo193_g7489 , max( ( 0.05 * lerpResult96_g7489 ) , diffuseAndSpecularFromMetallic116_g7489 ) , FleckShape78_g7489);
			float3 FleckAlbedo1573 = lerpResult178_g7489;
			float FleckShape1572 = ( _AffectDiffuseColor * temp_output_112_0_g7489 );
			float4 lerpResult1575 = lerp( temp_output_337_0 , float4( FleckAlbedo1573 , 0.0 ) , ( FleckShape1572 * GlintChannel542 ));
			#ifdef _GLINT_ON
				float4 staticSwitch1574 = lerpResult1575;
			#else
				float4 staticSwitch1574 = temp_output_337_0;
			#endif
			float4 Albedo43 = staticSwitch1574;
			half fd90273_g7497 = ( 0.5 + ( 2.0 * LdotH139_g7497 * LdotH139_g7497 * perceprualRoughness188_g7497 ) );
			half lightScatter253_g7497 = ( ( ( fd90273_g7497 - 1.0 ) * pow( ( 1.0 - NdotL20_g7497 ) , 5.0 ) ) + 1.0 );
			half viewScatter254_g7497 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g7497 ) , 5.0 ) * ( fd90273_g7497 - 1.0 ) ) );
			half disneydiffuse251_g7497 = ( lightScatter253_g7497 * viewScatter254_g7497 );
			half Diffuseterm281_g7497 = ( disneydiffuse251_g7497 * NdotL20_g7497 );
			float3 normal198_g7497 = temp_output_30_0_g7497;
			UnityGI gi203_g7497 = gi;
			float3 diffNorm203_g7497 = normalize( WorldNormalVector( i , normal198_g7497 ) );
			gi203_g7497 = UnityGI_Base( data, 1, diffNorm203_g7497 );
			float3 indirectDiffuse203_g7497 = gi203_g7497.indirect.diffuse + diffNorm203_g7497 * 0.0001;
			float3 temp_output_206_0_g7497 = ( Albedo43.rgb * ( ( Diffuseterm281_g7497 * lightAtten296_g7497 ) + ( indirectDiffuse203_g7497 * occlusion306_g7497 ) ) );
			float3 AlbedoFinal190 = temp_output_206_0_g7497;
			c.rgb = ( SpecularFinal188 + float4( AlbedoFinal190 , 0.0 ) + IndirectSpecFinal195 ).xyz;
			c.a = staticSwitch1747;
			return c;
		}

		inline void LightingStandardCustomLighting_GI( inout SurfaceOutputCustomLightingCustom s, UnityGIInput data, inout UnityGI gi )
		{
			s.GIData = data;
		}

		void surf( Input i , inout SurfaceOutputCustomLightingCustom o )
		{
			o.SurfInput = i;
			o.Normal = float3(0,0,1);
			float4 FallbackColor289_g7536 = _RedChGlowFallback;
			float4 tex2DNode9 = tex2D( _MaskMap01, i.vertexToFrag51_g5486 );
			float4 MM01RGBA295 = tex2DNode9;
			float4 tex2DNode52 = tex2D( _MaskMap02, i.vertexToFrag51_g5487 );
			float4 MM02RGBA296 = tex2DNode52;
			float4 lerpResult984 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _GlowMask0 ));
			float4 tex2DNode406 = tex2D( _MaskMap03, i.vertexToFrag51_g5488 );
			float4 MM03RGBA412 = tex2DNode406;
			float temp_output_979_0 = ( _GlowMask0 - 1.0 );
			float4 lerpResult987 = lerp( lerpResult984 , MM03RGBA412 , saturate( temp_output_979_0 ));
			float4 tex2DNode414 = tex2D( _MaskMap04, i.vertexToFrag51_g5489 );
			float4 MM04RGBA420 = tex2DNode414;
			float temp_output_985_0 = ( temp_output_979_0 - 1.0 );
			float4 lerpResult990 = lerp( lerpResult987 , MM04RGBA420 , saturate( temp_output_985_0 ));
			float4 temp_cast_0 = (1.0).xxxx;
			float4 lerpResult994 = lerp( lerpResult990 , temp_cast_0 , saturate( ( temp_output_985_0 - 1.0 ) ));
			float lerpResult1000 = lerp( (lerpResult994).r , (lerpResult994).g , saturate( _GlowMask0Channel ));
			float temp_output_999_0 = ( _GlowMask0Channel - 1.0 );
			float lerpResult1005 = lerp( lerpResult1000 , (lerpResult994).b , saturate( temp_output_999_0 ));
			float lerpResult1008 = lerp( lerpResult1005 , (lerpResult994).a , saturate( ( temp_output_999_0 - 1.0 ) ));
			float GlowMask0Channel1009 = lerpResult1008;
			float4 lerpResult1017 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _GlowMask1 ));
			float temp_output_1012_0 = ( _GlowMask1 - 1.0 );
			float4 lerpResult1020 = lerp( lerpResult1017 , MM03RGBA412 , saturate( temp_output_1012_0 ));
			float temp_output_1018_0 = ( temp_output_1012_0 - 1.0 );
			float4 lerpResult1023 = lerp( lerpResult1020 , MM04RGBA420 , saturate( temp_output_1018_0 ));
			float4 temp_cast_1 = (1.0).xxxx;
			float4 lerpResult1026 = lerp( lerpResult1023 , temp_cast_1 , saturate( ( temp_output_1018_0 - 1.0 ) ));
			float lerpResult1032 = lerp( (lerpResult1026).r , (lerpResult1026).g , saturate( _GlowMask1Channel ));
			float temp_output_1031_0 = ( _GlowMask1Channel - 1.0 );
			float lerpResult1037 = lerp( lerpResult1032 , (lerpResult1026).b , saturate( temp_output_1031_0 ));
			float lerpResult1040 = lerp( lerpResult1037 , (lerpResult1026).a , saturate( ( temp_output_1031_0 - 1.0 ) ));
			float GlowMask1Channel1042 = lerpResult1040;
			float4 lerpResult1051 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _GlowMask2 ));
			float temp_output_1046_0 = ( _GlowMask2 - 1.0 );
			float4 lerpResult1054 = lerp( lerpResult1051 , MM03RGBA412 , saturate( temp_output_1046_0 ));
			float temp_output_1052_0 = ( temp_output_1046_0 - 1.0 );
			float4 lerpResult1057 = lerp( lerpResult1054 , MM04RGBA420 , saturate( temp_output_1052_0 ));
			float4 temp_cast_2 = (1.0).xxxx;
			float4 lerpResult1060 = lerp( lerpResult1057 , temp_cast_2 , saturate( ( temp_output_1052_0 - 1.0 ) ));
			float lerpResult1066 = lerp( (lerpResult1060).r , (lerpResult1060).g , saturate( _GlowMask2Channel ));
			float temp_output_1065_0 = ( _GlowMask2Channel - 1.0 );
			float lerpResult1071 = lerp( lerpResult1066 , (lerpResult1060).b , saturate( temp_output_1065_0 ));
			float lerpResult1074 = lerp( lerpResult1071 , (lerpResult1060).a , saturate( ( temp_output_1065_0 - 1.0 ) ));
			float GlowMask2Channel1076 = lerpResult1074;
			float4 lerpResult1085 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _GlowMask3 ));
			float temp_output_1080_0 = ( _GlowMask3 - 1.0 );
			float4 lerpResult1088 = lerp( lerpResult1085 , MM03RGBA412 , saturate( temp_output_1080_0 ));
			float temp_output_1086_0 = ( temp_output_1080_0 - 1.0 );
			float4 lerpResult1091 = lerp( lerpResult1088 , MM04RGBA420 , saturate( temp_output_1086_0 ));
			float4 temp_cast_3 = (1.0).xxxx;
			float4 lerpResult1094 = lerp( lerpResult1091 , temp_cast_3 , saturate( ( temp_output_1086_0 - 1.0 ) ));
			float lerpResult1100 = lerp( (lerpResult1094).r , (lerpResult1094).g , saturate( _GlowMask3Channel ));
			float temp_output_1099_0 = ( _GlowMask3Channel - 1.0 );
			float lerpResult1105 = lerp( lerpResult1100 , (lerpResult1094).b , saturate( temp_output_1099_0 ));
			float lerpResult1108 = lerp( lerpResult1105 , (lerpResult1094).a , saturate( ( temp_output_1099_0 - 1.0 ) ));
			float GlowMask3Channel1110 = lerpResult1108;
			float4 appendResult1117 = (float4(GlowMask0Channel1009 , GlowMask1Channel1042 , GlowMask2Channel1076 , GlowMask3Channel1110));
			float4 GlowMaskRGBA174_g7501 = appendResult1117;
			float temp_output_236_0_g7536 = (GlowMaskRGBA174_g7501).x;
			float4 temp_output_291_0_g7536 = ( FallbackColor289_g7536 * _UseFallback0 * temp_output_236_0_g7536 );
			float4 temp_cast_5 = (1.0).xxxx;
			float3 temp_cast_7 = (1.0).xxx;
			int EmissionGlowZone47_g7536 = _RedChGlowZone;
			int clampResult8_g7542 = clamp( EmissionGlowZone47_g7536 , 1 , 4 );
			int temp_output_3_0_g7542 = ( clampResult8_g7542 - 1 );
			int Zone16_g7542 = temp_output_3_0_g7542;
			float3 localgetThemeData16_g7542 = getThemeData( Zone16_g7542 );
			int Band11_g7543 = 56;
			int localIsLumaActive11_g7543 = IsLumaActive11_g7543( Band11_g7543 );
			int temp_output_14_0_g7542 = localIsLumaActive11_g7543;
			int lerpResult15_g7542 = lerp( temp_output_3_0_g7542 , ( 63 - temp_output_3_0_g7542 ) , (float)temp_output_14_0_g7542);
			int Band2_g7542 = lerpResult15_g7542;
			int Delay2_g7542 = 0;
			float3 localLumaGlowData2_g7542 = LumaGlowData2_g7542( Band2_g7542 , Delay2_g7542 );
			float3 lerpResult17_g7542 = lerp( ( localgetThemeData16_g7542 * localLumaGlowData2_g7542 ) , localLumaGlowData2_g7542 , (float)temp_output_14_0_g7542);
			int temp_output_21_0_g7536 = saturate( EmissionGlowZone47_g7536 );
			float3 lerpResult20_g7536 = lerp( temp_cast_7 , lerpResult17_g7542 , (float)temp_output_21_0_g7536);
			float3 temp_cast_11 = (1.0).xxx;
			int clampResult8_g7544 = clamp( EmissionGlowZone47_g7536 , 1 , 4 );
			int temp_output_3_0_g7544 = ( clampResult8_g7544 - 1 );
			int Zone15_g7544 = temp_output_3_0_g7544;
			float3 localgetThemeData15_g7544 = getThemeData( Zone15_g7544 );
			int Band11_g7545 = 56;
			int localIsLumaActive11_g7545 = IsLumaActive11_g7545( Band11_g7545 );
			int temp_output_13_0_g7544 = localIsLumaActive11_g7545;
			int lerpResult14_g7544 = lerp( temp_output_3_0_g7544 , ( 63 - temp_output_3_0_g7544 ) , (float)temp_output_13_0_g7544);
			int Band11_g7544 = lerpResult14_g7544;
			float cos6_g7536 = cos( radians( _RedChGlowPulseDir ) );
			float sin6_g7536 = sin( radians( _RedChGlowPulseDir ) );
			float2 rotator6_g7536 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos6_g7536 , -sin6_g7536 , sin6_g7536 , cos6_g7536 )) + float2( 0.5,0.5 );
			int Band6_g7549 = _RedChGlowAnimationBand;
			int Mode6_g7549 = ( ( _RedChGlowAnimationMode * 2 ) + _RedChGlowAnimationSpeed );
			int localAudioLinkDecodeDataAsUInt6_g7549 = AudioLinkDecodeDataAsUInt6_g7549( Band6_g7549 , Mode6_g7549 );
			float localGetLocalTime2_g7550 = ( AudioLinkDecodeDataAsSeconds( ALPASS_GENERALVU_LOCAL_TIME ) );
			float lerpResult206_g7536 = lerp( ( ( localAudioLinkDecodeDataAsUInt6_g7549 % 628319 ) / 100000.0 ) , localGetLocalTime2_g7550 , (float)saturate( ( _RedChGlowAnimationMode - 3 ) ));
			float EmissionGlowAnimation195_g7536 = ( _RedChGlowAnimationStrength * lerpResult206_g7536 * step( _RedChGlowAnimationBand , 9 ) );
			float x13_g7536 = ( ( rotator6_g7536.x * _RedChGlowPulseScale ) + _RedChGlowPulseOffset + EmissionGlowAnimation195_g7536 );
			float y13_g7536 = 127.0;
			float localglslmod13_g7536 = glslmod13_g7536( x13_g7536 , y13_g7536 );
			float2 temp_output_34_0_g7538 = ( i.uv_texcoord - _RedChGlowRadialCenter );
			float2 break39_g7538 = temp_output_34_0_g7538;
			float2 appendResult50_g7538 = (float2(( _RedChGlowPulseScale * ( length( temp_output_34_0_g7538 ) * 2.0 ) ) , ( ( atan2( break39_g7538.x , break39_g7538.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x12_g7536 = ( _RedChGlowPulseOffset + appendResult50_g7538.x + EmissionGlowAnimation195_g7536 );
			float y12_g7536 = 127.0;
			float localglslmod12_g7536 = glslmod12_g7536( x12_g7536 , y12_g7536 );
			int EmissionGlowMode35_g7536 = _RedChGlowMode;
			int temp_output_37_0_g7536 = ( EmissionGlowMode35_g7536 - 1 );
			float lerpResult5_g7536 = lerp( localglslmod13_g7536 , localglslmod12_g7536 , (float)saturate( temp_output_37_0_g7536 ));
			float Direction27_g7501 = tex2D( _DirectionalMap, i.vertexToFrag51_g7502 ).r;
			float DirectionalMap106_g7536 = Direction27_g7501;
			float lerpResult179_g7536 = lerp( DirectionalMap106_g7536 , ( 1.0 - DirectionalMap106_g7536 ) , (float)saturate( ( EmissionGlowMode35_g7536 - 0 ) ));
			float x34_g7536 = ( _RedChGlowPulseOffset + ( _RedChGlowPulseScale * lerpResult179_g7536 ) + EmissionGlowAnimation195_g7536 );
			float y34_g7536 = 127.0;
			float localglslmod34_g7536 = glslmod34_g7536( x34_g7536 , y34_g7536 );
			float lerpResult30_g7536 = lerp( lerpResult5_g7536 , localglslmod34_g7536 , (float)saturate( ( temp_output_37_0_g7536 - 1 ) ));
			float EmissionGlowDelay56_g7536 = lerpResult30_g7536;
			float Delay11_g7544 = EmissionGlowDelay56_g7536;
			float3 localLumaGlowLerp11_g7544 = LumaGlowLerp11_g7544( Band11_g7544 , Delay11_g7544 );
			float3 lerpResult17_g7544 = lerp( ( localgetThemeData15_g7544 * localLumaGlowLerp11_g7544 ) , localLumaGlowLerp11_g7544 , (float)temp_output_13_0_g7544);
			float3 lerpResult22_g7536 = lerp( temp_cast_11 , lerpResult17_g7544 , (float)temp_output_21_0_g7536);
			float3 lerpResult23_g7536 = lerp( lerpResult20_g7536 , lerpResult22_g7536 , (float)saturate( EmissionGlowMode35_g7536 ));
			float4 temp_cast_21 = (1.0).xxxx;
			float temp_output_10_0_g7546 = EmissionGlowDelay56_g7536;
			float Position1_g7548 = ( temp_output_10_0_g7546 / 127.0 );
			float4 localAudioLinkLerp1_g7548 = AudioLinkLerp1_g7548( Position1_g7548 );
			int clampResult8_g7546 = clamp( ( EmissionGlowZone47_g7536 - 0 ) , 1 , 3 );
			int Band11_g7546 = ( 59 - ( clampResult8_g7546 - 1 ) );
			float Delay11_g7546 = temp_output_10_0_g7546;
			float3 localLumaGlowLerp11_g7546 = LumaGlowLerp11_g7546( Band11_g7546 , Delay11_g7546 );
			int Band11_g7547 = 56;
			int localIsLumaActive11_g7547 = IsLumaActive11_g7547( Band11_g7547 );
			float4 lerpResult14_g7546 = lerp( localAudioLinkLerp1_g7548 , float4( localLumaGlowLerp11_g7546 , 0.0 ) , (float)localIsLumaActive11_g7547);
			float4 lerpResult52_g7536 = lerp( temp_cast_21 , lerpResult14_g7546 , (float)saturate( EmissionGlowZone47_g7536 ));
			float4 lerpResult51_g7536 = lerp( float4( lerpResult23_g7536 , 0.0 ) , lerpResult52_g7536 , (float)saturate( ( EmissionGlowZone47_g7536 - 0 ) ));
			float4 temp_cast_26 = (_RedChGlowMinBrightness).xxxx;
			float4 temp_cast_27 = (( _RedChGlowMinBrightness + 1.0 )).xxxx;
			int temp_output_254_0_g7536 = saturate( EmissionGlowZone47_g7536 );
			int localIfAudioLinkv2Exists1_g7552 = IfAudioLinkv2Exists1_g7552();
			float4 lerpResult284_g7536 = lerp( _RedChGlowFallback , ( (temp_cast_26 + (lerpResult51_g7536 - float4( 0,0,0,0 )) * (temp_cast_27 - temp_cast_26) / (float4( 1,1,1,1 ) - float4( 0,0,0,0 ))) * _RedChGlowTint * temp_output_254_0_g7536 ) , (float)localIfAudioLinkv2Exists1_g7552);
			float4 EmissionGlow142_g7536 = lerpResult284_g7536;
			float4 lerpResult257_g7536 = lerp( temp_cast_5 , EmissionGlow142_g7536 , (float)temp_output_254_0_g7536);
			float4 EmissionGlowTog258_g7536 = lerpResult257_g7536;
			int EmissionReactiveBand243_g7536 = _RedChReactiveBand;
			int Band3_g7537 = EmissionReactiveBand243_g7536;
			int Delay3_g7537 = 0;
			float localAudioLinkData3_g7537 = AudioLinkData3_g7537( Band3_g7537 , Delay3_g7537 );
			int temp_output_64_0_g7536 = step( _RedChReactiveBand , 9 );
			float lerpResult66_g7536 = lerp( 1.0 , localAudioLinkData3_g7537 , (float)temp_output_64_0_g7536);
			int Band3_g7539 = _RedChReactiveBand;
			float cos78_g7536 = cos( radians( _RedChReactivePulseDir ) );
			float sin78_g7536 = sin( radians( _RedChReactivePulseDir ) );
			float2 rotator78_g7536 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos78_g7536 , -sin78_g7536 , sin78_g7536 , cos78_g7536 )) + float2( 0.5,0.5 );
			float x96_g7536 = ( ( rotator78_g7536.x * _RedChReactivePulseScale ) + _RedChReactivePulseOffset );
			float y96_g7536 = 127.0;
			float localglslmod96_g7536 = glslmod96_g7536( x96_g7536 , y96_g7536 );
			float2 temp_output_34_0_g7540 = ( i.uv_texcoord - _RedChReactiveRadialCenter );
			float2 break39_g7540 = temp_output_34_0_g7540;
			float2 appendResult50_g7540 = (float2(( _RedChReactivePulseScale * ( length( temp_output_34_0_g7540 ) * 2.0 ) ) , ( ( atan2( break39_g7540.x , break39_g7540.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x97_g7536 = ( _RedChReactivePulseOffset + appendResult50_g7540.x );
			float y97_g7536 = 127.0;
			float localglslmod97_g7536 = glslmod97_g7536( x97_g7536 , y97_g7536 );
			int EmissionReactiveMode99_g7536 = _RedChReactiveMode;
			int temp_output_90_0_g7536 = ( EmissionReactiveMode99_g7536 - 1 );
			float lerpResult77_g7536 = lerp( localglslmod96_g7536 , localglslmod97_g7536 , (float)saturate( temp_output_90_0_g7536 ));
			float lerpResult174_g7536 = lerp( DirectionalMap106_g7536 , ( 1.0 - DirectionalMap106_g7536 ) , (float)saturate( ( EmissionReactiveMode99_g7536 - 0 ) ));
			float x98_g7536 = ( _RedChReactivePulseOffset + ( _RedChReactivePulseScale * lerpResult174_g7536 ) );
			float y98_g7536 = 127.0;
			float localglslmod98_g7536 = glslmod98_g7536( x98_g7536 , y98_g7536 );
			float lerpResult87_g7536 = lerp( lerpResult77_g7536 , localglslmod98_g7536 , (float)saturate( ( temp_output_90_0_g7536 - 1 ) ));
			float Delay3_g7539 = lerpResult87_g7536;
			float localAudioLinkLerp3_g7539 = AudioLinkLerp3_g7539( Band3_g7539 , Delay3_g7539 );
			float lerpResult102_g7536 = lerp( 1.0 , localAudioLinkLerp3_g7539 , (float)temp_output_64_0_g7536);
			float lerpResult103_g7536 = lerp( lerpResult66_g7536 , lerpResult102_g7536 , (float)saturate( EmissionReactiveMode99_g7536 ));
			int Band3_g7541 = _RedChReactiveBand;
			float FilteredAmount3_g7541 = ( ( 1.0 - _RedChReactiveGlobalSmoothing ) * 15.0 );
			float localAudioLinkLerp3_g7541 = AudioLinkLerp3_g7541( Band3_g7541 , FilteredAmount3_g7541 );
			float lerpResult168_g7536 = lerp( 1.0 , localAudioLinkLerp3_g7541 , (float)temp_output_64_0_g7536);
			float lerpResult172_g7536 = lerp( lerpResult103_g7536 , lerpResult168_g7536 , (float)saturate( ( EmissionReactiveMode99_g7536 - 0 ) ));
			float ReactivityAlpha132_g7536 = (_RedChReactiveMinBrightness + (lerpResult172_g7536 - 0.0) * (( _RedChReactiveMinBrightness + 1.0 ) - _RedChReactiveMinBrightness) / (1.0 - 0.0));
			float4 temp_cast_39 = (1.0).xxxx;
			float4 lerpResult253_g7536 = lerp( temp_cast_39 , _RedChReactiveTint , (float)step( EmissionReactiveBand243_g7536 , 0 ));
			float4 FinalReactivity68_g7536 = ( ReactivityAlpha132_g7536 * lerpResult253_g7536 );
			float4 lerpResult146_g7536 = lerp( ( EmissionGlowTog258_g7536 * FinalReactivity68_g7536 ) , ( EmissionGlow142_g7536 + FinalReactivity68_g7536 ) , (float)saturate( _RedChReactiveBlendMode ));
			float4 ReversedReactivity152_g7536 = ( ( 1.0 - ReactivityAlpha132_g7536 ) * lerpResult253_g7536 );
			int temp_output_157_0_g7536 = ( _RedChReactiveBlendMode - 1 );
			float4 lerpResult114_g7536 = lerp( lerpResult146_g7536 , ( EmissionGlowTog258_g7536 * ReversedReactivity152_g7536 ) , (float)saturate( temp_output_157_0_g7536 ));
			float4 lerpResult164_g7536 = lerp( lerpResult114_g7536 , ( EmissionGlow142_g7536 + ( ReversedReactivity152_g7536 * step( EmissionReactiveBand243_g7536 , 0 ) ) ) , (float)max( saturate( ( temp_output_157_0_g7536 - 1 ) ) , ( 1.0 - step( EmissionReactiveBand243_g7536 , 0 ) ) ));
			int localIfAudioLinkv2Exists1_g7551 = IfAudioLinkv2Exists1_g7551();
			float4 temp_output_213_0_g7536 = ( lerpResult164_g7536 * temp_output_236_0_g7536 * saturate( ( localIfAudioLinkv2Exists1_g7551 + _UseFallback0 ) ) );
			float4 lerpResult280_g7536 = lerp( temp_output_291_0_g7536 , temp_output_213_0_g7536 , _EnableRedChannel);
			float temp_output_236_0_g7553 = (GlowMaskRGBA174_g7501).y;
			float4 temp_output_283_0_g7553 = ( _GreenChGlowFallback * temp_output_236_0_g7553 * _UseFallback1 );
			float4 temp_cast_49 = (1.0).xxxx;
			float3 temp_cast_51 = (1.0).xxx;
			int EmissionGlowZone47_g7553 = _GreenChGlowZone;
			int clampResult8_g7559 = clamp( EmissionGlowZone47_g7553 , 1 , 4 );
			int temp_output_3_0_g7559 = ( clampResult8_g7559 - 1 );
			int Zone16_g7559 = temp_output_3_0_g7559;
			float3 localgetThemeData16_g7559 = getThemeData( Zone16_g7559 );
			int Band11_g7560 = 56;
			int localIsLumaActive11_g7560 = IsLumaActive11_g7560( Band11_g7560 );
			int temp_output_14_0_g7559 = localIsLumaActive11_g7560;
			int lerpResult15_g7559 = lerp( temp_output_3_0_g7559 , ( 63 - temp_output_3_0_g7559 ) , (float)temp_output_14_0_g7559);
			int Band2_g7559 = lerpResult15_g7559;
			int Delay2_g7559 = 0;
			float3 localLumaGlowData2_g7559 = LumaGlowData2_g7559( Band2_g7559 , Delay2_g7559 );
			float3 lerpResult17_g7559 = lerp( ( localgetThemeData16_g7559 * localLumaGlowData2_g7559 ) , localLumaGlowData2_g7559 , (float)temp_output_14_0_g7559);
			int temp_output_21_0_g7553 = saturate( EmissionGlowZone47_g7553 );
			float3 lerpResult20_g7553 = lerp( temp_cast_51 , lerpResult17_g7559 , (float)temp_output_21_0_g7553);
			float3 temp_cast_55 = (1.0).xxx;
			int clampResult8_g7561 = clamp( EmissionGlowZone47_g7553 , 1 , 4 );
			int temp_output_3_0_g7561 = ( clampResult8_g7561 - 1 );
			int Zone15_g7561 = temp_output_3_0_g7561;
			float3 localgetThemeData15_g7561 = getThemeData( Zone15_g7561 );
			int Band11_g7562 = 56;
			int localIsLumaActive11_g7562 = IsLumaActive11_g7562( Band11_g7562 );
			int temp_output_13_0_g7561 = localIsLumaActive11_g7562;
			int lerpResult14_g7561 = lerp( temp_output_3_0_g7561 , ( 63 - temp_output_3_0_g7561 ) , (float)temp_output_13_0_g7561);
			int Band11_g7561 = lerpResult14_g7561;
			float cos6_g7553 = cos( radians( _GreenChGlowPulseDir ) );
			float sin6_g7553 = sin( radians( _GreenChGlowPulseDir ) );
			float2 rotator6_g7553 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos6_g7553 , -sin6_g7553 , sin6_g7553 , cos6_g7553 )) + float2( 0.5,0.5 );
			int Band6_g7566 = _GreenChGlowAnimationBand;
			int Mode6_g7566 = ( ( _GreenChGlowAnimationMode * 2 ) + _GreenChGlowAnimationSpeed );
			int localAudioLinkDecodeDataAsUInt6_g7566 = AudioLinkDecodeDataAsUInt6_g7566( Band6_g7566 , Mode6_g7566 );
			float localGetLocalTime2_g7567 = ( AudioLinkDecodeDataAsSeconds( ALPASS_GENERALVU_LOCAL_TIME ) );
			float lerpResult206_g7553 = lerp( ( ( localAudioLinkDecodeDataAsUInt6_g7566 % 628319 ) / 100000.0 ) , localGetLocalTime2_g7567 , (float)saturate( ( _GreenChGlowAnimationMode - 3 ) ));
			float EmissionGlowAnimation195_g7553 = ( _GreenChGlowAnimationStrength * lerpResult206_g7553 * step( _GreenChGlowAnimationBand , 9 ) );
			float x13_g7553 = ( ( rotator6_g7553.x * _GreenChGlowPulseScale ) + _GreenChGlowPulseOffset + EmissionGlowAnimation195_g7553 );
			float y13_g7553 = 127.0;
			float localglslmod13_g7553 = glslmod13_g7553( x13_g7553 , y13_g7553 );
			float2 temp_output_34_0_g7555 = ( i.uv_texcoord - _GreenChGlowRadialCenter );
			float2 break39_g7555 = temp_output_34_0_g7555;
			float2 appendResult50_g7555 = (float2(( _GreenChGlowPulseScale * ( length( temp_output_34_0_g7555 ) * 2.0 ) ) , ( ( atan2( break39_g7555.x , break39_g7555.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x12_g7553 = ( _GreenChGlowPulseOffset + appendResult50_g7555.x + EmissionGlowAnimation195_g7553 );
			float y12_g7553 = 127.0;
			float localglslmod12_g7553 = glslmod12_g7553( x12_g7553 , y12_g7553 );
			int EmissionGlowMode35_g7553 = _GreenChGlowMode;
			int temp_output_37_0_g7553 = ( EmissionGlowMode35_g7553 - 1 );
			float lerpResult5_g7553 = lerp( localglslmod13_g7553 , localglslmod12_g7553 , (float)saturate( temp_output_37_0_g7553 ));
			float DirectionalMap106_g7553 = Direction27_g7501;
			float lerpResult179_g7553 = lerp( DirectionalMap106_g7553 , ( 1.0 - DirectionalMap106_g7553 ) , (float)saturate( ( EmissionGlowMode35_g7553 - 3 ) ));
			float x34_g7553 = ( _GreenChGlowPulseOffset + ( _GreenChGlowPulseScale * lerpResult179_g7553 ) + EmissionGlowAnimation195_g7553 );
			float y34_g7553 = 127.0;
			float localglslmod34_g7553 = glslmod34_g7553( x34_g7553 , y34_g7553 );
			float lerpResult30_g7553 = lerp( lerpResult5_g7553 , localglslmod34_g7553 , (float)saturate( ( temp_output_37_0_g7553 - 1 ) ));
			float EmissionGlowDelay56_g7553 = lerpResult30_g7553;
			float Delay11_g7561 = EmissionGlowDelay56_g7553;
			float3 localLumaGlowLerp11_g7561 = LumaGlowLerp11_g7561( Band11_g7561 , Delay11_g7561 );
			float3 lerpResult17_g7561 = lerp( ( localgetThemeData15_g7561 * localLumaGlowLerp11_g7561 ) , localLumaGlowLerp11_g7561 , (float)temp_output_13_0_g7561);
			float3 lerpResult22_g7553 = lerp( temp_cast_55 , lerpResult17_g7561 , (float)temp_output_21_0_g7553);
			float3 lerpResult23_g7553 = lerp( lerpResult20_g7553 , lerpResult22_g7553 , (float)saturate( EmissionGlowMode35_g7553 ));
			float4 temp_cast_65 = (1.0).xxxx;
			float temp_output_10_0_g7563 = EmissionGlowDelay56_g7553;
			float Position1_g7565 = ( temp_output_10_0_g7563 / 127.0 );
			float4 localAudioLinkLerp1_g7565 = AudioLinkLerp1_g7565( Position1_g7565 );
			int clampResult8_g7563 = clamp( ( EmissionGlowZone47_g7553 - 0 ) , 1 , 3 );
			int Band11_g7563 = ( 59 - ( clampResult8_g7563 - 1 ) );
			float Delay11_g7563 = temp_output_10_0_g7563;
			float3 localLumaGlowLerp11_g7563 = LumaGlowLerp11_g7563( Band11_g7563 , Delay11_g7563 );
			int Band11_g7564 = 56;
			int localIsLumaActive11_g7564 = IsLumaActive11_g7564( Band11_g7564 );
			float4 lerpResult14_g7563 = lerp( localAudioLinkLerp1_g7565 , float4( localLumaGlowLerp11_g7563 , 0.0 ) , (float)localIsLumaActive11_g7564);
			float4 lerpResult52_g7553 = lerp( temp_cast_65 , lerpResult14_g7563 , (float)saturate( EmissionGlowZone47_g7553 ));
			float4 lerpResult51_g7553 = lerp( float4( lerpResult23_g7553 , 0.0 ) , lerpResult52_g7553 , (float)saturate( ( EmissionGlowZone47_g7553 - 0 ) ));
			float4 temp_cast_70 = (_GreenChGlowMinBrightness).xxxx;
			float4 temp_cast_71 = (( _GreenChGlowMinBrightness + 1.0 )).xxxx;
			int temp_output_255_0_g7553 = saturate( EmissionGlowZone47_g7553 );
			int localIfAudioLinkv2Exists1_g7569 = IfAudioLinkv2Exists1_g7569();
			float4 lerpResult280_g7553 = lerp( _GreenChGlowFallback , ( (temp_cast_70 + (lerpResult51_g7553 - float4( 0,0,0,0 )) * (temp_cast_71 - temp_cast_70) / (float4( 1,1,1,1 ) - float4( 0,0,0,0 ))) * _GreenChGlowTint * temp_output_255_0_g7553 ) , (float)localIfAudioLinkv2Exists1_g7569);
			float4 EmissionGlow142_g7553 = lerpResult280_g7553;
			float4 lerpResult258_g7553 = lerp( temp_cast_49 , EmissionGlow142_g7553 , (float)temp_output_255_0_g7553);
			float4 EmissionGlowTog259_g7553 = lerpResult258_g7553;
			int EmissionReactiveBand243_g7553 = _GreenChReactiveBand;
			int Band3_g7554 = EmissionReactiveBand243_g7553;
			int Delay3_g7554 = 0;
			float localAudioLinkData3_g7554 = AudioLinkData3_g7554( Band3_g7554 , Delay3_g7554 );
			int temp_output_64_0_g7553 = step( _GreenChReactiveBand , 9 );
			float lerpResult66_g7553 = lerp( 1.0 , localAudioLinkData3_g7554 , (float)temp_output_64_0_g7553);
			int Band3_g7556 = _GreenChReactiveBand;
			float cos78_g7553 = cos( radians( _GreenChReactivePulseDir ) );
			float sin78_g7553 = sin( radians( _GreenChReactivePulseDir ) );
			float2 rotator78_g7553 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos78_g7553 , -sin78_g7553 , sin78_g7553 , cos78_g7553 )) + float2( 0.5,0.5 );
			float x96_g7553 = ( ( rotator78_g7553.x * _GreenChReactivePulseScale ) + _GreenChReactivePulseOffset );
			float y96_g7553 = 127.0;
			float localglslmod96_g7553 = glslmod96_g7553( x96_g7553 , y96_g7553 );
			float2 temp_output_34_0_g7557 = ( i.uv_texcoord - _GreenChReactiveRadialCenter );
			float2 break39_g7557 = temp_output_34_0_g7557;
			float2 appendResult50_g7557 = (float2(( _GreenChReactivePulseScale * ( length( temp_output_34_0_g7557 ) * 2.0 ) ) , ( ( atan2( break39_g7557.x , break39_g7557.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x97_g7553 = ( _GreenChReactivePulseOffset + appendResult50_g7557.x );
			float y97_g7553 = 127.0;
			float localglslmod97_g7553 = glslmod97_g7553( x97_g7553 , y97_g7553 );
			int EmissionReactiveMode99_g7553 = _GreenChReactiveMode;
			int temp_output_90_0_g7553 = ( EmissionReactiveMode99_g7553 - 1 );
			float lerpResult77_g7553 = lerp( localglslmod96_g7553 , localglslmod97_g7553 , (float)saturate( temp_output_90_0_g7553 ));
			float lerpResult174_g7553 = lerp( DirectionalMap106_g7553 , ( 1.0 - DirectionalMap106_g7553 ) , (float)saturate( ( EmissionReactiveMode99_g7553 - 0 ) ));
			float x98_g7553 = ( _GreenChReactivePulseOffset + ( _GreenChReactivePulseScale * lerpResult174_g7553 ) );
			float y98_g7553 = 127.0;
			float localglslmod98_g7553 = glslmod98_g7553( x98_g7553 , y98_g7553 );
			float lerpResult87_g7553 = lerp( lerpResult77_g7553 , localglslmod98_g7553 , (float)saturate( ( temp_output_90_0_g7553 - 1 ) ));
			float Delay3_g7556 = lerpResult87_g7553;
			float localAudioLinkLerp3_g7556 = AudioLinkLerp3_g7556( Band3_g7556 , Delay3_g7556 );
			float lerpResult102_g7553 = lerp( 1.0 , localAudioLinkLerp3_g7556 , (float)temp_output_64_0_g7553);
			float lerpResult103_g7553 = lerp( lerpResult66_g7553 , lerpResult102_g7553 , (float)saturate( EmissionReactiveMode99_g7553 ));
			int Band3_g7558 = _GreenChReactiveBand;
			float FilteredAmount3_g7558 = ( ( 1.0 - _GreenChReactiveGlobalSmoothing ) * 15.0 );
			float localAudioLinkLerp3_g7558 = AudioLinkLerp3_g7558( Band3_g7558 , FilteredAmount3_g7558 );
			float lerpResult168_g7553 = lerp( 1.0 , localAudioLinkLerp3_g7558 , (float)temp_output_64_0_g7553);
			float lerpResult172_g7553 = lerp( lerpResult103_g7553 , lerpResult168_g7553 , (float)saturate( ( EmissionReactiveMode99_g7553 - 0 ) ));
			float ReactivityAlpha132_g7553 = (_GreenChReactiveMinBrightness + (lerpResult172_g7553 - 0.0) * (( _GreenChReactiveMinBrightness + 1.0 ) - _GreenChReactiveMinBrightness) / (1.0 - 0.0));
			float4 temp_cast_83 = (1.0).xxxx;
			float4 lerpResult264_g7553 = lerp( temp_cast_83 , _GreenChReactiveTint , (float)step( EmissionReactiveBand243_g7553 , 0 ));
			float4 FinalReactivity68_g7553 = ( ReactivityAlpha132_g7553 * lerpResult264_g7553 );
			float4 lerpResult146_g7553 = lerp( ( EmissionGlowTog259_g7553 * FinalReactivity68_g7553 ) , ( EmissionGlow142_g7553 + FinalReactivity68_g7553 ) , (float)saturate( _GreenChReactiveBlendMode ));
			float4 ReversedReactivity152_g7553 = ( ( 1.0 - ReactivityAlpha132_g7553 ) * lerpResult264_g7553 );
			int temp_output_157_0_g7553 = ( _GreenChReactiveBlendMode - 1 );
			float4 lerpResult114_g7553 = lerp( lerpResult146_g7553 , ( EmissionGlowTog259_g7553 * ReversedReactivity152_g7553 ) , (float)saturate( temp_output_157_0_g7553 ));
			float4 lerpResult164_g7553 = lerp( lerpResult114_g7553 , ( EmissionGlow142_g7553 + ( ReversedReactivity152_g7553 * step( EmissionReactiveBand243_g7553 , 0 ) ) ) , (float)max( saturate( ( temp_output_157_0_g7553 - 1 ) ) , ( 1.0 - step( EmissionReactiveBand243_g7553 , 0 ) ) ));
			int localIfAudioLinkv2Exists1_g7568 = IfAudioLinkv2Exists1_g7568();
			float4 temp_output_213_0_g7553 = ( lerpResult164_g7553 * temp_output_236_0_g7553 * saturate( ( localIfAudioLinkv2Exists1_g7568 + _UseFallback1 ) ) );
			float4 lerpResult276_g7553 = lerp( temp_output_283_0_g7553 , temp_output_213_0_g7553 , _EnableGreenChannel);
			float temp_output_236_0_g7503 = (GlowMaskRGBA174_g7501).z;
			float4 temp_output_286_0_g7503 = ( _BlueChGlowFallback * temp_output_236_0_g7503 * _UseFallback2 );
			float4 temp_cast_93 = (1.0).xxxx;
			float3 temp_cast_95 = (1.0).xxx;
			int EmissionGlowZone47_g7503 = _BlueChGlowZone;
			int clampResult8_g7509 = clamp( EmissionGlowZone47_g7503 , 1 , 4 );
			int temp_output_3_0_g7509 = ( clampResult8_g7509 - 1 );
			int Zone16_g7509 = temp_output_3_0_g7509;
			float3 localgetThemeData16_g7509 = getThemeData( Zone16_g7509 );
			int Band11_g7510 = 56;
			int localIsLumaActive11_g7510 = IsLumaActive11_g7510( Band11_g7510 );
			int temp_output_14_0_g7509 = localIsLumaActive11_g7510;
			int lerpResult15_g7509 = lerp( temp_output_3_0_g7509 , ( 63 - temp_output_3_0_g7509 ) , (float)temp_output_14_0_g7509);
			int Band2_g7509 = lerpResult15_g7509;
			int Delay2_g7509 = 0;
			float3 localLumaGlowData2_g7509 = LumaGlowData2_g7509( Band2_g7509 , Delay2_g7509 );
			float3 lerpResult17_g7509 = lerp( ( localgetThemeData16_g7509 * localLumaGlowData2_g7509 ) , localLumaGlowData2_g7509 , (float)temp_output_14_0_g7509);
			int temp_output_21_0_g7503 = saturate( EmissionGlowZone47_g7503 );
			float3 lerpResult20_g7503 = lerp( temp_cast_95 , lerpResult17_g7509 , (float)temp_output_21_0_g7503);
			float3 temp_cast_99 = (1.0).xxx;
			int clampResult8_g7511 = clamp( EmissionGlowZone47_g7503 , 1 , 4 );
			int temp_output_3_0_g7511 = ( clampResult8_g7511 - 1 );
			int Zone15_g7511 = temp_output_3_0_g7511;
			float3 localgetThemeData15_g7511 = getThemeData( Zone15_g7511 );
			int Band11_g7512 = 56;
			int localIsLumaActive11_g7512 = IsLumaActive11_g7512( Band11_g7512 );
			int temp_output_13_0_g7511 = localIsLumaActive11_g7512;
			int lerpResult14_g7511 = lerp( temp_output_3_0_g7511 , ( 63 - temp_output_3_0_g7511 ) , (float)temp_output_13_0_g7511);
			int Band11_g7511 = lerpResult14_g7511;
			float cos6_g7503 = cos( radians( _BlueChGlowPulseDir ) );
			float sin6_g7503 = sin( radians( _BlueChGlowPulseDir ) );
			float2 rotator6_g7503 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos6_g7503 , -sin6_g7503 , sin6_g7503 , cos6_g7503 )) + float2( 0.5,0.5 );
			int Band6_g7516 = _BlueChGlowAnimationBand;
			int Mode6_g7516 = ( ( _BlueChGlowAnimationMode * 2 ) + _BlueChGlowAnimationSpeed );
			int localAudioLinkDecodeDataAsUInt6_g7516 = AudioLinkDecodeDataAsUInt6_g7516( Band6_g7516 , Mode6_g7516 );
			float localGetLocalTime2_g7517 = ( AudioLinkDecodeDataAsSeconds( ALPASS_GENERALVU_LOCAL_TIME ) );
			float lerpResult206_g7503 = lerp( ( ( localAudioLinkDecodeDataAsUInt6_g7516 % 628319 ) / 100000.0 ) , localGetLocalTime2_g7517 , (float)saturate( ( _BlueChGlowAnimationMode - 3 ) ));
			float EmissionGlowAnimation195_g7503 = ( _BlueChGlowAnimationStrength * lerpResult206_g7503 * step( _BlueChGlowAnimationBand , 9 ) );
			float x13_g7503 = ( ( rotator6_g7503.x * _BlueChGlowPulseScale ) + _BlueChGlowPulseOffset + EmissionGlowAnimation195_g7503 );
			float y13_g7503 = 127.0;
			float localglslmod13_g7503 = glslmod13_g7503( x13_g7503 , y13_g7503 );
			float2 temp_output_34_0_g7505 = ( i.uv_texcoord - _BlueChGlowRadialCenter );
			float2 break39_g7505 = temp_output_34_0_g7505;
			float2 appendResult50_g7505 = (float2(( _BlueChGlowPulseScale * ( length( temp_output_34_0_g7505 ) * 2.0 ) ) , ( ( atan2( break39_g7505.x , break39_g7505.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x12_g7503 = ( _BlueChGlowPulseOffset + appendResult50_g7505.x + EmissionGlowAnimation195_g7503 );
			float y12_g7503 = 127.0;
			float localglslmod12_g7503 = glslmod12_g7503( x12_g7503 , y12_g7503 );
			int EmissionGlowMode35_g7503 = _BlueChGlowMode;
			int temp_output_37_0_g7503 = ( EmissionGlowMode35_g7503 - 1 );
			float lerpResult5_g7503 = lerp( localglslmod13_g7503 , localglslmod12_g7503 , (float)saturate( temp_output_37_0_g7503 ));
			float DirectionalMap106_g7503 = Direction27_g7501;
			float lerpResult179_g7503 = lerp( DirectionalMap106_g7503 , ( 1.0 - DirectionalMap106_g7503 ) , (float)saturate( ( EmissionGlowMode35_g7503 - 3 ) ));
			float x34_g7503 = ( _BlueChGlowPulseOffset + ( _BlueChGlowPulseScale * lerpResult179_g7503 ) + EmissionGlowAnimation195_g7503 );
			float y34_g7503 = 127.0;
			float localglslmod34_g7503 = glslmod34_g7503( x34_g7503 , y34_g7503 );
			float lerpResult30_g7503 = lerp( lerpResult5_g7503 , localglslmod34_g7503 , (float)saturate( ( temp_output_37_0_g7503 - 1 ) ));
			float EmissionGlowDelay56_g7503 = lerpResult30_g7503;
			float Delay11_g7511 = EmissionGlowDelay56_g7503;
			float3 localLumaGlowLerp11_g7511 = LumaGlowLerp11_g7511( Band11_g7511 , Delay11_g7511 );
			float3 lerpResult17_g7511 = lerp( ( localgetThemeData15_g7511 * localLumaGlowLerp11_g7511 ) , localLumaGlowLerp11_g7511 , (float)temp_output_13_0_g7511);
			float3 lerpResult22_g7503 = lerp( temp_cast_99 , lerpResult17_g7511 , (float)temp_output_21_0_g7503);
			float3 lerpResult23_g7503 = lerp( lerpResult20_g7503 , lerpResult22_g7503 , (float)saturate( EmissionGlowMode35_g7503 ));
			float4 temp_cast_109 = (1.0).xxxx;
			float temp_output_10_0_g7513 = EmissionGlowDelay56_g7503;
			float Position1_g7515 = ( temp_output_10_0_g7513 / 127.0 );
			float4 localAudioLinkLerp1_g7515 = AudioLinkLerp1_g7515( Position1_g7515 );
			int clampResult8_g7513 = clamp( ( EmissionGlowZone47_g7503 - 4 ) , 1 , 3 );
			int Band11_g7513 = ( 59 - ( clampResult8_g7513 - 1 ) );
			float Delay11_g7513 = temp_output_10_0_g7513;
			float3 localLumaGlowLerp11_g7513 = LumaGlowLerp11_g7513( Band11_g7513 , Delay11_g7513 );
			int Band11_g7514 = 56;
			int localIsLumaActive11_g7514 = IsLumaActive11_g7514( Band11_g7514 );
			float4 lerpResult14_g7513 = lerp( localAudioLinkLerp1_g7515 , float4( localLumaGlowLerp11_g7513 , 0.0 ) , (float)localIsLumaActive11_g7514);
			float4 lerpResult52_g7503 = lerp( temp_cast_109 , lerpResult14_g7513 , (float)saturate( EmissionGlowZone47_g7503 ));
			float4 lerpResult51_g7503 = lerp( float4( lerpResult23_g7503 , 0.0 ) , lerpResult52_g7503 , (float)saturate( ( EmissionGlowZone47_g7503 - 4 ) ));
			float4 temp_cast_114 = (_BlueChGlowMinBrightness).xxxx;
			float4 temp_cast_115 = (( _BlueChGlowMinBrightness + 1.0 )).xxxx;
			int temp_output_258_0_g7503 = saturate( EmissionGlowZone47_g7503 );
			int localIfAudioLinkv2Exists1_g7519 = IfAudioLinkv2Exists1_g7519();
			float4 lerpResult283_g7503 = lerp( _BlueChGlowFallback , ( (temp_cast_114 + (lerpResult51_g7503 - float4( 0,0,0,0 )) * (temp_cast_115 - temp_cast_114) / (float4( 1,1,1,1 ) - float4( 0,0,0,0 ))) * _BlueChGlowTint * temp_output_258_0_g7503 ) , (float)localIfAudioLinkv2Exists1_g7519);
			float4 EmissionGlow142_g7503 = lerpResult283_g7503;
			float4 lerpResult261_g7503 = lerp( temp_cast_93 , EmissionGlow142_g7503 , (float)temp_output_258_0_g7503);
			float4 EmissionGlowTog262_g7503 = lerpResult261_g7503;
			int EmissionReactiveBand243_g7503 = _BlueChReactiveBand;
			int Band3_g7504 = EmissionReactiveBand243_g7503;
			int Delay3_g7504 = 0;
			float localAudioLinkData3_g7504 = AudioLinkData3_g7504( Band3_g7504 , Delay3_g7504 );
			int temp_output_64_0_g7503 = step( _BlueChReactiveBand , 9 );
			float lerpResult66_g7503 = lerp( 1.0 , localAudioLinkData3_g7504 , (float)temp_output_64_0_g7503);
			int Band3_g7506 = _BlueChReactiveBand;
			float cos78_g7503 = cos( radians( _BlueChReactivePulseDir ) );
			float sin78_g7503 = sin( radians( _BlueChReactivePulseDir ) );
			float2 rotator78_g7503 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos78_g7503 , -sin78_g7503 , sin78_g7503 , cos78_g7503 )) + float2( 0.5,0.5 );
			float x96_g7503 = ( ( rotator78_g7503.x * _BlueChReactivePulseScale ) + _BlueChReactivePulseOffset );
			float y96_g7503 = 127.0;
			float localglslmod96_g7503 = glslmod96_g7503( x96_g7503 , y96_g7503 );
			float2 temp_output_34_0_g7507 = ( i.uv_texcoord - _BlueChReactiveRadialCenter );
			float2 break39_g7507 = temp_output_34_0_g7507;
			float2 appendResult50_g7507 = (float2(( _BlueChReactivePulseScale * ( length( temp_output_34_0_g7507 ) * 2.0 ) ) , ( ( atan2( break39_g7507.x , break39_g7507.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x97_g7503 = ( _BlueChReactivePulseOffset + appendResult50_g7507.x );
			float y97_g7503 = 127.0;
			float localglslmod97_g7503 = glslmod97_g7503( x97_g7503 , y97_g7503 );
			int EmissionReactiveMode99_g7503 = _BlueChReactiveMode;
			int temp_output_90_0_g7503 = ( EmissionReactiveMode99_g7503 - 1 );
			float lerpResult77_g7503 = lerp( localglslmod96_g7503 , localglslmod97_g7503 , (float)saturate( temp_output_90_0_g7503 ));
			float lerpResult174_g7503 = lerp( DirectionalMap106_g7503 , ( 1.0 - DirectionalMap106_g7503 ) , (float)saturate( ( EmissionReactiveMode99_g7503 - 3 ) ));
			float x98_g7503 = ( _BlueChReactivePulseOffset + ( _BlueChReactivePulseScale * lerpResult174_g7503 ) );
			float y98_g7503 = 127.0;
			float localglslmod98_g7503 = glslmod98_g7503( x98_g7503 , y98_g7503 );
			float lerpResult87_g7503 = lerp( lerpResult77_g7503 , localglslmod98_g7503 , (float)saturate( ( temp_output_90_0_g7503 - 1 ) ));
			float Delay3_g7506 = lerpResult87_g7503;
			float localAudioLinkLerp3_g7506 = AudioLinkLerp3_g7506( Band3_g7506 , Delay3_g7506 );
			float lerpResult102_g7503 = lerp( 1.0 , localAudioLinkLerp3_g7506 , (float)temp_output_64_0_g7503);
			float lerpResult103_g7503 = lerp( lerpResult66_g7503 , lerpResult102_g7503 , (float)saturate( EmissionReactiveMode99_g7503 ));
			int Band3_g7508 = _BlueChReactiveBand;
			float FilteredAmount3_g7508 = ( ( 1.0 - _BlueChReactiveGlobalSmoothing ) * 15.0 );
			float localAudioLinkLerp3_g7508 = AudioLinkLerp3_g7508( Band3_g7508 , FilteredAmount3_g7508 );
			float lerpResult168_g7503 = lerp( 1.0 , localAudioLinkLerp3_g7508 , (float)temp_output_64_0_g7503);
			float lerpResult172_g7503 = lerp( lerpResult103_g7503 , lerpResult168_g7503 , (float)saturate( ( EmissionReactiveMode99_g7503 - 4 ) ));
			float ReactivityAlpha132_g7503 = (_BlueChReactiveMinBrightness + (lerpResult172_g7503 - 0.0) * (( _BlueChReactiveMinBrightness + 1.0 ) - _BlueChReactiveMinBrightness) / (1.0 - 0.0));
			float4 temp_cast_127 = (1.0).xxxx;
			float4 lerpResult268_g7503 = lerp( temp_cast_127 , _BlueChReactiveTint , (float)step( EmissionReactiveBand243_g7503 , 9 ));
			float4 FinalReactivity68_g7503 = ( ReactivityAlpha132_g7503 * lerpResult268_g7503 );
			float4 lerpResult146_g7503 = lerp( ( EmissionGlowTog262_g7503 * FinalReactivity68_g7503 ) , ( EmissionGlow142_g7503 + FinalReactivity68_g7503 ) , (float)saturate( _BlueChReactiveBlendMode ));
			float4 ReversedReactivity152_g7503 = ( ( 1.0 - ReactivityAlpha132_g7503 ) * lerpResult268_g7503 );
			int temp_output_157_0_g7503 = ( _BlueChReactiveBlendMode - 1 );
			float4 lerpResult114_g7503 = lerp( lerpResult146_g7503 , ( EmissionGlowTog262_g7503 * ReversedReactivity152_g7503 ) , (float)saturate( temp_output_157_0_g7503 ));
			float4 lerpResult164_g7503 = lerp( lerpResult114_g7503 , ( EmissionGlow142_g7503 + ( ReversedReactivity152_g7503 * step( EmissionReactiveBand243_g7503 , 9 ) ) ) , (float)max( saturate( ( temp_output_157_0_g7503 - 1 ) ) , ( 1.0 - step( EmissionReactiveBand243_g7503 , 9 ) ) ));
			int localIfAudioLinkv2Exists1_g7518 = IfAudioLinkv2Exists1_g7518();
			float4 temp_output_213_0_g7503 = ( lerpResult164_g7503 * temp_output_236_0_g7503 * saturate( ( localIfAudioLinkv2Exists1_g7518 + _UseFallback2 ) ) );
			float4 lerpResult278_g7503 = lerp( temp_output_286_0_g7503 , temp_output_213_0_g7503 , _EnableBlueChannel);
			float temp_output_236_0_g7570 = (GlowMaskRGBA174_g7501).w;
			float4 temp_output_286_0_g7570 = ( _AlphaChGlowFallback * temp_output_236_0_g7570 * _UseFallback3 );
			float4 temp_cast_137 = (1.0).xxxx;
			float3 temp_cast_139 = (1.0).xxx;
			int EmissionGlowZone47_g7570 = _AlphaChGlowZone;
			int clampResult8_g7576 = clamp( EmissionGlowZone47_g7570 , 1 , 4 );
			int temp_output_3_0_g7576 = ( clampResult8_g7576 - 1 );
			int Zone16_g7576 = temp_output_3_0_g7576;
			float3 localgetThemeData16_g7576 = getThemeData( Zone16_g7576 );
			int Band11_g7577 = 56;
			int localIsLumaActive11_g7577 = IsLumaActive11_g7577( Band11_g7577 );
			int temp_output_14_0_g7576 = localIsLumaActive11_g7577;
			int lerpResult15_g7576 = lerp( temp_output_3_0_g7576 , ( 63 - temp_output_3_0_g7576 ) , (float)temp_output_14_0_g7576);
			int Band2_g7576 = lerpResult15_g7576;
			int Delay2_g7576 = 0;
			float3 localLumaGlowData2_g7576 = LumaGlowData2_g7576( Band2_g7576 , Delay2_g7576 );
			float3 lerpResult17_g7576 = lerp( ( localgetThemeData16_g7576 * localLumaGlowData2_g7576 ) , localLumaGlowData2_g7576 , (float)temp_output_14_0_g7576);
			int temp_output_21_0_g7570 = saturate( EmissionGlowZone47_g7570 );
			float3 lerpResult20_g7570 = lerp( temp_cast_139 , lerpResult17_g7576 , (float)temp_output_21_0_g7570);
			float3 temp_cast_143 = (1.0).xxx;
			int clampResult8_g7578 = clamp( EmissionGlowZone47_g7570 , 1 , 4 );
			int temp_output_3_0_g7578 = ( clampResult8_g7578 - 1 );
			int Zone15_g7578 = temp_output_3_0_g7578;
			float3 localgetThemeData15_g7578 = getThemeData( Zone15_g7578 );
			int Band11_g7579 = 56;
			int localIsLumaActive11_g7579 = IsLumaActive11_g7579( Band11_g7579 );
			int temp_output_13_0_g7578 = localIsLumaActive11_g7579;
			int lerpResult14_g7578 = lerp( temp_output_3_0_g7578 , ( 63 - temp_output_3_0_g7578 ) , (float)temp_output_13_0_g7578);
			int Band11_g7578 = lerpResult14_g7578;
			float cos6_g7570 = cos( radians( _AlphaChGlowPulseDir ) );
			float sin6_g7570 = sin( radians( _AlphaChGlowPulseDir ) );
			float2 rotator6_g7570 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos6_g7570 , -sin6_g7570 , sin6_g7570 , cos6_g7570 )) + float2( 0.5,0.5 );
			int Band6_g7583 = _AlphaChGlowAnimationBand;
			int Mode6_g7583 = ( ( _AlphaChGlowAnimationMode * 2 ) + _AlphaChGlowAnimationSpeed );
			int localAudioLinkDecodeDataAsUInt6_g7583 = AudioLinkDecodeDataAsUInt6_g7583( Band6_g7583 , Mode6_g7583 );
			float localGetLocalTime2_g7584 = ( AudioLinkDecodeDataAsSeconds( ALPASS_GENERALVU_LOCAL_TIME ) );
			float lerpResult206_g7570 = lerp( ( ( localAudioLinkDecodeDataAsUInt6_g7583 % 628319 ) / 100000.0 ) , localGetLocalTime2_g7584 , (float)saturate( ( _AlphaChGlowAnimationMode - 3 ) ));
			float EmissionGlowAnimation195_g7570 = ( _AlphaChGlowAnimationStrength * lerpResult206_g7570 * step( _AlphaChGlowAnimationBand , 9 ) );
			float x13_g7570 = ( ( rotator6_g7570.x * _AlphaChGlowPulseScale ) + _AlphaChGlowPulseOffset + EmissionGlowAnimation195_g7570 );
			float y13_g7570 = 127.0;
			float localglslmod13_g7570 = glslmod13_g7570( x13_g7570 , y13_g7570 );
			float2 temp_output_34_0_g7572 = ( i.uv_texcoord - _AlphaChGlowRadialCenter );
			float2 break39_g7572 = temp_output_34_0_g7572;
			float2 appendResult50_g7572 = (float2(( _AlphaChGlowPulseScale * ( length( temp_output_34_0_g7572 ) * 2.0 ) ) , ( ( atan2( break39_g7572.x , break39_g7572.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x12_g7570 = ( _AlphaChGlowPulseOffset + appendResult50_g7572.x + EmissionGlowAnimation195_g7570 );
			float y12_g7570 = 127.0;
			float localglslmod12_g7570 = glslmod12_g7570( x12_g7570 , y12_g7570 );
			int EmissionGlowMode35_g7570 = _AlphaChGlowMode;
			int temp_output_37_0_g7570 = ( EmissionGlowMode35_g7570 - 1 );
			float lerpResult5_g7570 = lerp( localglslmod13_g7570 , localglslmod12_g7570 , (float)saturate( temp_output_37_0_g7570 ));
			float DirectionalMap106_g7570 = Direction27_g7501;
			float lerpResult179_g7570 = lerp( DirectionalMap106_g7570 , ( 1.0 - DirectionalMap106_g7570 ) , (float)saturate( ( EmissionGlowMode35_g7570 - 3 ) ));
			float x34_g7570 = ( _AlphaChGlowPulseOffset + ( _AlphaChGlowPulseScale * lerpResult179_g7570 ) + EmissionGlowAnimation195_g7570 );
			float y34_g7570 = 127.0;
			float localglslmod34_g7570 = glslmod34_g7570( x34_g7570 , y34_g7570 );
			float lerpResult30_g7570 = lerp( lerpResult5_g7570 , localglslmod34_g7570 , (float)saturate( ( temp_output_37_0_g7570 - 1 ) ));
			float EmissionGlowDelay56_g7570 = lerpResult30_g7570;
			float Delay11_g7578 = EmissionGlowDelay56_g7570;
			float3 localLumaGlowLerp11_g7578 = LumaGlowLerp11_g7578( Band11_g7578 , Delay11_g7578 );
			float3 lerpResult17_g7578 = lerp( ( localgetThemeData15_g7578 * localLumaGlowLerp11_g7578 ) , localLumaGlowLerp11_g7578 , (float)temp_output_13_0_g7578);
			float3 lerpResult22_g7570 = lerp( temp_cast_143 , lerpResult17_g7578 , (float)temp_output_21_0_g7570);
			float3 lerpResult23_g7570 = lerp( lerpResult20_g7570 , lerpResult22_g7570 , (float)saturate( EmissionGlowMode35_g7570 ));
			float4 temp_cast_153 = (1.0).xxxx;
			float temp_output_10_0_g7580 = EmissionGlowDelay56_g7570;
			float Position1_g7582 = ( temp_output_10_0_g7580 / 127.0 );
			float4 localAudioLinkLerp1_g7582 = AudioLinkLerp1_g7582( Position1_g7582 );
			int clampResult8_g7580 = clamp( ( EmissionGlowZone47_g7570 - 0 ) , 1 , 3 );
			int Band11_g7580 = ( 59 - ( clampResult8_g7580 - 1 ) );
			float Delay11_g7580 = temp_output_10_0_g7580;
			float3 localLumaGlowLerp11_g7580 = LumaGlowLerp11_g7580( Band11_g7580 , Delay11_g7580 );
			int Band11_g7581 = 56;
			int localIsLumaActive11_g7581 = IsLumaActive11_g7581( Band11_g7581 );
			float4 lerpResult14_g7580 = lerp( localAudioLinkLerp1_g7582 , float4( localLumaGlowLerp11_g7580 , 0.0 ) , (float)localIsLumaActive11_g7581);
			float4 lerpResult52_g7570 = lerp( temp_cast_153 , lerpResult14_g7580 , (float)saturate( EmissionGlowZone47_g7570 ));
			float4 lerpResult51_g7570 = lerp( float4( lerpResult23_g7570 , 0.0 ) , lerpResult52_g7570 , (float)saturate( ( EmissionGlowZone47_g7570 - 0 ) ));
			float4 temp_cast_158 = (_AlphaChGlowMinBrightness).xxxx;
			float4 temp_cast_159 = (( _AlphaChGlowMinBrightness + 1.0 )).xxxx;
			int temp_output_258_0_g7570 = saturate( EmissionGlowZone47_g7570 );
			int localIfAudioLinkv2Exists1_g7586 = IfAudioLinkv2Exists1_g7586();
			float4 lerpResult283_g7570 = lerp( _AlphaChGlowFallback , ( (temp_cast_158 + (lerpResult51_g7570 - float4( 0,0,0,0 )) * (temp_cast_159 - temp_cast_158) / (float4( 1,1,1,1 ) - float4( 0,0,0,0 ))) * _AlphaChGlowTint * temp_output_258_0_g7570 ) , (float)localIfAudioLinkv2Exists1_g7586);
			float4 EmissionGlow142_g7570 = lerpResult283_g7570;
			float4 lerpResult261_g7570 = lerp( temp_cast_137 , EmissionGlow142_g7570 , (float)temp_output_258_0_g7570);
			float4 EmissionGlowTog262_g7570 = lerpResult261_g7570;
			int EmissionReactiveBand243_g7570 = _AlphaChReactiveBand;
			int Band3_g7571 = EmissionReactiveBand243_g7570;
			int Delay3_g7571 = 0;
			float localAudioLinkData3_g7571 = AudioLinkData3_g7571( Band3_g7571 , Delay3_g7571 );
			int temp_output_64_0_g7570 = step( _AlphaChReactiveBand , 9 );
			float lerpResult66_g7570 = lerp( 1.0 , localAudioLinkData3_g7571 , (float)temp_output_64_0_g7570);
			int Band3_g7573 = _AlphaChReactiveBand;
			float cos78_g7570 = cos( radians( _AlphaChReactivePulseDir ) );
			float sin78_g7570 = sin( radians( _AlphaChReactivePulseDir ) );
			float2 rotator78_g7570 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos78_g7570 , -sin78_g7570 , sin78_g7570 , cos78_g7570 )) + float2( 0.5,0.5 );
			float x96_g7570 = ( ( rotator78_g7570.x * _AlphaChReactivePulseScale ) + _AlphaChReactivePulseOffset );
			float y96_g7570 = 127.0;
			float localglslmod96_g7570 = glslmod96_g7570( x96_g7570 , y96_g7570 );
			float2 temp_output_34_0_g7574 = ( i.uv_texcoord - _AlphaChReactiveRadialCenter );
			float2 break39_g7574 = temp_output_34_0_g7574;
			float2 appendResult50_g7574 = (float2(( _AlphaChReactivePulseScale * ( length( temp_output_34_0_g7574 ) * 2.0 ) ) , ( ( atan2( break39_g7574.x , break39_g7574.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x97_g7570 = ( _AlphaChReactivePulseOffset + appendResult50_g7574.x );
			float y97_g7570 = 127.0;
			float localglslmod97_g7570 = glslmod97_g7570( x97_g7570 , y97_g7570 );
			int EmissionReactiveMode99_g7570 = _AlphaChReactiveMode;
			int temp_output_90_0_g7570 = ( EmissionReactiveMode99_g7570 - 1 );
			float lerpResult77_g7570 = lerp( localglslmod96_g7570 , localglslmod97_g7570 , (float)saturate( temp_output_90_0_g7570 ));
			float lerpResult174_g7570 = lerp( DirectionalMap106_g7570 , ( 1.0 - DirectionalMap106_g7570 ) , (float)saturate( ( EmissionReactiveMode99_g7570 - 0 ) ));
			float x98_g7570 = ( _AlphaChReactivePulseOffset + ( _AlphaChReactivePulseScale * lerpResult174_g7570 ) );
			float y98_g7570 = 127.0;
			float localglslmod98_g7570 = glslmod98_g7570( x98_g7570 , y98_g7570 );
			float lerpResult87_g7570 = lerp( lerpResult77_g7570 , localglslmod98_g7570 , (float)saturate( ( temp_output_90_0_g7570 - 1 ) ));
			float Delay3_g7573 = lerpResult87_g7570;
			float localAudioLinkLerp3_g7573 = AudioLinkLerp3_g7573( Band3_g7573 , Delay3_g7573 );
			float lerpResult102_g7570 = lerp( 1.0 , localAudioLinkLerp3_g7573 , (float)temp_output_64_0_g7570);
			float lerpResult103_g7570 = lerp( lerpResult66_g7570 , lerpResult102_g7570 , (float)saturate( EmissionReactiveMode99_g7570 ));
			int Band3_g7575 = _AlphaChReactiveBand;
			float FilteredAmount3_g7575 = ( ( 1.0 - _AlphaChReactiveGlobalSmoothing ) * 15.0 );
			float localAudioLinkLerp3_g7575 = AudioLinkLerp3_g7575( Band3_g7575 , FilteredAmount3_g7575 );
			float lerpResult168_g7570 = lerp( 1.0 , localAudioLinkLerp3_g7575 , (float)temp_output_64_0_g7570);
			float lerpResult172_g7570 = lerp( lerpResult103_g7570 , lerpResult168_g7570 , (float)saturate( ( EmissionReactiveMode99_g7570 - 0 ) ));
			float ReactivityAlpha132_g7570 = (_AlphaChReactiveMinBrightness + (lerpResult172_g7570 - 0.0) * (( _AlphaChReactiveMinBrightness + 1.0 ) - _AlphaChReactiveMinBrightness) / (1.0 - 0.0));
			float4 temp_cast_171 = (1.0).xxxx;
			float4 lerpResult268_g7570 = lerp( temp_cast_171 , _AlphaChReactiveTint , (float)step( EmissionReactiveBand243_g7570 , 0 ));
			float4 FinalReactivity68_g7570 = ( ReactivityAlpha132_g7570 * lerpResult268_g7570 );
			float4 lerpResult146_g7570 = lerp( ( EmissionGlowTog262_g7570 * FinalReactivity68_g7570 ) , ( EmissionGlow142_g7570 + FinalReactivity68_g7570 ) , (float)saturate( _AlphaChReactiveBlendMode ));
			float4 ReversedReactivity152_g7570 = ( ( 1.0 - ReactivityAlpha132_g7570 ) * lerpResult268_g7570 );
			int temp_output_157_0_g7570 = ( _AlphaChReactiveBlendMode - 1 );
			float4 lerpResult114_g7570 = lerp( lerpResult146_g7570 , ( EmissionGlowTog262_g7570 * ReversedReactivity152_g7570 ) , (float)saturate( temp_output_157_0_g7570 ));
			float4 lerpResult164_g7570 = lerp( lerpResult114_g7570 , ( EmissionGlow142_g7570 + ( ReversedReactivity152_g7570 * step( EmissionReactiveBand243_g7570 , 0 ) ) ) , (float)max( saturate( ( temp_output_157_0_g7570 - 1 ) ) , ( 1.0 - step( EmissionReactiveBand243_g7570 , 0 ) ) ));
			int localIfAudioLinkv2Exists1_g7585 = IfAudioLinkv2Exists1_g7585();
			float4 temp_output_213_0_g7570 = ( lerpResult164_g7570 * temp_output_236_0_g7570 * saturate( ( localIfAudioLinkv2Exists1_g7585 + _UseFallback3 ) ) );
			float4 lerpResult278_g7570 = lerp( temp_output_286_0_g7570 , temp_output_213_0_g7570 , _EnableAlphaChannel);
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
			float4 EmissionRGBA590 = ( _EmissionColor * tex2D( _EmissionMap, uv_EmissionMap ) );
			float4 lerpResult656 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _EmissionMaskMap ));
			float temp_output_650_0 = ( _EmissionMaskMap - 1.0 );
			float4 lerpResult659 = lerp( lerpResult656 , MM03RGBA412 , saturate( temp_output_650_0 ));
			float temp_output_655_0 = ( temp_output_650_0 - 1.0 );
			float4 lerpResult660 = lerp( lerpResult659 , MM04RGBA420 , saturate( temp_output_655_0 ));
			float4 temp_cast_180 = (1.0).xxxx;
			float4 lerpResult941 = lerp( lerpResult660 , temp_cast_180 , saturate( ( temp_output_655_0 - 1.0 ) ));
			float lerpResult667 = lerp( (lerpResult941).r , (lerpResult941).g , saturate( _EmissionMaskChannel ));
			float temp_output_666_0 = ( _EmissionMaskChannel - 1.0 );
			float lerpResult672 = lerp( lerpResult667 , (lerpResult941).b , saturate( temp_output_666_0 ));
			float lerpResult675 = lerp( lerpResult672 , (lerpResult941).a , saturate( ( temp_output_666_0 - 1.0 ) ));
			float EmissionMaskChannel676 = lerpResult675;
			float4 EmissionFinal688 = ( EmissionRGBA590 * EmissionMaskChannel676 );
			#ifdef _EMISSION
				float4 staticSwitch886 = EmissionFinal688;
			#else
				float4 staticSwitch886 = float4( 0,0,0,0 );
			#endif
			float4 temp_output_211_0_g7520 = staticSwitch886;
			float4 temp_cast_182 = (1.0).xxxx;
			float3 temp_cast_183 = (1.0).xxx;
			int EmissionGlowZone47_g7520 = _EmissionGlowZone;
			int clampResult8_g7531 = clamp( EmissionGlowZone47_g7520 , 1 , 4 );
			int temp_output_3_0_g7531 = ( clampResult8_g7531 - 1 );
			int Zone16_g7531 = temp_output_3_0_g7531;
			float3 localgetThemeData16_g7531 = getThemeData( Zone16_g7531 );
			int Band11_g7532 = 56;
			int localIsLumaActive11_g7532 = IsLumaActive11_g7532( Band11_g7532 );
			int temp_output_14_0_g7531 = localIsLumaActive11_g7532;
			int lerpResult15_g7531 = lerp( temp_output_3_0_g7531 , ( 63 - temp_output_3_0_g7531 ) , (float)temp_output_14_0_g7531);
			int Band2_g7531 = lerpResult15_g7531;
			int Delay2_g7531 = 0;
			float3 localLumaGlowData2_g7531 = LumaGlowData2_g7531( Band2_g7531 , Delay2_g7531 );
			float3 lerpResult17_g7531 = lerp( ( localgetThemeData16_g7531 * localLumaGlowData2_g7531 ) , localLumaGlowData2_g7531 , (float)temp_output_14_0_g7531);
			int temp_output_21_0_g7520 = saturate( EmissionGlowZone47_g7520 );
			float3 lerpResult20_g7520 = lerp( temp_cast_183 , lerpResult17_g7531 , (float)temp_output_21_0_g7520);
			float3 temp_cast_187 = (1.0).xxx;
			int clampResult8_g7533 = clamp( EmissionGlowZone47_g7520 , 1 , 4 );
			int temp_output_3_0_g7533 = ( clampResult8_g7533 - 1 );
			int Zone15_g7533 = temp_output_3_0_g7533;
			float3 localgetThemeData15_g7533 = getThemeData( Zone15_g7533 );
			int Band11_g7534 = 56;
			int localIsLumaActive11_g7534 = IsLumaActive11_g7534( Band11_g7534 );
			int temp_output_13_0_g7533 = localIsLumaActive11_g7534;
			int lerpResult14_g7533 = lerp( temp_output_3_0_g7533 , ( 63 - temp_output_3_0_g7533 ) , (float)temp_output_13_0_g7533);
			int Band11_g7533 = lerpResult14_g7533;
			float cos6_g7520 = cos( radians( _EmissionGlowPulseDir ) );
			float sin6_g7520 = sin( radians( _EmissionGlowPulseDir ) );
			float2 rotator6_g7520 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos6_g7520 , -sin6_g7520 , sin6_g7520 , cos6_g7520 )) + float2( 0.5,0.5 );
			int Band6_g7526 = _EmissionGlowAnimationBand;
			int Mode6_g7526 = ( ( _EmissionGlowAnimationMode * 2 ) + _EmissionGlowAnimationSpeed );
			int localAudioLinkDecodeDataAsUInt6_g7526 = AudioLinkDecodeDataAsUInt6_g7526( Band6_g7526 , Mode6_g7526 );
			float localGetLocalTime2_g7527 = ( AudioLinkDecodeDataAsSeconds( ALPASS_GENERALVU_LOCAL_TIME ) );
			float lerpResult206_g7520 = lerp( ( ( localAudioLinkDecodeDataAsUInt6_g7526 % 628319 ) / 100000.0 ) , localGetLocalTime2_g7527 , (float)saturate( ( _EmissionGlowAnimationMode - 3 ) ));
			float EmissionGlowAnimation195_g7520 = ( _EmissionGlowAnimationStrength * lerpResult206_g7520 * step( _EmissionGlowAnimationBand , 9 ) );
			float x13_g7520 = ( ( rotator6_g7520.x * _EmissionGlowPulseScale ) + _EmissionGlowPulseOffset + EmissionGlowAnimation195_g7520 );
			float y13_g7520 = 127.0;
			float localglslmod13_g7520 = glslmod13_g7520( x13_g7520 , y13_g7520 );
			float2 temp_output_34_0_g7522 = ( i.uv_texcoord - _EmissionGlowRadialCenter );
			float2 break39_g7522 = temp_output_34_0_g7522;
			float2 appendResult50_g7522 = (float2(( _EmissionGlowPulseScale * ( length( temp_output_34_0_g7522 ) * 2.0 ) ) , ( ( atan2( break39_g7522.x , break39_g7522.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x12_g7520 = ( _EmissionGlowPulseOffset + appendResult50_g7522.x + EmissionGlowAnimation195_g7520 );
			float y12_g7520 = 127.0;
			float localglslmod12_g7520 = glslmod12_g7520( x12_g7520 , y12_g7520 );
			int EmissionGlowMode35_g7520 = _EmissionGlowMode;
			int temp_output_37_0_g7520 = ( EmissionGlowMode35_g7520 - 1 );
			float lerpResult5_g7520 = lerp( localglslmod13_g7520 , localglslmod12_g7520 , (float)saturate( temp_output_37_0_g7520 ));
			float DirectionalMap106_g7520 = Direction27_g7501;
			float lerpResult179_g7520 = lerp( DirectionalMap106_g7520 , ( 1.0 - DirectionalMap106_g7520 ) , (float)saturate( ( EmissionGlowMode35_g7520 - 0 ) ));
			float x34_g7520 = ( _EmissionGlowPulseOffset + ( _EmissionGlowPulseScale * lerpResult179_g7520 ) + EmissionGlowAnimation195_g7520 );
			float y34_g7520 = 127.0;
			float localglslmod34_g7520 = glslmod34_g7520( x34_g7520 , y34_g7520 );
			float lerpResult30_g7520 = lerp( lerpResult5_g7520 , localglslmod34_g7520 , (float)saturate( ( temp_output_37_0_g7520 - 1 ) ));
			float EmissionGlowDelay56_g7520 = lerpResult30_g7520;
			float Delay11_g7533 = EmissionGlowDelay56_g7520;
			float3 localLumaGlowLerp11_g7533 = LumaGlowLerp11_g7533( Band11_g7533 , Delay11_g7533 );
			float3 lerpResult17_g7533 = lerp( ( localgetThemeData15_g7533 * localLumaGlowLerp11_g7533 ) , localLumaGlowLerp11_g7533 , (float)temp_output_13_0_g7533);
			float3 lerpResult22_g7520 = lerp( temp_cast_187 , lerpResult17_g7533 , (float)temp_output_21_0_g7520);
			float3 lerpResult23_g7520 = lerp( lerpResult20_g7520 , lerpResult22_g7520 , (float)saturate( EmissionGlowMode35_g7520 ));
			float4 temp_cast_197 = (1.0).xxxx;
			float temp_output_10_0_g7528 = EmissionGlowDelay56_g7520;
			float Position1_g7530 = ( temp_output_10_0_g7528 / 127.0 );
			float4 localAudioLinkLerp1_g7530 = AudioLinkLerp1_g7530( Position1_g7530 );
			int clampResult8_g7528 = clamp( ( EmissionGlowZone47_g7520 - 0 ) , 1 , 3 );
			int Band11_g7528 = ( 59 - ( clampResult8_g7528 - 1 ) );
			float Delay11_g7528 = temp_output_10_0_g7528;
			float3 localLumaGlowLerp11_g7528 = LumaGlowLerp11_g7528( Band11_g7528 , Delay11_g7528 );
			int Band11_g7529 = 56;
			int localIsLumaActive11_g7529 = IsLumaActive11_g7529( Band11_g7529 );
			float4 lerpResult14_g7528 = lerp( localAudioLinkLerp1_g7530 , float4( localLumaGlowLerp11_g7528 , 0.0 ) , (float)localIsLumaActive11_g7529);
			float4 lerpResult52_g7520 = lerp( temp_cast_197 , lerpResult14_g7528 , (float)saturate( EmissionGlowZone47_g7520 ));
			float4 lerpResult51_g7520 = lerp( float4( lerpResult23_g7520 , 0.0 ) , lerpResult52_g7520 , (float)saturate( ( EmissionGlowZone47_g7520 - 0 ) ));
			float4 temp_cast_202 = (_EmissionGlowMinBrightness).xxxx;
			float4 temp_cast_203 = (( _EmissionGlowMinBrightness + 1.0 )).xxxx;
			int temp_output_245_0_g7520 = saturate( EmissionGlowZone47_g7520 );
			float4 EmissionGlow142_g7520 = ( (temp_cast_202 + (lerpResult51_g7520 - float4( 0,0,0,0 )) * (temp_cast_203 - temp_cast_202) / (float4( 1,1,1,1 ) - float4( 0,0,0,0 ))) * _EmissionGlowTint * temp_output_245_0_g7520 );
			float4 lerpResult248_g7520 = lerp( temp_cast_182 , EmissionGlow142_g7520 , (float)temp_output_245_0_g7520);
			float4 EmissionGlowTog249_g7520 = lerpResult248_g7520;
			int EmissionReactiveBand254_g7520 = _EmissionReactiveBand;
			int Band3_g7521 = EmissionReactiveBand254_g7520;
			int Delay3_g7521 = 0;
			float localAudioLinkData3_g7521 = AudioLinkData3_g7521( Band3_g7521 , Delay3_g7521 );
			int temp_output_64_0_g7520 = step( _EmissionReactiveBand , 9 );
			float lerpResult66_g7520 = lerp( 1.0 , localAudioLinkData3_g7521 , (float)temp_output_64_0_g7520);
			int Band3_g7523 = _EmissionReactiveBand;
			float cos78_g7520 = cos( radians( _EmissionReactivePulseDir ) );
			float sin78_g7520 = sin( radians( _EmissionReactivePulseDir ) );
			float2 rotator78_g7520 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos78_g7520 , -sin78_g7520 , sin78_g7520 , cos78_g7520 )) + float2( 0.5,0.5 );
			float x96_g7520 = ( ( rotator78_g7520.x * _EmissionReactivePulseScale ) + _EmissionReactivePulseOffset );
			float y96_g7520 = 127.0;
			float localglslmod96_g7520 = glslmod96_g7520( x96_g7520 , y96_g7520 );
			float2 temp_output_34_0_g7524 = ( i.uv_texcoord - _EmissionReactiveRadialCenter );
			float2 break39_g7524 = temp_output_34_0_g7524;
			float2 appendResult50_g7524 = (float2(( _EmissionReactivePulseScale * ( length( temp_output_34_0_g7524 ) * 2.0 ) ) , ( ( atan2( break39_g7524.x , break39_g7524.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x97_g7520 = ( _EmissionReactivePulseOffset + appendResult50_g7524.x );
			float y97_g7520 = 127.0;
			float localglslmod97_g7520 = glslmod97_g7520( x97_g7520 , y97_g7520 );
			int EmissionReactiveMode99_g7520 = _EmissionReactiveMode;
			int temp_output_90_0_g7520 = ( EmissionReactiveMode99_g7520 - 1 );
			float lerpResult77_g7520 = lerp( localglslmod96_g7520 , localglslmod97_g7520 , (float)saturate( temp_output_90_0_g7520 ));
			float lerpResult174_g7520 = lerp( DirectionalMap106_g7520 , ( 1.0 - DirectionalMap106_g7520 ) , (float)saturate( ( EmissionReactiveMode99_g7520 - 0 ) ));
			float x98_g7520 = ( _EmissionReactivePulseOffset + ( _EmissionReactivePulseScale * lerpResult174_g7520 ) );
			float y98_g7520 = 127.0;
			float localglslmod98_g7520 = glslmod98_g7520( x98_g7520 , y98_g7520 );
			float lerpResult87_g7520 = lerp( lerpResult77_g7520 , localglslmod98_g7520 , (float)saturate( ( temp_output_90_0_g7520 - 1 ) ));
			float Delay3_g7523 = lerpResult87_g7520;
			float localAudioLinkLerp3_g7523 = AudioLinkLerp3_g7523( Band3_g7523 , Delay3_g7523 );
			float lerpResult102_g7520 = lerp( 1.0 , localAudioLinkLerp3_g7523 , (float)temp_output_64_0_g7520);
			float lerpResult103_g7520 = lerp( lerpResult66_g7520 , lerpResult102_g7520 , (float)saturate( EmissionReactiveMode99_g7520 ));
			int Band3_g7525 = _EmissionReactiveBand;
			float FilteredAmount3_g7525 = ( ( 1.0 - _EmissionReactiveGlobalSmoothing ) * 15.0 );
			float localAudioLinkLerp3_g7525 = AudioLinkLerp3_g7525( Band3_g7525 , FilteredAmount3_g7525 );
			float lerpResult168_g7520 = lerp( 1.0 , localAudioLinkLerp3_g7525 , (float)temp_output_64_0_g7520);
			float lerpResult172_g7520 = lerp( lerpResult103_g7520 , lerpResult168_g7520 , (float)saturate( ( EmissionReactiveMode99_g7520 - 0 ) ));
			float ReactivityAlpha132_g7520 = (_EmissionReactiveMinBrightness + (lerpResult172_g7520 - 0.0) * (( _EmissionReactiveMinBrightness + 1.0 ) - _EmissionReactiveMinBrightness) / (1.0 - 0.0));
			float4 temp_cast_214 = (1.0).xxxx;
			float4 lerpResult265_g7520 = lerp( temp_cast_214 , _EmissionReactiveTint , (float)step( EmissionReactiveBand254_g7520 , 0 ));
			float4 FinalReactivity68_g7520 = ( ReactivityAlpha132_g7520 * lerpResult265_g7520 );
			float4 lerpResult146_g7520 = lerp( ( EmissionGlowTog249_g7520 * FinalReactivity68_g7520 ) , ( EmissionGlow142_g7520 + FinalReactivity68_g7520 ) , (float)saturate( _EmissionReactiveBlendMode ));
			float4 ReversedReactivity152_g7520 = ( ( 1.0 - ReactivityAlpha132_g7520 ) * lerpResult265_g7520 );
			int temp_output_157_0_g7520 = ( _EmissionReactiveBlendMode - 1 );
			float4 lerpResult114_g7520 = lerp( lerpResult146_g7520 , ( EmissionGlowTog249_g7520 * ReversedReactivity152_g7520 ) , (float)saturate( temp_output_157_0_g7520 ));
			float4 lerpResult164_g7520 = lerp( lerpResult114_g7520 , ( EmissionGlow142_g7520 + ( ReversedReactivity152_g7520 * step( EmissionReactiveBand254_g7520 , 0 ) ) ) , (float)saturate( ( temp_output_157_0_g7520 - 1 ) ));
			float grayscale214_g7520 = Luminance(temp_output_211_0_g7520.rgb);
			float smoothstepResult215_g7520 = smoothstep( 0.0 , 0.5 , grayscale214_g7520);
			int ReactiveBlendmode272_g7520 = _EmissionReactiveBlendMode;
			float x270_g7520 = (float)ReactiveBlendmode272_g7520;
			float y270_g7520 = 2.0;
			float localglslmod270_g7520 = glslmod270_g7520( x270_g7520 , y270_g7520 );
			float lerpResult271_g7520 = lerp( localglslmod270_g7520 , (float)_EmissionGlowBlendMode , (float)saturate( EmissionGlowZone47_g7520 ));
			float4 lerpResult212_g7520 = lerp( ( lerpResult164_g7520 * temp_output_211_0_g7520 ) , ( ( lerpResult164_g7520 * smoothstepResult215_g7520 ) + temp_output_211_0_g7520 ) , lerpResult271_g7520);
			int localIfAudioLinkv2Exists1_g7535 = IfAudioLinkv2Exists1_g7535();
			float4 lerpResult281_g7520 = lerp( temp_output_211_0_g7520 , lerpResult212_g7520 , (float)localIfAudioLinkv2Exists1_g7535);
			#ifdef _EMISSION
				float4 staticSwitch284_g7520 = lerpResult281_g7520;
			#else
				float4 staticSwitch284_g7520 = float4( 0,0,0,0 );
			#endif
			float4 Emiss1322 = ( ( lerpResult280_g7536 + lerpResult276_g7553 + lerpResult278_g7503 + lerpResult278_g7570 ) + staticSwitch284_g7520 );
			o.Emission = Emiss1322.xyz;
		}

		ENDCG
		CGPROGRAM
		#pragma surface surf StandardCustomLighting keepalpha fullforwardshadows nolightmap  nodirlightmap nometa vertex:vertexDataFunc 

		ENDCG
		Pass
		{
			Name "ShadowCaster"
			Tags{ "LightMode" = "ShadowCaster" }
			ZWrite On
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma target 4.0
			#pragma multi_compile_shadowcaster
			#pragma multi_compile UNITY_PASS_SHADOWCASTER
			#pragma skip_variants FOG_LINEAR FOG_EXP FOG_EXP2
			#include "HLSLSupport.cginc"
			#if ( SHADER_API_D3D11 || SHADER_API_GLCORE || SHADER_API_GLES || SHADER_API_GLES3 || SHADER_API_METAL || SHADER_API_VULKAN )
				#define CAN_SKIP_VPOS
			#endif
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			sampler3D _DitherMaskLOD;
			struct v2f
			{
				V2F_SHADOW_CASTER;
				float4 customPack1 : TEXCOORD1;
				float4 customPack2 : TEXCOORD2;
				float4 customPack3 : TEXCOORD3;
				float2 customPack4 : TEXCOORD4;
				float4 tSpace0 : TEXCOORD5;
				float4 tSpace1 : TEXCOORD6;
				float4 tSpace2 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			v2f vert( appdata_full_custom v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_INITIALIZE_OUTPUT( v2f, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				Input customInputData;
				vertexDataFunc( v, customInputData );
				float3 worldPos = mul( unity_ObjectToWorld, v.vertex ).xyz;
				half3 worldNormal = UnityObjectToWorldNormal( v.normal );
				half3 worldTangent = UnityObjectToWorldDir( v.tangent.xyz );
				half tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				half3 worldBinormal = cross( worldNormal, worldTangent ) * tangentSign;
				o.tSpace0 = float4( worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x );
				o.tSpace1 = float4( worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y );
				o.tSpace2 = float4( worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z );
				o.customPack1.xy = customInputData.vertexToFrag51_g5486;
				o.customPack1.zw = customInputData.vertexToFrag51_g5487;
				o.customPack2.xy = customInputData.vertexToFrag51_g5488;
				o.customPack2.zw = customInputData.vertexToFrag51_g5489;
				o.customPack3.xy = customInputData.uv_texcoord;
				o.customPack3.xy = v.texcoord;
				o.customPack3.zw = customInputData.vertexToFrag51_g7502;
				o.customPack4.xy = customInputData.vertexToFrag51_g5577;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET( o )
				return o;
			}
			half4 frag( v2f IN
			#if !defined( CAN_SKIP_VPOS )
			, UNITY_VPOS_TYPE vpos : VPOS
			#endif
			) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				Input surfIN;
				UNITY_INITIALIZE_OUTPUT( Input, surfIN );
				surfIN.vertexToFrag51_g5486 = IN.customPack1.xy;
				surfIN.vertexToFrag51_g5487 = IN.customPack1.zw;
				surfIN.vertexToFrag51_g5488 = IN.customPack2.xy;
				surfIN.vertexToFrag51_g5489 = IN.customPack2.zw;
				surfIN.uv_texcoord = IN.customPack3.xy;
				surfIN.vertexToFrag51_g7502 = IN.customPack3.zw;
				surfIN.vertexToFrag51_g5577 = IN.customPack4.xy;
				float3 worldPos = float3( IN.tSpace0.w, IN.tSpace1.w, IN.tSpace2.w );
				half3 worldViewDir = normalize( UnityWorldSpaceViewDir( worldPos ) );
				surfIN.worldPos = worldPos;
				surfIN.worldNormal = float3( IN.tSpace0.z, IN.tSpace1.z, IN.tSpace2.z );
				surfIN.internalSurfaceTtoW0 = IN.tSpace0.xyz;
				surfIN.internalSurfaceTtoW1 = IN.tSpace1.xyz;
				surfIN.internalSurfaceTtoW2 = IN.tSpace2.xyz;
				SurfaceOutputCustomLightingCustom o;
				UNITY_INITIALIZE_OUTPUT( SurfaceOutputCustomLightingCustom, o )
				surf( surfIN, o );
				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT( UnityGI, gi );
				o.Alpha = LightingStandardCustomLighting( o, worldViewDir, gi ).a;
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
				half alphaRef = tex3D( _DitherMaskLOD, float3( vpos.xy * 0.25, o.Alpha * 0.9375 ) ).a;
				clip( alphaRef - 0.01 );
				SHADOW_CASTER_FRAGMENT( IN )
			}
			ENDCG
		}
	}
	Fallback "Diffuse"
	CustomEditor "UmbraShaderUI"
}
/*ASEBEGIN
Version=19303
Node;AmplifyShaderEditor.CommentaryNode;8;-10160.09,-2522.909;Inherit;False;3982.787;1722.466;Comment;88;4;6;1371;1370;411;1368;1366;12;11;50;1363;1360;1356;1359;1358;1357;1124;973;972;971;970;975;974;967;966;418;417;416;415;410;409;408;407;218;219;216;17;217;53;18;7;689;1361;23;596;692;691;1362;5;595;22;693;690;590;593;38;594;21;646;645;20;592;589;16;588;587;420;414;412;419;406;296;295;413;52;9;405;51;1388;1393;1394;1395;1396;1401;1402;1403;1404;1831;Texture Assignments;0.1176471,0.3137255,0.627451,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;50;-8329.261,-1976.14;Inherit;True;Property;_MaskMap02;Mask Map 02;204;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;11;-8375.626,-2470.025;Inherit;True;Property;_MaskMap01;Mask Map 01;201;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RegisterLocalVarNode;51;-8118.705,-1970.098;Inherit;False;MaskMap02Tex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.TexturePropertyNode;405;-7289.081,-2353.497;Inherit;True;Property;_MaskMap03;Mask Map 03;206;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RegisterLocalVarNode;12;-8149.914,-2469.857;Inherit;False;MaskMap01Tex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;1366;-8348.26,-2254.953;Inherit;False;Property;_MaskMap01UV;MaskMap01UV;202;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1368;-8319.121,-1791.788;Inherit;False;Property;_MaskMap02UV;MaskMap02UV;205;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;316;-4380.718,-6597.672;Inherit;False;7732.825;5126.378;Comment;35;1135;937;1078;1044;1010;976;933;464;381;956;513;952;948;944;361;341;894;960;940;597;964;317;647;315;1169;1207;1241;1286;1449;1615;1719;1720;1721;1722;1726;Packed Map Channel Selector;0.4103774,0.8871209,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;411;-7063.568,-2354.629;Inherit;False;MaskMap03Tex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;1370;-7280.11,-2174.296;Inherit;False;Property;_MaskMap03UV;MaskMap03UV;207;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1604;-8141.204,-2278.725;Inherit;False;UV Channel Select;-1;;5486;756457f5c2398324eb74b053d38f83bd;1,50,1;2;2;SAMPLER2D;0;False;14;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;1605;-8112.065,-1815.56;Inherit;False;UV Channel Select;-1;;5487;756457f5c2398324eb74b053d38f83bd;1,50,1;2;2;SAMPLER2D;0;False;14;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;9;-7905.46,-2348.815;Inherit;True;Property;;;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;52;-7912.179,-1969.705;Inherit;True;Property;;;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;413;-7287.021,-1938.036;Inherit;True;Property;_MaskMap04;Mask Map 04;208;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1371;-7278.111,-1747.296;Inherit;False;Property;_MaskMap04UV;MaskMap04UV;209;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;315;-4246.671,-6449.68;Inherit;False;2300.768;603.0762;Comment;32;427;423;403;425;426;424;421;422;297;292;298;293;232;308;314;309;307;312;313;310;306;302;311;305;304;301;303;404;299;962;963;965;Metallic;1,1,1,1;0;0
Node;AmplifyShaderEditor.FunctionNode;1606;-7073.054,-2198.068;Inherit;False;UV Channel Select;-1;;5488;756457f5c2398324eb74b053d38f83bd;1,50,1;2;2;SAMPLER2D;0;False;14;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;295;-7568.321,-2461.267;Inherit;False;MM01RGBA;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;296;-7575.453,-2078.679;Inherit;False;MM02RGBA;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;406;-6849.04,-2354.236;Inherit;True;Property;;;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;419;-7054.808,-1939.169;Inherit;False;MaskMap04Tex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.FunctionNode;1607;-7071.055,-1771.068;Inherit;False;UV Channel Select;-1;;5489;756457f5c2398324eb74b053d38f83bd;1,50,1;2;2;SAMPLER2D;0;False;14;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;292;-4133.605,-6208.204;Inherit;False;Property;_MetallicMask;Metallic Map;214;2;[Header];[Enum];Create;False;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;1;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;647;750.3251,-5070.755;Inherit;False;2359.104;566.9634;Comment;32;676;675;674;673;672;671;670;669;668;667;666;665;664;663;662;661;660;659;658;657;656;655;654;653;652;651;650;649;648;938;939;941;Emission Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;597;711.3701,-5770.148;Inherit;False;2359.104;566.9634;Comment;32;626;625;624;623;622;621;620;619;618;617;616;615;614;613;612;611;610;609;608;607;606;605;604;603;602;601;600;599;598;942;943;945;Detail Normal;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;412;-6513.314,-2463.209;Inherit;False;MM03RGBA;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;414;-6848.282,-1938.776;Inherit;True;Property;;;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;293;-4079.985,-6370.136;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;297;-4076.98,-6293.908;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;421;-3953.487,-6208.851;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;424;-3955.487,-6139.851;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;648;845.573,-4839.015;Inherit;False;Property;_EmissionMaskMap;Emission Mask Map;211;1;[Enum];Create;False;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;598;805.618,-5538.406;Inherit;False;Property;_DetailNormalMask;Detail Normal Mask;277;1;[Enum];Create;True;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;420;-6512.555,-2047.747;Inherit;False;MM04RGBA;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;298;-3778.752,-6326.452;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;425;-3784.487,-6140.851;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;422;-3793.487,-6208.851;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;426;-3783.487,-6069.851;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;649;1104.375,-4836.682;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;650;1102.375,-4767.682;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;651;815.198,-4913.717;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;652;812.192,-4989.945;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;599;1065.42,-5536.073;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;600;1063.42,-5467.073;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;602;773.2371,-5689.338;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;601;776.243,-5613.11;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;427;-3520.487,-6136.851;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;423;-3533.487,-6206.851;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;403;-3521.522,-6322.587;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;964;-3520.684,-5909.844;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;653;1273.375,-4768.682;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;654;1264.375,-4836.682;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;655;1274.375,-4697.682;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;656;1104.2,-4964.717;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;603;1234.42,-5468.073;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;604;1225.42,-5536.073;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;605;1235.42,-5397.073;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;606;1065.245,-5664.11;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;404;-3264.522,-6324.587;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;963;-3521.684,-5981.844;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;962;-3522.684,-6056.844;Inherit;False;Constant;_Float37;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;657;1537.375,-4764.682;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;658;1524.375,-4834.682;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;659;1536.34,-4950.417;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;940;1540.401,-4542.18;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;607;1498.42,-5464.073;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;608;1485.42,-5534.073;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;609;1497.385,-5649.809;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;944;1498.448,-5240.458;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;965;-3285.377,-6038.845;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;299;-3255.752,-6122.452;Inherit;False;Property;_MetallicChannel;Metallic Channel;217;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;660;1793.34,-4952.417;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;938;1538.401,-4689.18;Inherit;False;Constant;_Float31;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;939;1539.401,-4614.18;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1449;-1708.96,-2279.041;Inherit;False;2300.768;603.0762;Comment;33;1482;1481;1480;1479;1478;1477;1476;1475;1474;1473;1472;1471;1470;1469;1468;1467;1466;1465;1464;1463;1462;1461;1460;1459;1458;1457;1456;1455;1454;1453;1452;1451;1450;Metallic;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;942;1496.448,-5387.458;Inherit;False;Constant;_Float32;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;943;1497.448,-5312.458;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;610;1754.385,-5651.809;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;235;-9424.979,-6467.464;Inherit;False;4467.322;2418.005;Comment;50;686;685;677;281;340;338;627;280;258;268;245;234;212;211;743;747;749;750;751;752;753;756;759;1488;42;1497;43;1575;1584;1389;1673;1675;1676;1677;1678;1679;1680;1681;1682;1683;1685;10;225;230;228;1707;1710;247;1724;1385;Workflow Switcher;0.6670364,1,0.3820755,1;0;0
Node;AmplifyShaderEditor.SwizzleNode;303;-3056.753,-6395.452;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;301;-3042.753,-6122.452;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;304;-3056.753,-6324.452;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;305;-3039.753,-6251.452;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;311;-3042.753,-6053.453;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;341;-4247.848,-5776.717;Inherit;False;2335.168;579.5806;Comment;32;345;343;342;344;454;453;452;451;450;449;448;447;446;257;360;359;358;357;356;355;354;353;352;351;350;349;348;347;346;950;951;953;Occlusion;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;661;1743.682,-4747.426;Inherit;False;Property;_EmissionMaskChannel;Emission Mask Channel;212;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;941;1775.708,-4671.181;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1450;-1595.894,-2037.564;Inherit;False;Property;_FleckMetallicMap;Fleck Metallic Map;215;1;[Enum];Create;True;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;945;1733.755,-5369.459;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;611;1704.727,-5446.819;Inherit;False;Property;_DetailNormalChannel;Detail Normal Channel;278;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;592;-8344.867,-1656.893;Inherit;True;Property;_DetailNormal;DetailNormal;275;1;[Header];Create;False;1;Detail Normal;0;0;False;0;False;None;None;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.LerpOp;302;-2838.753,-6376.452;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;306;-2846.753,-6253.452;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;310;-2834.753,-6181.452;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;313;-2850.753,-6030.453;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;312;-2849.753,-6103.452;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;211;-5442.605,-6355.02;Inherit;False;Property;_Workflow;Workflow;200;2;[Header];[Enum];Create;True;0;4;Furality;3;Metallic;0;Specular;1;Packed;2;0;True;0;False;3;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;344;-4229.436,-5529.791;Inherit;False;Property;_OcclusionMap;Occlusion Map;225;1;[Enum];Create;False;1;     Occlusion;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;662;1998.581,-5016.527;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;663;2012.581,-4743.527;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;664;1998.581,-4945.527;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;665;2015.581,-4872.527;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;666;2012.581,-4674.528;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;894;-4235.365,-4395.64;Inherit;False;2359.104;566.9634;Comment;18;923;907;906;905;904;903;902;901;900;899;898;897;896;895;926;927;928;929;Specular Tint;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;1451;-1542.274,-2199.497;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1452;-1539.269,-2123.269;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1453;-1415.776,-2038.211;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1454;-1417.776,-1969.212;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;613;1973.626,-5442.92;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;615;1976.626,-5571.92;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;616;1973.626,-5373.921;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;612;1959.626,-5715.92;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;614;1959.626,-5644.92;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;20;-9387.941,-1963.747;Inherit;True;Property;_BumpMap;Normal Map;198;0;Create;False;0;0;0;False;0;False;None;None;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RegisterLocalVarNode;593;-8118.025,-1659.884;Inherit;False;DetailNormalTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;1393;-8326.467,-1367.27;Inherit;False;Property;_DetailUV;DetailUV;203;1;[Enum];Create;False;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;212;-5281.526,-6370.381;Inherit;False;Workflow;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;307;-2609.753,-6374.452;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;309;-2618.753,-6255.452;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;314;-2619.753,-6184.452;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;446;-3942.642,-5539.277;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;447;-3944.642,-5470.277;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;342;-4231.211,-5608.396;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;343;-4234.216,-5684.624;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;587;-9486.039,-1586.093;Inherit;True;Property;_EmissionMap;EmissionMap;196;1;[Header];Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.LerpOp;667;2216.581,-4997.527;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;668;2208.581,-4874.527;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;669;2220.581,-4802.527;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;670;2204.581,-4651.528;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;671;2205.581,-4724.527;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;361;-1758.47,-5775.966;Inherit;False;2381.211;559.9796;Comment;32;364;379;363;362;445;444;443;442;441;440;439;438;437;279;378;377;376;375;374;373;372;371;370;369;368;367;366;365;380;946;947;949;Reflection Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;1455;-1241.041,-2155.813;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1456;-1246.776,-1970.212;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1457;-1255.776,-2038.211;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1458;-1245.776,-1899.212;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21;-9152.033,-1969.67;Inherit;False;NormalTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.LerpOp;617;2177.626,-5696.92;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;618;2169.626,-5573.92;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;619;2181.626,-5501.92;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;620;2165.626,-5350.921;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;621;2166.626,-5423.92;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;38;-9421.629,-1771.309;Inherit;False;Property;_BumpScale;Normal Scale;199;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;594;-8378.557,-1464.456;Inherit;False;Property;_BumpScale1;Detail Normal Scale;276;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1610;-8110.467,-1390.27;Inherit;False;UV Channel Select;-1;;5577;756457f5c2398324eb74b053d38f83bd;1,50,1;2;2;SAMPLER2D;0;False;14;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;16;-7568.299,-2393.18;Inherit;False;MM01R;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;308;-2345.753,-6374.452;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;227;-9491.711,-6115.233;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;448;-3773.643,-5471.277;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;449;-3782.643,-5539.277;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;450;-3772.643,-5400.277;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;345;-3942.209,-5659.396;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;895;-4140.117,-4163.898;Inherit;False;Property;_SpecularTintMap;Specular Tint Map;243;2;[Header];[Enum];Create;True;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;234;-9129.711,-6282.38;Inherit;False;1120.352;378.5132;Comment;11;226;229;233;231;694;695;696;224;1705;1706;1708;Metallics;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;588;-9267.763,-1589.364;Inherit;False;EmissionTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.LerpOp;672;2445.581,-4995.527;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;673;2436.581,-4876.527;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;674;2435.581,-4805.527;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;379;-1643.19,-5541.258;Inherit;False;Property;_ReflectionMask;Reflection Mask;227;1;[Enum];Create;False;1;     Reflection Mask;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1207;-1759.492,-2947.259;Inherit;False;2359.104;566.9634;Comment;33;1240;1239;1238;1237;1236;1235;1234;1233;1232;1231;1230;1229;1228;1227;1226;1225;1224;1223;1222;1221;1220;1219;1218;1217;1216;1215;1214;1213;1212;1211;1210;1209;1208;Glint Smoothness;1,1,1,1;0;0
Node;AmplifyShaderEditor.SaturateNode;1459;-982.7763,-1966.212;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1460;-995.7762,-2036.211;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1461;-983.8112,-2151.947;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1462;-982.9733,-1739.205;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;896;-3881.313,-4161.565;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;897;-3883.313,-4092.565;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;898;-4170.492,-4238.602;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;22;-8945.507,-1969.277;Inherit;True;Property;;;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;622;2406.626,-5694.92;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;623;2397.626,-5575.92;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;624;2396.626,-5504.92;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;595;-7892.499,-1652.492;Inherit;True;Property;;;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;232;-2187.904,-6376.496;Inherit;False;MetallicChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;228;-9314.673,-6114.867;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;225;-9344.359,-6234.38;Inherit;False;16;MM01R;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;230;-9308.673,-6042.867;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;451;-3509.644,-5467.277;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;452;-3522.644,-5537.277;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;453;-3510.678,-5653.013;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;952;-3484.543,-5237.786;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;899;-4173.498,-4314.83;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;589;-9035.837,-1591.692;Inherit;True;Property;;;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;645;-9009.097,-1770.446;Inherit;False;Property;_EmissionColor;Emission Tint;197;1;[HDR];Create;False;0;0;0;False;0;False;0,0,0,0;0.01,0.01,0.01,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;675;2709.58,-4995.527;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;4;-10050.54,-2432.819;Inherit;True;Property;_MainTex;Main Tex;195;1;[Header];Create;True;1;Main;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SaturateNode;437;-1393.861,-5538.419;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;438;-1395.861,-5469.419;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;362;-1673.565,-5615.962;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;363;-1676.57,-5692.19;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1208;-1664.244,-2715.518;Inherit;False;Property;_GlintGlossMap;Glint Gloss Map;269;2;[Header];[Enum];Create;True;1;;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1463;-726.8112,-2153.947;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1464;-983.9733,-1811.205;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1465;-984.9733,-1886.205;Inherit;False;Constant;_Float47;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;900;-3712.313,-4093.565;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;901;-3721.313,-4161.565;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;903;-3881.488,-4289.602;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;902;-3711.313,-4022.564;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;627;-7725.081,-5189.773;Inherit;False;1085.658;378.5127;Comment;11;642;643;639;641;637;640;638;1580;1581;1582;1583;Detail Normal;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;625;2670.625,-5694.92;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;23;-8626.42,-1964.787;Inherit;False;Normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;596;-7588.001,-1659.933;Inherit;False;DetailNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;226;-9112.358,-6234.38;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;233;-9142.434,-6116.027;Inherit;False;232;MetallicChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;231;-9084.673,-6041.867;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1707;-9082.383,-5965.946;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;454;-3253.678,-5655.013;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;950;-3486.543,-5384.786;Inherit;False;Constant;_Float34;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;951;-3485.543,-5309.786;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;646;-8733.097,-1650.446;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;676;2871.413,-4990.152;Inherit;False;EmissionMaskChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;6;-9833.266,-2435.09;Inherit;False;MainTexTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SaturateNode;439;-1224.861,-5470.419;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;440;-1233.861,-5538.419;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;441;-1223.861,-5399.419;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;364;-1384.564,-5666.962;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1209;-1405.442,-2713.185;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1210;-1407.442,-2644.185;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1211;-1694.619,-2790.221;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1212;-1697.625,-2866.449;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1466;-747.6662,-1868.206;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1467;-718.0412,-1951.813;Inherit;False;Property;_FleckMetallicChannel;Fleck Metallic Channel;216;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;513;717.332,-6413.825;Inherit;False;2359.104;566.9634;Comment;32;542;541;540;539;538;537;536;535;534;533;532;531;530;529;528;527;526;525;524;523;522;521;520;519;518;517;516;515;514;954;955;957;Glint;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;905;-3461.313,-4159.565;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;906;-3449.348,-4275.301;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;928;-3452.368,-4021.414;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;904;-3448.313,-4089.565;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;626;2818.157,-5694.745;Inherit;False;DetailNormalChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;640;-7691.354,-5053.058;Inherit;False;23;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;638;-7692.354,-4980.058;Inherit;False;596;DetailNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;229;-8855.673,-6233.867;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1708;-8927.383,-5967.946;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1706;-8876.383,-6116.946;Inherit;False;16;MM01R;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;953;-3249.236,-5366.787;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;346;-3222.528,-5449.489;Inherit;False;Property;_OcclusionChannel;Occlusion Channel;226;1;[Enum];Create;False;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;590;-8580.003,-1649.685;Inherit;False;EmissionRGBA;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;690;-9368.858,-2113.604;Inherit;False;676;EmissionMaskChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;5;-9617.34,-2434.419;Inherit;True;Property;;;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;693;-9348.517,-2186.109;Inherit;False;Property;_ReplaceBaseColor;Replace Base Color;210;1;[ToggleUI];Create;True;1;Emission;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;442;-960.8607,-5466.419;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;443;-973.8607,-5536.419;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;444;-961.8956,-5652.155;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;948;-955.8508,-5236.188;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1213;-1236.442,-2645.185;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1214;-1245.442,-2713.185;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1215;-1405.617,-2841.221;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1216;-1235.442,-2574.186;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1468;-519.0422,-2224.813;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1469;-505.0422,-1951.813;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1470;-519.0422,-2153.813;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1471;-502.0422,-2080.813;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1472;-505.0422,-1882.814;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;514;811.58,-6182.083;Inherit;False;Property;_GlintMap;Glint Map;273;1;[Enum];Create;True;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;907;-3192.348,-4277.301;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;927;-3194.368,-4160.414;Inherit;False;Constant;_Float27;Float 27;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;929;-3199.368,-4088.414;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1362;-9628.442,-2231.165;Inherit;False;Property;_Color;Color;180;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BlendNormalsNode;637;-7484.354,-5034.058;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;641;-7497.354,-4939.058;Inherit;False;626;DetailNormalChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;642;-7454.354,-5107.058;Inherit;False;23;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;694;-8224.161,-6000.491;Inherit;False;Property;_MetallicMult;MetallicMult;213;0;Create;True;0;0;0;False;0;False;1;1.75;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1705;-8611.383,-6231.946;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;347;-3023.529,-5722.489;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;348;-3009.529,-5449.489;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;349;-3023.529,-5651.489;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;350;-3006.529,-5578.489;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;351;-3009.529,-5380.49;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;692;-9116.776,-2147.149;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1361;-9269.643,-2432.665;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;695;-8187.161,-6118.491;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;946;-957.8508,-5383.188;Inherit;False;Constant;_Float33;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;947;-956.8508,-5308.188;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;445;-704.8955,-5654.155;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1217;-985.4424,-2711.185;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1218;-973.4763,-2826.92;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1219;-972.4424,-2641.185;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1220;-968.8423,-2425.43;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1473;-301.0422,-2205.813;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1474;-309.0422,-2082.813;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1475;-297.0422,-2010.813;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1476;-313.0422,-1859.814;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1477;-312.0422,-1932.813;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;515;1071.382,-6179.75;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;516;1069.382,-6110.75;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;517;782.205,-6256.787;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;518;779.199,-6333.015;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;926;-2986.368,-4278.414;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;202;3688.677,-6496.571;Inherit;False;4100.554;2387.413;Comment;44;200;548;581;553;579;198;176;776;783;775;790;793;796;797;802;803;804;820;821;1127;1126;1125;1128;1129;1333;1429;1430;1411;1427;192;1573;1585;1586;1587;1588;1654;1655;1518;1589;1687;1688;1686;1689;1690;Lighting;1,1,0,1;0;0
Node;AmplifyShaderEditor.LerpOp;639;-7182.354,-5054.058;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;317;-1772.494,-6424.138;Inherit;False;2399.516;577.9918;Comment;32;321;320;319;318;436;435;434;433;432;431;430;429;428;244;336;335;334;333;332;331;330;329;328;327;326;325;324;323;322;958;959;961;Gloss;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;352;-2805.529,-5703.489;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;353;-2813.529,-5580.489;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;354;-2801.529,-5508.489;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;355;-2817.529,-5357.49;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;356;-2816.529,-5430.489;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;691;-9273.063,-2328.339;Inherit;False;590;EmissionRGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;1615;741.7781,-2263.086;Inherit;False;2359.104;566.9634;Comment;18;1633;1632;1631;1630;1629;1628;1627;1626;1625;1624;1623;1622;1621;1620;1619;1618;1617;1616;Specular Tint;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;268;-7545.961,-6326.3;Inherit;False;1770.602;430.8945;Comment;23;40;222;41;2;223;220;260;262;263;264;266;267;337;924;925;1387;1489;1487;1386;1510;1511;1576;1645;Specular Color;1,1,1,1;0;0
Node;AmplifyShaderEditor.SaturateNode;696;-8189.152,-6193.963;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;949;-720.5435,-5365.188;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;380;-745.1068,-5447.738;Inherit;False;Property;_ReflectionMaskChannel;Reflection Mask Channel;228;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1221;-721.4775,-2824.92;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1222;-970.8423,-2572.43;Inherit;False;Constant;_Float44;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1223;-969.8423,-2497.43;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1478;-72.04218,-2203.813;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1479;-81.04218,-2084.813;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1480;-82.04218,-2013.813;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1497;-6591.523,-4674.796;Inherit;False;1120.352;378.5132;Comment;12;1509;1508;1507;1505;1504;1503;1502;1501;1500;1499;1498;1448;Fleck Metallics;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;689;-8836.897,-2440.347;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;519;1240.382,-6111.75;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;520;1231.382,-6179.75;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;521;1241.382,-6040.75;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;522;1071.207,-6307.787;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CustomExpressionNode;775;6590.369,-5429.637;Inherit;False;return half3(unity_SHAr.r,unity_SHAg.g,unity_SHAb.b)@;3;Create;0;ProbeDir;False;True;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1580;-7021.11,-5141.565;Inherit;False;InitialNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;320;-1659.98,-6172.686;Inherit;False;Property;_GlossMap;Gloss Map;222;1;[Enum];Create;False;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;357;-2576.529,-5701.489;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;358;-2585.529,-5582.489;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;359;-2586.529,-5511.489;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;923;-2787.475,-4273.737;Inherit;False;SpecularTintCol;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1616;837.0261,-2031.344;Inherit;False;Property;_FleckColorMap;Fleck Color Map;242;1;[Enum];Create;True;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7;-8643.507,-2426.412;Inherit;False;MainTexRGBA;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;222;-7478.552,-6120.153;Inherit;False;Property;_SpecularTint;Specular Tint;241;0;Create;True;1;Specular Color;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;224;-8216.358,-6264.38;Inherit;False;Metallic;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;366;-474.1073,-5448.738;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;368;-471.1073,-5577.738;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;369;-474.1073,-5379.739;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;365;-488.1073,-5721.738;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;367;-488.1073,-5650.738;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1224;-727.8425,-2554.43;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1225;-766.1357,-2623.93;Inherit;False;Property;_GlintGlossChannel;Glint Gloss Channel;270;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1481;191.9578,-2203.813;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1498;-6541.523,-4505.649;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;523;1504.382,-6107.75;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;524;1491.382,-6177.75;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;525;1503.347,-6293.486;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;956;1510.292,-5879.999;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;821;6698.982,-5429.662;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1688;7065.715,-4917.283;Inherit;False;1580;InitialNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;428;-1399.981,-6177.461;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;429;-1401.981,-6108.461;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;318;-1690.355,-6247.39;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;319;-1693.36,-6323.618;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;258;-6192.622,-5750.287;Inherit;False;1102.033;405.5127;Comment;12;252;254;253;250;249;246;1390;1648;1723;1725;248;255;Occlusion;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;360;-2312.529,-5701.489;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;924;-7478.273,-5952.07;Inherit;False;923;SpecularTintCol;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;247;-6456.622,-5567.141;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1617;1095.83,-2029.011;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1618;1093.83,-1960.011;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1619;806.6511,-2106.048;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1620;803.6453,-2182.276;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;41;-7466.961,-6185.3;Inherit;False;224;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;925;-7249.273,-6124.07;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;40;-7495.961,-6259.299;Inherit;False;7;MainTexRGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;370;-270.1074,-5702.738;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;371;-278.1074,-5579.738;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;372;-266.1074,-5507.738;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;373;-282.1074,-5356.739;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;374;-281.1074,-5429.738;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1226;-511.2365,-2893.031;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1227;-497.2365,-2620.031;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1228;-511.2365,-2822.031;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1229;-494.2365,-2749.031;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1230;-497.2365,-2551.032;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1482;349.8067,-2205.856;Inherit;False;FleckMetallicChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1499;-6394.172,-4624.796;Inherit;False;16;MM01R;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1500;-6358.485,-4433.283;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1501;-6364.485,-4505.283;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;526;1760.347,-6295.486;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;954;1508.292,-6026.999;Inherit;False;Constant;_Float35;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;955;1509.292,-5951.999;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1687;7244.715,-4917.283;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.IndirectDiffuseLighting;790;6803.247,-5221.965;Inherit;False;World;1;0;FLOAT3;0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;430;-1230.981,-6109.461;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;431;-1239.981,-6177.461;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;432;-1229.981,-6038.461;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;321;-1401.354,-6298.39;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;257;-2145.996,-5710.704;Inherit;False;OcclusionChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1385;-7458.38,-5866.48;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;249;-6273.584,-5495.774;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;217;-7577.012,-1918.816;Inherit;False;MM02G;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1621;1264.83,-1961.011;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1622;1255.83,-2029.011;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1623;1095.655,-2157.048;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1624;1265.83,-1890.01;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;223;-7072.227,-6130.498;Inherit;False;FLOAT3;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;375;-41.10738,-5700.738;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;376;-50.1074,-5581.738;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;377;-51.10739,-5510.738;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1231;-293.2363,-2874.031;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1232;-301.2363,-2751.031;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1233;-289.2363,-2679.031;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1234;-305.2363,-2528.032;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1235;-304.2363,-2601.031;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1502;-6162.171,-4624.796;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1504;-6134.485,-4432.283;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1503;-6192.246,-4506.443;Inherit;False;1482;FleckMetallicChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;527;1710.689,-6090.496;Inherit;False;Property;_GlintChannel;Glint Channel;274;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;957;1745.599,-6009;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CustomExpressionNode;1686;7428.715,-4918.283;Inherit;False;half4 skyData = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, uvw, 5)@ //('cubemap', 'sample coordinate', 'map-map level')$         half3 skyColor = DecodeHDR (skyData, unity_SpecCube0_HDR)@$         return half4(skyColor, 1.0)@;3;Create;1;True;uvw;FLOAT3;0,0,0;In;;Inherit;False;sampleReflectionProbe;True;False;0;;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1690;7465.978,-4850.106;Inherit;False;Constant;_Float52;Float 52;119;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1693;7659.978,-4841.106;Inherit;False;IsLumaGlow;-1;;7299;bf6d155395fb5534588ad19d7e6ff302;0;0;1;INT;0
Node;AmplifyShaderEditor.FunctionNode;1695;7658.978,-4771.106;Inherit;False;IsAudioLink;-1;;7386;e83fef6181013ba4bacf30a3d9a31d37;0;0;1;INT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;820;7081.944,-5222.472;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;433;-966.9808,-6105.461;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;434;-979.9808,-6175.461;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;435;-968.0157,-6291.197;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;960;-959.1297,-5887.784;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;260;-6831.678,-6104.771;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;2;-7249.962,-6258.075;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1386;-7178.228,-5995.815;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;216;-7569.49,-2314.261;Inherit;False;MM01G;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1724;-6048.134,-5421.394;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;253;-6049.585,-5494.774;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;255;-6094.73,-5681.594;Inherit;False;217;MM02G;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;252;-6096.346,-5586.934;Inherit;False;257;OcclusionChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1390;-5562.837,-5443.929;Inherit;False;Property;_OcclusionPower;Occlusion Power;224;0;Create;False;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1625;1515.83,-2027.011;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1626;1527.796,-2142.747;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1627;1524.776,-1888.86;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1628;1528.83,-1957.011;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1387;-7022.228,-5997.815;Inherit;False;FLOAT3;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;220;-6897.55,-6222.153;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;263;-6654.64,-6104.406;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;262;-6648.64,-6032.406;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;378;222.8928,-5700.738;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1236;-64.23628,-2872.031;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1237;-73.23628,-2753.031;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1238;-74.23628,-2682.031;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1505;-5905.485,-4624.283;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;528;1965.588,-6359.597;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;529;1979.588,-6086.597;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;530;1965.588,-6288.597;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;531;1982.588,-6215.597;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;532;1979.588,-6017.598;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1448;-5934.668,-4437.196;Inherit;False;Property;_FleckMetallic;FleckMetallic;172;0;Create;True;0;0;0;False;0;False;1;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1689;7708.978,-4969.106;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMinOpNode;1696;7858.978,-4821.106;Inherit;False;2;0;INT;0;False;1;INT;0;False;1;INT;0
Node;AmplifyShaderEditor.LerpOp;436;-711.0158,-6293.197;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;958;-961.1297,-6034.784;Inherit;False;Constant;_Float36;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;959;-960.1297,-5959.784;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1725;-5861.134,-5491.394;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;254;-5825.585,-5682.774;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;248;-5846.271,-5560.287;Inherit;False;216;MM01G;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1648;-5273.817,-5443.662;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.0001;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;793;6740.318,-5074.974;Inherit;False;Detect Light;-1;;7387;ca949bbda0856d040a3b3a723d67d4ef;0;0;2;FLOAT;0;FLOAT;10
Node;AmplifyShaderEditor.RangedFloatNode;803;6839.116,-4968.344;Inherit;False;Constant;_Float28;Float 27;49;0;Create;True;0;0;0;False;0;False;0.9;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;796;6501.003,-5354.663;Inherit;False;True;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LerpOp;1629;1784.796,-2144.747;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1630;1782.776,-2027.86;Inherit;False;Constant;_Float49;Float 27;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1631;1777.776,-1955.86;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;264;-6452.324,-6223.918;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;266;-6425.638,-5983.406;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;280;-7680.977,-5719.77;Inherit;False;1085.658;378.5127;Comment;9;269;271;272;273;276;278;274;275;277;Reflection Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;279;380.4501,-5703.205;Inherit;False;ReflectionMaskChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1239;148.6765,-2873.49;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1507;-5648.974,-4510.907;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;533;2183.588,-6340.597;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;534;2175.588,-6217.597;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;535;2187.588,-6145.597;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;536;2171.588,-5994.598;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;537;2172.588,-6067.597;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1691;8053.777,-5069.407;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LightColorNode;797;6617.002,-5191.263;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.LerpOp;961;-723.8224,-6016.785;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;322;-682.8263,-6096.91;Inherit;False;Property;_GlossChannel;Gloss Channel;223;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;3;3;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1723;-5610.134,-5679.394;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1389;-5294.837,-5563.929;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;804;7133.717,-5434.745;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1632;1990.776,-2145.86;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;267;-6195.638,-6223.406;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;274;-7281.698,-5551.418;Inherit;False;279;ReflectionMaskChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;176;3788.802,-6379.216;Inherit;False;1688.495;505.423;Comment;13;32;35;34;60;33;1275;1324;1417;1422;1424;1328;780;1412;GlintSpecular;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1240;361.5958,-2866.656;Inherit;False;GlintGlossChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1508;-5650.964,-4586.379;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;538;2412.588,-6338.597;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;539;2403.588,-6219.597;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;540;2402.588,-6148.597;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;802;7567.615,-5261.544;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SwizzleNode;323;-483.8268,-6369.91;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;324;-469.8268,-6096.91;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;325;-483.8268,-6298.91;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;326;-466.8268,-6225.91;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;327;-469.8268,-6027.911;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1633;2189.669,-2141.183;Inherit;False;FleckTintCol;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1489;-5899.582,-6176.917;Inherit;False;InitialSpec;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;277;-6837.318,-5668.423;Inherit;False;ReflectionMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;33;3908.608,-6210.92;Inherit;False;1240;GlintGlossChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1509;-5678.171,-4656.796;Inherit;False;MetallicForFleck;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1510;-7034.496,-6066.408;Inherit;False;GlintSpecCol1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;541;2676.587,-6338.597;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;776;7517.224,-5446.528;Inherit;False;LightDir;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;246;-5332.591,-5673.358;Inherit;False;Occlusion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;60;3849.242,-6282.301;Inherit;False;Property;_GlintGloss;Glint Gloss;268;0;Create;True;0;0;0;False;0;False;0.95;0.8;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;34;3874.565,-6065.255;Inherit;False;Property;_GlintAmount;Glint Amount;271;0;Create;True;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;782;8254.786,-5226.801;Inherit;False;LightCol;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;328;-265.8264,-6350.91;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;329;-273.8264,-6227.91;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;330;-261.8264,-6155.91;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;331;-277.8264,-6004.911;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;332;-276.8264,-6077.91;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1511;-6870.496,-5994.408;Inherit;False;GlintSpecCol2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;1422;4159.723,-6113.592;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1438;4197.736,-6715.53;Inherit;False;277;ReflectionMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;1414;4195.669,-7029.948;Inherit;True;Property;_DictionaryTex;Texture 0;178;0;Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode;1439;4228.549,-6792.672;Inherit;False;246;Occlusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;644;4232.663,-6858.714;Inherit;False;1580;InitialNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1434;4204.447,-7103.763;Inherit;False;1489;InitialSpec;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1275;4289.289,-6227.052;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1483;4658.076,-7027.997;Inherit;False;1509;MetallicForFleck;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1513;4630.721,-6944.256;Inherit;False;1510;GlintSpecCol1;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1515;4897.142,-7071.809;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1514;4883.77,-6943.228;Inherit;False;1511;GlintSpecCol2;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1436;4324.385,-7291.689;Inherit;False;776;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1437;4320.519,-7359.995;Inherit;False;782;LightCol;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1635;4277.722,-7225.604;Inherit;False;1633;FleckTintCol;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1435;4170.602,-7170.005;Inherit;False;7;MainTexRGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;542;2838.419,-6333.222;Inherit;False;GlintChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1241;761.1501,-2935.19;Inherit;False;2359.104;566.9634;Comment;33;1274;1273;1272;1271;1270;1269;1268;1267;1266;1265;1264;1263;1262;1261;1260;1259;1258;1257;1256;1255;1254;1253;1252;1251;1250;1249;1248;1247;1246;1245;1244;1243;1242;Glint Highlight;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1410;4410.086,-6543.163;Inherit;False;Property;_FleckScale;Fleck Scale;175;0;Create;False;0;0;0;False;0;False;500;1500;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1411;4403.586,-6471.663;Inherit;False;Property;_FleckSize;Fleck Size;176;0;Create;False;0;0;0;False;0;False;0.35;0.35;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1424;4350.822,-6087.594;Inherit;False;Property;_GlintTimescale;Glint Timescale;177;0;Create;False;0;0;0;False;0;False;0.001;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;35;3873.565,-5994.255;Inherit;False;Property;_GlintDensity;Glint Density;272;0;Create;True;0;0;0;False;0;False;0.5;41;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;333;-36.8263,-6348.91;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;334;-45.8263,-6229.91;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;335;-46.8263,-6158.91;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1528;5576.223,-6754.175;Inherit;False;542;GlintChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1531;5905.467,-6723.654;Inherit;False;1580;InitialNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;245;-9341.006,-5806.67;Inherit;False;1463.023;341.2168;Comment;13;213;215;214;241;236;243;239;697;698;1684;1709;1711;1712;Gloss;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;336;227.1735,-6348.91;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;238;-9634.963,-5612.329;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1728;4910.676,-6632.703;Inherit;False;SparkleSpec;2;;7489;58aee035235c0c144a49b4bba6f3b797;2,127,1,174,1;21;135;FLOAT;0;False;124;FLOAT3;0,0,0;False;125;FLOAT;0;False;123;FLOAT3;0,0,0;False;102;FLOAT;0;False;63;FLOAT3;0,0,0;False;71;FLOAT3;0,0,0;False;191;FLOAT3;0,0,0;False;72;FLOAT3;0,0,0;False;73;FLOAT3;0,0,0;False;51;SAMPLER2D;0;False;53;FLOAT2;0,0;False;60;FLOAT3;0,0,0;False;74;FLOAT;0;False;75;FLOAT;0;False;59;FLOAT;0;False;62;FLOAT;0;False;57;FLOAT;0;False;54;FLOAT;0;False;58;FLOAT;0;False;55;FLOAT;0;False;7;FLOAT3;210;FLOAT;181;FLOAT3;110;FLOAT3;169;FLOAT4;0;FLOAT4;69;FLOAT3;77
Node;AmplifyShaderEditor.RangedFloatNode;1273;856.3981,-2703.449;Inherit;False;Property;_GlintHighlightMap;Glint Highlight Map;263;2;[Header];[Enum];Create;True;1;;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1529;6094.467,-6632.654;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;18;-7571.474,-2159.141;Inherit;False;MM01A;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;244;390.737,-6352.357;Inherit;False;GlossChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;239;-9458.926,-5610.963;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1242;1115.2,-2701.116;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1243;1113.2,-2632.116;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1244;826.0231,-2778.152;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1245;823.0171,-2854.38;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch;1561;6296.244,-6740.922;Inherit;False;Property;_GlintHighlightToggle1;Glint Highlight;260;0;Create;False;0;0;0;False;0;False;0;0;0;True;_GLINT_HIGHLIGHT_ON;Toggle;2;Key0;Key1;Reference;544;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1674;-9520.13,-5407.657;Inherit;False;1580;InitialNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;242;-9574.1,-5747.827;Inherit;False;244;GlossChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;243;-9300.926,-5610.963;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;236;-9325.322,-5811.18;Inherit;False;18;MM01A;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1710;-9295.779,-5542.52;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1246;1284.2,-2633.116;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1247;1275.2,-2701.116;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1248;1115.025,-2829.152;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1249;1285.2,-2562.117;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1673;-9336.532,-5408.79;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1443;6500.138,-6637.986;Inherit;False;FleckNorm;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;241;-9094.985,-5755.197;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1711;-9090.779,-5566.52;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1712;-9109.779,-5639.52;Inherit;False;18;MM01A;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1250;1535.2,-2699.116;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1251;1547.166,-2814.851;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1252;1548.2,-2629.116;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1253;1551.8,-2413.361;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1135;-4214.269,-3644.863;Inherit;False;2359.104;566.9634;Comment;36;1168;1167;1166;1165;1164;1163;1162;1161;1160;1159;1158;1157;1156;1155;1154;1153;1152;1151;1150;1149;1148;1147;1146;1145;1144;1143;1142;1141;1140;1139;1138;1137;1136;1660;1661;1662;Clear Coat Highlight;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;1491;5232.7,-7033.944;Inherit;False;1489;InitialSpec;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1583;-7199.009,-4937.565;Inherit;False;1443;FleckNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1579;5001.6,-6729.54;Inherit;False;Property;_AffectDiffuseColor;Affect Diffuse Color;169;1;[ToggleUI];Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1582;-7099.009,-4889.565;Inherit;False;Property;_AffectDiffuseNormals;AffectDiffuseNormals;170;1;[ToggleUI];Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1566;5338.969,-6817.645;Inherit;False;Property;_AffectIndirectColor;AffectIndirectColor;171;1;[ToggleUI];Create;False;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DdxOpNode;1675;-9133.217,-5438.194;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DdyOpNode;1676;-9135.217,-5368.194;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1709;-8838.779,-5747.52;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1254;1799.165,-2812.851;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1255;1549.8,-2560.361;Inherit;False;Constant;_Float45;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1256;1550.8,-2485.361;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1136;-4119.021,-3413.121;Inherit;False;Property;_ClearCoatHighlightMap;Clear Coat Highlight Map;246;2;[Header];[Enum];Create;False;1;;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1169;-4211.925,-2949.031;Inherit;False;2359.104;566.9634;Comment;37;1202;1201;1200;1199;1198;1197;1196;1195;1194;1193;1192;1191;1190;1189;1188;1187;1186;1185;1184;1183;1182;1181;1180;1179;1178;1177;1176;1175;1174;1173;1172;1171;1170;1663;1664;1665;1718;Clear Coat Reflection;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;1490;5569.867,-6873.781;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1581;-6904.009,-5028.565;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1578;5216.6,-6663.54;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;214;-8485.32,-5673.946;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;215;-8522.32,-5597.946;Inherit;False;Property;_InvertGloss;Invert Gloss;219;1;[ToggleUI];Create;False;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1677;-8994.217,-5462.194;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1678;-8992.217,-5370.194;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1257;1792.8,-2542.361;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1274;1754.506,-2611.861;Inherit;False;Property;_GlintHighlightChannel;Glint Highlight Channel;265;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1137;-3860.219,-3410.788;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1138;-3862.219,-3341.788;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1139;-4149.396,-3487.825;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1140;-4152.402,-3564.053;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1201;-4116.677,-2717.29;Inherit;False;Property;_ClearCoatReflectionMap;Clear Coat Reflection Map;251;2;[Header];[Enum];Create;False;1;;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1527;6072.512,-6929.836;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;338;-7354.245,-6335.094;Inherit;False;Constant;_Float25;Float 25;21;0;Create;True;0;0;0;False;0;False;0.05;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1584;-6796.209,-5132.434;Inherit;False;Property;_Keyword2;Keyword 2;260;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;544;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1572;5308.327,-6732.049;Inherit;False;FleckShape;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;213;-8266.261,-5749.987;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;698;-8574.068,-5531.772;Inherit;False;Property;_GlossMult;GlossMult;218;0;Create;True;1;Gloss;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1679;-8868.217,-5422.194;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1258;2009.406,-2880.962;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1259;2023.406,-2607.962;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1260;2009.406,-2809.962;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1261;2026.406,-2736.962;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1262;2023.406,-2538.963;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1141;-3691.219,-3342.788;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1142;-3700.219,-3410.788;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1143;-3860.394,-3538.825;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1144;-3690.219,-3271.789;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1170;-3857.875,-2714.957;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1171;-3859.875,-2645.957;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1172;-4147.052,-2791.993;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1173;-4150.058,-2868.221;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;198;3730.206,-5350.383;Inherit;False;1274.357;1203.484;Comment;38;556;190;561;180;555;186;732;181;735;736;560;558;557;44;54;164;46;45;47;761;777;778;784;1331;1340;1343;1205;1332;1329;1330;1276;1134;1133;1132;1131;1130;1516;1731;GGX Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.StaticSwitch;1562;6314.289,-6983.431;Inherit;False;Property;_GlintHighlightToggle2;Glint Highlight;260;0;Create;False;0;0;0;False;0;False;0;0;0;True;_GLINT_HIGHLIGHT_ON;Toggle;2;Key0;Key1;Reference;544;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;340;-7144.714,-6348.828;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1576;-6763.313,-6237.79;Inherit;False;1572;FleckShape;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1573;5356.327,-6454.049;Inherit;False;FleckAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1645;-6761.216,-6171.47;Inherit;False;542;GlintChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1589;3705.477,-5597.418;Inherit;False;1580;InitialNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;697;-8128.068,-5668.772;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;643;-6711.354,-5034.058;Inherit;False;NormalFinal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;1680;-8750.217,-5423.194;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1682;-8762.217,-5353.194;Inherit;False;Constant;_Float50;Float 50;119;0;Create;True;0;0;0;False;0;False;0.333;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1263;2227.406,-2861.962;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1264;2219.406,-2738.962;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1265;2231.406,-2666.962;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1266;2215.406,-2515.963;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1267;2216.406,-2588.962;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;760;-9279.985,-4760.734;Inherit;False;2490.12;632.1313;Comment;9;744;748;754;757;758;741;746;755;742;Clear Coat Normal;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;1145;-3440.219,-3408.788;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1146;-3428.253,-3524.524;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1148;-3423.619,-3123.034;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1147;-3427.219,-3338.788;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1174;-3688.875,-2646.957;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1175;-3697.875,-2714.957;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1176;-3858.05,-2842.993;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1177;-3687.875,-2575.958;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1486;6532.272,-6913.082;Inherit;False;GlintSpecColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;337;-6898.245,-6304.094;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1577;-6891.313,-6408.79;Inherit;False;1573;FleckAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1646;-6572.216,-6266.47;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1585;3879.677,-5615.619;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.GetLocalVarNode;45;3865.577,-5128.354;Inherit;False;643;NormalFinal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PowerNode;1681;-8547.217,-5422.194;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1684;-8131.18,-5567.124;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1268;2456.406,-2859.962;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1269;2447.406,-2740.962;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1270;2446.406,-2669.962;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;748;-9062.287,-4579.181;Inherit;False;21;NormalTex;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;746;-9217.125,-4507.811;Inherit;False;Property;_ClearCoatNormalScale;Clear Coat Normal Scale;255;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;742;-8282.306,-4439.367;Inherit;False;Property;_ClearCoatNormal;Clear Coat Normal;257;1;[Enum];Create;False;0;4;None;0;Normal;1;Detail Normal;2;Both;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1149;-3176.254,-3522.524;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1150;-3425.619,-3270.034;Inherit;False;Constant;_Float42;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1151;-3424.619,-3195.034;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1178;-3437.875,-2712.957;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1179;-3425.909,-2828.692;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1180;-3424.875,-2642.957;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1181;-3421.275,-2427.202;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1487;-6188.625,-6079.877;Inherit;False;1486;GlintSpecColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1575;-6534.313,-6410.79;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SwizzleNode;1130;4257.464,-4883.995;Inherit;False;FLOAT;2;1;2;3;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1586;3998.548,-5480.276;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1683;-8304.217,-5453.194;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1271;2669.319,-2861.421;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;744;-8811.566,-4707.837;Inherit;False;Constant;_Vector2;Vector 2;47;0;Create;True;0;0;0;False;0;False;0,0,1;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SamplerNode;747;-8847.124,-4556.912;Inherit;True;Property;_TextureSample0;Texture Sample 0;48;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;754;-9100.888,-4361.603;Inherit;False;593;DetailNormalTex;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SaturateNode;749;-8075.73,-4441.332;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;751;-8074.73,-4369.332;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;755;-9213.971,-4435.162;Inherit;False;Property;_ClearCoatDetailNormalScale;Clear Coat Detail Normal Scale;256;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1152;-3182.619,-3252.034;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1153;-3220.912,-3321.534;Inherit;False;Property;_ClearCoatHighlightChannel;Clear Coat Highlight Channel;247;1;[Enum];Create;False;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1182;-3173.91,-2826.692;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1183;-3423.275,-2574.202;Inherit;False;Constant;_Float43;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1184;-3422.275,-2499.202;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1488;-5875.582,-6081.917;Inherit;False;Property;_Keyword1;Keyword 1;260;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;544;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1574;-6318.025,-6401.966;Inherit;False;Property;_Keyword0;Keyword 0;260;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;544;True;True;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.NegateNode;1131;4417.494,-4877.76;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwitchByFaceNode;1587;4147.147,-5513.53;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1685;-8147.58,-5456.224;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1272;2882.238,-2854.587;Inherit;False;GlintHighlightChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;753;-8853.027,-4353.031;Inherit;True;Property;_TextureSample1;Texture Sample 1;48;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;757;-7906.352,-4294.605;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;752;-7891.729,-4366.332;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;743;-7800.107,-4707.366;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SwizzleNode;1154;-2966.013,-3590.635;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1155;-2952.013,-3317.635;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1156;-2966.013,-3519.635;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1157;-2949.013,-3446.635;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1158;-2952.013,-3248.636;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1185;-3180.275,-2556.202;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1200;-3218.568,-2625.702;Inherit;False;Property;_ClearCoatReflectionChannel;Clear Coat Reflection Channel;253;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;42;-5693.358,-6085.401;Inherit;False;SpecularColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;43;-6000.959,-6400.3;Inherit;False;Albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SwizzleNode;1133;4383.202,-4967.127;Inherit;False;FLOAT2;0;1;2;3;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SwitchByFaceNode;1132;4566.093,-4911.013;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;735;3793.667,-4311.217;Inherit;False;Property;_GlintHighlight;Glint Highlight;262;0;Create;True;0;0;0;False;0;False;0.5;0.565;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;556;3843.156,-4238.315;Inherit;False;1272;GlintHighlightChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1588;4350.037,-5621.648;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1430;4552.984,-5536.31;Inherit;False;Property;_AffectIndirect;Affect Indirect;174;1;[ToggleUI];Create;False;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1429;4331.885,-5498.511;Inherit;False;1443;FleckNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;10;-7985.943,-5454.745;Inherit;False;Gloss;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;758;-7764.652,-4292.005;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;750;-7524.228,-4708.031;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode;759;-7561.089,-4578.033;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1159;-2748.013,-3571.635;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1160;-2756.013,-3448.635;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1161;-2744.013,-3376.635;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1162;-2760.013,-3225.636;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1163;-2759.013,-3298.635;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1186;-2963.669,-2894.803;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1187;-2949.669,-2621.803;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1188;-2963.669,-2823.803;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1189;-2946.669,-2750.803;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1190;-2949.669,-2552.804;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1134;4778.083,-4961.931;Inherit;False;FLOAT3;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;558;3841.328,-4820.069;Inherit;False;277;ReflectionMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;560;3844.525,-4447.646;Inherit;False;246;Occlusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;778;4071.688,-4852.028;Inherit;False;776;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;784;4081.196,-4914.008;Inherit;False;782;LightCol;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;736;3846.71,-4379.952;Inherit;False;43;Albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1276;4097.461,-4301.174;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;557;3838.833,-4602.236;Inherit;False;42;SpecularColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;44;3859.084,-5197.928;Inherit;False;43;Albedo;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;777;4099.062,-5309.702;Inherit;False;776;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;783;4095.196,-5378.008;Inherit;False;782;LightCol;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;54;3846.144,-4903.487;Inherit;False;246;Occlusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1427;4783.14,-5667.181;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;46;3840.452,-5058.076;Inherit;False;42;SpecularColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;47;3840.609,-4982.084;Inherit;False;10;Gloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;164;3842.947,-5275.908;Inherit;False;277;ReflectionMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;756;-7311.171,-4708.162;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1164;-2519.013,-3569.635;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1165;-2528.013,-3450.635;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1166;-2529.013,-3379.635;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1191;-2745.669,-2875.803;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1192;-2753.669,-2752.803;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1193;-2741.669,-2680.803;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1194;-2757.669,-2529.804;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1195;-2756.669,-2602.803;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1720;-2804.816,-2340.574;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1729;4306.257,-4514.011;Inherit;False;GGX_Specular_Light;-1;;7495;a8c3189e23c816d4394170a4738b987b;6,318,0,326,0,329,0,322,0,339,1,369,0;12;366;FLOAT3;0,0,0;False;359;FLOAT3;0,0,0;False;338;FLOAT;0;False;328;FLOAT3;0,0,0;False;327;FLOAT3;0,0,0;False;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;317;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;368;FLOAT;0;False;302;FLOAT;0;False;8;FLOAT;358;FLOAT;348;FLOAT3;336;FLOAT3;331;FLOAT3;314;FLOAT3;315;FLOAT3;0;FLOAT;316
Node;AmplifyShaderEditor.FunctionNode;1730;4310.834,-5215.458;Inherit;False;GGX_Specular_Light;-1;;7497;a8c3189e23c816d4394170a4738b987b;6,318,0,326,0,329,0,322,0,339,1,369,0;12;366;FLOAT3;0,0,0;False;359;FLOAT3;0,0,0;False;338;FLOAT;0;False;328;FLOAT3;0,0,0;False;327;FLOAT3;0,0,0;False;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;317;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;368;FLOAT;0;False;302;FLOAT;0;False;8;FLOAT;358;FLOAT;348;FLOAT3;336;FLOAT3;331;FLOAT3;314;FLOAT3;315;FLOAT3;0;FLOAT;316
Node;AmplifyShaderEditor.CommentaryNode;553;5088.034,-4843.559;Inherit;False;1425.021;451.9258;Comment;16;499;495;500;549;762;565;1204;1342;507;508;506;504;505;501;1341;1203;Indirect Clear Coat;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;741;-7019.007,-4706.365;Inherit;False;ClearCoatNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1167;-2306.1,-3571.094;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1196;-2516.669,-2873.803;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1197;-2525.669,-2754.803;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1198;-2526.669,-2683.803;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1721;-2622.816,-2370.574;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;464;-1741.496,-5061.692;Inherit;False;2359.104;566.9634;Comment;37;493;492;491;490;489;488;487;486;485;484;483;482;481;480;479;478;477;476;475;474;473;472;471;470;469;468;467;466;465;934;935;936;1713;1716;1717;1714;1715;Clear Coat;1,1,1,1;0;0
Node;AmplifyShaderEditor.DynamicAppendNode;1332;4694.144,-4342.206;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.DynamicAppendNode;1333;4909.079,-5094.867;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;762;5151.165,-4675.066;Inherit;False;741;ClearCoatNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;1661;-2398.751,-3300.649;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1660;-2435.751,-3224.649;Inherit;False;Property;_InvertHighlightGloss;Invert Highlight Gloss;220;1;[ToggleUI];Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1199;-2316.756,-2860.962;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1719;-2787.816,-2429.574;Inherit;False;217;MM02G;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1722;-2469.816,-2339.574;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;465;-1646.248,-4829.951;Inherit;False;Property;_ClearCoatMap;Clear Coat Map;258;1;[Enum];Create;False;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;0;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;579;5503.016,-5905.569;Inherit;False;1349.509;379.459;Comment;15;740;739;572;544;543;547;546;737;545;37;182;177;1653;1517;1671;Final Glint;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;175;5516.828,-6681.481;Inherit;False;GlintSpec;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CommentaryNode;381;-4237.492,-5064.774;Inherit;False;2359.104;566.9634;Comment;32;399;384;383;382;463;462;461;460;459;458;457;456;455;400;291;398;397;396;395;394;393;392;391;390;389;388;387;386;385;930;931;932;Specular Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;732;4763.099,-4432.435;Inherit;False;GlintHighlight;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;186;4660.121,-5014.451;Inherit;False;ggxSpec;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SwizzleNode;1127;5242.624,-4354.962;Inherit;False;FLOAT;2;1;2;3;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1662;-2179.691,-3376.69;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1718;-2527.574,-2544.631;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1727;-2271.177,-2371.583;Inherit;False;Constant;_Float53;Float 53;119;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1665;-2464.352,-2454.149;Inherit;False;Property;_InvertReflectionGloss;InvertReflectionGloss;221;1;[ToggleUI];Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;466;-1387.446,-4827.618;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;467;-1389.446,-4758.618;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;468;-1676.623,-4904.654;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;469;-1679.629,-4980.882;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;399;-4142.244,-4833.032;Inherit;False;Property;_SpecularMask;Specular Mask;239;1;[Enum];Create;False;1;     Specular Mask;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;739;5542.793,-5640.431;Inherit;False;732;GlintHighlight;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;182;5471.016,-5737.019;Inherit;False;186;ggxSpec;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;177;5585.343,-5818.591;Inherit;False;175;GlintSpec;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.NegateNode;1125;5402.654,-4348.727;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1168;-2093.181,-3564.26;Inherit;False;ClearCoatHighlightChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1663;-2323.352,-2618.149;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1726;-2086.177,-2479.583;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;470;-1218.446,-4759.618;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;471;-1227.446,-4827.618;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;472;-1217.446,-4688.618;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;473;-1387.621,-4955.654;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;455;-3883.442,-4830.699;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;456;-3885.442,-4761.699;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;382;-4172.619,-4907.736;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;383;-4175.625,-4983.964;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1518;5974.479,-5504.594;Inherit;False;Constant;_Float48;Float 48;114;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;737;6069.782,-5608.317;Inherit;False;3;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SwitchByFaceNode;1126;5551.253,-4381.98;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1128;5368.362,-4438.094;Inherit;False;FLOAT2;0;1;2;3;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1206;3654.048,-4494.437;Inherit;False;1168;ClearCoatHighlightChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1664;-2104.292,-2694.19;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;498;3661.047,-4569.473;Inherit;False;Property;_ClearCoatHighlight;Clear Coat Highlight;245;0;Create;True;0;0;0;False;0;False;0.9;0.8;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;474;-954.4459,-4755.618;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;475;-967.4459,-4825.618;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;476;-955.481,-4941.354;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;937;-944.4393,-4525.09;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;457;-3714.442,-4762.699;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;458;-3723.442,-4830.699;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;384;-3883.617,-4958.736;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;459;-3713.442,-4691.699;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1517;6240.479,-5605.594;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1671;6077.235,-5698.993;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;555;3857.465,-4742.089;Inherit;False;7;MainTexRGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.DynamicAppendNode;1129;5763.242,-4432.898;Inherit;False;FLOAT3;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1205;3969.048,-4535.437;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1202;-2090.837,-2868.428;Inherit;False;ClearCoatReflectionChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1516;4074.934,-4608.452;Inherit;False;1489;InitialSpec;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;565;5098.232,-4582.246;Inherit;False;Property;_ClearCoatReflection;Clear Coat Reflection;249;0;Create;True;0;0;0;False;0;False;1;0.95;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;477;-698.4809,-4943.354;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;935;-946.4393,-4672.09;Inherit;False;Constant;_Float30;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;936;-945.4393,-4597.09;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;461;-3463.442,-4828.699;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;462;-3451.477,-4944.435;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;460;-3450.442,-4758.699;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;933;-3446.842,-4542.945;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;545;5872.958,-5837.723;Inherit;False;186;ggxSpec;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;546;6015.218,-5763.747;Inherit;False;542;GlintChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;740;6394.059,-5644.546;Inherit;False;Property;_GlintHighlightToggle;Glint Highlight;261;0;Create;False;0;0;0;False;0;False;0;0;0;True;_GLINT_HIGHLIGHT_ON;Toggle;2;Key0;Key1;Create;True;False;All;9;1;FLOAT4;0,0,0,0;False;0;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;1204;5105.201,-4781.477;Inherit;False;1202;ClearCoatReflectionChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1731;4304.216,-4803.619;Inherit;False;GGX_Specular_Light;-1;;7499;a8c3189e23c816d4394170a4738b987b;6,318,0,326,0,329,0,322,0,339,1,369,1;12;366;FLOAT3;0,0,0;False;359;FLOAT3;0,0,0;False;338;FLOAT;0;False;328;FLOAT3;0,0,0;False;327;FLOAT3;0,0,0;False;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;317;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;368;FLOAT;0;False;302;FLOAT;0;False;8;FLOAT;358;FLOAT;348;FLOAT3;336;FLOAT3;331;FLOAT3;314;FLOAT3;315;FLOAT3;0;FLOAT;316
Node;AmplifyShaderEditor.LerpOp;934;-709.132,-4654.091;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;478;-747.1389,-4738.363;Inherit;False;Property;_ClearCoatChannel;Clear Coat Channel;259;1;[Enum];Create;False;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;463;-3199.477,-4942.435;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;931;-3448.842,-4689.945;Inherit;False;Constant;_Float29;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;932;-3447.842,-4614.945;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;547;6213.552,-5854.633;Inherit;False;186;ggxSpec;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;543;6216.41,-5778.868;Inherit;False;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CommentaryNode;976;-1755.725,-4378.612;Inherit;False;2359.104;566.9634;Comment;33;1009;1008;1007;1006;1005;1004;1003;1002;1001;1000;999;998;997;996;995;994;993;992;991;990;989;988;987;986;985;984;983;982;981;980;979;978;977;Glow Mask 0;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1010;739.983,-4382.674;Inherit;False;2359.104;566.9634;Comment;33;1043;1042;1041;1040;1039;1038;1037;1036;1035;1034;1033;1032;1031;1030;1029;1028;1027;1026;1025;1024;1023;1022;1021;1020;1019;1018;1017;1016;1015;1014;1013;1012;1011;Glow Mask 1;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1044;-1760.401,-3646.165;Inherit;False;2359.104;566.9634;Comment;33;1077;1076;1075;1074;1073;1072;1071;1070;1069;1068;1067;1066;1065;1064;1063;1062;1061;1060;1059;1058;1057;1056;1055;1054;1053;1052;1051;1050;1049;1048;1047;1046;1045;Glow Mask 2;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1078;762.0825,-3639.132;Inherit;False;2359.104;566.9634;Comment;33;1111;1110;1109;1108;1107;1106;1105;1104;1103;1102;1101;1100;1099;1098;1097;1096;1095;1094;1093;1092;1091;1090;1089;1088;1087;1086;1085;1084;1083;1082;1081;1080;1079;Glow Mask 3;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;499;5187.034,-4504.633;Inherit;False;246;Occlusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1203;5422.201,-4776.477;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1340;4676.104,-4769.536;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RelayNode;482;-476.24,-4863.464;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;480;-479.24,-4734.464;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;483;-479.24,-4665.465;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;479;-493.24,-5007.464;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;481;-493.24,-4936.464;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;930;-3205.842,-4671.945;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.DynamicAppendNode;1331;4669.144,-4668.206;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;400;-3244.135,-4741.445;Inherit;False;Property;_SpecularMaskChannel;Specular Mask Channel;240;1;[Enum];Create;False;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;544;6427.516,-5855.569;Inherit;False;Property;_SpecularGlint;Specular Glint;260;0;Create;True;0;0;0;False;0;False;0;0;0;True;_GLINT_ON;Toggle;2;Key0;Key1;Create;True;False;All;9;1;FLOAT4;0,0,0,0;False;0;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CommentaryNode;1790;743.7255,-1506.505;Inherit;False;2359.104;566.9634;Comment;35;1823;1822;1821;1820;1819;1818;1817;1816;1815;1814;1813;1812;1811;1810;1809;1808;1807;1806;1805;1804;1803;1802;1801;1800;1799;1798;1797;1796;1795;1794;1793;1792;1791;1824;1828;Opacity;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;977;-1660.477,-4146.87;Inherit;False;Property;_GlowMask0;Glow Mask 0;229;1;[Enum];Create;False;1;     Glow Mask 0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1043;835.231,-4150.932;Inherit;False;Property;_GlowMask1;Glow Mask 1;231;1;[Enum];Create;True;1;     Glow Mask 1;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1077;-1665.153,-3414.423;Inherit;False;Property;_GlowMask2;Glow Mask 2;233;1;[Enum];Create;True;1;     Glow Mask 2;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1111;857.3305,-3407.39;Inherit;False;Property;_GlowMask3;Glow Mask 3;235;1;[Enum];Create;True;1;     Glow Mask 3;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IndirectSpecularLight;495;5472.814,-4600.535;Inherit;False;Tangent;3;0;FLOAT3;0,0,1;False;1;FLOAT;0.5;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1342;5584.804,-4469.236;Inherit;False;Constant;_Float1;Float 1;81;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1343;4638.646,-5110.267;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;180;4828.821,-4762.181;Inherit;False;CustomIndirect;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;484;-275.24,-4988.464;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;485;-283.24,-4865.464;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;486;-271.24,-4793.464;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;487;-287.24,-4642.465;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;488;-286.24,-4715.464;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1715;-69.12134,-4623.564;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;581;6689.426,-4773.174;Inherit;False;846.0758;317.3114;Comment;7;580;568;573;566;567;569;571;Specular Clear Coat;1,1,1,1;0;0
Node;AmplifyShaderEditor.SwizzleNode;385;-2989.236,-5010.546;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;386;-2975.236,-4737.546;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;387;-2989.236,-4939.546;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;388;-2972.236,-4866.546;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;389;-2975.236,-4668.547;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;561;4807.481,-4672.095;Inherit;False;ggxClearCoat;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;572;6595.419,-5852.736;Inherit;False;GlintFinal;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;1791;838.9734,-1274.764;Inherit;False;Property;_OpacityMap;Opacity Map;264;2;[Header];[Enum];Create;False;1;;6;Map 01;0;Map 02;1;Map 03;2;Map 04;3;MainTex;5;None;4;0;True;0;False;5;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1011;1094.033,-4148.599;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1012;1092.033,-4079.599;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1013;804.856,-4225.636;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1014;801.85,-4301.864;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;978;-1401.675,-4144.537;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;979;-1403.675,-4075.537;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;980;-1690.852,-4221.574;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;981;-1693.858,-4297.802;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1079;1116.133,-3405.057;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1080;1114.133,-3336.057;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1081;826.9555,-3482.094;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1082;823.9494,-3558.322;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1045;-1406.351,-3412.09;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1046;-1408.351,-3343.09;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1047;-1695.528,-3489.127;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1048;-1698.534,-3565.355;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;500;5507.035,-4677.633;Inherit;False;180;CustomIndirect;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.DynamicAppendNode;1341;5778.504,-4556.336;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;192;4905.994,-5209.873;Inherit;False;IndirectSpec;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;53;-7577.803,-2008.305;Inherit;False;MM02R;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;489;-46.24003,-4986.464;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;490;-55.24003,-4867.464;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;491;-56.24003,-4796.464;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1716;115.8787,-4621.564;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;390;-2771.236,-4991.546;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;391;-2779.236,-4868.546;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;392;-2767.236,-4796.546;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;393;-2783.236,-4645.547;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;394;-2782.236,-4718.546;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;568;6762.311,-4650.267;Inherit;False;Constant;_Float21;Float 0;33;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;566;6739.426,-4730.403;Inherit;False;561;ggxClearCoat;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;573;6778.06,-4568.863;Inherit;False;572;GlintFinal;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SaturateNode;1792;1097.776,-1272.431;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1793;1095.776,-1203.431;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1794;808.5984,-1349.467;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1795;805.5925,-1425.695;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1015;1263.033,-4080.599;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1016;1254.033,-4148.599;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1017;1093.858,-4276.636;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1018;1264.033,-4009.6;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;982;-1232.675,-4076.537;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;983;-1241.675,-4144.537;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;984;-1401.85,-4272.574;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;985;-1231.675,-4005.538;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1083;1285.133,-3337.057;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1084;1276.133,-3405.057;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1085;1115.958,-3533.094;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1086;1286.133,-3266.058;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1049;-1237.351,-3344.09;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1050;-1246.351,-3412.09;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1051;-1406.526,-3540.127;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1052;-1236.351,-3273.091;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;501;5727.928,-4650.633;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;505;5728.496,-4724.84;Inherit;False;Constant;_Float0;Float 0;33;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;507;5715.114,-4793.559;Inherit;False;192;IndirectSpec;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;492;217.759,-4986.464;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1714;-52.12134,-4712.564;Inherit;False;53;MM02R;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1717;265.8787,-4622.564;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;395;-2542.236,-4989.546;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;396;-2551.236,-4870.546;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;397;-2552.236,-4799.546;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;567;6994.313,-4601.267;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;569;6994.931,-4692.986;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SaturateNode;1796;1266.776,-1204.431;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1797;1257.776,-1272.431;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1799;1267.776,-1133.432;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1798;1097.601,-1400.467;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1019;1514.033,-4146.599;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1020;1525.998,-4262.335;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1021;1527.033,-4076.599;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1022;1530.633,-3860.844;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;986;-981.6748,-4142.537;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;987;-969.7098,-4258.273;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;988;-968.6747,-4072.537;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;989;-965.0748,-3856.783;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1087;1536.133,-3403.057;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1088;1548.098,-3518.792;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1089;1549.133,-3333.057;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1090;1552.733,-3117.302;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1053;-986.3509,-3410.09;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1054;-974.3859,-3525.826;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1055;-973.3508,-3340.09;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1056;-969.7509,-3124.336;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;504;5960.495,-4675.84;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;506;5961.114,-4767.559;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;1713;208.1206,-4827.621;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;398;-2329.323,-4991.005;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;571;7174.871,-4656.902;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;1800;1517.776,-1270.431;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1801;1529.742,-1386.166;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1802;1530.776,-1200.431;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1803;1534.376,-984.6758;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1023;1777.998,-4260.335;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1024;1528.633,-4007.844;Inherit;False;Constant;_Float39;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1025;1529.633,-3932.844;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;990;-717.7098,-4256.273;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;991;-967.0748,-4003.783;Inherit;False;Constant;_Float38;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;992;-966.0748,-3928.783;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1091;1800.098,-3516.792;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1092;1550.733,-3264.302;Inherit;False;Constant;_Float41;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1093;1551.733,-3189.302;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1057;-722.3859,-3523.826;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1058;-971.7509,-3271.336;Inherit;False;Constant;_Float40;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1059;-970.7509,-3196.336;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;508;6141.054,-4731.475;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;493;379.5919,-4981.089;Inherit;False;ClearCoatChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;281;-9285.328,-5207.07;Inherit;False;1085.658;378.5127;Comment;9;289;288;287;286;285;284;283;282;402;Specular Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;548;5961.547,-6372.754;Inherit;False;1243.437;387.9226;Comment;9;188;36;586;574;575;576;578;582;577;Final Specular;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;291;-2116.404,-4984.171;Inherit;False;SpecularMaskChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;580;7293.501,-4656.457;Inherit;False;ClearCoatSpecular;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;1805;1532.376,-1131.676;Inherit;False;Constant;_Float54;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1804;1781.741,-1384.166;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1806;1533.376,-1056.676;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1827;1724.677,-845.8665;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1026;1771.633,-3989.844;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1041;1733.34,-4059.344;Inherit;False;Property;_GlowMask1Channel;Glow Mask 1 Channel;232;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;994;-724.0748,-3985.783;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1094;1793.733,-3246.302;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1109;1755.44,-3315.802;Inherit;False;Property;_GlowMask3Channel;Glow Mask 3 Channel;236;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1060;-728.7509,-3253.336;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1075;-767.0438,-3322.836;Inherit;False;Property;_GlowMask2Channel;Glow Mask 2 Channel;234;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;993;-762.3677,-4055.283;Inherit;False;Property;_GlowMask0Channel;Glow Mask 0 Channel;230;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;200;5077.198,-5344.86;Inherit;False;1312.125;373.7759;Comment;8;550;511;194;195;73;503;509;510;Final Indirect Specular;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;549;6269.056,-4732.918;Inherit;False;IndirectClearCoat;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;288;-8886.05,-5038.718;Inherit;False;291;SpecularMaskChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;577;6078.755,-6094.221;Inherit;False;493;ClearCoatChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;582;6073.168,-6176.331;Inherit;False;580;ClearCoatSpecular;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;578;6085.467,-6260.397;Inherit;False;572;GlintFinal;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;1828;1687.777,-987.1667;Inherit;False;7;MainTexRGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1807;1775.376,-1113.676;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1826;1723.677,-917.8668;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1027;1988.239,-4328.446;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1028;2002.239,-4055.446;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1029;1988.239,-4257.446;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1030;2005.239,-4184.446;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1031;2002.239,-3986.447;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;995;-507.4689,-4324.384;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;996;-493.4689,-4051.384;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;997;-507.4689,-4253.384;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;998;-490.4689,-4180.384;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;999;-493.4689,-3982.385;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1095;2010.339,-3584.904;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1096;2024.339,-3311.904;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1097;2010.339,-3513.904;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1098;2027.339,-3440.904;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1099;2024.339,-3242.905;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1061;-512.145,-3591.937;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1062;-498.145,-3318.937;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1063;-512.145,-3520.937;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1064;-495.145,-3447.937;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1065;-498.145,-3249.938;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;511;5127.176,-5102.847;Inherit;False;493;ClearCoatChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;550;5128.646,-5177.507;Inherit;False;549;IndirectClearCoat;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;194;5154.938,-5248.915;Inherit;False;192;IndirectSpec;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;402;-8432.971,-5162.108;Inherit;False;SpecularMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;576;6325.767,-6229.603;Inherit;False;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;575;6300.651,-6313.146;Inherit;False;572;GlintFinal;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;1825;1911.377,-1004.067;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1808;1737.082,-1183.176;Inherit;False;Property;_OpacityChannel;Opacity Channel;266;1;[Enum];Create;False;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;True;0;False;3;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;677;-6446.111,-5198.323;Inherit;False;1085.658;378.5127;Comment;2;687;688;Emission Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;1032;2206.239,-4309.446;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1033;2198.239,-4186.446;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1034;2210.239,-4114.446;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1035;2194.239,-3963.447;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1036;2195.239,-4036.446;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1000;-289.4689,-4305.384;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1001;-297.4689,-4182.384;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1002;-285.4689,-4110.384;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1003;-301.4689,-3959.385;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1004;-300.4689,-4032.384;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1100;2228.338,-3565.904;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1101;2220.338,-3442.904;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1102;2232.338,-3370.904;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1103;2216.338,-3219.905;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1104;2217.338,-3292.904;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1066;-294.145,-3572.937;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1067;-302.145,-3449.937;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1068;-290.145,-3377.937;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1069;-306.145,-3226.938;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1070;-305.145,-3299.937;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;509;5379.057,-5189.546;Inherit;False;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;510;5364.176,-5260.846;Inherit;False;192;IndirectSpec;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;574;6530.651,-6251.146;Inherit;False;Property;_ClearCoat1;Clear Coat;244;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;503;True;True;All;9;1;FLOAT4;0,0,0,0;False;0;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;36;6532.515,-6154.366;Inherit;False;402;SpecularMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1809;1991.982,-1452.277;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1810;2005.982,-1179.277;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1811;1991.982,-1381.277;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1812;2008.982,-1308.277;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1813;2005.982,-1110.278;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;685;-6207.609,-5115.699;Inherit;False;590;EmissionRGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;687;-6234.609,-5040.699;Inherit;False;676;EmissionMaskChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1037;2435.239,-4307.446;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1038;2426.239,-4188.446;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1039;2425.239,-4117.446;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1005;-60.46881,-4303.384;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1006;-69.46881,-4184.384;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1007;-70.46881,-4113.384;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1105;2457.338,-3563.904;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1106;2448.338,-3444.904;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1107;2447.338,-3373.904;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1071;-65.14485,-3570.937;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1072;-74.14485,-3451.937;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1073;-75.14485,-3380.937;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;503;5667.337,-5251.328;Inherit;False;Property;_ClearCoat;Clear Coat;244;0;Create;False;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT4;0,0,0,0;False;0;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;586;6783.801,-6245.819;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;1814;2209.981,-1433.277;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1815;2201.981,-1310.277;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1816;2213.981,-1238.277;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1817;2197.981,-1087.278;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1818;2198.981,-1160.277;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;686;-5960.609,-5115.699;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1040;2648.152,-4308.905;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1008;152.4442,-4304.843;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1108;2670.251,-3565.363;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1074;147.7682,-3572.396;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;73;5879.576,-5249.74;Inherit;False;Property;_UNITY_PASS_FORWARD_ADD;UNITY_PASS_FORWARD_ADD;39;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;ToggleOff;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT4;0,0,0,0;False;0;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;188;6940.674,-6243.694;Inherit;False;SpecularFinal;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;1819;2438.981,-1431.277;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1821;2428.981,-1241.277;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1820;2429.981,-1312.277;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;688;-5793.609,-5117.699;Inherit;False;EmissionFinal;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1009;365.363,-4298.009;Inherit;False;GlowMask0Channel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1042;2861.071,-4302.071;Inherit;False;GlowMask1Channel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1110;2883.17,-3558.529;Inherit;False;GlowMask3Channel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1076;360.687,-3565.562;Inherit;False;GlowMask2Channel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;195;6154.94,-5249.196;Inherit;False;IndirectSpecFinal;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;189;5053.949,-1203.042;Inherit;False;188;SpecularFinal;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;1822;2651.894,-1432.736;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1829;2198.677,-927.3666;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;591;-10015.99,-3215.344;Inherit;False;688;EmissionFinal;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1115;-10059.38,-3374.352;Inherit;False;1076;GlowMask2Channel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1114;-10059.38,-3450.352;Inherit;False;1042;GlowMask1Channel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1113;-10055.68,-3522.17;Inherit;False;1009;GlowMask0Channel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1116;-10057.38,-3305.352;Inherit;False;1110;GlowMask3Channel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1732;5519.531,-1236.4;Inherit;False;FLOAT;3;1;2;3;1;0;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;196;5062.086,-1041.603;Inherit;False;195;IndirectSpecFinal;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;1824;2760.277,-1310.867;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1831;-9330.642,-2268.2;Inherit;False;MainTexColor;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.DynamicAppendNode;1117;-9777.38,-3454.352;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;886;-9796.092,-3237.98;Inherit;False;Property;_EnableEmission;Emission;194;0;Create;False;0;0;0;False;0;False;0;0;0;True;_EMISSION;Toggle;2;Key0;Key1;Create;True;False;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SwizzleNode;1734;5518.531,-1010.4;Inherit;False;FLOAT;3;1;2;3;1;0;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;1740;5726.531,-1173.4;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;4;False;3;FLOAT;0;False;4;FLOAT;0.15;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1823;2864.813,-1425.902;Inherit;False;OpacityChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1832;5788.543,-974.8676;Inherit;False;1831;MainTexColor;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1373;4810.437,-841.1832;Inherit;False;Property;_TileDiscardUV;TileDiscardUV;312;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1694;-9583.693,-3302.96;Inherit;False;Luma Glow Properties;9;;7501;601d9734366b2cb4e9b77694fc25ef31;1,260,0;3;266;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;155;FLOAT3;0,0,0;False;3;FLOAT;244;FLOAT4;183;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1739;5982.531,-1177.4;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1830;5941.413,-1047.228;Inherit;False;1823;OpacityChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1833;6000.543,-974.8676;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;769;5144.872,-619.409;Inherit;False;Constant;_Float26;Float 26;49;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;883;-9277.568,-3279.069;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.FunctionNode;1608;4996.493,-841.9552;Inherit;False;UV Channel Select;-1;;7587;756457f5c2398324eb74b053d38f83bd;1,50,0;2;2;SAMPLER2D;0;False;14;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;190;4658.432,-5157.637;Inherit;False;AlbedoFinal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;1742;6097.531,-1171.4;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1834;6158.543,-1021.868;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PosVertexDataNode;159;5229.119,-771.5396;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleDivideOpNode;770;5287.872,-626.4091;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1406;5226.854,-843.709;Inherit;False;UVTileDiscard;279;;7588;495696ca07f989c468e0b68e1fa68101;0;1;19;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1286;-4211.222,-2272.866;Inherit;False;2359.104;566.9634;Comment;33;1319;1318;1317;1316;1315;1314;1313;1312;1311;1310;1309;1308;1307;1306;1305;1304;1303;1302;1301;1300;1299;1298;1297;1296;1295;1294;1293;1292;1291;1290;1289;1288;1287;Iridescence Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1322;-9152.007,-3277.63;Inherit;False;Emiss;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;191;5073.197,-1125.172;Inherit;False;190;AlbedoFinal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1743;6333.531,-1170.4;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1753;7560.937,-381.1659;Inherit;False;637.5515;488.855;Blend RGB;6;1789;1788;1787;1767;1766;1759;;0,0,0,1;0;0
Node;AmplifyShaderEditor.SaturateNode;1654;5198.351,-5474.229;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1655;5386.851,-5496.329;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1653;5679.281,-5735.711;Inherit;False;FLOAT;3;1;2;3;1;0;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1330;4475.396,-5289.907;Inherit;False;Constant;_Float22;Float 22;81;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1329;4693.396,-5307.907;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;181;4858.023,-5315.383;Inherit;False;CustomSpec;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;1412;4343.665,-6001.409;Inherit;False;Property;_GlintFrequency;GlintFrequency;173;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;768;5530.872,-841.409;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0.001;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1526;4258.53,-6624.728;Inherit;False;10;Gloss;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;780;4283.781,-6300.116;Inherit;False;776;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1328;5300.577,-6154.941;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LuminanceNode;1324;5102.573,-6112.96;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;269;-7630.976,-5550.624;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;271;-7447.938,-5478.258;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;272;-7453.938,-5550.258;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;278;-7431.028,-5652.988;Inherit;False;Constant;_Float23;Float 23;17;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;273;-7251.624,-5669.77;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;275;-7188.938,-5481.258;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;282;-9235.327,-5037.924;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;283;-9052.29,-4965.558;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;284;-9058.29,-5037.558;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;287;-9035.38,-5140.288;Inherit;False;Constant;_Float24;Float 23;17;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;285;-8855.976,-5157.07;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;289;-8793.29,-4968.558;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;286;-8599.288,-5156.557;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1344;5266.398,-1371.774;Inherit;False;195;IndirectSpecFinal;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;1327;5271.634,-1499.762;Inherit;False;188;SpecularFinal;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SwizzleNode;1345;5493.398,-1375.774;Inherit;False;FLOAT;3;1;2;3;1;0;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1334;5496.548,-1483.768;Inherit;False;FLOAT;3;1;2;3;1;0;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1336;5643.205,-1492.428;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.05;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1347;5662.867,-1375.895;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1346;5820.398,-1442.774;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;761;3857.896,-4673.232;Inherit;False;741;ClearCoatNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;17;-7570.474,-2238.141;Inherit;False;MM01B;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;219;-7577.408,-1835.56;Inherit;False;MM02B;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;218;-7576.618,-1746.075;Inherit;False;MM02A;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;407;-6514.665,-2392.835;Inherit;False;MM03R;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;408;-6513.874,-2303.348;Inherit;False;MM03G;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;409;-6514.269,-2220.092;Inherit;False;MM03B;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;410;-6513.479,-2130.606;Inherit;False;MM03A;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;415;-6513.906,-1977.374;Inherit;False;MM04R;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;416;-6513.115,-1887.887;Inherit;False;MM04G;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;417;-6513.509,-1804.631;Inherit;False;MM04B;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;418;-6512.719,-1715.145;Inherit;False;MM04A;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;966;-7145.192,-1629.061;Inherit;False;Property;_GlobalColor0;Global Color 0;193;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;967;-7149.569,-1461.658;Inherit;False;Property;_GlobalColor1;Global Color 1;192;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;974;-7138.453,-1271.676;Inherit;False;Property;_GlobalColor2;Global Color 2;191;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;975;-7138.453,-1052.796;Inherit;False;Property;_GlobalColor3;Global Color 3;190;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;970;-6915.424,-1626.873;Inherit;False;GlobalColor0;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;971;-6913.235,-1463.847;Inherit;False;GlobalColor1;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;972;-6911.664,-1276.219;Inherit;False;GlobalColor2;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;973;-6898.217,-1056.245;Inherit;False;GlobalColor3;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1124;-6486.82,-1611.824;Inherit;False;Property;_Culling;Culling;8;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1278;-9256.417,-2899.682;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1279;-9141.417,-2904.682;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1280;-9613.907,-2891.097;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1281;-9393.286,-2917.828;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1282;-9668.417,-2815.682;Inherit;False;Detect Light;-1;;7589;ca949bbda0856d040a3b3a723d67d4ef;0;0;2;FLOAT;0;FLOAT;10
Node;AmplifyShaderEditor.OneMinusNode;1283;-9430.286,-2815.828;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1284;-9256.288,-2807.134;Inherit;False;776;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1285;-9256.691,-2740.051;Inherit;False;643;NormalFinal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;1288;-3857.172,-2038.792;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1289;-3859.172,-1969.792;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1290;-4146.349,-2115.828;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1291;-4149.355,-2192.056;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1292;-3688.172,-1970.792;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1293;-3697.172,-2038.792;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1294;-3857.347,-2166.828;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1295;-3687.172,-1899.793;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1296;-3437.172,-2036.792;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1297;-3425.207,-2152.527;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1298;-3424.172,-1966.792;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1299;-3420.572,-1751.038;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1300;-3173.207,-2150.527;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1301;-3422.572,-1898.038;Inherit;False;Constant;_Float46;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1302;-3421.572,-1823.038;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1303;-3179.572,-1880.038;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SwizzleNode;1305;-2962.966,-2218.638;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1306;-2948.966,-1945.639;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1307;-2962.966,-2147.638;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1308;-2945.966,-2074.638;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1309;-2948.966,-1876.64;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1310;-2744.966,-2199.638;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1311;-2752.966,-2076.638;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1312;-2740.966,-2004.639;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1313;-2756.966,-1853.64;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1314;-2755.966,-1926.639;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1315;-2515.966,-2197.638;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1316;-2524.966,-2078.638;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1317;-2525.966,-2007.639;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1318;-2303.052,-2199.097;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1287;-4115.974,-2041.125;Inherit;False;Property;_IridescenceMask;Iridescence Mask;237;2;[Header];[Enum];Create;True;1;     Glow Mask 2;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1304;-3217.865,-1949.538;Inherit;False;Property;_IridescenceChannel;Iridescence Channel;238;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1319;-2090.134,-2192.263;Inherit;False;IridescenceChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1321;-9291.106,-2669.231;Inherit;False;1319;IridescenceChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1323;5814.732,-1269.837;Inherit;False;1322;Emiss;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SaturateNode;1335;6028.548,-1440.768;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1355;6191.769,-1454.661;Inherit;False;SpecularAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1357;-6442.47,-1527.803;Inherit;False;Property;_BlendOPdst;_BlendOPdst;254;0;Create;True;0;0;0;True;0;False;10;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1358;-6664.266,-1437.581;Inherit;False;Property;_BlendModeIndex;_BlendModeIndex;248;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1359;-6440.47,-1438.803;Inherit;False;Property;_BlendOPIndex;_BlendOPIndex;252;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1356;-6636.47,-1520.803;Inherit;False;Property;_BlendOPsrc;_BlendOPsrc;250;0;Create;True;0;0;0;True;0;False;5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1363;-6436.512,-1357.944;Inherit;False;Property;_ShowMaps;ShowMaps;179;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1364;-8070.787,-3007.886;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;276;-6994.937,-5669.257;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1360;-6594.919,-1355.498;Inherit;False;Property;_ShowMain;ShowMain;189;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1388;-6605.261,-1271.583;Inherit;False;Property;_ShowLighting;ShowLighting;181;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1394;-6412.515,-1275.131;Inherit;False;Property;_ShowEmission;ShowEmission;183;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1396;-6402.515,-1197.131;Inherit;False;Property;_ShowEmissionMain;ShowEmissionMain;182;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1395;-6612.515,-1196.131;Inherit;False;Property;_ShowEmission01;ShowEmission01;188;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1401;-6620.369,-1116.484;Inherit;False;Property;_ShowEmission02;ShowEmission02;186;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1402;-6410.369,-1117.484;Inherit;False;Property;_ShowEmission03;ShowEmission03;187;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1403;-6627.369,-1045.484;Inherit;False;Property;_ShowEmission04;ShowEmission04;185;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1404;-6406.369,-1041.484;Inherit;False;Property;_ShowTileDiscard;ShowTileDiscard;184;0;Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;32;3871.622,-6137.979;Inherit;False;Property;_GlintIntensity;Glint Intensity;267;0;Create;True;1;Glinty Specular;0;0;True;0;False;1;1.15;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1426;5531.882,-6626.83;Inherit;False;FleckIndirect;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;1417;4758.018,-5987.908;Inherit;False;Property;_GlintIgnoreNormals;Glint Ignore Normals;1;1;[ToggleUI];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;37;5818.331,-5603.343;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SaturateNode;250;-6279.584,-5566.774;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;56;5543.884,-1146.809;Inherit;False;3;3;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;1747;6468.925,-1154.496;Inherit;False;Property;_Keyword3;Keyword 3;119;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_SHADOWCASTER;Toggle;2;Key0;Key1;Fetch;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StickyNoteNode;1759;7816.918,-320.892;Inherit;False;316.5269;103;_SourceBlendRGB;;0,0,0,1;Unity.Engine Enum Class$UnityEngine.Rendering.BlendMode$;0;0
Node;AmplifyShaderEditor.StickyNoteNode;1766;7819.238,-191.3367;Inherit;False;289.5269;100;_DestinationBlendRGB;;0,0,0,1;Unity.Engine Enum Class$UnityEngine.Rendering.BlendMode$;0;0
Node;AmplifyShaderEditor.StickyNoteNode;1767;7815.238,-63.33667;Inherit;False;285.5269;109.007;_BlendOpRGB;;0,0,0,1;Unity.Engine Enum Class$UnityEngine.Rendering.BlendOp$;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1789;7593.019,-319.0129;Inherit;False;Property;_SourceBlendRGB;Source Blend RGB;168;1;[Enum];Create;False;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1788;7591.629,-191.5297;Inherit;False;Property;_DestinationBlendRGB;Destination Blend RGB;167;1;[Enum];Create;False;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;10;10;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1787;7593.819,-67.42957;Inherit;False;Property;_BlendOpRGB;Blend Op RGB;166;1;[Enum];Create;False;0;0;1;UnityEngine.Rendering.BlendOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1835;2537.181,-1066.05;Inherit;False;Property;_MaskClipValue;MaskClipValue;165;0;Create;True;0;0;0;True;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;6812.637,-1320.613;Float;False;True;-1;4;UmbraShaderUI;0;0;CustomLighting;Furality/Umbra Shader/Umbra Transparent;False;False;False;False;False;False;True;False;True;False;True;False;False;False;True;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;True;0;Custom;0.5;True;True;0;True;Transparent;;Transparent;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;2;5;True;_SourceBlendRGB;10;True;_DestinationBlendRGB;0;0;False;;0;False;;0;True;_BlendOpRGB;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Absolute;0;;0;-1;-1;-1;0;False;0;0;True;_Culling;-1;0;False;;1;Include;;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;51;0;50;0
WireConnection;12;0;11;0
WireConnection;411;0;405;0
WireConnection;1604;2;12;0
WireConnection;1604;14;1366;0
WireConnection;1605;2;51;0
WireConnection;1605;14;1368;0
WireConnection;9;0;12;0
WireConnection;9;1;1604;0
WireConnection;52;0;51;0
WireConnection;52;1;1605;0
WireConnection;1606;2;411;0
WireConnection;1606;14;1370;0
WireConnection;295;0;9;0
WireConnection;296;0;52;0
WireConnection;406;0;411;0
WireConnection;406;1;1606;0
WireConnection;419;0;413;0
WireConnection;1607;2;413;0
WireConnection;1607;14;1371;0
WireConnection;412;0;406;0
WireConnection;414;0;419;0
WireConnection;414;1;1607;0
WireConnection;421;0;292;0
WireConnection;424;0;292;0
WireConnection;420;0;414;0
WireConnection;298;0;293;0
WireConnection;298;1;297;0
WireConnection;298;2;421;0
WireConnection;425;0;424;0
WireConnection;426;0;424;0
WireConnection;649;0;648;0
WireConnection;650;0;648;0
WireConnection;599;0;598;0
WireConnection;600;0;598;0
WireConnection;427;0;426;0
WireConnection;403;0;298;0
WireConnection;403;1;422;0
WireConnection;403;2;425;0
WireConnection;964;0;426;0
WireConnection;653;0;650;0
WireConnection;655;0;650;0
WireConnection;656;0;652;0
WireConnection;656;1;651;0
WireConnection;656;2;649;0
WireConnection;603;0;600;0
WireConnection;605;0;600;0
WireConnection;606;0;602;0
WireConnection;606;1;601;0
WireConnection;606;2;599;0
WireConnection;404;0;403;0
WireConnection;404;1;423;0
WireConnection;404;2;427;0
WireConnection;963;0;964;0
WireConnection;657;0;655;0
WireConnection;659;0;656;0
WireConnection;659;1;654;0
WireConnection;659;2;653;0
WireConnection;940;0;655;0
WireConnection;607;0;605;0
WireConnection;609;0;606;0
WireConnection;609;1;604;0
WireConnection;609;2;603;0
WireConnection;944;0;605;0
WireConnection;965;0;404;0
WireConnection;965;1;962;0
WireConnection;965;2;963;0
WireConnection;660;0;659;0
WireConnection;660;1;658;0
WireConnection;660;2;657;0
WireConnection;939;0;940;0
WireConnection;943;0;944;0
WireConnection;610;0;609;0
WireConnection;610;1;608;0
WireConnection;610;2;607;0
WireConnection;303;0;965;0
WireConnection;301;0;299;0
WireConnection;304;0;965;0
WireConnection;305;0;965;0
WireConnection;311;0;299;0
WireConnection;941;0;660;0
WireConnection;941;1;938;0
WireConnection;941;2;939;0
WireConnection;945;0;610;0
WireConnection;945;1;942;0
WireConnection;945;2;943;0
WireConnection;302;0;303;0
WireConnection;302;1;304;0
WireConnection;302;2;301;0
WireConnection;306;0;305;0
WireConnection;310;0;305;0
WireConnection;313;0;311;0
WireConnection;312;0;311;0
WireConnection;662;0;941;0
WireConnection;663;0;661;0
WireConnection;664;0;941;0
WireConnection;665;0;941;0
WireConnection;666;0;661;0
WireConnection;1453;0;1450;0
WireConnection;1454;0;1450;0
WireConnection;613;0;611;0
WireConnection;615;0;945;0
WireConnection;616;0;611;0
WireConnection;612;0;945;0
WireConnection;614;0;945;0
WireConnection;593;0;592;0
WireConnection;212;0;211;0
WireConnection;307;0;302;0
WireConnection;307;1;306;0
WireConnection;307;2;312;0
WireConnection;309;0;310;0
WireConnection;314;0;313;0
WireConnection;446;0;344;0
WireConnection;447;0;344;0
WireConnection;667;0;662;0
WireConnection;667;1;664;0
WireConnection;667;2;663;0
WireConnection;668;0;665;0
WireConnection;669;0;665;0
WireConnection;670;0;666;0
WireConnection;671;0;666;0
WireConnection;1455;0;1451;0
WireConnection;1455;1;1452;0
WireConnection;1455;2;1453;0
WireConnection;1456;0;1454;0
WireConnection;1458;0;1454;0
WireConnection;21;0;20;0
WireConnection;617;0;612;0
WireConnection;617;1;614;0
WireConnection;617;2;613;0
WireConnection;618;0;615;0
WireConnection;619;0;615;0
WireConnection;620;0;616;0
WireConnection;621;0;616;0
WireConnection;1610;2;593;0
WireConnection;1610;14;1393;0
WireConnection;16;0;9;1
WireConnection;308;0;307;0
WireConnection;308;1;309;0
WireConnection;308;2;314;0
WireConnection;448;0;447;0
WireConnection;450;0;447;0
WireConnection;345;0;343;0
WireConnection;345;1;342;0
WireConnection;345;2;446;0
WireConnection;588;0;587;0
WireConnection;672;0;667;0
WireConnection;672;1;668;0
WireConnection;672;2;671;0
WireConnection;673;0;669;0
WireConnection;674;0;670;0
WireConnection;1459;0;1458;0
WireConnection;1461;0;1455;0
WireConnection;1461;1;1457;0
WireConnection;1461;2;1456;0
WireConnection;1462;0;1458;0
WireConnection;896;0;895;0
WireConnection;897;0;895;0
WireConnection;22;0;21;0
WireConnection;22;5;38;0
WireConnection;622;0;617;0
WireConnection;622;1;618;0
WireConnection;622;2;621;0
WireConnection;623;0;619;0
WireConnection;624;0;620;0
WireConnection;595;0;593;0
WireConnection;595;1;1610;0
WireConnection;595;5;594;0
WireConnection;232;0;308;0
WireConnection;228;0;227;0
WireConnection;230;0;227;0
WireConnection;451;0;450;0
WireConnection;453;0;345;0
WireConnection;453;1;449;0
WireConnection;453;2;448;0
WireConnection;952;0;450;0
WireConnection;589;0;588;0
WireConnection;675;0;672;0
WireConnection;675;1;673;0
WireConnection;675;2;674;0
WireConnection;437;0;379;0
WireConnection;438;0;379;0
WireConnection;1463;0;1461;0
WireConnection;1463;1;1460;0
WireConnection;1463;2;1459;0
WireConnection;1464;0;1462;0
WireConnection;900;0;897;0
WireConnection;903;0;899;0
WireConnection;903;1;898;0
WireConnection;903;2;896;0
WireConnection;902;0;897;0
WireConnection;625;0;622;0
WireConnection;625;1;623;0
WireConnection;625;2;624;0
WireConnection;23;0;22;0
WireConnection;596;0;595;0
WireConnection;226;0;225;0
WireConnection;226;2;228;0
WireConnection;231;0;230;0
WireConnection;1707;0;230;0
WireConnection;454;0;453;0
WireConnection;454;1;452;0
WireConnection;454;2;451;0
WireConnection;951;0;952;0
WireConnection;646;0;645;0
WireConnection;646;1;589;0
WireConnection;676;0;675;0
WireConnection;6;0;4;0
WireConnection;439;0;438;0
WireConnection;441;0;438;0
WireConnection;364;0;363;0
WireConnection;364;1;362;0
WireConnection;364;2;437;0
WireConnection;1209;0;1208;0
WireConnection;1210;0;1208;0
WireConnection;1466;0;1463;0
WireConnection;1466;1;1465;0
WireConnection;1466;2;1464;0
WireConnection;906;0;903;0
WireConnection;906;1;901;0
WireConnection;906;2;900;0
WireConnection;928;0;902;0
WireConnection;904;0;902;0
WireConnection;626;0;625;0
WireConnection;229;0;226;0
WireConnection;229;1;233;0
WireConnection;229;2;231;0
WireConnection;1708;0;1707;0
WireConnection;953;0;454;0
WireConnection;953;1;950;0
WireConnection;953;2;951;0
WireConnection;590;0;646;0
WireConnection;5;0;6;0
WireConnection;442;0;441;0
WireConnection;444;0;364;0
WireConnection;444;1;440;0
WireConnection;444;2;439;0
WireConnection;948;0;441;0
WireConnection;1213;0;1210;0
WireConnection;1215;0;1212;0
WireConnection;1215;1;1211;0
WireConnection;1215;2;1209;0
WireConnection;1216;0;1210;0
WireConnection;1468;0;1466;0
WireConnection;1469;0;1467;0
WireConnection;1470;0;1466;0
WireConnection;1471;0;1466;0
WireConnection;1472;0;1467;0
WireConnection;907;0;906;0
WireConnection;907;1;905;0
WireConnection;907;2;904;0
WireConnection;929;0;928;0
WireConnection;637;0;640;0
WireConnection;637;1;638;0
WireConnection;1705;0;229;0
WireConnection;1705;1;1706;0
WireConnection;1705;2;1708;0
WireConnection;347;0;953;0
WireConnection;348;0;346;0
WireConnection;349;0;953;0
WireConnection;350;0;953;0
WireConnection;351;0;346;0
WireConnection;692;0;693;0
WireConnection;692;1;690;0
WireConnection;1361;0;5;0
WireConnection;1361;1;1362;0
WireConnection;695;0;1705;0
WireConnection;695;1;694;0
WireConnection;947;0;948;0
WireConnection;445;0;444;0
WireConnection;445;1;443;0
WireConnection;445;2;442;0
WireConnection;1218;0;1215;0
WireConnection;1218;1;1214;0
WireConnection;1218;2;1213;0
WireConnection;1219;0;1216;0
WireConnection;1220;0;1216;0
WireConnection;1473;0;1468;0
WireConnection;1473;1;1470;0
WireConnection;1473;2;1469;0
WireConnection;1474;0;1471;0
WireConnection;1475;0;1471;0
WireConnection;1476;0;1472;0
WireConnection;1477;0;1472;0
WireConnection;515;0;514;0
WireConnection;516;0;514;0
WireConnection;926;0;907;0
WireConnection;926;1;927;0
WireConnection;926;2;929;0
WireConnection;639;0;642;0
WireConnection;639;1;637;0
WireConnection;639;2;641;0
WireConnection;352;0;347;0
WireConnection;352;1;349;0
WireConnection;352;2;348;0
WireConnection;353;0;350;0
WireConnection;354;0;350;0
WireConnection;355;0;351;0
WireConnection;356;0;351;0
WireConnection;696;0;695;0
WireConnection;949;0;445;0
WireConnection;949;1;946;0
WireConnection;949;2;947;0
WireConnection;1221;0;1218;0
WireConnection;1221;1;1217;0
WireConnection;1221;2;1219;0
WireConnection;1223;0;1220;0
WireConnection;1478;0;1473;0
WireConnection;1478;1;1474;0
WireConnection;1478;2;1477;0
WireConnection;1479;0;1475;0
WireConnection;1480;0;1476;0
WireConnection;689;0;1361;0
WireConnection;689;1;691;0
WireConnection;689;2;692;0
WireConnection;519;0;516;0
WireConnection;521;0;516;0
WireConnection;522;0;518;0
WireConnection;522;1;517;0
WireConnection;522;2;515;0
WireConnection;1580;0;639;0
WireConnection;357;0;352;0
WireConnection;357;1;353;0
WireConnection;357;2;356;0
WireConnection;358;0;354;0
WireConnection;359;0;355;0
WireConnection;923;0;926;0
WireConnection;7;0;689;0
WireConnection;224;0;696;0
WireConnection;366;0;380;0
WireConnection;368;0;949;0
WireConnection;369;0;380;0
WireConnection;365;0;949;0
WireConnection;367;0;949;0
WireConnection;1224;0;1221;0
WireConnection;1224;1;1222;0
WireConnection;1224;2;1223;0
WireConnection;1481;0;1478;0
WireConnection;1481;1;1479;0
WireConnection;1481;2;1480;0
WireConnection;523;0;521;0
WireConnection;525;0;522;0
WireConnection;525;1;520;0
WireConnection;525;2;519;0
WireConnection;956;0;521;0
WireConnection;821;0;775;0
WireConnection;428;0;320;0
WireConnection;429;0;320;0
WireConnection;360;0;357;0
WireConnection;360;1;358;0
WireConnection;360;2;359;0
WireConnection;1617;0;1616;0
WireConnection;1618;0;1616;0
WireConnection;925;0;222;0
WireConnection;925;1;924;0
WireConnection;370;0;365;0
WireConnection;370;1;367;0
WireConnection;370;2;366;0
WireConnection;371;0;368;0
WireConnection;372;0;368;0
WireConnection;373;0;369;0
WireConnection;374;0;369;0
WireConnection;1226;0;1224;0
WireConnection;1227;0;1225;0
WireConnection;1228;0;1224;0
WireConnection;1229;0;1224;0
WireConnection;1230;0;1225;0
WireConnection;1482;0;1481;0
WireConnection;1500;0;1498;0
WireConnection;1501;0;1498;0
WireConnection;526;0;525;0
WireConnection;526;1;524;0
WireConnection;526;2;523;0
WireConnection;955;0;956;0
WireConnection;1687;0;1688;0
WireConnection;790;0;821;0
WireConnection;430;0;429;0
WireConnection;432;0;429;0
WireConnection;321;0;319;0
WireConnection;321;1;318;0
WireConnection;321;2;428;0
WireConnection;257;0;360;0
WireConnection;249;0;247;0
WireConnection;217;0;52;2
WireConnection;1621;0;1618;0
WireConnection;1623;0;1620;0
WireConnection;1623;1;1619;0
WireConnection;1623;2;1617;0
WireConnection;1624;0;1618;0
WireConnection;223;0;925;0
WireConnection;375;0;370;0
WireConnection;375;1;371;0
WireConnection;375;2;374;0
WireConnection;376;0;372;0
WireConnection;377;0;373;0
WireConnection;1231;0;1226;0
WireConnection;1231;1;1228;0
WireConnection;1231;2;1227;0
WireConnection;1232;0;1229;0
WireConnection;1233;0;1229;0
WireConnection;1234;0;1230;0
WireConnection;1235;0;1230;0
WireConnection;1502;0;1499;0
WireConnection;1502;2;1501;0
WireConnection;1504;0;1500;0
WireConnection;957;0;526;0
WireConnection;957;1;954;0
WireConnection;957;2;955;0
WireConnection;1686;0;1687;0
WireConnection;820;0;790;0
WireConnection;433;0;432;0
WireConnection;435;0;321;0
WireConnection;435;1;431;0
WireConnection;435;2;430;0
WireConnection;960;0;432;0
WireConnection;2;0;40;0
WireConnection;2;1;41;0
WireConnection;1386;0;222;0
WireConnection;1386;1;1385;0
WireConnection;216;0;9;2
WireConnection;1724;0;249;0
WireConnection;253;0;249;0
WireConnection;1626;0;1623;0
WireConnection;1626;1;1622;0
WireConnection;1626;2;1621;0
WireConnection;1627;0;1624;0
WireConnection;1628;0;1624;0
WireConnection;1387;0;1386;0
WireConnection;220;0;2;1
WireConnection;220;1;223;0
WireConnection;263;0;260;0
WireConnection;262;0;260;0
WireConnection;378;0;375;0
WireConnection;378;1;376;0
WireConnection;378;2;377;0
WireConnection;1236;0;1231;0
WireConnection;1236;1;1232;0
WireConnection;1236;2;1235;0
WireConnection;1237;0;1233;0
WireConnection;1238;0;1234;0
WireConnection;1505;0;1502;0
WireConnection;1505;1;1503;0
WireConnection;1505;2;1504;0
WireConnection;528;0;957;0
WireConnection;529;0;527;0
WireConnection;530;0;957;0
WireConnection;531;0;957;0
WireConnection;532;0;527;0
WireConnection;1689;0;820;0
WireConnection;1689;1;1686;0
WireConnection;1689;2;1690;0
WireConnection;1696;0;1693;0
WireConnection;1696;1;1695;0
WireConnection;436;0;435;0
WireConnection;436;1;434;0
WireConnection;436;2;433;0
WireConnection;959;0;960;0
WireConnection;1725;0;1724;0
WireConnection;254;0;255;0
WireConnection;254;1;252;0
WireConnection;254;2;253;0
WireConnection;1648;0;1390;0
WireConnection;1629;0;1626;0
WireConnection;1629;1;1625;0
WireConnection;1629;2;1628;0
WireConnection;1631;0;1627;0
WireConnection;264;0;220;0
WireConnection;264;1;1387;0
WireConnection;264;2;263;0
WireConnection;266;0;262;0
WireConnection;279;0;378;0
WireConnection;1239;0;1236;0
WireConnection;1239;1;1237;0
WireConnection;1239;2;1238;0
WireConnection;1507;0;1505;0
WireConnection;1507;1;1448;0
WireConnection;533;0;528;0
WireConnection;533;1;530;0
WireConnection;533;2;529;0
WireConnection;534;0;531;0
WireConnection;535;0;531;0
WireConnection;536;0;532;0
WireConnection;537;0;532;0
WireConnection;1691;0;820;0
WireConnection;1691;1;1689;0
WireConnection;1691;2;1696;0
WireConnection;961;0;436;0
WireConnection;961;1;958;0
WireConnection;961;2;959;0
WireConnection;1723;0;254;0
WireConnection;1723;1;248;0
WireConnection;1723;2;1725;0
WireConnection;1389;0;1723;0
WireConnection;1389;1;1648;0
WireConnection;804;0;793;0
WireConnection;804;1;803;0
WireConnection;804;2;821;0
WireConnection;804;3;796;0
WireConnection;1632;0;1629;0
WireConnection;1632;1;1630;0
WireConnection;1632;2;1631;0
WireConnection;267;0;264;0
WireConnection;267;1;220;0
WireConnection;267;2;266;0
WireConnection;1240;0;1239;0
WireConnection;1508;0;1507;0
WireConnection;538;0;533;0
WireConnection;538;1;534;0
WireConnection;538;2;537;0
WireConnection;539;0;535;0
WireConnection;540;0;536;0
WireConnection;802;0;793;0
WireConnection;802;1;803;0
WireConnection;802;2;1691;0
WireConnection;802;3;797;1
WireConnection;323;0;961;0
WireConnection;324;0;322;0
WireConnection;325;0;961;0
WireConnection;326;0;961;0
WireConnection;327;0;322;0
WireConnection;1633;0;1632;0
WireConnection;1489;0;267;0
WireConnection;277;0;274;0
WireConnection;1509;0;1508;0
WireConnection;1510;0;223;0
WireConnection;541;0;538;0
WireConnection;541;1;539;0
WireConnection;541;2;540;0
WireConnection;776;0;804;0
WireConnection;246;0;1389;0
WireConnection;782;0;802;0
WireConnection;328;0;323;0
WireConnection;328;1;325;0
WireConnection;328;2;324;0
WireConnection;329;0;326;0
WireConnection;330;0;326;0
WireConnection;331;0;327;0
WireConnection;332;0;327;0
WireConnection;1511;0;1387;0
WireConnection;1422;0;34;0
WireConnection;1275;0;60;0
WireConnection;1275;1;33;0
WireConnection;542;0;541;0
WireConnection;333;0;328;0
WireConnection;333;1;329;0
WireConnection;333;2;332;0
WireConnection;334;0;330;0
WireConnection;335;0;331;0
WireConnection;336;0;333;0
WireConnection;336;1;334;0
WireConnection;336;2;335;0
WireConnection;1728;124;1514;0
WireConnection;1728;125;1515;0
WireConnection;1728;123;1513;0
WireConnection;1728;102;1483;0
WireConnection;1728;63;1436;0
WireConnection;1728;71;1437;0
WireConnection;1728;191;1635;0
WireConnection;1728;72;1435;0
WireConnection;1728;73;1434;0
WireConnection;1728;51;1414;0
WireConnection;1728;60;644;0
WireConnection;1728;74;1439;0
WireConnection;1728;75;1438;0
WireConnection;1728;59;1275;0
WireConnection;1728;62;1410;0
WireConnection;1728;57;1411;0
WireConnection;1728;54;1422;0
WireConnection;1728;58;35;0
WireConnection;1728;55;1424;0
WireConnection;1529;0;1531;0
WireConnection;1529;1;1728;77
WireConnection;1529;2;1528;0
WireConnection;18;0;9;4
WireConnection;244;0;336;0
WireConnection;239;0;238;0
WireConnection;1242;0;1273;0
WireConnection;1243;0;1273;0
WireConnection;1561;1;1531;0
WireConnection;1561;0;1529;0
WireConnection;243;0;239;0
WireConnection;1710;0;239;0
WireConnection;1246;0;1243;0
WireConnection;1248;0;1245;0
WireConnection;1248;1;1244;0
WireConnection;1248;2;1242;0
WireConnection;1249;0;1243;0
WireConnection;1673;0;1674;0
WireConnection;1443;0;1561;0
WireConnection;241;0;236;0
WireConnection;241;1;242;0
WireConnection;241;2;243;0
WireConnection;1711;0;1710;0
WireConnection;1251;0;1248;0
WireConnection;1251;1;1247;0
WireConnection;1251;2;1246;0
WireConnection;1252;0;1249;0
WireConnection;1253;0;1249;0
WireConnection;1675;0;1673;0
WireConnection;1676;0;1673;0
WireConnection;1709;0;241;0
WireConnection;1709;1;1712;0
WireConnection;1709;2;1711;0
WireConnection;1254;0;1251;0
WireConnection;1254;1;1250;0
WireConnection;1254;2;1252;0
WireConnection;1256;0;1253;0
WireConnection;1490;0;1491;0
WireConnection;1490;1;1728;110
WireConnection;1490;2;1566;0
WireConnection;1581;0;639;0
WireConnection;1581;1;1583;0
WireConnection;1581;2;1582;0
WireConnection;1578;0;1579;0
WireConnection;1578;1;1728;181
WireConnection;214;0;1709;0
WireConnection;1677;0;1675;0
WireConnection;1677;1;1675;0
WireConnection;1678;0;1676;0
WireConnection;1678;1;1676;0
WireConnection;1257;0;1254;0
WireConnection;1257;1;1255;0
WireConnection;1257;2;1256;0
WireConnection;1137;0;1136;0
WireConnection;1138;0;1136;0
WireConnection;1527;0;1491;0
WireConnection;1527;1;1490;0
WireConnection;1527;2;1528;0
WireConnection;1584;1;639;0
WireConnection;1584;0;1581;0
WireConnection;1572;0;1578;0
WireConnection;213;0;1709;0
WireConnection;213;1;214;0
WireConnection;213;2;215;0
WireConnection;1679;0;1677;0
WireConnection;1679;1;1678;0
WireConnection;1258;0;1257;0
WireConnection;1259;0;1274;0
WireConnection;1260;0;1257;0
WireConnection;1261;0;1257;0
WireConnection;1262;0;1274;0
WireConnection;1141;0;1138;0
WireConnection;1143;0;1140;0
WireConnection;1143;1;1139;0
WireConnection;1143;2;1137;0
WireConnection;1144;0;1138;0
WireConnection;1170;0;1201;0
WireConnection;1171;0;1201;0
WireConnection;1562;1;1491;0
WireConnection;1562;0;1527;0
WireConnection;340;0;338;0
WireConnection;340;1;40;0
WireConnection;1573;0;1728;169
WireConnection;697;0;213;0
WireConnection;697;1;698;0
WireConnection;643;0;1584;0
WireConnection;1680;0;1679;0
WireConnection;1263;0;1258;0
WireConnection;1263;1;1260;0
WireConnection;1263;2;1259;0
WireConnection;1264;0;1261;0
WireConnection;1265;0;1261;0
WireConnection;1266;0;1262;0
WireConnection;1267;0;1262;0
WireConnection;1146;0;1143;0
WireConnection;1146;1;1142;0
WireConnection;1146;2;1141;0
WireConnection;1148;0;1144;0
WireConnection;1147;0;1144;0
WireConnection;1174;0;1171;0
WireConnection;1176;0;1173;0
WireConnection;1176;1;1172;0
WireConnection;1176;2;1170;0
WireConnection;1177;0;1171;0
WireConnection;1486;0;1562;0
WireConnection;337;0;340;0
WireConnection;337;1;2;0
WireConnection;1646;0;1576;0
WireConnection;1646;1;1645;0
WireConnection;1585;0;1589;0
WireConnection;1681;0;1680;0
WireConnection;1681;1;1682;0
WireConnection;1684;0;697;0
WireConnection;1268;0;1263;0
WireConnection;1268;1;1264;0
WireConnection;1268;2;1267;0
WireConnection;1269;0;1265;0
WireConnection;1270;0;1266;0
WireConnection;1149;0;1146;0
WireConnection;1149;1;1145;0
WireConnection;1149;2;1147;0
WireConnection;1151;0;1148;0
WireConnection;1179;0;1176;0
WireConnection;1179;1;1175;0
WireConnection;1179;2;1174;0
WireConnection;1180;0;1177;0
WireConnection;1181;0;1177;0
WireConnection;1575;0;337;0
WireConnection;1575;1;1577;0
WireConnection;1575;2;1646;0
WireConnection;1130;0;45;0
WireConnection;1586;0;1585;2
WireConnection;1683;0;1684;0
WireConnection;1683;1;1681;0
WireConnection;1271;0;1268;0
WireConnection;1271;1;1269;0
WireConnection;1271;2;1270;0
WireConnection;747;0;748;0
WireConnection;747;5;746;0
WireConnection;749;0;742;0
WireConnection;751;0;742;0
WireConnection;1152;0;1149;0
WireConnection;1152;1;1150;0
WireConnection;1152;2;1151;0
WireConnection;1182;0;1179;0
WireConnection;1182;1;1178;0
WireConnection;1182;2;1180;0
WireConnection;1184;0;1181;0
WireConnection;1488;1;267;0
WireConnection;1488;0;1487;0
WireConnection;1574;1;337;0
WireConnection;1574;0;1575;0
WireConnection;1131;0;1130;0
WireConnection;1587;0;1585;2
WireConnection;1587;1;1586;0
WireConnection;1685;0;1683;0
WireConnection;1272;0;1271;0
WireConnection;753;0;754;0
WireConnection;753;5;755;0
WireConnection;757;0;751;0
WireConnection;752;0;751;0
WireConnection;743;0;744;0
WireConnection;743;1;747;0
WireConnection;743;2;749;0
WireConnection;1154;0;1152;0
WireConnection;1155;0;1153;0
WireConnection;1156;0;1152;0
WireConnection;1157;0;1152;0
WireConnection;1158;0;1153;0
WireConnection;1185;0;1182;0
WireConnection;1185;1;1183;0
WireConnection;1185;2;1184;0
WireConnection;42;0;1488;0
WireConnection;43;0;1574;0
WireConnection;1133;0;45;0
WireConnection;1132;0;1130;0
WireConnection;1132;1;1131;0
WireConnection;1588;0;1585;0
WireConnection;1588;1;1585;1
WireConnection;1588;2;1587;0
WireConnection;10;0;1685;0
WireConnection;758;0;757;0
WireConnection;750;0;743;0
WireConnection;750;1;753;0
WireConnection;750;2;752;0
WireConnection;759;0;747;0
WireConnection;759;1;753;0
WireConnection;1159;0;1154;0
WireConnection;1159;1;1156;0
WireConnection;1159;2;1155;0
WireConnection;1160;0;1157;0
WireConnection;1161;0;1157;0
WireConnection;1162;0;1158;0
WireConnection;1163;0;1158;0
WireConnection;1186;0;1185;0
WireConnection;1187;0;1200;0
WireConnection;1188;0;1185;0
WireConnection;1189;0;1185;0
WireConnection;1190;0;1200;0
WireConnection;1134;0;1133;0
WireConnection;1134;2;1132;0
WireConnection;1276;0;735;0
WireConnection;1276;1;556;0
WireConnection;1427;0;1588;0
WireConnection;1427;1;1429;0
WireConnection;1427;2;1430;0
WireConnection;756;0;750;0
WireConnection;756;1;759;0
WireConnection;756;2;758;0
WireConnection;1164;0;1159;0
WireConnection;1164;1;1160;0
WireConnection;1164;2;1163;0
WireConnection;1165;0;1161;0
WireConnection;1166;0;1162;0
WireConnection;1191;0;1186;0
WireConnection;1191;1;1188;0
WireConnection;1191;2;1187;0
WireConnection;1192;0;1189;0
WireConnection;1193;0;1189;0
WireConnection;1194;0;1190;0
WireConnection;1195;0;1190;0
WireConnection;1729;338;558;0
WireConnection;1729;328;784;0
WireConnection;1729;327;778;0
WireConnection;1729;286;736;0
WireConnection;1729;30;1134;0
WireConnection;1729;146;557;0
WireConnection;1729;147;1276;0
WireConnection;1729;302;560;0
WireConnection;1730;359;1427;0
WireConnection;1730;338;164;0
WireConnection;1730;328;783;0
WireConnection;1730;327;777;0
WireConnection;1730;286;44;0
WireConnection;1730;30;1134;0
WireConnection;1730;146;46;0
WireConnection;1730;147;47;0
WireConnection;1730;302;54;0
WireConnection;741;0;756;0
WireConnection;1167;0;1164;0
WireConnection;1167;1;1165;0
WireConnection;1167;2;1166;0
WireConnection;1196;0;1191;0
WireConnection;1196;1;1192;0
WireConnection;1196;2;1195;0
WireConnection;1197;0;1193;0
WireConnection;1198;0;1194;0
WireConnection;1721;0;1720;0
WireConnection;1332;0;1729;0
WireConnection;1332;3;1729;348
WireConnection;1333;0;1730;0
WireConnection;1333;3;1730;348
WireConnection;1661;0;1167;0
WireConnection;1199;0;1196;0
WireConnection;1199;1;1197;0
WireConnection;1199;2;1198;0
WireConnection;1722;0;1721;0
WireConnection;175;0;1728;0
WireConnection;732;0;1332;0
WireConnection;186;0;1333;0
WireConnection;1127;0;762;0
WireConnection;1662;0;1167;0
WireConnection;1662;1;1661;0
WireConnection;1662;2;1660;0
WireConnection;1718;0;1199;0
WireConnection;1718;1;1719;0
WireConnection;1718;2;1722;0
WireConnection;466;0;465;0
WireConnection;467;0;465;0
WireConnection;1125;0;1127;0
WireConnection;1168;0;1662;0
WireConnection;1663;0;1718;0
WireConnection;1726;0;1665;0
WireConnection;1726;1;1727;0
WireConnection;1726;2;1722;0
WireConnection;470;0;467;0
WireConnection;472;0;467;0
WireConnection;473;0;469;0
WireConnection;473;1;468;0
WireConnection;473;2;466;0
WireConnection;455;0;399;0
WireConnection;456;0;399;0
WireConnection;737;0;177;0
WireConnection;737;1;739;0
WireConnection;737;2;182;0
WireConnection;1126;0;1127;0
WireConnection;1126;1;1125;0
WireConnection;1128;0;762;0
WireConnection;1664;0;1718;0
WireConnection;1664;1;1663;0
WireConnection;1664;2;1726;0
WireConnection;474;0;472;0
WireConnection;476;0;473;0
WireConnection;476;1;471;0
WireConnection;476;2;470;0
WireConnection;937;0;472;0
WireConnection;457;0;456;0
WireConnection;384;0;383;0
WireConnection;384;1;382;0
WireConnection;384;2;455;0
WireConnection;459;0;456;0
WireConnection;1517;0;737;0
WireConnection;1517;1;1518;0
WireConnection;1671;0;177;0
WireConnection;1671;1;182;0
WireConnection;1129;0;1128;0
WireConnection;1129;2;1126;0
WireConnection;1205;0;498;0
WireConnection;1205;1;1206;0
WireConnection;1202;0;1664;0
WireConnection;477;0;476;0
WireConnection;477;1;475;0
WireConnection;477;2;474;0
WireConnection;936;0;937;0
WireConnection;462;0;384;0
WireConnection;462;1;458;0
WireConnection;462;2;457;0
WireConnection;460;0;459;0
WireConnection;933;0;459;0
WireConnection;740;1;1671;0
WireConnection;740;0;1517;0
WireConnection;1731;338;558;0
WireConnection;1731;328;784;0
WireConnection;1731;327;778;0
WireConnection;1731;286;555;0
WireConnection;1731;30;1129;0
WireConnection;1731;146;1516;0
WireConnection;1731;147;1205;0
WireConnection;1731;368;565;0
WireConnection;1731;302;560;0
WireConnection;934;0;477;0
WireConnection;934;1;935;0
WireConnection;934;2;936;0
WireConnection;463;0;462;0
WireConnection;463;1;461;0
WireConnection;463;2;460;0
WireConnection;932;0;933;0
WireConnection;543;0;545;0
WireConnection;543;1;740;0
WireConnection;543;2;546;0
WireConnection;1203;0;1204;0
WireConnection;1203;1;565;0
WireConnection;1340;0;1731;336
WireConnection;1340;3;1731;358
WireConnection;482;0;934;0
WireConnection;480;0;478;0
WireConnection;483;0;478;0
WireConnection;479;0;934;0
WireConnection;481;0;934;0
WireConnection;930;0;463;0
WireConnection;930;1;931;0
WireConnection;930;2;932;0
WireConnection;1331;0;1731;0
WireConnection;1331;3;1731;348
WireConnection;544;1;547;0
WireConnection;544;0;543;0
WireConnection;495;0;1129;0
WireConnection;495;1;1203;0
WireConnection;495;2;499;0
WireConnection;1343;0;1730;315
WireConnection;1343;3;1730;358
WireConnection;180;0;1340;0
WireConnection;484;0;479;0
WireConnection;484;1;481;0
WireConnection;484;2;480;0
WireConnection;485;0;482;0
WireConnection;486;0;482;0
WireConnection;487;0;483;0
WireConnection;488;0;483;0
WireConnection;385;0;930;0
WireConnection;386;0;400;0
WireConnection;387;0;930;0
WireConnection;388;0;930;0
WireConnection;389;0;400;0
WireConnection;561;0;1331;0
WireConnection;572;0;544;0
WireConnection;1011;0;1043;0
WireConnection;1012;0;1043;0
WireConnection;978;0;977;0
WireConnection;979;0;977;0
WireConnection;1079;0;1111;0
WireConnection;1080;0;1111;0
WireConnection;1045;0;1077;0
WireConnection;1046;0;1077;0
WireConnection;1341;0;495;0
WireConnection;1341;3;1342;0
WireConnection;192;0;1343;0
WireConnection;53;0;52;1
WireConnection;489;0;484;0
WireConnection;489;1;485;0
WireConnection;489;2;488;0
WireConnection;490;0;486;0
WireConnection;491;0;487;0
WireConnection;1716;0;1715;0
WireConnection;390;0;385;0
WireConnection;390;1;387;0
WireConnection;390;2;386;0
WireConnection;391;0;388;0
WireConnection;392;0;388;0
WireConnection;393;0;389;0
WireConnection;394;0;389;0
WireConnection;1792;0;1791;0
WireConnection;1793;0;1791;0
WireConnection;1015;0;1012;0
WireConnection;1017;0;1014;0
WireConnection;1017;1;1013;0
WireConnection;1017;2;1011;0
WireConnection;1018;0;1012;0
WireConnection;982;0;979;0
WireConnection;984;0;981;0
WireConnection;984;1;980;0
WireConnection;984;2;978;0
WireConnection;985;0;979;0
WireConnection;1083;0;1080;0
WireConnection;1085;0;1082;0
WireConnection;1085;1;1081;0
WireConnection;1085;2;1079;0
WireConnection;1086;0;1080;0
WireConnection;1049;0;1046;0
WireConnection;1051;0;1048;0
WireConnection;1051;1;1047;0
WireConnection;1051;2;1045;0
WireConnection;1052;0;1046;0
WireConnection;501;0;500;0
WireConnection;501;1;1341;0
WireConnection;492;0;489;0
WireConnection;492;1;490;0
WireConnection;492;2;491;0
WireConnection;1717;0;1716;0
WireConnection;395;0;390;0
WireConnection;395;1;391;0
WireConnection;395;2;394;0
WireConnection;396;0;392;0
WireConnection;397;0;393;0
WireConnection;567;0;568;0
WireConnection;567;1;573;0
WireConnection;569;0;566;0
WireConnection;569;1;568;0
WireConnection;1796;0;1793;0
WireConnection;1799;0;1793;0
WireConnection;1798;0;1795;0
WireConnection;1798;1;1794;0
WireConnection;1798;2;1792;0
WireConnection;1020;0;1017;0
WireConnection;1020;1;1016;0
WireConnection;1020;2;1015;0
WireConnection;1021;0;1018;0
WireConnection;1022;0;1018;0
WireConnection;987;0;984;0
WireConnection;987;1;983;0
WireConnection;987;2;982;0
WireConnection;988;0;985;0
WireConnection;989;0;985;0
WireConnection;1088;0;1085;0
WireConnection;1088;1;1084;0
WireConnection;1088;2;1083;0
WireConnection;1089;0;1086;0
WireConnection;1090;0;1086;0
WireConnection;1054;0;1051;0
WireConnection;1054;1;1050;0
WireConnection;1054;2;1049;0
WireConnection;1055;0;1052;0
WireConnection;1056;0;1052;0
WireConnection;504;0;505;0
WireConnection;504;1;501;0
WireConnection;506;0;507;0
WireConnection;506;1;505;0
WireConnection;1713;0;492;0
WireConnection;1713;1;1714;0
WireConnection;1713;2;1717;0
WireConnection;398;0;395;0
WireConnection;398;1;396;0
WireConnection;398;2;397;0
WireConnection;571;0;569;0
WireConnection;571;1;567;0
WireConnection;1801;0;1798;0
WireConnection;1801;1;1797;0
WireConnection;1801;2;1796;0
WireConnection;1802;0;1799;0
WireConnection;1803;0;1799;0
WireConnection;1023;0;1020;0
WireConnection;1023;1;1019;0
WireConnection;1023;2;1021;0
WireConnection;1025;0;1022;0
WireConnection;990;0;987;0
WireConnection;990;1;986;0
WireConnection;990;2;988;0
WireConnection;992;0;989;0
WireConnection;1091;0;1088;0
WireConnection;1091;1;1087;0
WireConnection;1091;2;1089;0
WireConnection;1093;0;1090;0
WireConnection;1057;0;1054;0
WireConnection;1057;1;1053;0
WireConnection;1057;2;1055;0
WireConnection;1059;0;1056;0
WireConnection;508;0;506;0
WireConnection;508;1;504;0
WireConnection;493;0;1713;0
WireConnection;291;0;398;0
WireConnection;580;0;571;0
WireConnection;1804;0;1801;0
WireConnection;1804;1;1800;0
WireConnection;1804;2;1802;0
WireConnection;1806;0;1803;0
WireConnection;1827;0;1803;0
WireConnection;1026;0;1023;0
WireConnection;1026;1;1024;0
WireConnection;1026;2;1025;0
WireConnection;994;0;990;0
WireConnection;994;1;991;0
WireConnection;994;2;992;0
WireConnection;1094;0;1091;0
WireConnection;1094;1;1092;0
WireConnection;1094;2;1093;0
WireConnection;1060;0;1057;0
WireConnection;1060;1;1058;0
WireConnection;1060;2;1059;0
WireConnection;549;0;508;0
WireConnection;1807;0;1804;0
WireConnection;1807;1;1805;0
WireConnection;1807;2;1806;0
WireConnection;1826;0;1827;0
WireConnection;1027;0;1026;0
WireConnection;1028;0;1041;0
WireConnection;1029;0;1026;0
WireConnection;1030;0;1026;0
WireConnection;1031;0;1041;0
WireConnection;995;0;994;0
WireConnection;996;0;993;0
WireConnection;997;0;994;0
WireConnection;998;0;994;0
WireConnection;999;0;993;0
WireConnection;1095;0;1094;0
WireConnection;1096;0;1109;0
WireConnection;1097;0;1094;0
WireConnection;1098;0;1094;0
WireConnection;1099;0;1109;0
WireConnection;1061;0;1060;0
WireConnection;1062;0;1075;0
WireConnection;1063;0;1060;0
WireConnection;1064;0;1060;0
WireConnection;1065;0;1075;0
WireConnection;402;0;288;0
WireConnection;576;0;578;0
WireConnection;576;1;582;0
WireConnection;576;2;577;0
WireConnection;1825;0;1807;0
WireConnection;1825;1;1828;0
WireConnection;1825;2;1826;0
WireConnection;1032;0;1027;0
WireConnection;1032;1;1029;0
WireConnection;1032;2;1028;0
WireConnection;1033;0;1030;0
WireConnection;1034;0;1030;0
WireConnection;1035;0;1031;0
WireConnection;1036;0;1031;0
WireConnection;1000;0;995;0
WireConnection;1000;1;997;0
WireConnection;1000;2;996;0
WireConnection;1001;0;998;0
WireConnection;1002;0;998;0
WireConnection;1003;0;999;0
WireConnection;1004;0;999;0
WireConnection;1100;0;1095;0
WireConnection;1100;1;1097;0
WireConnection;1100;2;1096;0
WireConnection;1101;0;1098;0
WireConnection;1102;0;1098;0
WireConnection;1103;0;1099;0
WireConnection;1104;0;1099;0
WireConnection;1066;0;1061;0
WireConnection;1066;1;1063;0
WireConnection;1066;2;1062;0
WireConnection;1067;0;1064;0
WireConnection;1068;0;1064;0
WireConnection;1069;0;1065;0
WireConnection;1070;0;1065;0
WireConnection;509;0;194;0
WireConnection;509;1;550;0
WireConnection;509;2;511;0
WireConnection;574;1;575;0
WireConnection;574;0;576;0
WireConnection;1809;0;1825;0
WireConnection;1810;0;1808;0
WireConnection;1811;0;1825;0
WireConnection;1812;0;1825;0
WireConnection;1813;0;1808;0
WireConnection;1037;0;1032;0
WireConnection;1037;1;1033;0
WireConnection;1037;2;1036;0
WireConnection;1038;0;1034;0
WireConnection;1039;0;1035;0
WireConnection;1005;0;1000;0
WireConnection;1005;1;1001;0
WireConnection;1005;2;1004;0
WireConnection;1006;0;1002;0
WireConnection;1007;0;1003;0
WireConnection;1105;0;1100;0
WireConnection;1105;1;1101;0
WireConnection;1105;2;1104;0
WireConnection;1106;0;1102;0
WireConnection;1107;0;1103;0
WireConnection;1071;0;1066;0
WireConnection;1071;1;1067;0
WireConnection;1071;2;1070;0
WireConnection;1072;0;1068;0
WireConnection;1073;0;1069;0
WireConnection;503;1;510;0
WireConnection;503;0;509;0
WireConnection;586;0;574;0
WireConnection;586;1;36;0
WireConnection;1814;0;1809;0
WireConnection;1814;1;1811;0
WireConnection;1814;2;1810;0
WireConnection;1815;0;1812;0
WireConnection;1816;0;1812;0
WireConnection;1817;0;1813;0
WireConnection;1818;0;1813;0
WireConnection;686;0;685;0
WireConnection;686;1;687;0
WireConnection;1040;0;1037;0
WireConnection;1040;1;1038;0
WireConnection;1040;2;1039;0
WireConnection;1008;0;1005;0
WireConnection;1008;1;1006;0
WireConnection;1008;2;1007;0
WireConnection;1108;0;1105;0
WireConnection;1108;1;1106;0
WireConnection;1108;2;1107;0
WireConnection;1074;0;1071;0
WireConnection;1074;1;1072;0
WireConnection;1074;2;1073;0
WireConnection;73;1;503;0
WireConnection;188;0;586;0
WireConnection;1819;0;1814;0
WireConnection;1819;1;1815;0
WireConnection;1819;2;1818;0
WireConnection;1821;0;1817;0
WireConnection;1820;0;1816;0
WireConnection;688;0;686;0
WireConnection;1009;0;1008;0
WireConnection;1042;0;1040;0
WireConnection;1110;0;1108;0
WireConnection;1076;0;1074;0
WireConnection;195;0;73;0
WireConnection;1822;0;1819;0
WireConnection;1822;1;1820;0
WireConnection;1822;2;1821;0
WireConnection;1829;0;1826;0
WireConnection;1732;0;189;0
WireConnection;1824;0;1822;0
WireConnection;1824;1;1820;0
WireConnection;1824;2;1829;0
WireConnection;1831;0;1362;0
WireConnection;1117;0;1113;0
WireConnection;1117;1;1114;0
WireConnection;1117;2;1115;0
WireConnection;1117;3;1116;0
WireConnection;886;0;591;0
WireConnection;1734;0;196;0
WireConnection;1740;0;1732;0
WireConnection;1823;0;1824;0
WireConnection;1694;266;1117;0
WireConnection;1694;1;886;0
WireConnection;1739;0;1740;0
WireConnection;1739;1;1734;0
WireConnection;1833;0;1832;0
WireConnection;883;0;1694;183
WireConnection;883;1;1694;0
WireConnection;1608;14;1373;0
WireConnection;190;0;1730;314
WireConnection;1742;0;1739;0
WireConnection;1834;0;1830;0
WireConnection;1834;1;1833;0
WireConnection;770;0;769;0
WireConnection;770;1;769;0
WireConnection;1406;19;1608;0
WireConnection;1322;0;883;0
WireConnection;1743;0;1742;0
WireConnection;1743;1;1834;0
WireConnection;1654;0;1730;358
WireConnection;1655;0;1654;0
WireConnection;1653;0;182;0
WireConnection;1329;0;1730;331
WireConnection;1329;3;1330;0
WireConnection;181;0;1329;0
WireConnection;768;0;1406;0
WireConnection;768;2;770;0
WireConnection;768;3;159;0
WireConnection;1328;0;1728;0
WireConnection;1328;1;1728;0
WireConnection;1328;2;1728;0
WireConnection;1328;3;1728;0
WireConnection;1324;0;1728;0
WireConnection;271;0;269;0
WireConnection;272;0;269;0
WireConnection;273;0;278;0
WireConnection;273;1;278;0
WireConnection;273;2;272;0
WireConnection;275;0;271;0
WireConnection;283;0;282;0
WireConnection;284;0;282;0
WireConnection;285;0;287;0
WireConnection;285;1;287;0
WireConnection;285;2;284;0
WireConnection;289;0;283;0
WireConnection;286;0;285;0
WireConnection;286;1;288;0
WireConnection;286;2;289;0
WireConnection;1345;0;1344;0
WireConnection;1334;0;1327;0
WireConnection;1336;0;1334;0
WireConnection;1347;0;1345;0
WireConnection;1346;0;1336;0
WireConnection;1346;1;1347;0
WireConnection;17;0;9;3
WireConnection;219;0;52;3
WireConnection;218;0;52;4
WireConnection;407;0;406;1
WireConnection;408;0;406;2
WireConnection;409;0;406;3
WireConnection;410;0;406;4
WireConnection;415;0;414;1
WireConnection;416;0;414;2
WireConnection;417;0;414;3
WireConnection;418;0;414;4
WireConnection;970;0;966;0
WireConnection;971;0;967;0
WireConnection;972;0;974;0
WireConnection;973;0;975;0
WireConnection;1278;0;1281;0
WireConnection;1278;1;1283;0
WireConnection;1279;0;1278;0
WireConnection;1281;1;1280;0
WireConnection;1283;0;1282;0
WireConnection;1288;0;1287;0
WireConnection;1289;0;1287;0
WireConnection;1292;0;1289;0
WireConnection;1294;0;1291;0
WireConnection;1294;1;1290;0
WireConnection;1294;2;1288;0
WireConnection;1295;0;1289;0
WireConnection;1297;0;1294;0
WireConnection;1297;1;1293;0
WireConnection;1297;2;1292;0
WireConnection;1298;0;1295;0
WireConnection;1299;0;1295;0
WireConnection;1300;0;1297;0
WireConnection;1300;1;1296;0
WireConnection;1300;2;1298;0
WireConnection;1302;0;1299;0
WireConnection;1303;0;1300;0
WireConnection;1303;1;1301;0
WireConnection;1303;2;1302;0
WireConnection;1305;0;1303;0
WireConnection;1306;0;1304;0
WireConnection;1307;0;1303;0
WireConnection;1308;0;1303;0
WireConnection;1309;0;1304;0
WireConnection;1310;0;1305;0
WireConnection;1310;1;1307;0
WireConnection;1310;2;1306;0
WireConnection;1311;0;1308;0
WireConnection;1312;0;1308;0
WireConnection;1313;0;1309;0
WireConnection;1314;0;1309;0
WireConnection;1315;0;1310;0
WireConnection;1315;1;1311;0
WireConnection;1315;2;1314;0
WireConnection;1316;0;1312;0
WireConnection;1317;0;1313;0
WireConnection;1318;0;1315;0
WireConnection;1318;1;1316;0
WireConnection;1318;2;1317;0
WireConnection;1319;0;1318;0
WireConnection;1335;0;1346;0
WireConnection;1355;0;1335;0
WireConnection;276;0;274;0
WireConnection;276;1;274;0
WireConnection;276;2;275;0
WireConnection;1426;0;1728;69
WireConnection;37;0;177;0
WireConnection;37;1;1655;0
WireConnection;250;0;247;0
WireConnection;56;0;189;0
WireConnection;56;1;191;0
WireConnection;56;2;196;0
WireConnection;1747;1;1743;0
WireConnection;1747;0;1834;0
WireConnection;0;2;1323;0
WireConnection;0;9;1747;0
WireConnection;0;13;56;0
WireConnection;0;11;768;0
ASEEND*/
//CHKSM=3464ECCB8F1FF3BAACD42672295EF919B1570868