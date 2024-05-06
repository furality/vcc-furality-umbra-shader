// Made with Amplify Shader Editor v1.9.3.3
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Furality/Umbra Shader/Umbra Opaque"
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
		[ToggleUI]_AffectDiffuseColor("Affect Diffuse Color", Float) = 0
		_MaskClipValue("MaskClipValue", Float) = 0.5
		[Enum(UnityEngine.Rendering.BlendOp)]_BlendOpRGB("Blend Op RGB", Float) = 0
		[ToggleUI]_AffectDiffuseNormals("AffectDiffuseNormals", Float) = 0
		[ToggleUI]_AffectIndirectColor("AffectIndirectColor", Float) = 0
		[Enum(UnityEngine.Rendering.BlendMode)]_DestinationBlendRGB("Destination Blend RGB", Float) = 10
		_FleckMetallic("FleckMetallic", Range( 0 , 2)) = 1
		[Enum(UnityEngine.Rendering.BlendMode)]_SourceBlendRGB("Source Blend RGB", Float) = 1
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
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_GlintHighlightChannel("Glint Highlight Channel", Float) = 0
		[Header()][Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,MainTex,5,None,4)]_OpacityMap("Opacity Map", Float) = 5
		_GlintIntensity("Glint Intensity", Range( 0 , 2)) = 1
		_GlintGloss("Glint Gloss", Range( 0 , 1)) = 0.95
		[Header()][Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_GlintGlossMap("Glint Gloss Map", Float) = 4
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_OpacityChannel("Opacity Channel", Float) = 3
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
		Tags{ "RenderType" = "Opaque"  "Queue" = "Geometry+0" "IsEmissive" = "true"  }
		Cull [_Culling]
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
			float2 vertexToFrag51_g5489;
			float2 vertexToFrag51_g5488;
			float2 vertexToFrag51_g5487;
			float2 vertexToFrag51_g5486;
			float2 uv_texcoord;
			float2 vertexToFrag51_g8052;
			float3 worldNormal;
			INTERNAL_DATA
			float2 vertexToFrag51_g8025;
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

		uniform float _ShowGreenGlow;
		uniform float _ShowGreenAL;
		uniform float _ShowBlueGlow;
		uniform float _ShowBlueAL;
		uniform float _ShowAlphaGlow;
		uniform float _ShowAlphaAL;
		uniform float _ShowEmissGlow;
		uniform float _ShowEmissAL;
		uniform float _ShowRedGlow;
		uniform float _ShowRedAL;
		uniform float _Culling;
		uniform float _BlendOPdst;
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
		uniform float _BlendOPIndex;
		uniform float _BlendModeIndex;
		uniform float _MaskClipValue;
		uniform float _OpacityMap;
		uniform float _OpacityChannel;
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
		uniform float _GlowMask0Channel;
		uniform float _GlowMask0;
		uniform sampler2D _MaskMap04;
		uniform float4 _MaskMap04_ST;
		uniform float _MaskMap04UV;
		uniform sampler2D _MaskMap03;
		uniform float4 _MaskMap03_ST;
		uniform float _MaskMap03UV;
		uniform sampler2D _MaskMap02;
		uniform float4 _MaskMap02_ST;
		uniform float _MaskMap02UV;
		uniform sampler2D _MaskMap01;
		uniform float4 _MaskMap01_ST;
		uniform float _MaskMap01UV;
		uniform float _GlowMask1Channel;
		uniform float _GlowMask1;
		uniform float _GlowMask2Channel;
		uniform float _GlowMask2;
		uniform float _GlowMask3Channel;
		uniform float _GlowMask3;
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
		uniform float _EmissionMaskChannel;
		uniform float _EmissionMaskMap;
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
		uniform float _DetailNormalChannel;
		uniform float _DetailNormalMask;
		uniform float _FleckScale;
		uniform float _GlintDensity;
		uniform sampler2D _FleckShape;
		uniform float _FleckSize;
		uniform float _GlintAmount;
		uniform sampler2D _DictionaryTex;
		uniform float _GlintTimescale;
		uniform float4 _FleckColor;
		uniform float _GlintChannel;
		uniform float _GlintMap;
		uniform float _AffectDiffuseNormals;
		uniform float _GlossChannel;
		uniform float _GlossMap;
		uniform float _Workflow;
		uniform float _InvertGloss;
		uniform float _GlossMult;
		uniform sampler2D _MainTex;
		uniform float4 _MainTex_ST;
		uniform float4 _Color;
		uniform float _ReplaceBaseColor;
		uniform float _MetallicChannel;
		uniform float _MetallicMask;
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
		uniform float _SpecularMaskChannel;
		uniform float _SpecularMask;
		uniform float _AffectDiffuseColor;
		uniform float _OcclusionChannel;
		uniform float _OcclusionMap;
		uniform float _OcclusionPower;
		uniform float _ReflectionMaskChannel;
		uniform float _ReflectionMask;
		uniform float _AffectIndirect;
		uniform float _ClearCoatReflection;
		uniform float _ClearCoatReflectionMap;
		uniform float _ClearCoatReflectionChannel;
		uniform float _InvertReflectionGloss;


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


		inline int IsLumaActive11_g8127( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline float3 LumaGlowData2_g8126( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) );
		}


		inline int IsLumaActive11_g8129( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g8133( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float glslmod13_g8120( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod12_g8120( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod34_g8120( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float3 LumaGlowLerp11_g8128( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline float4 AudioLinkLerp1_g8132( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float3 LumaGlowLerp11_g8130( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline int IsLumaActive11_g8131( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g8136(  )
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


		inline float AudioLinkData3_g8121( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) ).rrrr;
		}


		inline float glslmod96_g8120( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod97_g8120( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod98_g8120( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float AudioLinkLerp3_g8123( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline float AudioLinkLerp3_g8125( int Band, float FilteredAmount )
		{
			return AudioLinkLerp( ALPASS_FILTEREDAUDIOLINK + float2( FilteredAmount, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g8135(  )
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


		inline int IsLumaActive11_g8060( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline float3 LumaGlowData2_g8059( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) );
		}


		inline int IsLumaActive11_g8062( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g8066( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float glslmod13_g8053( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod12_g8053( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod34_g8053( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float3 LumaGlowLerp11_g8061( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline float4 AudioLinkLerp1_g8065( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float3 LumaGlowLerp11_g8063( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline int IsLumaActive11_g8064( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g8069(  )
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


		inline float AudioLinkData3_g8054( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) ).rrrr;
		}


		inline float glslmod96_g8053( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod97_g8053( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod98_g8053( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float AudioLinkLerp3_g8056( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline float AudioLinkLerp3_g8058( int Band, float FilteredAmount )
		{
			return AudioLinkLerp( ALPASS_FILTEREDAUDIOLINK + float2( FilteredAmount, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g8068(  )
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


		inline int IsLumaActive11_g8077( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline float3 LumaGlowData2_g8076( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) );
		}


		inline int IsLumaActive11_g8079( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g8083( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float glslmod13_g8070( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod12_g8070( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod34_g8070( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float3 LumaGlowLerp11_g8078( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline float4 AudioLinkLerp1_g8082( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float3 LumaGlowLerp11_g8080( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline int IsLumaActive11_g8081( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g8086(  )
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


		inline float AudioLinkData3_g8071( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) ).rrrr;
		}


		inline float glslmod96_g8070( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod97_g8070( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod98_g8070( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float AudioLinkLerp3_g8073( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline float AudioLinkLerp3_g8075( int Band, float FilteredAmount )
		{
			return AudioLinkLerp( ALPASS_FILTEREDAUDIOLINK + float2( FilteredAmount, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g8085(  )
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


		inline int IsLumaActive11_g8094( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline float3 LumaGlowData2_g8093( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) );
		}


		inline int IsLumaActive11_g8096( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g8100( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float glslmod13_g8087( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod12_g8087( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod34_g8087( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float3 LumaGlowLerp11_g8095( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline float4 AudioLinkLerp1_g8099( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float3 LumaGlowLerp11_g8097( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline int IsLumaActive11_g8098( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g8103(  )
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


		inline float AudioLinkData3_g8088( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) ).rrrr;
		}


		inline float glslmod96_g8087( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod97_g8087( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod98_g8087( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float AudioLinkLerp3_g8090( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline float AudioLinkLerp3_g8092( int Band, float FilteredAmount )
		{
			return AudioLinkLerp( ALPASS_FILTEREDAUDIOLINK + float2( FilteredAmount, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g8102(  )
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


		inline int IsLumaActive11_g8116( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline float3 LumaGlowData2_g8115( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) );
		}


		inline int IsLumaActive11_g8118( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline int AudioLinkDecodeDataAsUInt6_g8110( int Band, int Mode )
		{
			return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
		}


		inline float glslmod13_g8104( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod12_g8104( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod34_g8104( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float3 LumaGlowLerp11_g8117( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline float4 AudioLinkLerp1_g8114( float Position )
		{
			return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
		}


		inline float3 LumaGlowLerp11_g8112( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
		}


		inline int IsLumaActive11_g8113( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		inline float AudioLinkData3_g8105( int Band, int Delay )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) ).rrrr;
		}


		inline float glslmod96_g8104( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod97_g8104( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float glslmod98_g8104( float x, float y )
		{
			return glsl_mod(x,y);
		}


		inline float AudioLinkLerp3_g8107( int Band, float Delay )
		{
			return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
		}


		inline float AudioLinkLerp3_g8109( int Band, float FilteredAmount )
		{
			return AudioLinkLerp( ALPASS_FILTEREDAUDIOLINK + float2( FilteredAmount, Band ) ).r;
		}


		inline float glslmod270_g8104( float x, float y )
		{
			return glsl_mod(x,y);
		}


		int IfAudioLinkv2Exists1_g8119(  )
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


		float2 voronoihash10_g8038( float2 p )
		{
			
			p = float2( dot( p, float2( 127.1, 311.7 ) ), dot( p, float2( 269.5, 183.3 ) ) );
			return frac( sin( p ) *43758.5453);
		}


		float voronoi10_g8038( float2 v, float time, inout float2 id, inout float2 mr, float smoothness, inout float2 smoothId )
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
			 		float2 o = voronoihash10_g8038( n + g );
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

		float3 sampleReflectionProbe5_g8033( float3 uvw )
		{
			half4 skyData = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, uvw, 5); //('cubemap', 'sample coordinate', 'map-map level')
			         half3 skyColor = DecodeHDR (skyData, unity_SpecCube0_HDR);
			         return half4(skyColor, 1.0);
		}


		inline int IsLumaActive11_g8034( int Band )
		{
			return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
		}


		int IfAudioLinkv2Exists1_g8036(  )
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


		int LightExists8_g8048(  )
		{
			int lightEnv = int(any(_WorldSpaceLightPos0.xyz));       
			if(lightEnv != 1){
				return 0;
				}
			return 1;
		}


		float3 CenterEye1_g8041(  )
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


		int LightExists8_g8043(  )
		{
			int lightEnv = int(any(_WorldSpaceLightPos0.xyz));       
			if(lightEnv != 1){
				return 0;
				}
			return 1;
		}


		int LightExists8_g8046(  )
		{
			int lightEnv = int(any(_WorldSpaceLightPos0.xyz));       
			if(lightEnv != 1){
				return 0;
				}
			return 1;
		}


		int LightExists8_g8050(  )
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
			float temp_output_14_0_g8137 = _TileDiscardUV;
			float2 lerpResult31_g8137 = lerp( v.texcoord.xy , v.texcoord1.xy , saturate( temp_output_14_0_g8137 ));
			float temp_output_36_0_g8137 = ( temp_output_14_0_g8137 - 1.0 );
			float2 lerpResult34_g8137 = lerp( lerpResult31_g8137 , v.texcoord2.xy , saturate( temp_output_36_0_g8137 ));
			float temp_output_40_0_g8137 = ( temp_output_36_0_g8137 - 1.0 );
			float2 lerpResult38_g8137 = lerp( lerpResult34_g8137 , v.texcoord3.xy , saturate( temp_output_40_0_g8137 ));
			float2 lerpResult41_g8137 = lerp( lerpResult38_g8137 , v.ase_texcoord4.xy , saturate( ( temp_output_40_0_g8137 - 1.0 ) ));
			float2 vertexToFrag51_g8137 = lerpResult41_g8137;
			float2 TileDiscardUVs18_g8138 = ( vertexToFrag51_g8137 + -1.0 );
			float2 break10_g8138 = TileDiscardUVs18_g8138;
			float Row0Col071_g8138 = saturate( ( max( max( step( _Vector4.x , break10_g8138.x ) , step( -( _Vector4.x - 1.0 ) , -break10_g8138.x ) ) , max( step( _Vector4.y , break10_g8138.y ) , step( -( _Vector4.y - 1.0 ) , -break10_g8138.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_0 ) * ( 1.0 - _UDIMDiscardRow0_0 ) ) ) );
			float2 _Vector5 = float2(1,0);
			float2 break82_g8138 = TileDiscardUVs18_g8138;
			float Row0Col189_g8138 = saturate( ( max( max( step( _Vector5.x , break82_g8138.x ) , step( -( _Vector5.x - 1.0 ) , -break82_g8138.x ) ) , max( step( _Vector5.y , break82_g8138.y ) , step( -( _Vector5.y - 1.0 ) , -break82_g8138.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_1 ) * ( 1.0 - _UDIMDiscardRow0_1 ) ) ) );
			float2 _Vector6 = float2(2,0);
			float2 break100_g8138 = TileDiscardUVs18_g8138;
			float Row0Col2106_g8138 = saturate( ( max( max( step( _Vector6.x , break100_g8138.x ) , step( -( _Vector6.x - 1.0 ) , -break100_g8138.x ) ) , max( step( _Vector6.y , break100_g8138.y ) , step( -( _Vector6.y - 1.0 ) , -break100_g8138.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_2 ) * ( 1.0 - _UDIMDiscardRow0_2 ) ) ) );
			float2 _Vector7 = float2(3,0);
			float2 break118_g8138 = TileDiscardUVs18_g8138;
			float Row0Col3124_g8138 = saturate( ( max( max( step( _Vector7.x , break118_g8138.x ) , step( -( _Vector7.x - 1.0 ) , -break118_g8138.x ) ) , max( step( _Vector7.y , break118_g8138.y ) , step( -( _Vector7.y - 1.0 ) , -break118_g8138.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_3 ) * ( 1.0 - _UDIMDiscardRow0_3 ) ) ) );
			float2 _Vector8 = float2(0,1);
			float2 break141_g8138 = TileDiscardUVs18_g8138;
			float Row1Col0148_g8138 = saturate( ( max( max( step( _Vector8.x , break141_g8138.x ) , step( -( _Vector8.x - 1.0 ) , -break141_g8138.x ) ) , max( step( _Vector8.y , break141_g8138.y ) , step( -( _Vector8.y - 1.0 ) , -break141_g8138.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_0 ) * ( 1.0 - _UDIMDiscardRow1_0 ) ) ) );
			float2 _Vector9 = float2(1,1);
			float2 break159_g8138 = TileDiscardUVs18_g8138;
			float Row1Col1165_g8138 = saturate( ( max( max( step( _Vector9.x , break159_g8138.x ) , step( -( _Vector9.x - 1.0 ) , -break159_g8138.x ) ) , max( step( _Vector9.y , break159_g8138.y ) , step( -( _Vector9.y - 1.0 ) , -break159_g8138.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_1 ) * ( 1.0 - _UDIMDiscardRow1_1 ) ) ) );
			float2 _Vector10 = float2(2,1);
			float2 break177_g8138 = TileDiscardUVs18_g8138;
			float Row1Col2183_g8138 = saturate( ( max( max( step( _Vector10.x , break177_g8138.x ) , step( -( _Vector10.x - 1.0 ) , -break177_g8138.x ) ) , max( step( _Vector10.y , break177_g8138.y ) , step( -( _Vector10.y - 1.0 ) , -break177_g8138.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_2 ) * ( 1.0 - _UDIMDiscardRow1_2 ) ) ) );
			float2 _Vector11 = float2(3,1);
			float2 break195_g8138 = TileDiscardUVs18_g8138;
			float Row1Col3201_g8138 = saturate( ( max( max( step( _Vector11.x , break195_g8138.x ) , step( -( _Vector11.x - 1.0 ) , -break195_g8138.x ) ) , max( step( _Vector11.y , break195_g8138.y ) , step( -( _Vector11.y - 1.0 ) , -break195_g8138.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_3 ) * ( 1.0 - _UDIMDiscardRow1_3 ) ) ) );
			float2 _Vector12 = float2(0,2);
			float2 break222_g8138 = TileDiscardUVs18_g8138;
			float Row2Col0229_g8138 = saturate( ( max( max( step( _Vector12.x , break222_g8138.x ) , step( -( _Vector12.x - 1.0 ) , -break222_g8138.x ) ) , max( step( _Vector12.y , break222_g8138.y ) , step( -( _Vector12.y - 1.0 ) , -break222_g8138.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_0 ) * ( 1.0 - _UDIMDiscardRow2_0 ) ) ) );
			float2 _Vector13 = float2(1,2);
			float2 break239_g8138 = TileDiscardUVs18_g8138;
			float Row2Col1245_g8138 = saturate( ( max( max( step( _Vector13.x , break239_g8138.x ) , step( -( _Vector13.x - 1.0 ) , -break239_g8138.x ) ) , max( step( _Vector13.y , break239_g8138.y ) , step( -( _Vector13.y - 1.0 ) , -break239_g8138.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_1 ) * ( 1.0 - _UDIMDiscardRow2_1 ) ) ) );
			float2 _Vector14 = float2(2,2);
			float2 break256_g8138 = TileDiscardUVs18_g8138;
			float Row2Col2262_g8138 = saturate( ( max( max( step( _Vector14.x , break256_g8138.x ) , step( -( _Vector14.x - 1.0 ) , -break256_g8138.x ) ) , max( step( _Vector14.y , break256_g8138.y ) , step( -( _Vector14.y - 1.0 ) , -break256_g8138.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_2 ) * ( 1.0 - _UDIMDiscardRow2_2 ) ) ) );
			float2 _Vector15 = float2(3,2);
			float2 break273_g8138 = TileDiscardUVs18_g8138;
			float Row2Col3279_g8138 = saturate( ( max( max( step( _Vector15.x , break273_g8138.x ) , step( -( _Vector15.x - 1.0 ) , -break273_g8138.x ) ) , max( step( _Vector15.y , break273_g8138.y ) , step( -( _Vector15.y - 1.0 ) , -break273_g8138.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_3 ) * ( 1.0 - _UDIMDiscardRow2_3 ) ) ) );
			float2 _Vector19 = float2(0,3);
			float2 break294_g8138 = TileDiscardUVs18_g8138;
			float Row3Col0352_g8138 = saturate( ( max( max( step( _Vector19.x , break294_g8138.x ) , step( -( _Vector19.x - 1.0 ) , -break294_g8138.x ) ) , max( step( _Vector19.y , break294_g8138.y ) , step( -( _Vector19.y - 1.0 ) , -break294_g8138.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_0 ) * ( 1.0 - _UDIMDiscardRow3_0 ) ) ) );
			float2 _Vector16 = float2(1,3);
			float2 break309_g8138 = TileDiscardUVs18_g8138;
			float Row3Col1351_g8138 = saturate( ( max( max( step( _Vector16.x , break309_g8138.x ) , step( -( _Vector16.x - 1.0 ) , -break309_g8138.x ) ) , max( step( _Vector16.y , break309_g8138.y ) , step( -( _Vector16.y - 1.0 ) , -break309_g8138.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_1 ) * ( 1.0 - _UDIMDiscardRow3_1 ) ) ) );
			float2 _Vector17 = float2(2,3);
			float2 break325_g8138 = TileDiscardUVs18_g8138;
			float Row3Col2350_g8138 = saturate( ( max( max( step( _Vector17.x , break325_g8138.x ) , step( -( _Vector17.x - 1.0 ) , -break325_g8138.x ) ) , max( step( _Vector17.y , break325_g8138.y ) , step( -( _Vector17.y - 1.0 ) , -break325_g8138.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_2 ) * ( 1.0 - _UDIMDiscardRow3_2 ) ) ) );
			float2 _Vector18 = float2(3,3);
			float2 break341_g8138 = TileDiscardUVs18_g8138;
			float Row3Col3349_g8138 = saturate( ( max( max( step( _Vector18.x , break341_g8138.x ) , step( -( _Vector18.x - 1.0 ) , -break341_g8138.x ) ) , max( step( _Vector18.y , break341_g8138.y ) , step( -( _Vector18.y - 1.0 ) , -break341_g8138.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_3 ) * ( 1.0 - _UDIMDiscardRow3_3 ) ) ) );
			float3 temp_cast_0 = (( 0.0 / 0.0 )).xxx;
			float3 ase_vertex3Pos = v.vertex.xyz;
			v.vertex.xyz = ( ( ( ( Row0Col071_g8138 * Row0Col189_g8138 * Row0Col2106_g8138 * Row0Col3124_g8138 ) * ( Row1Col0148_g8138 * Row1Col1165_g8138 * Row1Col2183_g8138 * Row1Col3201_g8138 ) ) * ( ( Row2Col0229_g8138 * Row2Col1245_g8138 * Row2Col2262_g8138 * Row2Col3279_g8138 ) * ( Row3Col0352_g8138 * Row3Col1351_g8138 * Row3Col2350_g8138 * Row3Col3349_g8138 ) ) ) < 0.001 ? temp_cast_0 : ase_vertex3Pos );
			v.vertex.w = 1;
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
			float2 uv_DirectionalMap = v.texcoord.xy * _DirectionalMap_ST.xy + _DirectionalMap_ST.zw;
			float2 uv2_DirectionalMap = v.texcoord1.xy * _DirectionalMap_ST.xy + _DirectionalMap_ST.zw;
			float temp_output_14_0_g8052 = _DirectionMapUV;
			float2 lerpResult11_g8052 = lerp( uv_DirectionalMap , uv2_DirectionalMap , saturate( temp_output_14_0_g8052 ));
			float2 uv3_DirectionalMap = v.texcoord2.xy * _DirectionalMap_ST.xy + _DirectionalMap_ST.zw;
			float temp_output_16_0_g8052 = ( temp_output_14_0_g8052 - 1.0 );
			float2 lerpResult12_g8052 = lerp( lerpResult11_g8052 , uv3_DirectionalMap , saturate( temp_output_16_0_g8052 ));
			float2 uv4_DirectionalMap = v.texcoord3.xy * _DirectionalMap_ST.xy + _DirectionalMap_ST.zw;
			float temp_output_21_0_g8052 = ( temp_output_16_0_g8052 - 1.0 );
			float2 lerpResult19_g8052 = lerp( lerpResult12_g8052 , uv4_DirectionalMap , saturate( temp_output_21_0_g8052 ));
			float2 uv5_DirectionalMap = v.ase_texcoord4 * _DirectionalMap_ST.xy + _DirectionalMap_ST.zw;
			float2 lerpResult27_g8052 = lerp( lerpResult19_g8052 , uv5_DirectionalMap.xy , saturate( ( temp_output_21_0_g8052 - 1.0 ) ));
			o.vertexToFrag51_g8052 = lerpResult27_g8052;
			float2 uv_DetailNormal = v.texcoord.xy * _DetailNormal_ST.xy + _DetailNormal_ST.zw;
			float2 uv2_DetailNormal = v.texcoord1.xy * _DetailNormal_ST.xy + _DetailNormal_ST.zw;
			float temp_output_14_0_g8025 = _DetailUV;
			float2 lerpResult11_g8025 = lerp( uv_DetailNormal , uv2_DetailNormal , saturate( temp_output_14_0_g8025 ));
			float2 uv3_DetailNormal = v.texcoord2.xy * _DetailNormal_ST.xy + _DetailNormal_ST.zw;
			float temp_output_16_0_g8025 = ( temp_output_14_0_g8025 - 1.0 );
			float2 lerpResult12_g8025 = lerp( lerpResult11_g8025 , uv3_DetailNormal , saturate( temp_output_16_0_g8025 ));
			float2 uv4_DetailNormal = v.texcoord3.xy * _DetailNormal_ST.xy + _DetailNormal_ST.zw;
			float temp_output_21_0_g8025 = ( temp_output_16_0_g8025 - 1.0 );
			float2 lerpResult19_g8025 = lerp( lerpResult12_g8025 , uv4_DetailNormal , saturate( temp_output_21_0_g8025 ));
			float2 uv5_DetailNormal = v.ase_texcoord4 * _DetailNormal_ST.xy + _DetailNormal_ST.zw;
			float2 lerpResult27_g8025 = lerp( lerpResult19_g8025 , uv5_DetailNormal.xy , saturate( ( temp_output_21_0_g8025 - 1.0 ) ));
			o.vertexToFrag51_g8025 = lerpResult27_g8025;
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
			float3 DetailNormal596 = UnpackScaleNormal( tex2D( _DetailNormal, i.vertexToFrag51_g8025 ), _BumpScale1 );
			float temp_output_43_0_g8030 = _DetailNormalChannel;
			float temp_output_21_0_g8030 = ( temp_output_43_0_g8030 - 1.0 );
			float temp_output_42_0_g8030 = _DetailNormalMask;
			float temp_output_6_0_g8030 = ( temp_output_42_0_g8030 - 1.0 );
			float temp_output_9_0_g8030 = ( temp_output_6_0_g8030 - 1.0 );
			float4 temp_cast_231 = (1.0).xxxx;
			float4 tex2DNode414 = tex2D( _MaskMap04, i.vertexToFrag51_g5489 );
			float4 MM04RGBA420 = tex2DNode414;
			float4 tex2DNode406 = tex2D( _MaskMap03, i.vertexToFrag51_g5488 );
			float4 MM03RGBA412 = tex2DNode406;
			float4 tex2DNode52 = tex2D( _MaskMap02, i.vertexToFrag51_g5487 );
			float4 MM02RGBA296 = tex2DNode52;
			float4 tex2DNode9 = tex2D( _MaskMap01, i.vertexToFrag51_g5486 );
			float4 MM01RGBA295 = tex2DNode9;
			float4 ifLocalVar10_g8030 = 0;
			if( saturate( temp_output_42_0_g8030 ) > 0.0 )
				ifLocalVar10_g8030 = MM02RGBA296;
			else if( saturate( temp_output_42_0_g8030 ) == 0.0 )
				ifLocalVar10_g8030 = MM01RGBA295;
			float4 ifLocalVar14_g8030 = 0;
			if( saturate( temp_output_6_0_g8030 ) > 0.0 )
				ifLocalVar14_g8030 = MM03RGBA412;
			else if( saturate( temp_output_6_0_g8030 ) == 0.0 )
				ifLocalVar14_g8030 = ifLocalVar10_g8030;
			float4 ifLocalVar17_g8030 = 0;
			if( saturate( temp_output_9_0_g8030 ) > 0.0 )
				ifLocalVar17_g8030 = MM04RGBA420;
			else if( saturate( temp_output_9_0_g8030 ) == 0.0 )
				ifLocalVar17_g8030 = ifLocalVar14_g8030;
			float4 ifLocalVar19_g8030 = 0;
			if( saturate( ( temp_output_9_0_g8030 - 1.0 ) ) > 0.0 )
				ifLocalVar19_g8030 = temp_cast_231;
			else if( saturate( ( temp_output_9_0_g8030 - 1.0 ) ) == 0.0 )
				ifLocalVar19_g8030 = ifLocalVar17_g8030;
			float ifLocalVar28_g8030 = 0;
			if( saturate( temp_output_43_0_g8030 ) > 0.0 )
				ifLocalVar28_g8030 = (ifLocalVar19_g8030).g;
			else if( saturate( temp_output_43_0_g8030 ) == 0.0 )
				ifLocalVar28_g8030 = (ifLocalVar19_g8030).r;
			float ifLocalVar32_g8030 = 0;
			if( saturate( temp_output_21_0_g8030 ) > 0.0 )
				ifLocalVar32_g8030 = (ifLocalVar19_g8030).b;
			else if( saturate( temp_output_21_0_g8030 ) == 0.0 )
				ifLocalVar32_g8030 = ifLocalVar28_g8030;
			float ifLocalVar33_g8030 = 0;
			if( saturate( ( temp_output_21_0_g8030 - 1.0 ) ) > 0.0 )
				ifLocalVar33_g8030 = (ifLocalVar19_g8030).a;
			else if( saturate( ( temp_output_21_0_g8030 - 1.0 ) ) == 0.0 )
				ifLocalVar33_g8030 = ifLocalVar32_g8030;
			float DetailNormalChannel626 = ifLocalVar33_g8030;
			float3 lerpResult639 = lerp( Normal23 , BlendNormals( Normal23 , DetailNormal596 ) , DetailNormalChannel626);
			float3 InitialNormal1580 = lerpResult639;
			float time10_g8038 = 0.0;
			float2 voronoiSmoothId10_g8038 = 0;
			float2 temp_output_53_0_g8038 = i.uv_texcoord;
			float2 coords10_g8038 = temp_output_53_0_g8038 * _FleckScale;
			float2 id10_g8038 = 0;
			float2 uv10_g8038 = 0;
			float voroi10_g8038 = voronoi10_g8038( coords10_g8038, time10_g8038, id10_g8038, uv10_g8038, 0, voronoiSmoothId10_g8038 );
			float2 FleckID79_g8038 = id10_g8038;
			float2 p19_g8038 = FleckID79_g8038;
			float3 localHash3219_g8038 = Hash32( p19_g8038 );
			float3 temp_output_23_0_g8038 = (float3( -1,-1,0 ) + (localHash3219_g8038 - float3( 0,0,0 )) * (float3( 1,1,0 ) - float3( -1,-1,0 )) / (float3( 1,1,1 ) - float3( 0,0,0 )));
			float dotResult4_g8039 = dot( FleckID79_g8038 , float2( 12.9898,78.233 ) );
			float lerpResult10_g8039 = lerp( 0.0 , 360.0 , frac( ( sin( dotResult4_g8039 ) * 43758.55 ) ));
			float cos182_g8038 = cos( radians( lerpResult10_g8039 ) );
			float sin182_g8038 = sin( radians( lerpResult10_g8039 ) );
			float2 rotator182_g8038 = mul( uv10_g8038 - float2( 0,0 ) , float2x2( cos182_g8038 , -sin182_g8038 , sin182_g8038 , cos182_g8038 )) + float2( 0,0 );
			float2 temp_output_6_0_g8040 = float2( 0.5,0.5 );
			float2 temp_output_68_0_g8038 = ( ( ( (float2( 0,0 ) + (rotator182_g8038 - float2( -1,-1 )) * (float2( 1,1 ) - float2( 0,0 )) / (float2( 1,1 ) - float2( -1,-1 ))) - temp_output_6_0_g8040 ) * _FleckSize ) + temp_output_6_0_g8040 );
			float2 temp_output_198_0_g8038 = max( temp_output_68_0_g8038 , float2( 0,0 ) );
			float4 tex2DNode64_g8038 = tex2D( _FleckShape, temp_output_68_0_g8038, ddx( temp_output_198_0_g8038 ), ddy( temp_output_198_0_g8038 ) );
			float temp_output_54_0_g8038 = ( 1.0 - _GlintAmount );
			float mulTime12_g8038 = _Time.y * _GlintTimescale;
			float2 temp_output_16_0_g8038 = ddx( temp_output_53_0_g8038 );
			float2 temp_output_17_0_g8038 = ddy( temp_output_53_0_g8038 );
			float4 tex2DNode21_g8038 = tex2D( _DictionaryTex, ( FleckID79_g8038 + mulTime12_g8038 ), temp_output_16_0_g8038, temp_output_17_0_g8038 );
			float smoothstepResult26_g8038 = smoothstep( temp_output_54_0_g8038 , 1.0 , tex2DNode21_g8038.r);
			float temp_output_28_0_g8038 = ( _GlintDensity * tex2DNode64_g8038.a * smoothstepResult26_g8038 * _FleckColor.a );
			float3 temp_output_60_0_g8038 = InitialNormal1580;
			float3 normalizeResult133_g8038 = normalize( ( ( temp_output_23_0_g8038 * temp_output_28_0_g8038 ) + temp_output_60_0_g8038 ) );
			float temp_output_43_0_g8037 = _GlintChannel;
			float temp_output_21_0_g8037 = ( temp_output_43_0_g8037 - 1.0 );
			float temp_output_42_0_g8037 = _GlintMap;
			float temp_output_6_0_g8037 = ( temp_output_42_0_g8037 - 1.0 );
			float temp_output_9_0_g8037 = ( temp_output_6_0_g8037 - 1.0 );
			float4 temp_cast_232 = (1.0).xxxx;
			float4 ifLocalVar10_g8037 = 0;
			if( saturate( temp_output_42_0_g8037 ) > 0.0 )
				ifLocalVar10_g8037 = MM02RGBA296;
			else if( saturate( temp_output_42_0_g8037 ) == 0.0 )
				ifLocalVar10_g8037 = MM01RGBA295;
			float4 ifLocalVar14_g8037 = 0;
			if( saturate( temp_output_6_0_g8037 ) > 0.0 )
				ifLocalVar14_g8037 = MM03RGBA412;
			else if( saturate( temp_output_6_0_g8037 ) == 0.0 )
				ifLocalVar14_g8037 = ifLocalVar10_g8037;
			float4 ifLocalVar17_g8037 = 0;
			if( saturate( temp_output_9_0_g8037 ) > 0.0 )
				ifLocalVar17_g8037 = MM04RGBA420;
			else if( saturate( temp_output_9_0_g8037 ) == 0.0 )
				ifLocalVar17_g8037 = ifLocalVar14_g8037;
			float4 ifLocalVar19_g8037 = 0;
			if( saturate( ( temp_output_9_0_g8037 - 1.0 ) ) > 0.0 )
				ifLocalVar19_g8037 = temp_cast_232;
			else if( saturate( ( temp_output_9_0_g8037 - 1.0 ) ) == 0.0 )
				ifLocalVar19_g8037 = ifLocalVar17_g8037;
			float ifLocalVar28_g8037 = 0;
			if( saturate( temp_output_43_0_g8037 ) > 0.0 )
				ifLocalVar28_g8037 = (ifLocalVar19_g8037).g;
			else if( saturate( temp_output_43_0_g8037 ) == 0.0 )
				ifLocalVar28_g8037 = (ifLocalVar19_g8037).r;
			float ifLocalVar32_g8037 = 0;
			if( saturate( temp_output_21_0_g8037 ) > 0.0 )
				ifLocalVar32_g8037 = (ifLocalVar19_g8037).b;
			else if( saturate( temp_output_21_0_g8037 ) == 0.0 )
				ifLocalVar32_g8037 = ifLocalVar28_g8037;
			float ifLocalVar33_g8037 = 0;
			if( saturate( ( temp_output_21_0_g8037 - 1.0 ) ) > 0.0 )
				ifLocalVar33_g8037 = (ifLocalVar19_g8037).a;
			else if( saturate( ( temp_output_21_0_g8037 - 1.0 ) ) == 0.0 )
				ifLocalVar33_g8037 = ifLocalVar32_g8037;
			float GlintChannel542 = ifLocalVar33_g8037;
			float3 lerpResult1529 = lerp( InitialNormal1580 , normalizeResult133_g8038 , GlintChannel542);
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
			float3 temp_output_30_0_g8047 = appendResult1134;
			float3 normalizeResult25_g8047 = normalize( (WorldNormalVector( i , temp_output_30_0_g8047 )) );
			float3 normalDir28_g8047 = normalizeResult25_g8047;
			float3 ase_worldPos = i.worldPos;
			float3 ase_worldViewDir = normalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float3 viewDir15_g8047 = ase_worldViewDir;
			float dotResult56_g8047 = dot( normalDir28_g8047 , viewDir15_g8047 );
			float NdotV55_g8047 = saturate( dotResult56_g8047 );
			float MM01A18 = tex2DNode9.a;
			float temp_output_43_0_g8044 = _GlossChannel;
			float temp_output_21_0_g8044 = ( temp_output_43_0_g8044 - 1.0 );
			float temp_output_42_0_g8044 = _GlossMap;
			float temp_output_6_0_g8044 = ( temp_output_42_0_g8044 - 1.0 );
			float temp_output_9_0_g8044 = ( temp_output_6_0_g8044 - 1.0 );
			float4 temp_cast_233 = (1.0).xxxx;
			float4 ifLocalVar10_g8044 = 0;
			if( saturate( temp_output_42_0_g8044 ) > 0.0 )
				ifLocalVar10_g8044 = MM02RGBA296;
			else if( saturate( temp_output_42_0_g8044 ) == 0.0 )
				ifLocalVar10_g8044 = MM01RGBA295;
			float4 ifLocalVar14_g8044 = 0;
			if( saturate( temp_output_6_0_g8044 ) > 0.0 )
				ifLocalVar14_g8044 = MM03RGBA412;
			else if( saturate( temp_output_6_0_g8044 ) == 0.0 )
				ifLocalVar14_g8044 = ifLocalVar10_g8044;
			float4 ifLocalVar17_g8044 = 0;
			if( saturate( temp_output_9_0_g8044 ) > 0.0 )
				ifLocalVar17_g8044 = MM04RGBA420;
			else if( saturate( temp_output_9_0_g8044 ) == 0.0 )
				ifLocalVar17_g8044 = ifLocalVar14_g8044;
			float4 ifLocalVar19_g8044 = 0;
			if( saturate( ( temp_output_9_0_g8044 - 1.0 ) ) > 0.0 )
				ifLocalVar19_g8044 = temp_cast_233;
			else if( saturate( ( temp_output_9_0_g8044 - 1.0 ) ) == 0.0 )
				ifLocalVar19_g8044 = ifLocalVar17_g8044;
			float ifLocalVar28_g8044 = 0;
			if( saturate( temp_output_43_0_g8044 ) > 0.0 )
				ifLocalVar28_g8044 = (ifLocalVar19_g8044).g;
			else if( saturate( temp_output_43_0_g8044 ) == 0.0 )
				ifLocalVar28_g8044 = (ifLocalVar19_g8044).r;
			float ifLocalVar32_g8044 = 0;
			if( saturate( temp_output_21_0_g8044 ) > 0.0 )
				ifLocalVar32_g8044 = (ifLocalVar19_g8044).b;
			else if( saturate( temp_output_21_0_g8044 ) == 0.0 )
				ifLocalVar32_g8044 = ifLocalVar28_g8044;
			float ifLocalVar33_g8044 = 0;
			if( saturate( ( temp_output_21_0_g8044 - 1.0 ) ) > 0.0 )
				ifLocalVar33_g8044 = (ifLocalVar19_g8044).a;
			else if( saturate( ( temp_output_21_0_g8044 - 1.0 ) ) == 0.0 )
				ifLocalVar33_g8044 = ifLocalVar32_g8044;
			float GlossChannel244 = ifLocalVar33_g8044;
			float Workflow212 = _Workflow;
			float temp_output_239_0 = ( Workflow212 - 1.0 );
			float lerpResult241 = lerp( MM01A18 , GlossChannel244 , saturate( temp_output_239_0 ));
			float lerpResult1709 = lerp( lerpResult241 , MM01A18 , saturate( ( temp_output_239_0 - 1.0 ) ));
			float lerpResult213 = lerp( lerpResult1709 , ( 1.0 - lerpResult1709 ) , _InvertGloss);
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 temp_output_1675_0 = ddx( ase_worldNormal );
			float dotResult1677 = dot( temp_output_1675_0 , temp_output_1675_0 );
			float3 temp_output_1676_0 = ddy( ase_worldNormal );
			float dotResult1678 = dot( temp_output_1676_0 , temp_output_1676_0 );
			float temp_output_1681_0 = pow( saturate( max( dotResult1677 , dotResult1678 ) ) , 0.333 );
			float Gloss10 = ( 1.0 - max( ( 1.0 - ( lerpResult213 * _GlossMult ) ) , temp_output_1681_0 ) );
			float temp_output_147_0_g8047 = Gloss10;
			float smoothness169_g8047 = temp_output_147_0_g8047;
			float perceprualRoughness188_g8047 = ( 1.0 - smoothness169_g8047 );
			half Roughness64_g8047 = max( ( perceprualRoughness188_g8047 * perceprualRoughness188_g8047 ) , 0.002 );
			float3 localProbeDir1_g8033 = ProbeDir();
			float3 normalizeResult2_g8033 = ASESafeNormalize( localProbeDir1_g8033 );
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float luminance15_g8035 = Luminance(ase_lightColor.rgb);
			float smoothstepResult14_g8035 = smoothstep( 0.0 , 0.15 , saturate( luminance15_g8035 ));
			#ifdef UNITY_PASS_FORWARDBASE
				float staticSwitch7_g8035 = smoothstepResult14_g8035;
			#else
				float staticSwitch7_g8035 = 1.0;
			#endif
			float temp_output_11_10_g8033 = staticSwitch7_g8035;
			float3 lerpResult15_g8033 = lerp( normalizeResult2_g8033 , ase_worldlightDir , temp_output_11_10_g8033);
			float3 LightDir776 = lerpResult15_g8033;
			float3 lightDir14_g8047 = LightDir776;
			float dotResult21_g8047 = dot( lightDir14_g8047 , normalDir28_g8047 );
			float temp_output_347_0_g8047 = max( dotResult21_g8047 , 0.0 );
			float NdotL20_g8047 = temp_output_347_0_g8047;
			half SmithJointGGXVisibilityTerm42_g8047 = ( 0.5 / ( ( ( ( NdotV55_g8047 * ( 1.0 - Roughness64_g8047 ) ) + Roughness64_g8047 ) * NdotL20_g8047 ) + 1E-05 + ( NdotV55_g8047 * ( Roughness64_g8047 + ( ( 1.0 - Roughness64_g8047 ) * NdotL20_g8047 ) ) ) ) );
			float a266_g8047 = ( Roughness64_g8047 * Roughness64_g8047 );
			float3 normalizeResult87_g8047 = ASESafeNormalize( ( lightDir14_g8047 + viewDir15_g8047 ) );
			float dotResult88_g8047 = dot( normalDir28_g8047 , normalizeResult87_g8047 );
			float NdotH90_g8047 = saturate( dotResult88_g8047 );
			float d99_g8047 = ( ( ( ( NdotH90_g8047 * a266_g8047 ) - NdotH90_g8047 ) * NdotH90_g8047 ) + 1.0 );
			half GGXTerm43_g8047 = ( ( ( 1.0 / UNITY_PI ) * a266_g8047 ) / ( ( d99_g8047 * d99_g8047 ) + 1E-07 ) );
			float temp_output_36_0_g8047 = ( SmithJointGGXVisibilityTerm42_g8047 * GGXTerm43_g8047 * UNITY_PI );
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g8047 = sqrt( max( 0.0001 , temp_output_36_0_g8047 ) );
			#else
				float staticSwitch5_g8047 = temp_output_36_0_g8047;
			#endif
			#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g8047 = 0.0;
			#else
				float staticSwitch119_g8047 = max( 0.0 , ( staticSwitch5_g8047 * NdotL20_g8047 ) );
			#endif
			float2 uv_MainTex = i.uv_texcoord * _MainTex_ST.xy + _MainTex_ST.zw;
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
			float4 EmissionRGBA590 = ( _EmissionColor * tex2D( _EmissionMap, uv_EmissionMap ) );
			float temp_output_43_0_g8141 = _EmissionMaskChannel;
			float temp_output_21_0_g8141 = ( temp_output_43_0_g8141 - 1.0 );
			float temp_output_42_0_g8141 = _EmissionMaskMap;
			float temp_output_6_0_g8141 = ( temp_output_42_0_g8141 - 1.0 );
			float temp_output_9_0_g8141 = ( temp_output_6_0_g8141 - 1.0 );
			float4 temp_cast_234 = (1.0).xxxx;
			float4 ifLocalVar10_g8141 = 0;
			if( saturate( temp_output_42_0_g8141 ) > 0.0 )
				ifLocalVar10_g8141 = MM02RGBA296;
			else if( saturate( temp_output_42_0_g8141 ) == 0.0 )
				ifLocalVar10_g8141 = MM01RGBA295;
			float4 ifLocalVar14_g8141 = 0;
			if( saturate( temp_output_6_0_g8141 ) > 0.0 )
				ifLocalVar14_g8141 = MM03RGBA412;
			else if( saturate( temp_output_6_0_g8141 ) == 0.0 )
				ifLocalVar14_g8141 = ifLocalVar10_g8141;
			float4 ifLocalVar17_g8141 = 0;
			if( saturate( temp_output_9_0_g8141 ) > 0.0 )
				ifLocalVar17_g8141 = MM04RGBA420;
			else if( saturate( temp_output_9_0_g8141 ) == 0.0 )
				ifLocalVar17_g8141 = ifLocalVar14_g8141;
			float4 ifLocalVar19_g8141 = 0;
			if( saturate( ( temp_output_9_0_g8141 - 1.0 ) ) > 0.0 )
				ifLocalVar19_g8141 = temp_cast_234;
			else if( saturate( ( temp_output_9_0_g8141 - 1.0 ) ) == 0.0 )
				ifLocalVar19_g8141 = ifLocalVar17_g8141;
			float ifLocalVar28_g8141 = 0;
			if( saturate( temp_output_43_0_g8141 ) > 0.0 )
				ifLocalVar28_g8141 = (ifLocalVar19_g8141).g;
			else if( saturate( temp_output_43_0_g8141 ) == 0.0 )
				ifLocalVar28_g8141 = (ifLocalVar19_g8141).r;
			float ifLocalVar32_g8141 = 0;
			if( saturate( temp_output_21_0_g8141 ) > 0.0 )
				ifLocalVar32_g8141 = (ifLocalVar19_g8141).b;
			else if( saturate( temp_output_21_0_g8141 ) == 0.0 )
				ifLocalVar32_g8141 = ifLocalVar28_g8141;
			float ifLocalVar33_g8141 = 0;
			if( saturate( ( temp_output_21_0_g8141 - 1.0 ) ) > 0.0 )
				ifLocalVar33_g8141 = (ifLocalVar19_g8141).a;
			else if( saturate( ( temp_output_21_0_g8141 - 1.0 ) ) == 0.0 )
				ifLocalVar33_g8141 = ifLocalVar32_g8141;
			float EmissionMaskChannel676 = ifLocalVar33_g8141;
			float4 lerpResult689 = lerp( ( tex2D( _MainTex, uv_MainTex ) * _Color ) , EmissionRGBA590 , ( _ReplaceBaseColor * EmissionMaskChannel676 ));
			float4 MainTexRGBA7 = lerpResult689;
			float MM01R16 = tex2DNode9.r;
			float lerpResult226 = lerp( MM01R16 , 0.0 , saturate( Workflow212 ));
			float temp_output_43_0_g8024 = _MetallicChannel;
			float temp_output_21_0_g8024 = ( temp_output_43_0_g8024 - 1.0 );
			float temp_output_42_0_g8024 = _MetallicMask;
			float temp_output_6_0_g8024 = ( temp_output_42_0_g8024 - 1.0 );
			float temp_output_9_0_g8024 = ( temp_output_6_0_g8024 - 1.0 );
			float4 temp_cast_236 = (1.0).xxxx;
			float4 ifLocalVar10_g8024 = 0;
			if( saturate( temp_output_42_0_g8024 ) > 0.0 )
				ifLocalVar10_g8024 = MM02RGBA296;
			else if( saturate( temp_output_42_0_g8024 ) == 0.0 )
				ifLocalVar10_g8024 = MM01RGBA295;
			float4 ifLocalVar14_g8024 = 0;
			if( saturate( temp_output_6_0_g8024 ) > 0.0 )
				ifLocalVar14_g8024 = MM03RGBA412;
			else if( saturate( temp_output_6_0_g8024 ) == 0.0 )
				ifLocalVar14_g8024 = ifLocalVar10_g8024;
			float4 ifLocalVar17_g8024 = 0;
			if( saturate( temp_output_9_0_g8024 ) > 0.0 )
				ifLocalVar17_g8024 = MM04RGBA420;
			else if( saturate( temp_output_9_0_g8024 ) == 0.0 )
				ifLocalVar17_g8024 = ifLocalVar14_g8024;
			float4 ifLocalVar19_g8024 = 0;
			if( saturate( ( temp_output_9_0_g8024 - 1.0 ) ) > 0.0 )
				ifLocalVar19_g8024 = temp_cast_236;
			else if( saturate( ( temp_output_9_0_g8024 - 1.0 ) ) == 0.0 )
				ifLocalVar19_g8024 = ifLocalVar17_g8024;
			float ifLocalVar28_g8024 = 0;
			if( saturate( temp_output_43_0_g8024 ) > 0.0 )
				ifLocalVar28_g8024 = (ifLocalVar19_g8024).g;
			else if( saturate( temp_output_43_0_g8024 ) == 0.0 )
				ifLocalVar28_g8024 = (ifLocalVar19_g8024).r;
			float ifLocalVar32_g8024 = 0;
			if( saturate( temp_output_21_0_g8024 ) > 0.0 )
				ifLocalVar32_g8024 = (ifLocalVar19_g8024).b;
			else if( saturate( temp_output_21_0_g8024 ) == 0.0 )
				ifLocalVar32_g8024 = ifLocalVar28_g8024;
			float ifLocalVar33_g8024 = 0;
			if( saturate( ( temp_output_21_0_g8024 - 1.0 ) ) > 0.0 )
				ifLocalVar33_g8024 = (ifLocalVar19_g8024).a;
			else if( saturate( ( temp_output_21_0_g8024 - 1.0 ) ) == 0.0 )
				ifLocalVar33_g8024 = ifLocalVar32_g8024;
			float MetallicChannel232 = ifLocalVar33_g8024;
			float temp_output_230_0 = ( Workflow212 - 1.0 );
			float lerpResult229 = lerp( lerpResult226 , MetallicChannel232 , saturate( temp_output_230_0 ));
			float lerpResult1705 = lerp( lerpResult229 , MM01R16 , saturate( ( temp_output_230_0 - 1.0 ) ));
			float Metallic224 = saturate( ( lerpResult1705 * _MetallicMult ) );
			half3 specColor2 = (0).xxx;
			half oneMinusReflectivity2 = 0;
			half3 diffuseAndSpecularFromMetallic2 = DiffuseAndSpecularFromMetallic(MainTexRGBA7.rgb,Metallic224,specColor2,oneMinusReflectivity2);
			float temp_output_42_0_g8143 = _SpecularTintMap;
			float temp_output_6_0_g8143 = ( temp_output_42_0_g8143 - 1.0 );
			float temp_output_9_0_g8143 = ( temp_output_6_0_g8143 - 1.0 );
			float4 temp_cast_237 = (1.0).xxxx;
			float4 ifLocalVar10_g8143 = 0;
			if( saturate( temp_output_42_0_g8143 ) > 0.0 )
				ifLocalVar10_g8143 = MM02RGBA296;
			else if( saturate( temp_output_42_0_g8143 ) == 0.0 )
				ifLocalVar10_g8143 = MM01RGBA295;
			float4 ifLocalVar14_g8143 = 0;
			if( saturate( temp_output_6_0_g8143 ) > 0.0 )
				ifLocalVar14_g8143 = MM03RGBA412;
			else if( saturate( temp_output_6_0_g8143 ) == 0.0 )
				ifLocalVar14_g8143 = ifLocalVar10_g8143;
			float4 ifLocalVar17_g8143 = 0;
			if( saturate( temp_output_9_0_g8143 ) > 0.0 )
				ifLocalVar17_g8143 = MM04RGBA420;
			else if( saturate( temp_output_9_0_g8143 ) == 0.0 )
				ifLocalVar17_g8143 = ifLocalVar14_g8143;
			float4 ifLocalVar19_g8143 = 0;
			if( saturate( ( temp_output_9_0_g8143 - 1.0 ) ) > 0.0 )
				ifLocalVar19_g8143 = temp_cast_237;
			else if( saturate( ( temp_output_9_0_g8143 - 1.0 ) ) == 0.0 )
				ifLocalVar19_g8143 = ifLocalVar17_g8143;
			float4 SpecularTintCol923 = ifLocalVar19_g8143;
			float3 temp_output_223_0 = (( _SpecularTint * SpecularTintCol923 )).rgb;
			float3 temp_output_220_0 = ( specColor2 * temp_output_223_0 );
			float3 temp_output_1387_0 = (( _SpecularTint * MM01RGBA295 )).rgb;
			float3 lerpResult264 = lerp( temp_output_220_0 , temp_output_1387_0 , saturate( Workflow212 ));
			float3 lerpResult267 = lerp( lerpResult264 , temp_output_220_0 , saturate( ( Workflow212 - 1.0 ) ));
			float3 InitialSpec1489 = lerpResult267;
			float3 temp_output_72_0_g8038 = MainTexRGBA7.rgb;
			float3 InitialAlbedo193_g8038 = temp_output_72_0_g8038;
			float4 lerpResult1623 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _FleckColorMap ));
			float temp_output_1618_0 = ( _FleckColorMap - 1.0 );
			float4 lerpResult1626 = lerp( lerpResult1623 , MM03RGBA412 , saturate( temp_output_1618_0 ));
			float temp_output_1624_0 = ( temp_output_1618_0 - 1.0 );
			float4 lerpResult1629 = lerp( lerpResult1626 , MM04RGBA420 , saturate( temp_output_1624_0 ));
			float4 temp_cast_239 = (1.0).xxxx;
			float4 lerpResult1632 = lerp( lerpResult1629 , temp_cast_239 , saturate( ( temp_output_1624_0 - 1.0 ) ));
			float4 FleckTintCol1633 = lerpResult1632;
			float4 temp_output_196_0_g8038 = ( float4( FleckTintCol1633.rgb , 0.0 ) * _FleckColor * float4( (tex2DNode64_g8038).rgb , 0.0 ) );
			float4 lerpResult130_g8038 = lerp( temp_output_196_0_g8038 , ( float4( temp_output_72_0_g8038 , 0.0 ) * temp_output_196_0_g8038 ) , _UseAlbedo);
			float3 hsvTorgb87_g8038 = RGBToHSV( lerpResult130_g8038.rgb );
			float2 break82_g8038 = (float2( -1,-1 ) + (FleckID79_g8038 - float2( 0,0 )) * (float2( 1,1 ) - float2( -1,-1 )) / (float2( 1,1 ) - float2( 0,0 )));
			float3 hsvTorgb91_g8038 = HSVToRGB( float3(( hsvTorgb87_g8038.x + ( ( break82_g8038.x + break82_g8038.y ) * _FleckVariance ) ),hsvTorgb87_g8038.y,hsvTorgb87_g8038.z) );
			float temp_output_112_0_g8038 = ( tex2DNode64_g8038.a * smoothstepResult26_g8038 * _FleckColor.a );
			float FleckShape78_g8038 = temp_output_112_0_g8038;
			float3 lerpResult96_g8038 = lerp( InitialAlbedo193_g8038 , hsvTorgb91_g8038 , FleckShape78_g8038);
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
			float temp_output_102_0_g8038 = MetallicForFleck1509;
			half3 specColor116_g8038 = (0).xxx;
			half oneMinusReflectivity116_g8038 = 0;
			half3 diffuseAndSpecularFromMetallic116_g8038 = DiffuseAndSpecularFromMetallic(lerpResult96_g8038,temp_output_102_0_g8038,specColor116_g8038,oneMinusReflectivity116_g8038);
			float3 GlintSpecCol11510 = temp_output_223_0;
			float3 temp_output_117_0_g8038 = ( specColor116_g8038 * GlintSpecCol11510 );
			float3 GlintSpecCol21511 = temp_output_1387_0;
			float temp_output_125_0_g8038 = Workflow212;
			float3 lerpResult118_g8038 = lerp( temp_output_117_0_g8038 , GlintSpecCol21511 , saturate( temp_output_125_0_g8038 ));
			float3 lerpResult122_g8038 = lerp( lerpResult118_g8038 , temp_output_117_0_g8038 , saturate( ( temp_output_125_0_g8038 - 1.0 ) ));
			float3 lerpResult103_g8038 = lerp( InitialSpec1489 , lerpResult122_g8038 , FleckShape78_g8038);
			float3 lerpResult1490 = lerp( InitialSpec1489 , lerpResult103_g8038 , _AffectIndirectColor);
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
			float3 SpecColor140_g8047 = SpecularColor42;
			float SpecularTerm34_g8047 = ( staticSwitch119_g8047 * ( SpecColor140_g8047.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
			UnityGI gi22_g8033 = gi;
			float3 diffNorm22_g8033 = normalize( WorldNormalVector( i , normalizeResult2_g8033 ) );
			gi22_g8033 = UnityGI_Base( data, 1, diffNorm22_g8033 );
			float3 indirectDiffuse22_g8033 = gi22_g8033.indirect.diffuse + diffNorm22_g8033 * 0.0001;
			float3 temp_output_7_0_g8033 = max( indirectDiffuse22_g8033 , float3( 0,0,0 ) );
			float3 uvw5_g8033 = (WorldNormalVector( i , InitialNormal1580 ));
			float3 localsampleReflectionProbe5_g8033 = sampleReflectionProbe5_g8033( uvw5_g8033 );
			float3 lerpResult9_g8033 = lerp( temp_output_7_0_g8033 , localsampleReflectionProbe5_g8033 , 0.85);
			int Band11_g8034 = 56;
			int localIsLumaActive11_g8034 = IsLumaActive11_g8034( Band11_g8034 );
			int localIfAudioLinkv2Exists1_g8036 = IfAudioLinkv2Exists1_g8036();
			float3 lerpResult14_g8033 = lerp( temp_output_7_0_g8033 , lerpResult9_g8033 , (float)min( localIsLumaActive11_g8034 , localIfAudioLinkv2Exists1_g8036 ));
			float3 lerpResult16_g8033 = lerp( lerpResult14_g8033 , ase_lightColor.rgb , temp_output_11_10_g8033);
			float3 LightCol782 = lerpResult16_g8033;
			float3 temp_output_328_0_g8047 = LightCol782;
			int localLightExists8_g8048 = LightExists8_g8048();
			float luminance15_g8048 = Luminance(ase_lightColor.rgb);
			float smoothstepResult14_g8048 = smoothstep( 0.0 , 0.15 , saturate( luminance15_g8048 ));
			#ifdef UNITY_PASS_FORWARDBASE
				float staticSwitch7_g8048 = smoothstepResult14_g8048;
			#else
				float staticSwitch7_g8048 = 1.0;
			#endif
			float temp_output_344_0_g8047 = saturate( ( max( 0.0 , ase_lightAtten ) + ( 1.0 - ( localLightExists8_g8048 * staticSwitch7_g8048 ) ) ) );
			float3 lightAtten296_g8047 = ( temp_output_328_0_g8047 * temp_output_344_0_g8047 );
			float3 normalizeResult136_g8047 = ASESafeNormalize( ( lightDir14_g8047 + viewDir15_g8047 ) );
			float dotResult137_g8047 = dot( lightDir14_g8047 , normalizeResult136_g8047 );
			float LdotH139_g8047 = saturate( dotResult137_g8047 );
			half3 FresnelTerm130_g8047 = ( ( pow( ( 1.0 - LdotH139_g8047 ) , 5.0 ) * ( 1.0 - SpecColor140_g8047 ) ) + SpecColor140_g8047 );
			float3 temp_output_144_0_g8047 = ( SpecularTerm34_g8047 * lightAtten296_g8047 * FresnelTerm130_g8047 );
			float OnlyShadow349_g8047 = temp_output_344_0_g8047;
			float4 appendResult1333 = (float4(temp_output_144_0_g8047 , ( SpecularTerm34_g8047 * OnlyShadow349_g8047 )));
			float4 ggxSpec186 = appendResult1333;
			float3 temp_output_63_0_g8038 = LightDir776;
			float3 newWorldNormal201_g8038 = (WorldNormalVector( i , temp_output_60_0_g8038 ));
			float dotResult204_g8038 = dot( temp_output_63_0_g8038 , newWorldNormal201_g8038 );
			float dotResult200_g8038 = dot( ase_worldViewDir , newWorldNormal201_g8038 );
			float3 temp_output_30_0_g8042 = normalizeResult133_g8038;
			float3 normalizeResult25_g8042 = normalize( (WorldNormalVector( i , temp_output_30_0_g8042 )) );
			float3 normalDir28_g8042 = normalizeResult25_g8042;
			float3 localCenterEye1_g8041 = CenterEye1_g8041();
			float3 normalizeResult5_g8041 = normalize( ( localCenterEye1_g8041 - ase_worldPos ) );
			float3 viewDir15_g8042 = normalizeResult5_g8041;
			float dotResult56_g8042 = dot( normalDir28_g8042 , viewDir15_g8042 );
			float NdotV55_g8042 = saturate( dotResult56_g8042 );
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
			float lerpResult136_g8038 = lerp( 0.0 , ( _GlintGloss * GlintGlossChannel1240 ) , FleckShape78_g8038);
			float temp_output_147_0_g8042 = lerpResult136_g8038;
			float smoothness169_g8042 = temp_output_147_0_g8042;
			float perceprualRoughness188_g8042 = ( 1.0 - smoothness169_g8042 );
			half Roughness64_g8042 = max( ( perceprualRoughness188_g8042 * perceprualRoughness188_g8042 ) , 0.002 );
			float3 lightDir14_g8042 = temp_output_63_0_g8038;
			float dotResult21_g8042 = dot( lightDir14_g8042 , normalDir28_g8042 );
			float temp_output_347_0_g8042 = max( dotResult21_g8042 , 0.0 );
			float NdotL20_g8042 = temp_output_347_0_g8042;
			half SmithJointGGXVisibilityTerm42_g8042 = ( 0.5 / ( ( ( ( NdotV55_g8042 * ( 1.0 - Roughness64_g8042 ) ) + Roughness64_g8042 ) * NdotL20_g8042 ) + 1E-05 + ( NdotV55_g8042 * ( Roughness64_g8042 + ( ( 1.0 - Roughness64_g8042 ) * NdotL20_g8042 ) ) ) ) );
			float a266_g8042 = ( Roughness64_g8042 * Roughness64_g8042 );
			float3 normalizeResult87_g8042 = ASESafeNormalize( ( lightDir14_g8042 + viewDir15_g8042 ) );
			float dotResult88_g8042 = dot( normalDir28_g8042 , normalizeResult87_g8042 );
			float NdotH90_g8042 = saturate( dotResult88_g8042 );
			float d99_g8042 = ( ( ( ( NdotH90_g8042 * a266_g8042 ) - NdotH90_g8042 ) * NdotH90_g8042 ) + 1.0 );
			half GGXTerm43_g8042 = ( ( ( 1.0 / UNITY_PI ) * a266_g8042 ) / ( ( d99_g8042 * d99_g8042 ) + 1E-07 ) );
			float temp_output_36_0_g8042 = ( SmithJointGGXVisibilityTerm42_g8042 * GGXTerm43_g8042 * UNITY_PI );
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g8042 = sqrt( max( 0.0001 , temp_output_36_0_g8042 ) );
			#else
				float staticSwitch5_g8042 = temp_output_36_0_g8042;
			#endif
			#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g8042 = 0.0;
			#else
				float staticSwitch119_g8042 = max( 0.0 , ( staticSwitch5_g8042 * NdotL20_g8042 ) );
			#endif
			float3 SpecColor140_g8042 = lerpResult103_g8038;
			float SpecularTerm34_g8042 = ( staticSwitch119_g8042 * ( SpecColor140_g8042.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
			int localLightExists8_g8043 = LightExists8_g8043();
			float luminance15_g8043 = Luminance(ase_lightColor.rgb);
			float smoothstepResult14_g8043 = smoothstep( 0.0 , 0.15 , saturate( luminance15_g8043 ));
			#ifdef UNITY_PASS_FORWARDBASE
				float staticSwitch7_g8043 = smoothstepResult14_g8043;
			#else
				float staticSwitch7_g8043 = 1.0;
			#endif
			float temp_output_344_0_g8042 = saturate( ( max( 0.0 , ase_lightAtten ) + ( 1.0 - ( localLightExists8_g8043 * staticSwitch7_g8043 ) ) ) );
			float OnlyShadow349_g8042 = temp_output_344_0_g8042;
			float temp_output_208_348_g8038 = ( SpecularTerm34_g8042 * OnlyShadow349_g8042 );
			float3 temp_output_328_0_g8042 = LightCol782;
			float3 lightAtten296_g8042 = ( temp_output_328_0_g8042 * temp_output_344_0_g8042 );
			float3 normalizeResult136_g8042 = ASESafeNormalize( ( lightDir14_g8042 + viewDir15_g8042 ) );
			float dotResult137_g8042 = dot( lightDir14_g8042 , normalizeResult136_g8042 );
			float LdotH139_g8042 = saturate( dotResult137_g8042 );
			half3 FresnelTerm130_g8042 = ( ( pow( ( 1.0 - LdotH139_g8042 ) , 5.0 ) * ( 1.0 - SpecColor140_g8042 ) ) + SpecColor140_g8042 );
			float3 temp_output_144_0_g8042 = ( SpecularTerm34_g8042 * lightAtten296_g8042 * FresnelTerm130_g8042 );
			float3 temp_cast_252 = (1.0).xxx;
			float3 lerpResult167_g8038 = lerp( temp_cast_252 , lerpResult122_g8038 , FleckShape78_g8038);
			float4 appendResult76_g8038 = (float4(( min( _FleckIntensity , temp_output_208_348_g8038 ) * temp_output_144_0_g8042 * lerpResult167_g8038 ) , temp_output_208_348_g8038));
			float4 temp_output_1760_0 = ( ( max( dotResult204_g8038 , 0.0 ) * max( dotResult200_g8038 , 0.0 ) ) * appendResult76_g8038 );
			float4 GlintSpec175 = temp_output_1760_0;
			float3 temp_output_30_0_g8045 = appendResult1134;
			float3 normalizeResult25_g8045 = normalize( (WorldNormalVector( i , temp_output_30_0_g8045 )) );
			float3 normalDir28_g8045 = normalizeResult25_g8045;
			float3 viewDir15_g8045 = ase_worldViewDir;
			float dotResult56_g8045 = dot( normalDir28_g8045 , viewDir15_g8045 );
			float NdotV55_g8045 = saturate( dotResult56_g8045 );
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
			float SpecAntiAlias1770 = temp_output_1681_0;
			float GlintHighlightChannel1272 = ( 1.0 - max( ( 1.0 - lerpResult1271 ) , SpecAntiAlias1770 ) );
			float temp_output_147_0_g8045 = ( _GlintHighlight * GlintHighlightChannel1272 );
			float smoothness169_g8045 = temp_output_147_0_g8045;
			float perceprualRoughness188_g8045 = ( 1.0 - smoothness169_g8045 );
			half Roughness64_g8045 = max( ( perceprualRoughness188_g8045 * perceprualRoughness188_g8045 ) , 0.002 );
			float3 lightDir14_g8045 = LightDir776;
			float dotResult21_g8045 = dot( lightDir14_g8045 , normalDir28_g8045 );
			float temp_output_347_0_g8045 = max( dotResult21_g8045 , 0.0 );
			float NdotL20_g8045 = temp_output_347_0_g8045;
			half SmithJointGGXVisibilityTerm42_g8045 = ( 0.5 / ( ( ( ( NdotV55_g8045 * ( 1.0 - Roughness64_g8045 ) ) + Roughness64_g8045 ) * NdotL20_g8045 ) + 1E-05 + ( NdotV55_g8045 * ( Roughness64_g8045 + ( ( 1.0 - Roughness64_g8045 ) * NdotL20_g8045 ) ) ) ) );
			float a266_g8045 = ( Roughness64_g8045 * Roughness64_g8045 );
			float3 normalizeResult87_g8045 = ASESafeNormalize( ( lightDir14_g8045 + viewDir15_g8045 ) );
			float dotResult88_g8045 = dot( normalDir28_g8045 , normalizeResult87_g8045 );
			float NdotH90_g8045 = saturate( dotResult88_g8045 );
			float d99_g8045 = ( ( ( ( NdotH90_g8045 * a266_g8045 ) - NdotH90_g8045 ) * NdotH90_g8045 ) + 1.0 );
			half GGXTerm43_g8045 = ( ( ( 1.0 / UNITY_PI ) * a266_g8045 ) / ( ( d99_g8045 * d99_g8045 ) + 1E-07 ) );
			float temp_output_36_0_g8045 = ( SmithJointGGXVisibilityTerm42_g8045 * GGXTerm43_g8045 * UNITY_PI );
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g8045 = sqrt( max( 0.0001 , temp_output_36_0_g8045 ) );
			#else
				float staticSwitch5_g8045 = temp_output_36_0_g8045;
			#endif
			#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g8045 = 0.0;
			#else
				float staticSwitch119_g8045 = max( 0.0 , ( staticSwitch5_g8045 * NdotL20_g8045 ) );
			#endif
			float3 SpecColor140_g8045 = SpecularColor42;
			float SpecularTerm34_g8045 = ( staticSwitch119_g8045 * ( SpecColor140_g8045.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
			float3 temp_output_328_0_g8045 = LightCol782;
			int localLightExists8_g8046 = LightExists8_g8046();
			float luminance15_g8046 = Luminance(ase_lightColor.rgb);
			float smoothstepResult14_g8046 = smoothstep( 0.0 , 0.15 , saturate( luminance15_g8046 ));
			#ifdef UNITY_PASS_FORWARDBASE
				float staticSwitch7_g8046 = smoothstepResult14_g8046;
			#else
				float staticSwitch7_g8046 = 1.0;
			#endif
			float temp_output_344_0_g8045 = saturate( ( max( 0.0 , ase_lightAtten ) + ( 1.0 - ( localLightExists8_g8046 * staticSwitch7_g8046 ) ) ) );
			float3 lightAtten296_g8045 = ( temp_output_328_0_g8045 * temp_output_344_0_g8045 );
			float3 normalizeResult136_g8045 = ASESafeNormalize( ( lightDir14_g8045 + viewDir15_g8045 ) );
			float dotResult137_g8045 = dot( lightDir14_g8045 , normalizeResult136_g8045 );
			float LdotH139_g8045 = saturate( dotResult137_g8045 );
			half3 FresnelTerm130_g8045 = ( ( pow( ( 1.0 - LdotH139_g8045 ) , 5.0 ) * ( 1.0 - SpecColor140_g8045 ) ) + SpecColor140_g8045 );
			float3 temp_output_144_0_g8045 = ( SpecularTerm34_g8045 * lightAtten296_g8045 * FresnelTerm130_g8045 );
			float OnlyShadow349_g8045 = temp_output_344_0_g8045;
			float4 appendResult1332 = (float4(temp_output_144_0_g8045 , ( SpecularTerm34_g8045 * OnlyShadow349_g8045 )));
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
			float3 temp_output_30_0_g8049 = appendResult1129;
			float3 normalizeResult25_g8049 = normalize( (WorldNormalVector( i , temp_output_30_0_g8049 )) );
			float3 normalDir28_g8049 = normalizeResult25_g8049;
			float3 viewDir15_g8049 = ase_worldViewDir;
			float dotResult56_g8049 = dot( normalDir28_g8049 , viewDir15_g8049 );
			float NdotV55_g8049 = saturate( dotResult56_g8049 );
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
			float ClearCoatHighlightChannel1168 = ( 1.0 - max( ( 1.0 - lerpResult1662 ) , SpecAntiAlias1770 ) );
			float temp_output_147_0_g8049 = ( _ClearCoatHighlight * ClearCoatHighlightChannel1168 );
			float smoothness169_g8049 = temp_output_147_0_g8049;
			float perceprualRoughness188_g8049 = ( 1.0 - smoothness169_g8049 );
			half Roughness64_g8049 = max( ( perceprualRoughness188_g8049 * perceprualRoughness188_g8049 ) , 0.002 );
			float3 lightDir14_g8049 = LightDir776;
			float dotResult21_g8049 = dot( lightDir14_g8049 , normalDir28_g8049 );
			float temp_output_347_0_g8049 = max( dotResult21_g8049 , 0.0 );
			float NdotL20_g8049 = temp_output_347_0_g8049;
			half SmithJointGGXVisibilityTerm42_g8049 = ( 0.5 / ( ( ( ( NdotV55_g8049 * ( 1.0 - Roughness64_g8049 ) ) + Roughness64_g8049 ) * NdotL20_g8049 ) + 1E-05 + ( NdotV55_g8049 * ( Roughness64_g8049 + ( ( 1.0 - Roughness64_g8049 ) * NdotL20_g8049 ) ) ) ) );
			float a266_g8049 = ( Roughness64_g8049 * Roughness64_g8049 );
			float3 normalizeResult87_g8049 = ASESafeNormalize( ( lightDir14_g8049 + viewDir15_g8049 ) );
			float dotResult88_g8049 = dot( normalDir28_g8049 , normalizeResult87_g8049 );
			float NdotH90_g8049 = saturate( dotResult88_g8049 );
			float d99_g8049 = ( ( ( ( NdotH90_g8049 * a266_g8049 ) - NdotH90_g8049 ) * NdotH90_g8049 ) + 1.0 );
			half GGXTerm43_g8049 = ( ( ( 1.0 / UNITY_PI ) * a266_g8049 ) / ( ( d99_g8049 * d99_g8049 ) + 1E-07 ) );
			float temp_output_36_0_g8049 = ( SmithJointGGXVisibilityTerm42_g8049 * GGXTerm43_g8049 * UNITY_PI );
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g8049 = sqrt( max( 0.0001 , temp_output_36_0_g8049 ) );
			#else
				float staticSwitch5_g8049 = temp_output_36_0_g8049;
			#endif
			#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g8049 = 0.0;
			#else
				float staticSwitch119_g8049 = max( 0.0 , ( staticSwitch5_g8049 * NdotL20_g8049 ) );
			#endif
			float3 SpecColor140_g8049 = InitialSpec1489;
			float SpecularTerm34_g8049 = ( staticSwitch119_g8049 * ( SpecColor140_g8049.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) );
			float3 temp_output_328_0_g8049 = LightCol782;
			int localLightExists8_g8050 = LightExists8_g8050();
			float luminance15_g8050 = Luminance(ase_lightColor.rgb);
			float smoothstepResult14_g8050 = smoothstep( 0.0 , 0.15 , saturate( luminance15_g8050 ));
			#ifdef UNITY_PASS_FORWARDBASE
				float staticSwitch7_g8050 = smoothstepResult14_g8050;
			#else
				float staticSwitch7_g8050 = 1.0;
			#endif
			float temp_output_344_0_g8049 = saturate( ( max( 0.0 , ase_lightAtten ) + ( 1.0 - ( localLightExists8_g8050 * staticSwitch7_g8050 ) ) ) );
			float3 lightAtten296_g8049 = ( temp_output_328_0_g8049 * temp_output_344_0_g8049 );
			float3 normalizeResult136_g8049 = ASESafeNormalize( ( lightDir14_g8049 + viewDir15_g8049 ) );
			float dotResult137_g8049 = dot( lightDir14_g8049 , normalizeResult136_g8049 );
			float LdotH139_g8049 = saturate( dotResult137_g8049 );
			half3 FresnelTerm130_g8049 = ( ( pow( ( 1.0 - LdotH139_g8049 ) , 5.0 ) * ( 1.0 - SpecColor140_g8049 ) ) + SpecColor140_g8049 );
			float3 temp_output_144_0_g8049 = ( SpecularTerm34_g8049 * lightAtten296_g8049 * FresnelTerm130_g8049 );
			float OnlyShadow349_g8049 = temp_output_344_0_g8049;
			float4 appendResult1331 = (float4(temp_output_144_0_g8049 , ( SpecularTerm34_g8049 * OnlyShadow349_g8049 )));
			float4 ggxClearCoat561 = appendResult1331;
			float4 ClearCoatSpecular580 = ( ( ggxClearCoat561 * 0.5 ) + ( 0.5 * GlintFinal572 ) );
			float temp_output_42_0_g8142 = _ClearCoatMap;
			float temp_output_6_0_g8142 = ( temp_output_42_0_g8142 - 1.0 );
			float temp_output_9_0_g8142 = ( temp_output_6_0_g8142 - 1.0 );
			float4 temp_cast_257 = (1.0).xxxx;
			float4 ifLocalVar10_g8142 = 0;
			if( saturate( temp_output_42_0_g8142 ) > 0.0 )
				ifLocalVar10_g8142 = MM02RGBA296;
			else if( saturate( temp_output_42_0_g8142 ) == 0.0 )
				ifLocalVar10_g8142 = MM01RGBA295;
			float4 ifLocalVar14_g8142 = 0;
			if( saturate( temp_output_6_0_g8142 ) > 0.0 )
				ifLocalVar14_g8142 = MM03RGBA412;
			else if( saturate( temp_output_6_0_g8142 ) == 0.0 )
				ifLocalVar14_g8142 = ifLocalVar10_g8142;
			float4 ifLocalVar17_g8142 = 0;
			if( saturate( temp_output_9_0_g8142 ) > 0.0 )
				ifLocalVar17_g8142 = MM04RGBA420;
			else if( saturate( temp_output_9_0_g8142 ) == 0.0 )
				ifLocalVar17_g8142 = ifLocalVar14_g8142;
			float4 ifLocalVar19_g8142 = 0;
			if( saturate( ( temp_output_9_0_g8142 - 1.0 ) ) > 0.0 )
				ifLocalVar19_g8142 = temp_cast_257;
			else if( saturate( ( temp_output_9_0_g8142 - 1.0 ) ) == 0.0 )
				ifLocalVar19_g8142 = ifLocalVar17_g8142;
			float temp_output_43_0_g8142 = _ClearCoatChannel;
			float temp_output_21_0_g8142 = ( temp_output_43_0_g8142 - 1.0 );
			float ifLocalVar28_g8142 = 0;
			if( saturate( temp_output_43_0_g8142 ) > 0.0 )
				ifLocalVar28_g8142 = (ifLocalVar19_g8142).g;
			else if( saturate( temp_output_43_0_g8142 ) == 0.0 )
				ifLocalVar28_g8142 = (ifLocalVar19_g8142).r;
			float ifLocalVar32_g8142 = 0;
			if( saturate( temp_output_21_0_g8142 ) > 0.0 )
				ifLocalVar32_g8142 = (ifLocalVar19_g8142).b;
			else if( saturate( temp_output_21_0_g8142 ) == 0.0 )
				ifLocalVar32_g8142 = ifLocalVar28_g8142;
			float ifLocalVar33_g8142 = 0;
			if( saturate( ( temp_output_21_0_g8142 - 1.0 ) ) > 0.0 )
				ifLocalVar33_g8142 = (ifLocalVar19_g8142).a;
			else if( saturate( ( temp_output_21_0_g8142 - 1.0 ) ) == 0.0 )
				ifLocalVar33_g8142 = ifLocalVar32_g8142;
			float ifLocalVar54_g8142 = 0;
			if( saturate( ( Workflow212 - 2.0 ) ) > 0.0 )
				ifLocalVar54_g8142 = (ifLocalVar19_g8142).r;
			else if( saturate( ( Workflow212 - 2.0 ) ) == 0.0 )
				ifLocalVar54_g8142 = ifLocalVar33_g8142;
			float ClearCoatChannel493 = ifLocalVar54_g8142;
			float4 lerpResult576 = lerp( GlintFinal572 , ClearCoatSpecular580 , ClearCoatChannel493);
			#ifdef _CLEARCOAT_ON
				float4 staticSwitch574 = lerpResult576;
			#else
				float4 staticSwitch574 = GlintFinal572;
			#endif
			float temp_output_43_0_g8140 = _SpecularMaskChannel;
			float temp_output_21_0_g8140 = ( temp_output_43_0_g8140 - 1.0 );
			float temp_output_42_0_g8140 = _SpecularMask;
			float temp_output_6_0_g8140 = ( temp_output_42_0_g8140 - 1.0 );
			float temp_output_9_0_g8140 = ( temp_output_6_0_g8140 - 1.0 );
			float4 temp_cast_258 = (1.0).xxxx;
			float4 ifLocalVar10_g8140 = 0;
			if( saturate( temp_output_42_0_g8140 ) > 0.0 )
				ifLocalVar10_g8140 = MM02RGBA296;
			else if( saturate( temp_output_42_0_g8140 ) == 0.0 )
				ifLocalVar10_g8140 = MM01RGBA295;
			float4 ifLocalVar14_g8140 = 0;
			if( saturate( temp_output_6_0_g8140 ) > 0.0 )
				ifLocalVar14_g8140 = MM03RGBA412;
			else if( saturate( temp_output_6_0_g8140 ) == 0.0 )
				ifLocalVar14_g8140 = ifLocalVar10_g8140;
			float4 ifLocalVar17_g8140 = 0;
			if( saturate( temp_output_9_0_g8140 ) > 0.0 )
				ifLocalVar17_g8140 = MM04RGBA420;
			else if( saturate( temp_output_9_0_g8140 ) == 0.0 )
				ifLocalVar17_g8140 = ifLocalVar14_g8140;
			float4 ifLocalVar19_g8140 = 0;
			if( saturate( ( temp_output_9_0_g8140 - 1.0 ) ) > 0.0 )
				ifLocalVar19_g8140 = temp_cast_258;
			else if( saturate( ( temp_output_9_0_g8140 - 1.0 ) ) == 0.0 )
				ifLocalVar19_g8140 = ifLocalVar17_g8140;
			float ifLocalVar28_g8140 = 0;
			if( saturate( temp_output_43_0_g8140 ) > 0.0 )
				ifLocalVar28_g8140 = (ifLocalVar19_g8140).g;
			else if( saturate( temp_output_43_0_g8140 ) == 0.0 )
				ifLocalVar28_g8140 = (ifLocalVar19_g8140).r;
			float ifLocalVar32_g8140 = 0;
			if( saturate( temp_output_21_0_g8140 ) > 0.0 )
				ifLocalVar32_g8140 = (ifLocalVar19_g8140).b;
			else if( saturate( temp_output_21_0_g8140 ) == 0.0 )
				ifLocalVar32_g8140 = ifLocalVar28_g8140;
			float ifLocalVar33_g8140 = 0;
			if( saturate( ( temp_output_21_0_g8140 - 1.0 ) ) > 0.0 )
				ifLocalVar33_g8140 = (ifLocalVar19_g8140).a;
			else if( saturate( ( temp_output_21_0_g8140 - 1.0 ) ) == 0.0 )
				ifLocalVar33_g8140 = ifLocalVar32_g8140;
			float SpecularMaskChannel291 = ifLocalVar33_g8140;
			float SpecularMask402 = SpecularMaskChannel291;
			float4 SpecularFinal188 = ( staticSwitch574 * SpecularMask402 );
			float4 temp_output_337_0 = max( ( 0.05 * MainTexRGBA7 ) , float4( diffuseAndSpecularFromMetallic2 , 0.0 ) );
			float3 lerpResult178_g8038 = lerp( InitialAlbedo193_g8038 , max( ( 0.05 * lerpResult96_g8038 ) , diffuseAndSpecularFromMetallic116_g8038 ) , FleckShape78_g8038);
			float3 FleckAlbedo1573 = lerpResult178_g8038;
			float FleckShape1572 = ( _AffectDiffuseColor * temp_output_112_0_g8038 );
			float4 lerpResult1575 = lerp( temp_output_337_0 , float4( FleckAlbedo1573 , 0.0 ) , ( FleckShape1572 * GlintChannel542 ));
			#ifdef _GLINT_ON
				float4 staticSwitch1574 = lerpResult1575;
			#else
				float4 staticSwitch1574 = temp_output_337_0;
			#endif
			float4 Albedo43 = staticSwitch1574;
			half fd90273_g8047 = ( 0.5 + ( 2.0 * LdotH139_g8047 * LdotH139_g8047 * perceprualRoughness188_g8047 ) );
			half lightScatter253_g8047 = ( ( ( fd90273_g8047 - 1.0 ) * pow( ( 1.0 - NdotL20_g8047 ) , 5.0 ) ) + 1.0 );
			half viewScatter254_g8047 = ( 1.0 + ( pow( ( 1.0 - NdotV55_g8047 ) , 5.0 ) * ( fd90273_g8047 - 1.0 ) ) );
			half disneydiffuse251_g8047 = ( lightScatter253_g8047 * viewScatter254_g8047 );
			half Diffuseterm281_g8047 = ( disneydiffuse251_g8047 * NdotL20_g8047 );
			float3 normal198_g8047 = temp_output_30_0_g8047;
			UnityGI gi203_g8047 = gi;
			float3 diffNorm203_g8047 = normalize( WorldNormalVector( i , normal198_g8047 ) );
			gi203_g8047 = UnityGI_Base( data, 1, diffNorm203_g8047 );
			float3 indirectDiffuse203_g8047 = gi203_g8047.indirect.diffuse + diffNorm203_g8047 * 0.0001;
			float MM02G217 = tex2DNode52.g;
			float temp_output_43_0_g8031 = _OcclusionChannel;
			float temp_output_21_0_g8031 = ( temp_output_43_0_g8031 - 1.0 );
			float temp_output_42_0_g8031 = _OcclusionMap;
			float temp_output_6_0_g8031 = ( temp_output_42_0_g8031 - 1.0 );
			float temp_output_9_0_g8031 = ( temp_output_6_0_g8031 - 1.0 );
			float4 temp_cast_263 = (1.0).xxxx;
			float4 ifLocalVar10_g8031 = 0;
			if( saturate( temp_output_42_0_g8031 ) > 0.0 )
				ifLocalVar10_g8031 = MM02RGBA296;
			else if( saturate( temp_output_42_0_g8031 ) == 0.0 )
				ifLocalVar10_g8031 = MM01RGBA295;
			float4 ifLocalVar14_g8031 = 0;
			if( saturate( temp_output_6_0_g8031 ) > 0.0 )
				ifLocalVar14_g8031 = MM03RGBA412;
			else if( saturate( temp_output_6_0_g8031 ) == 0.0 )
				ifLocalVar14_g8031 = ifLocalVar10_g8031;
			float4 ifLocalVar17_g8031 = 0;
			if( saturate( temp_output_9_0_g8031 ) > 0.0 )
				ifLocalVar17_g8031 = MM04RGBA420;
			else if( saturate( temp_output_9_0_g8031 ) == 0.0 )
				ifLocalVar17_g8031 = ifLocalVar14_g8031;
			float4 ifLocalVar19_g8031 = 0;
			if( saturate( ( temp_output_9_0_g8031 - 1.0 ) ) > 0.0 )
				ifLocalVar19_g8031 = temp_cast_263;
			else if( saturate( ( temp_output_9_0_g8031 - 1.0 ) ) == 0.0 )
				ifLocalVar19_g8031 = ifLocalVar17_g8031;
			float ifLocalVar28_g8031 = 0;
			if( saturate( temp_output_43_0_g8031 ) > 0.0 )
				ifLocalVar28_g8031 = (ifLocalVar19_g8031).g;
			else if( saturate( temp_output_43_0_g8031 ) == 0.0 )
				ifLocalVar28_g8031 = (ifLocalVar19_g8031).r;
			float ifLocalVar32_g8031 = 0;
			if( saturate( temp_output_21_0_g8031 ) > 0.0 )
				ifLocalVar32_g8031 = (ifLocalVar19_g8031).b;
			else if( saturate( temp_output_21_0_g8031 ) == 0.0 )
				ifLocalVar32_g8031 = ifLocalVar28_g8031;
			float ifLocalVar33_g8031 = 0;
			if( saturate( ( temp_output_21_0_g8031 - 1.0 ) ) > 0.0 )
				ifLocalVar33_g8031 = (ifLocalVar19_g8031).a;
			else if( saturate( ( temp_output_21_0_g8031 - 1.0 ) ) == 0.0 )
				ifLocalVar33_g8031 = ifLocalVar32_g8031;
			float OcclusionChannel257 = ifLocalVar33_g8031;
			float temp_output_249_0 = ( Workflow212 - 1.0 );
			float lerpResult254 = lerp( MM02G217 , OcclusionChannel257 , saturate( temp_output_249_0 ));
			float MM01G216 = tex2DNode9.g;
			float lerpResult1723 = lerp( lerpResult254 , MM01G216 , saturate( ( temp_output_249_0 - 1.0 ) ));
			float Occlusion246 = pow( lerpResult1723 , max( _OcclusionPower , 0.0001 ) );
			float occlusion306_g8047 = Occlusion246;
			float3 temp_output_206_0_g8047 = ( Albedo43.rgb * ( ( Diffuseterm281_g8047 * lightAtten296_g8047 ) + ( indirectDiffuse203_g8047 * occlusion306_g8047 ) ) );
			float3 AlbedoFinal190 = temp_output_206_0_g8047;
			float temp_output_43_0_g8032 = _ReflectionMaskChannel;
			float temp_output_21_0_g8032 = ( temp_output_43_0_g8032 - 1.0 );
			float temp_output_42_0_g8032 = _ReflectionMask;
			float temp_output_6_0_g8032 = ( temp_output_42_0_g8032 - 1.0 );
			float temp_output_9_0_g8032 = ( temp_output_6_0_g8032 - 1.0 );
			float4 temp_cast_265 = (1.0).xxxx;
			float4 ifLocalVar10_g8032 = 0;
			if( saturate( temp_output_42_0_g8032 ) > 0.0 )
				ifLocalVar10_g8032 = MM02RGBA296;
			else if( saturate( temp_output_42_0_g8032 ) == 0.0 )
				ifLocalVar10_g8032 = MM01RGBA295;
			float4 ifLocalVar14_g8032 = 0;
			if( saturate( temp_output_6_0_g8032 ) > 0.0 )
				ifLocalVar14_g8032 = MM03RGBA412;
			else if( saturate( temp_output_6_0_g8032 ) == 0.0 )
				ifLocalVar14_g8032 = ifLocalVar10_g8032;
			float4 ifLocalVar17_g8032 = 0;
			if( saturate( temp_output_9_0_g8032 ) > 0.0 )
				ifLocalVar17_g8032 = MM04RGBA420;
			else if( saturate( temp_output_9_0_g8032 ) == 0.0 )
				ifLocalVar17_g8032 = ifLocalVar14_g8032;
			float4 ifLocalVar19_g8032 = 0;
			if( saturate( ( temp_output_9_0_g8032 - 1.0 ) ) > 0.0 )
				ifLocalVar19_g8032 = temp_cast_265;
			else if( saturate( ( temp_output_9_0_g8032 - 1.0 ) ) == 0.0 )
				ifLocalVar19_g8032 = ifLocalVar17_g8032;
			float ifLocalVar28_g8032 = 0;
			if( saturate( temp_output_43_0_g8032 ) > 0.0 )
				ifLocalVar28_g8032 = (ifLocalVar19_g8032).g;
			else if( saturate( temp_output_43_0_g8032 ) == 0.0 )
				ifLocalVar28_g8032 = (ifLocalVar19_g8032).r;
			float ifLocalVar32_g8032 = 0;
			if( saturate( temp_output_21_0_g8032 ) > 0.0 )
				ifLocalVar32_g8032 = (ifLocalVar19_g8032).b;
			else if( saturate( temp_output_21_0_g8032 ) == 0.0 )
				ifLocalVar32_g8032 = ifLocalVar28_g8032;
			float ifLocalVar33_g8032 = 0;
			if( saturate( ( temp_output_21_0_g8032 - 1.0 ) ) > 0.0 )
				ifLocalVar33_g8032 = (ifLocalVar19_g8032).a;
			else if( saturate( ( temp_output_21_0_g8032 - 1.0 ) ) == 0.0 )
				ifLocalVar33_g8032 = ifLocalVar32_g8032;
			float ReflectionMaskChannel279 = ifLocalVar33_g8032;
			float ReflectionMask277 = ReflectionMaskChannel279;
			float RefperceprualRoughness370_g8047 = ( 1.0 - temp_output_147_0_g8047 );
			half RefRoughness367_g8047 = max( ( RefperceprualRoughness370_g8047 * RefperceprualRoughness370_g8047 ) , 0.002 );
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g8047 = ( 1.0 - ( 0.28 * RefRoughness367_g8047 * RefperceprualRoughness370_g8047 ) );
			#else
				float staticSwitch183_g8047 = ( 1.0 / ( ( RefRoughness367_g8047 * RefRoughness367_g8047 ) + 1.0 ) );
			#endif
			half SurfaceReduction182_g8047 = staticSwitch183_g8047;
			float RefSmoothness376_g8047 = temp_output_147_0_g8047;
			half metallic176_g8047 = 0.0;
			half localOneMinusReflectivity176_g8047 = OneMinusReflectivity( metallic176_g8047 );
			half GrazingTerm163_g8047 = saturate( ( RefSmoothness376_g8047 + ( 1.0 - localOneMinusReflectivity176_g8047 ) ) );
			float3 temp_cast_266 = (GrazingTerm163_g8047).xxx;
			float3 break1585 = InitialNormal1580;
			float switchResult1587 = (((i.ASEIsFrontFacing>0)?(break1585.z):(-break1585.z)));
			float3 appendResult1588 = (float3(break1585.x , break1585.y , switchResult1587));
			float3 lerpResult1427 = lerp( appendResult1588 , FleckNorm1443 , _AffectIndirect);
			float3 temp_output_359_0_g8047 = lerpResult1427;
			float3 IndirectNorm360_g8047 = temp_output_359_0_g8047;
			float dotResult362_g8047 = dot( viewDir15_g8047 , (WorldNormalVector( i , IndirectNorm360_g8047 )) );
			float IndirectNdotV364_g8047 = saturate( dotResult362_g8047 );
			float temp_output_258_0_g8047 = pow( ( 1.0 - IndirectNdotV364_g8047 ) , 5.0 );
			float3 lerpResult159_g8047 = lerp( SpecColor140_g8047 , temp_cast_266 , temp_output_258_0_g8047);
			half3 FresnelLerp165_g8047 = lerpResult159_g8047;
			float3 indirectNormal299_g8047 = normalize( WorldNormalVector( i , temp_output_359_0_g8047 ) );
			Unity_GlossyEnvironmentData g299_g8047 = UnityGlossyEnvironmentSetup( smoothness169_g8047, data.worldViewDir, indirectNormal299_g8047, float3(0,0,0));
			float3 indirectSpecular299_g8047 = UnityGI_IndirectSpecular( data, occlusion306_g8047, indirectNormal299_g8047, g299_g8047 );
			#ifdef UNITY_PASS_FORWARDADD
				float3 staticSwitch305_g8047 = float3( 0,0,0 );
			#else
				float3 staticSwitch305_g8047 = ( ReflectionMask277 * SurfaceReduction182_g8047 * FresnelLerp165_g8047 * indirectSpecular299_g8047 );
			#endif
			float lerpResult352_g8047 = lerp( 0.0 , GrazingTerm163_g8047 , temp_output_258_0_g8047);
			float FresnelLerpA355_g8047 = lerpResult352_g8047;
			float temp_output_1762_358 = ( FresnelLerpA355_g8047 * SurfaceReduction182_g8047 * ReflectionMask277 );
			float4 appendResult1343 = (float4(staticSwitch305_g8047 , temp_output_1762_358));
			float4 IndirectSpec192 = appendResult1343;
			float RefSmoothness376_g8049 = _ClearCoatReflection;
			half metallic176_g8049 = 0.0;
			half localOneMinusReflectivity176_g8049 = OneMinusReflectivity( metallic176_g8049 );
			half GrazingTerm163_g8049 = saturate( ( RefSmoothness376_g8049 + ( 1.0 - localOneMinusReflectivity176_g8049 ) ) );
			float3 temp_cast_267 = (GrazingTerm163_g8049).xxx;
			float3 normal198_g8049 = temp_output_30_0_g8049;
			float3 temp_output_359_0_g8049 = normal198_g8049;
			float3 IndirectNorm360_g8049 = temp_output_359_0_g8049;
			float dotResult362_g8049 = dot( viewDir15_g8049 , (WorldNormalVector( i , IndirectNorm360_g8049 )) );
			float IndirectNdotV364_g8049 = saturate( dotResult362_g8049 );
			float temp_output_258_0_g8049 = pow( ( 1.0 - IndirectNdotV364_g8049 ) , 5.0 );
			float3 lerpResult159_g8049 = lerp( SpecColor140_g8049 , temp_cast_267 , temp_output_258_0_g8049);
			half3 FresnelLerp165_g8049 = lerpResult159_g8049;
			float RefperceprualRoughness370_g8049 = ( 1.0 - _ClearCoatReflection );
			half RefRoughness367_g8049 = max( ( RefperceprualRoughness370_g8049 * RefperceprualRoughness370_g8049 ) , 0.002 );
			#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch183_g8049 = ( 1.0 - ( 0.28 * RefRoughness367_g8049 * RefperceprualRoughness370_g8049 ) );
			#else
				float staticSwitch183_g8049 = ( 1.0 / ( ( RefRoughness367_g8049 * RefRoughness367_g8049 ) + 1.0 ) );
			#endif
			half SurfaceReduction182_g8049 = staticSwitch183_g8049;
			float lerpResult352_g8049 = lerp( 0.0 , GrazingTerm163_g8049 , temp_output_258_0_g8049);
			float FresnelLerpA355_g8049 = lerpResult352_g8049;
			float4 appendResult1340 = (float4(( FresnelLerp165_g8049 * SurfaceReduction182_g8049 * ReflectionMask277 ) , ( FresnelLerpA355_g8049 * SurfaceReduction182_g8049 * ReflectionMask277 )));
			float4 CustomIndirect180 = appendResult1340;
			float3 indirectNormal495 = normalize( WorldNormalVector( i , appendResult1129 ) );
			float4 lerpResult1176 = lerp( MM01RGBA295 , MM02RGBA296 , saturate( _ClearCoatReflectionMap ));
			float temp_output_1171_0 = ( _ClearCoatReflectionMap - 1.0 );
			float4 lerpResult1179 = lerp( lerpResult1176 , MM03RGBA412 , saturate( temp_output_1171_0 ));
			float temp_output_1177_0 = ( temp_output_1171_0 - 1.0 );
			float4 lerpResult1182 = lerp( lerpResult1179 , MM04RGBA420 , saturate( temp_output_1177_0 ));
			float4 temp_cast_268 = (1.0).xxxx;
			float4 lerpResult1185 = lerp( lerpResult1182 , temp_cast_268 , saturate( ( temp_output_1177_0 - 1.0 ) ));
			float lerpResult1191 = lerp( (lerpResult1185).r , (lerpResult1185).g , saturate( _ClearCoatReflectionChannel ));
			float temp_output_1190_0 = ( _ClearCoatReflectionChannel - 1.0 );
			float lerpResult1196 = lerp( lerpResult1191 , (lerpResult1185).b , saturate( temp_output_1190_0 ));
			float lerpResult1199 = lerp( lerpResult1196 , (lerpResult1185).a , saturate( ( temp_output_1190_0 - 1.0 ) ));
			float temp_output_1722_0 = saturate( ( Workflow212 - 2.0 ) );
			float lerpResult1718 = lerp( lerpResult1199 , MM02G217 , temp_output_1722_0);
			float lerpResult1726 = lerp( _InvertReflectionGloss , 1.0 , temp_output_1722_0);
			float lerpResult1664 = lerp( lerpResult1718 , ( 1.0 - lerpResult1718 ) , lerpResult1726);
			float ClearCoatReflectionChannel1202 = ( 1.0 - max( ( 1.0 - lerpResult1664 ) , SpecAntiAlias1770 ) );
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
			c.rgb = ( SpecularFinal188 + float4( AlbedoFinal190 , 0.0 ) + IndirectSpecFinal195 ).xyz;
			c.a = 1;
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
			float4 FallbackColor289_g8120 = _RedChGlowFallback;
			float temp_output_43_0_g8145 = _GlowMask0Channel;
			float temp_output_21_0_g8145 = ( temp_output_43_0_g8145 - 1.0 );
			float temp_output_42_0_g8145 = _GlowMask0;
			float temp_output_6_0_g8145 = ( temp_output_42_0_g8145 - 1.0 );
			float temp_output_9_0_g8145 = ( temp_output_6_0_g8145 - 1.0 );
			float4 temp_cast_0 = (1.0).xxxx;
			float4 tex2DNode414 = tex2D( _MaskMap04, i.vertexToFrag51_g5489 );
			float4 MM04RGBA420 = tex2DNode414;
			float4 tex2DNode406 = tex2D( _MaskMap03, i.vertexToFrag51_g5488 );
			float4 MM03RGBA412 = tex2DNode406;
			float4 tex2DNode52 = tex2D( _MaskMap02, i.vertexToFrag51_g5487 );
			float4 MM02RGBA296 = tex2DNode52;
			float4 tex2DNode9 = tex2D( _MaskMap01, i.vertexToFrag51_g5486 );
			float4 MM01RGBA295 = tex2DNode9;
			float4 ifLocalVar10_g8145 = 0;
			if( saturate( temp_output_42_0_g8145 ) > 0.0 )
				ifLocalVar10_g8145 = MM02RGBA296;
			else if( saturate( temp_output_42_0_g8145 ) == 0.0 )
				ifLocalVar10_g8145 = MM01RGBA295;
			float4 ifLocalVar14_g8145 = 0;
			if( saturate( temp_output_6_0_g8145 ) > 0.0 )
				ifLocalVar14_g8145 = MM03RGBA412;
			else if( saturate( temp_output_6_0_g8145 ) == 0.0 )
				ifLocalVar14_g8145 = ifLocalVar10_g8145;
			float4 ifLocalVar17_g8145 = 0;
			if( saturate( temp_output_9_0_g8145 ) > 0.0 )
				ifLocalVar17_g8145 = MM04RGBA420;
			else if( saturate( temp_output_9_0_g8145 ) == 0.0 )
				ifLocalVar17_g8145 = ifLocalVar14_g8145;
			float4 ifLocalVar19_g8145 = 0;
			if( saturate( ( temp_output_9_0_g8145 - 1.0 ) ) > 0.0 )
				ifLocalVar19_g8145 = temp_cast_0;
			else if( saturate( ( temp_output_9_0_g8145 - 1.0 ) ) == 0.0 )
				ifLocalVar19_g8145 = ifLocalVar17_g8145;
			float ifLocalVar28_g8145 = 0;
			if( saturate( temp_output_43_0_g8145 ) > 0.0 )
				ifLocalVar28_g8145 = (ifLocalVar19_g8145).g;
			else if( saturate( temp_output_43_0_g8145 ) == 0.0 )
				ifLocalVar28_g8145 = (ifLocalVar19_g8145).r;
			float ifLocalVar32_g8145 = 0;
			if( saturate( temp_output_21_0_g8145 ) > 0.0 )
				ifLocalVar32_g8145 = (ifLocalVar19_g8145).b;
			else if( saturate( temp_output_21_0_g8145 ) == 0.0 )
				ifLocalVar32_g8145 = ifLocalVar28_g8145;
			float ifLocalVar33_g8145 = 0;
			if( saturate( ( temp_output_21_0_g8145 - 1.0 ) ) > 0.0 )
				ifLocalVar33_g8145 = (ifLocalVar19_g8145).a;
			else if( saturate( ( temp_output_21_0_g8145 - 1.0 ) ) == 0.0 )
				ifLocalVar33_g8145 = ifLocalVar32_g8145;
			float GlowMask0Channel1009 = ifLocalVar33_g8145;
			float temp_output_43_0_g8146 = _GlowMask1Channel;
			float temp_output_21_0_g8146 = ( temp_output_43_0_g8146 - 1.0 );
			float temp_output_42_0_g8146 = _GlowMask1;
			float temp_output_6_0_g8146 = ( temp_output_42_0_g8146 - 1.0 );
			float temp_output_9_0_g8146 = ( temp_output_6_0_g8146 - 1.0 );
			float4 temp_cast_1 = (1.0).xxxx;
			float4 ifLocalVar10_g8146 = 0;
			if( saturate( temp_output_42_0_g8146 ) > 0.0 )
				ifLocalVar10_g8146 = MM02RGBA296;
			else if( saturate( temp_output_42_0_g8146 ) == 0.0 )
				ifLocalVar10_g8146 = MM01RGBA295;
			float4 ifLocalVar14_g8146 = 0;
			if( saturate( temp_output_6_0_g8146 ) > 0.0 )
				ifLocalVar14_g8146 = MM03RGBA412;
			else if( saturate( temp_output_6_0_g8146 ) == 0.0 )
				ifLocalVar14_g8146 = ifLocalVar10_g8146;
			float4 ifLocalVar17_g8146 = 0;
			if( saturate( temp_output_9_0_g8146 ) > 0.0 )
				ifLocalVar17_g8146 = MM04RGBA420;
			else if( saturate( temp_output_9_0_g8146 ) == 0.0 )
				ifLocalVar17_g8146 = ifLocalVar14_g8146;
			float4 ifLocalVar19_g8146 = 0;
			if( saturate( ( temp_output_9_0_g8146 - 1.0 ) ) > 0.0 )
				ifLocalVar19_g8146 = temp_cast_1;
			else if( saturate( ( temp_output_9_0_g8146 - 1.0 ) ) == 0.0 )
				ifLocalVar19_g8146 = ifLocalVar17_g8146;
			float ifLocalVar28_g8146 = 0;
			if( saturate( temp_output_43_0_g8146 ) > 0.0 )
				ifLocalVar28_g8146 = (ifLocalVar19_g8146).g;
			else if( saturate( temp_output_43_0_g8146 ) == 0.0 )
				ifLocalVar28_g8146 = (ifLocalVar19_g8146).r;
			float ifLocalVar32_g8146 = 0;
			if( saturate( temp_output_21_0_g8146 ) > 0.0 )
				ifLocalVar32_g8146 = (ifLocalVar19_g8146).b;
			else if( saturate( temp_output_21_0_g8146 ) == 0.0 )
				ifLocalVar32_g8146 = ifLocalVar28_g8146;
			float ifLocalVar33_g8146 = 0;
			if( saturate( ( temp_output_21_0_g8146 - 1.0 ) ) > 0.0 )
				ifLocalVar33_g8146 = (ifLocalVar19_g8146).a;
			else if( saturate( ( temp_output_21_0_g8146 - 1.0 ) ) == 0.0 )
				ifLocalVar33_g8146 = ifLocalVar32_g8146;
			float GlowMask1Channel1042 = ifLocalVar33_g8146;
			float temp_output_43_0_g8147 = _GlowMask2Channel;
			float temp_output_21_0_g8147 = ( temp_output_43_0_g8147 - 1.0 );
			float temp_output_42_0_g8147 = _GlowMask2;
			float temp_output_6_0_g8147 = ( temp_output_42_0_g8147 - 1.0 );
			float temp_output_9_0_g8147 = ( temp_output_6_0_g8147 - 1.0 );
			float4 temp_cast_2 = (1.0).xxxx;
			float4 ifLocalVar10_g8147 = 0;
			if( saturate( temp_output_42_0_g8147 ) > 0.0 )
				ifLocalVar10_g8147 = MM02RGBA296;
			else if( saturate( temp_output_42_0_g8147 ) == 0.0 )
				ifLocalVar10_g8147 = MM01RGBA295;
			float4 ifLocalVar14_g8147 = 0;
			if( saturate( temp_output_6_0_g8147 ) > 0.0 )
				ifLocalVar14_g8147 = MM03RGBA412;
			else if( saturate( temp_output_6_0_g8147 ) == 0.0 )
				ifLocalVar14_g8147 = ifLocalVar10_g8147;
			float4 ifLocalVar17_g8147 = 0;
			if( saturate( temp_output_9_0_g8147 ) > 0.0 )
				ifLocalVar17_g8147 = MM04RGBA420;
			else if( saturate( temp_output_9_0_g8147 ) == 0.0 )
				ifLocalVar17_g8147 = ifLocalVar14_g8147;
			float4 ifLocalVar19_g8147 = 0;
			if( saturate( ( temp_output_9_0_g8147 - 1.0 ) ) > 0.0 )
				ifLocalVar19_g8147 = temp_cast_2;
			else if( saturate( ( temp_output_9_0_g8147 - 1.0 ) ) == 0.0 )
				ifLocalVar19_g8147 = ifLocalVar17_g8147;
			float ifLocalVar28_g8147 = 0;
			if( saturate( temp_output_43_0_g8147 ) > 0.0 )
				ifLocalVar28_g8147 = (ifLocalVar19_g8147).g;
			else if( saturate( temp_output_43_0_g8147 ) == 0.0 )
				ifLocalVar28_g8147 = (ifLocalVar19_g8147).r;
			float ifLocalVar32_g8147 = 0;
			if( saturate( temp_output_21_0_g8147 ) > 0.0 )
				ifLocalVar32_g8147 = (ifLocalVar19_g8147).b;
			else if( saturate( temp_output_21_0_g8147 ) == 0.0 )
				ifLocalVar32_g8147 = ifLocalVar28_g8147;
			float ifLocalVar33_g8147 = 0;
			if( saturate( ( temp_output_21_0_g8147 - 1.0 ) ) > 0.0 )
				ifLocalVar33_g8147 = (ifLocalVar19_g8147).a;
			else if( saturate( ( temp_output_21_0_g8147 - 1.0 ) ) == 0.0 )
				ifLocalVar33_g8147 = ifLocalVar32_g8147;
			float GlowMask2Channel1848 = ifLocalVar33_g8147;
			float temp_output_43_0_g8148 = _GlowMask3Channel;
			float temp_output_21_0_g8148 = ( temp_output_43_0_g8148 - 1.0 );
			float temp_output_42_0_g8148 = _GlowMask3;
			float temp_output_6_0_g8148 = ( temp_output_42_0_g8148 - 1.0 );
			float temp_output_9_0_g8148 = ( temp_output_6_0_g8148 - 1.0 );
			float4 temp_cast_3 = (1.0).xxxx;
			float4 ifLocalVar10_g8148 = 0;
			if( saturate( temp_output_42_0_g8148 ) > 0.0 )
				ifLocalVar10_g8148 = MM02RGBA296;
			else if( saturate( temp_output_42_0_g8148 ) == 0.0 )
				ifLocalVar10_g8148 = MM01RGBA295;
			float4 ifLocalVar14_g8148 = 0;
			if( saturate( temp_output_6_0_g8148 ) > 0.0 )
				ifLocalVar14_g8148 = MM03RGBA412;
			else if( saturate( temp_output_6_0_g8148 ) == 0.0 )
				ifLocalVar14_g8148 = ifLocalVar10_g8148;
			float4 ifLocalVar17_g8148 = 0;
			if( saturate( temp_output_9_0_g8148 ) > 0.0 )
				ifLocalVar17_g8148 = MM04RGBA420;
			else if( saturate( temp_output_9_0_g8148 ) == 0.0 )
				ifLocalVar17_g8148 = ifLocalVar14_g8148;
			float4 ifLocalVar19_g8148 = 0;
			if( saturate( ( temp_output_9_0_g8148 - 1.0 ) ) > 0.0 )
				ifLocalVar19_g8148 = temp_cast_3;
			else if( saturate( ( temp_output_9_0_g8148 - 1.0 ) ) == 0.0 )
				ifLocalVar19_g8148 = ifLocalVar17_g8148;
			float ifLocalVar28_g8148 = 0;
			if( saturate( temp_output_43_0_g8148 ) > 0.0 )
				ifLocalVar28_g8148 = (ifLocalVar19_g8148).g;
			else if( saturate( temp_output_43_0_g8148 ) == 0.0 )
				ifLocalVar28_g8148 = (ifLocalVar19_g8148).r;
			float ifLocalVar32_g8148 = 0;
			if( saturate( temp_output_21_0_g8148 ) > 0.0 )
				ifLocalVar32_g8148 = (ifLocalVar19_g8148).b;
			else if( saturate( temp_output_21_0_g8148 ) == 0.0 )
				ifLocalVar32_g8148 = ifLocalVar28_g8148;
			float ifLocalVar33_g8148 = 0;
			if( saturate( ( temp_output_21_0_g8148 - 1.0 ) ) > 0.0 )
				ifLocalVar33_g8148 = (ifLocalVar19_g8148).a;
			else if( saturate( ( temp_output_21_0_g8148 - 1.0 ) ) == 0.0 )
				ifLocalVar33_g8148 = ifLocalVar32_g8148;
			float GlowMask3Channel1854 = ifLocalVar33_g8148;
			float4 appendResult1117 = (float4(GlowMask0Channel1009 , GlowMask1Channel1042 , GlowMask2Channel1848 , GlowMask3Channel1854));
			float4 GlowMaskRGBA174_g8051 = appendResult1117;
			float temp_output_236_0_g8120 = (GlowMaskRGBA174_g8051).x;
			float4 temp_output_291_0_g8120 = ( FallbackColor289_g8120 * _UseFallback0 * temp_output_236_0_g8120 );
			float4 temp_cast_5 = (1.0).xxxx;
			float3 temp_cast_7 = (1.0).xxx;
			int EmissionGlowZone47_g8120 = _RedChGlowZone;
			int clampResult8_g8126 = clamp( EmissionGlowZone47_g8120 , 1 , 4 );
			int temp_output_3_0_g8126 = ( clampResult8_g8126 - 1 );
			int Zone16_g8126 = temp_output_3_0_g8126;
			float3 localgetThemeData16_g8126 = getThemeData( Zone16_g8126 );
			int Band11_g8127 = 56;
			int localIsLumaActive11_g8127 = IsLumaActive11_g8127( Band11_g8127 );
			int temp_output_14_0_g8126 = localIsLumaActive11_g8127;
			int lerpResult15_g8126 = lerp( temp_output_3_0_g8126 , ( 63 - temp_output_3_0_g8126 ) , (float)temp_output_14_0_g8126);
			int Band2_g8126 = lerpResult15_g8126;
			int Delay2_g8126 = 0;
			float3 localLumaGlowData2_g8126 = LumaGlowData2_g8126( Band2_g8126 , Delay2_g8126 );
			float3 lerpResult17_g8126 = lerp( ( localgetThemeData16_g8126 * localLumaGlowData2_g8126 ) , localLumaGlowData2_g8126 , (float)temp_output_14_0_g8126);
			int temp_output_21_0_g8120 = saturate( EmissionGlowZone47_g8120 );
			float3 lerpResult20_g8120 = lerp( temp_cast_7 , lerpResult17_g8126 , (float)temp_output_21_0_g8120);
			float3 temp_cast_11 = (1.0).xxx;
			int clampResult8_g8128 = clamp( EmissionGlowZone47_g8120 , 1 , 4 );
			int temp_output_3_0_g8128 = ( clampResult8_g8128 - 1 );
			int Zone15_g8128 = temp_output_3_0_g8128;
			float3 localgetThemeData15_g8128 = getThemeData( Zone15_g8128 );
			int Band11_g8129 = 56;
			int localIsLumaActive11_g8129 = IsLumaActive11_g8129( Band11_g8129 );
			int temp_output_13_0_g8128 = localIsLumaActive11_g8129;
			int lerpResult14_g8128 = lerp( temp_output_3_0_g8128 , ( 63 - temp_output_3_0_g8128 ) , (float)temp_output_13_0_g8128);
			int Band11_g8128 = lerpResult14_g8128;
			float cos6_g8120 = cos( radians( _RedChGlowPulseDir ) );
			float sin6_g8120 = sin( radians( _RedChGlowPulseDir ) );
			float2 rotator6_g8120 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos6_g8120 , -sin6_g8120 , sin6_g8120 , cos6_g8120 )) + float2( 0.5,0.5 );
			int Band6_g8133 = _RedChGlowAnimationBand;
			int Mode6_g8133 = ( ( _RedChGlowAnimationMode * 2 ) + _RedChGlowAnimationSpeed );
			int localAudioLinkDecodeDataAsUInt6_g8133 = AudioLinkDecodeDataAsUInt6_g8133( Band6_g8133 , Mode6_g8133 );
			float localGetLocalTime2_g8134 = ( AudioLinkDecodeDataAsSeconds( ALPASS_GENERALVU_LOCAL_TIME ) );
			float lerpResult206_g8120 = lerp( ( ( localAudioLinkDecodeDataAsUInt6_g8133 % 628319 ) / 100000.0 ) , localGetLocalTime2_g8134 , (float)saturate( ( _RedChGlowAnimationMode - 3 ) ));
			float EmissionGlowAnimation195_g8120 = ( _RedChGlowAnimationStrength * lerpResult206_g8120 * step( _RedChGlowAnimationBand , 9 ) );
			float x13_g8120 = ( ( rotator6_g8120.x * _RedChGlowPulseScale ) + _RedChGlowPulseOffset + EmissionGlowAnimation195_g8120 );
			float y13_g8120 = 127.0;
			float localglslmod13_g8120 = glslmod13_g8120( x13_g8120 , y13_g8120 );
			float2 temp_output_34_0_g8122 = ( i.uv_texcoord - _RedChGlowRadialCenter );
			float2 break39_g8122 = temp_output_34_0_g8122;
			float2 appendResult50_g8122 = (float2(( _RedChGlowPulseScale * ( length( temp_output_34_0_g8122 ) * 2.0 ) ) , ( ( atan2( break39_g8122.x , break39_g8122.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x12_g8120 = ( _RedChGlowPulseOffset + appendResult50_g8122.x + EmissionGlowAnimation195_g8120 );
			float y12_g8120 = 127.0;
			float localglslmod12_g8120 = glslmod12_g8120( x12_g8120 , y12_g8120 );
			int EmissionGlowMode35_g8120 = _RedChGlowMode;
			int temp_output_37_0_g8120 = ( EmissionGlowMode35_g8120 - 1 );
			float lerpResult5_g8120 = lerp( localglslmod13_g8120 , localglslmod12_g8120 , (float)saturate( temp_output_37_0_g8120 ));
			float Direction27_g8051 = tex2D( _DirectionalMap, i.vertexToFrag51_g8052 ).r;
			float DirectionalMap106_g8120 = Direction27_g8051;
			float lerpResult179_g8120 = lerp( DirectionalMap106_g8120 , ( 1.0 - DirectionalMap106_g8120 ) , (float)saturate( ( EmissionGlowMode35_g8120 - 3 ) ));
			float x34_g8120 = ( _RedChGlowPulseOffset + ( _RedChGlowPulseScale * lerpResult179_g8120 ) + EmissionGlowAnimation195_g8120 );
			float y34_g8120 = 127.0;
			float localglslmod34_g8120 = glslmod34_g8120( x34_g8120 , y34_g8120 );
			float lerpResult30_g8120 = lerp( lerpResult5_g8120 , localglslmod34_g8120 , (float)saturate( ( temp_output_37_0_g8120 - 1 ) ));
			float EmissionGlowDelay56_g8120 = lerpResult30_g8120;
			float Delay11_g8128 = EmissionGlowDelay56_g8120;
			float3 localLumaGlowLerp11_g8128 = LumaGlowLerp11_g8128( Band11_g8128 , Delay11_g8128 );
			float3 lerpResult17_g8128 = lerp( ( localgetThemeData15_g8128 * localLumaGlowLerp11_g8128 ) , localLumaGlowLerp11_g8128 , (float)temp_output_13_0_g8128);
			float3 lerpResult22_g8120 = lerp( temp_cast_11 , lerpResult17_g8128 , (float)temp_output_21_0_g8120);
			float3 lerpResult23_g8120 = lerp( lerpResult20_g8120 , lerpResult22_g8120 , (float)saturate( EmissionGlowMode35_g8120 ));
			float4 temp_cast_21 = (1.0).xxxx;
			float temp_output_10_0_g8130 = EmissionGlowDelay56_g8120;
			float Position1_g8132 = ( temp_output_10_0_g8130 / 127.0 );
			float4 localAudioLinkLerp1_g8132 = AudioLinkLerp1_g8132( Position1_g8132 );
			int clampResult8_g8130 = clamp( ( EmissionGlowZone47_g8120 - 4 ) , 1 , 3 );
			int Band11_g8130 = ( 59 - ( clampResult8_g8130 - 1 ) );
			float Delay11_g8130 = temp_output_10_0_g8130;
			float3 localLumaGlowLerp11_g8130 = LumaGlowLerp11_g8130( Band11_g8130 , Delay11_g8130 );
			int Band11_g8131 = 56;
			int localIsLumaActive11_g8131 = IsLumaActive11_g8131( Band11_g8131 );
			float4 lerpResult14_g8130 = lerp( localAudioLinkLerp1_g8132 , float4( localLumaGlowLerp11_g8130 , 0.0 ) , (float)localIsLumaActive11_g8131);
			float4 lerpResult52_g8120 = lerp( temp_cast_21 , lerpResult14_g8130 , (float)saturate( EmissionGlowZone47_g8120 ));
			float4 lerpResult51_g8120 = lerp( float4( lerpResult23_g8120 , 0.0 ) , lerpResult52_g8120 , (float)saturate( ( EmissionGlowZone47_g8120 - 4 ) ));
			float4 temp_cast_26 = (_RedChGlowMinBrightness).xxxx;
			float4 temp_cast_27 = (( _RedChGlowMinBrightness + 1.0 )).xxxx;
			int temp_output_254_0_g8120 = saturate( EmissionGlowZone47_g8120 );
			int localIfAudioLinkv2Exists1_g8136 = IfAudioLinkv2Exists1_g8136();
			float4 lerpResult284_g8120 = lerp( _RedChGlowFallback , ( (temp_cast_26 + (lerpResult51_g8120 - float4( 0,0,0,0 )) * (temp_cast_27 - temp_cast_26) / (float4( 1,1,1,1 ) - float4( 0,0,0,0 ))) * _RedChGlowTint * temp_output_254_0_g8120 ) , (float)localIfAudioLinkv2Exists1_g8136);
			float4 EmissionGlow142_g8120 = lerpResult284_g8120;
			float4 lerpResult257_g8120 = lerp( temp_cast_5 , EmissionGlow142_g8120 , (float)temp_output_254_0_g8120);
			float4 EmissionGlowTog258_g8120 = lerpResult257_g8120;
			int EmissionReactiveBand243_g8120 = _RedChReactiveBand;
			int Band3_g8121 = EmissionReactiveBand243_g8120;
			int Delay3_g8121 = 0;
			float localAudioLinkData3_g8121 = AudioLinkData3_g8121( Band3_g8121 , Delay3_g8121 );
			int temp_output_64_0_g8120 = step( _RedChReactiveBand , 9 );
			float lerpResult66_g8120 = lerp( 1.0 , localAudioLinkData3_g8121 , (float)temp_output_64_0_g8120);
			int Band3_g8123 = _RedChReactiveBand;
			float cos78_g8120 = cos( radians( _RedChReactivePulseDir ) );
			float sin78_g8120 = sin( radians( _RedChReactivePulseDir ) );
			float2 rotator78_g8120 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos78_g8120 , -sin78_g8120 , sin78_g8120 , cos78_g8120 )) + float2( 0.5,0.5 );
			float x96_g8120 = ( ( rotator78_g8120.x * _RedChReactivePulseScale ) + _RedChReactivePulseOffset );
			float y96_g8120 = 127.0;
			float localglslmod96_g8120 = glslmod96_g8120( x96_g8120 , y96_g8120 );
			float2 temp_output_34_0_g8124 = ( i.uv_texcoord - _RedChReactiveRadialCenter );
			float2 break39_g8124 = temp_output_34_0_g8124;
			float2 appendResult50_g8124 = (float2(( _RedChReactivePulseScale * ( length( temp_output_34_0_g8124 ) * 2.0 ) ) , ( ( atan2( break39_g8124.x , break39_g8124.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x97_g8120 = ( _RedChReactivePulseOffset + appendResult50_g8124.x );
			float y97_g8120 = 127.0;
			float localglslmod97_g8120 = glslmod97_g8120( x97_g8120 , y97_g8120 );
			int EmissionReactiveMode99_g8120 = _RedChReactiveMode;
			int temp_output_90_0_g8120 = ( EmissionReactiveMode99_g8120 - 1 );
			float lerpResult77_g8120 = lerp( localglslmod96_g8120 , localglslmod97_g8120 , (float)saturate( temp_output_90_0_g8120 ));
			float lerpResult174_g8120 = lerp( DirectionalMap106_g8120 , ( 1.0 - DirectionalMap106_g8120 ) , (float)saturate( ( EmissionReactiveMode99_g8120 - 3 ) ));
			float x98_g8120 = ( _RedChReactivePulseOffset + ( _RedChReactivePulseScale * lerpResult174_g8120 ) );
			float y98_g8120 = 127.0;
			float localglslmod98_g8120 = glslmod98_g8120( x98_g8120 , y98_g8120 );
			float lerpResult87_g8120 = lerp( lerpResult77_g8120 , localglslmod98_g8120 , (float)saturate( ( temp_output_90_0_g8120 - 1 ) ));
			float Delay3_g8123 = lerpResult87_g8120;
			float localAudioLinkLerp3_g8123 = AudioLinkLerp3_g8123( Band3_g8123 , Delay3_g8123 );
			float lerpResult102_g8120 = lerp( 1.0 , localAudioLinkLerp3_g8123 , (float)temp_output_64_0_g8120);
			float lerpResult103_g8120 = lerp( lerpResult66_g8120 , lerpResult102_g8120 , (float)saturate( EmissionReactiveMode99_g8120 ));
			int Band3_g8125 = _RedChReactiveBand;
			float FilteredAmount3_g8125 = ( ( 1.0 - _RedChReactiveGlobalSmoothing ) * 15.0 );
			float localAudioLinkLerp3_g8125 = AudioLinkLerp3_g8125( Band3_g8125 , FilteredAmount3_g8125 );
			float lerpResult168_g8120 = lerp( 1.0 , localAudioLinkLerp3_g8125 , (float)temp_output_64_0_g8120);
			float lerpResult172_g8120 = lerp( lerpResult103_g8120 , lerpResult168_g8120 , (float)saturate( ( EmissionReactiveMode99_g8120 - 4 ) ));
			float ReactivityAlpha132_g8120 = (_RedChReactiveMinBrightness + (lerpResult172_g8120 - 0.0) * (( _RedChReactiveMinBrightness + 1.0 ) - _RedChReactiveMinBrightness) / (1.0 - 0.0));
			float4 temp_cast_39 = (1.0).xxxx;
			float4 lerpResult253_g8120 = lerp( temp_cast_39 , _RedChReactiveTint , (float)step( EmissionReactiveBand243_g8120 , 9 ));
			float4 FinalReactivity68_g8120 = ( ReactivityAlpha132_g8120 * lerpResult253_g8120 );
			float4 lerpResult146_g8120 = lerp( ( EmissionGlowTog258_g8120 * FinalReactivity68_g8120 ) , ( EmissionGlow142_g8120 + FinalReactivity68_g8120 ) , (float)saturate( _RedChReactiveBlendMode ));
			float4 ReversedReactivity152_g8120 = ( ( 1.0 - ReactivityAlpha132_g8120 ) * lerpResult253_g8120 );
			int temp_output_157_0_g8120 = ( _RedChReactiveBlendMode - 1 );
			float4 lerpResult114_g8120 = lerp( lerpResult146_g8120 , ( EmissionGlowTog258_g8120 * ReversedReactivity152_g8120 ) , (float)saturate( temp_output_157_0_g8120 ));
			float4 lerpResult164_g8120 = lerp( lerpResult114_g8120 , ( EmissionGlow142_g8120 + ( ReversedReactivity152_g8120 * step( EmissionReactiveBand243_g8120 , 9 ) ) ) , (float)max( saturate( ( temp_output_157_0_g8120 - 1 ) ) , ( 1.0 - step( EmissionReactiveBand243_g8120 , 9 ) ) ));
			int localIfAudioLinkv2Exists1_g8135 = IfAudioLinkv2Exists1_g8135();
			float4 temp_output_213_0_g8120 = ( lerpResult164_g8120 * temp_output_236_0_g8120 * saturate( ( localIfAudioLinkv2Exists1_g8135 + _UseFallback0 ) ) );
			float4 lerpResult280_g8120 = lerp( temp_output_291_0_g8120 , temp_output_213_0_g8120 , _EnableRedChannel);
			float temp_output_236_0_g8053 = (GlowMaskRGBA174_g8051).y;
			float4 temp_output_283_0_g8053 = ( _GreenChGlowFallback * temp_output_236_0_g8053 * _UseFallback1 );
			float4 temp_cast_49 = (1.0).xxxx;
			float3 temp_cast_51 = (1.0).xxx;
			int EmissionGlowZone47_g8053 = _GreenChGlowZone;
			int clampResult8_g8059 = clamp( EmissionGlowZone47_g8053 , 1 , 4 );
			int temp_output_3_0_g8059 = ( clampResult8_g8059 - 1 );
			int Zone16_g8059 = temp_output_3_0_g8059;
			float3 localgetThemeData16_g8059 = getThemeData( Zone16_g8059 );
			int Band11_g8060 = 56;
			int localIsLumaActive11_g8060 = IsLumaActive11_g8060( Band11_g8060 );
			int temp_output_14_0_g8059 = localIsLumaActive11_g8060;
			int lerpResult15_g8059 = lerp( temp_output_3_0_g8059 , ( 63 - temp_output_3_0_g8059 ) , (float)temp_output_14_0_g8059);
			int Band2_g8059 = lerpResult15_g8059;
			int Delay2_g8059 = 0;
			float3 localLumaGlowData2_g8059 = LumaGlowData2_g8059( Band2_g8059 , Delay2_g8059 );
			float3 lerpResult17_g8059 = lerp( ( localgetThemeData16_g8059 * localLumaGlowData2_g8059 ) , localLumaGlowData2_g8059 , (float)temp_output_14_0_g8059);
			int temp_output_21_0_g8053 = saturate( EmissionGlowZone47_g8053 );
			float3 lerpResult20_g8053 = lerp( temp_cast_51 , lerpResult17_g8059 , (float)temp_output_21_0_g8053);
			float3 temp_cast_55 = (1.0).xxx;
			int clampResult8_g8061 = clamp( EmissionGlowZone47_g8053 , 1 , 4 );
			int temp_output_3_0_g8061 = ( clampResult8_g8061 - 1 );
			int Zone15_g8061 = temp_output_3_0_g8061;
			float3 localgetThemeData15_g8061 = getThemeData( Zone15_g8061 );
			int Band11_g8062 = 56;
			int localIsLumaActive11_g8062 = IsLumaActive11_g8062( Band11_g8062 );
			int temp_output_13_0_g8061 = localIsLumaActive11_g8062;
			int lerpResult14_g8061 = lerp( temp_output_3_0_g8061 , ( 63 - temp_output_3_0_g8061 ) , (float)temp_output_13_0_g8061);
			int Band11_g8061 = lerpResult14_g8061;
			float cos6_g8053 = cos( radians( _GreenChGlowPulseDir ) );
			float sin6_g8053 = sin( radians( _GreenChGlowPulseDir ) );
			float2 rotator6_g8053 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos6_g8053 , -sin6_g8053 , sin6_g8053 , cos6_g8053 )) + float2( 0.5,0.5 );
			int Band6_g8066 = _GreenChGlowAnimationBand;
			int Mode6_g8066 = ( ( _GreenChGlowAnimationMode * 2 ) + _GreenChGlowAnimationSpeed );
			int localAudioLinkDecodeDataAsUInt6_g8066 = AudioLinkDecodeDataAsUInt6_g8066( Band6_g8066 , Mode6_g8066 );
			float localGetLocalTime2_g8067 = ( AudioLinkDecodeDataAsSeconds( ALPASS_GENERALVU_LOCAL_TIME ) );
			float lerpResult206_g8053 = lerp( ( ( localAudioLinkDecodeDataAsUInt6_g8066 % 628319 ) / 100000.0 ) , localGetLocalTime2_g8067 , (float)saturate( ( _GreenChGlowAnimationMode - 3 ) ));
			float EmissionGlowAnimation195_g8053 = ( _GreenChGlowAnimationStrength * lerpResult206_g8053 * step( _GreenChGlowAnimationBand , 9 ) );
			float x13_g8053 = ( ( rotator6_g8053.x * _GreenChGlowPulseScale ) + _GreenChGlowPulseOffset + EmissionGlowAnimation195_g8053 );
			float y13_g8053 = 127.0;
			float localglslmod13_g8053 = glslmod13_g8053( x13_g8053 , y13_g8053 );
			float2 temp_output_34_0_g8055 = ( i.uv_texcoord - _GreenChGlowRadialCenter );
			float2 break39_g8055 = temp_output_34_0_g8055;
			float2 appendResult50_g8055 = (float2(( _GreenChGlowPulseScale * ( length( temp_output_34_0_g8055 ) * 2.0 ) ) , ( ( atan2( break39_g8055.x , break39_g8055.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x12_g8053 = ( _GreenChGlowPulseOffset + appendResult50_g8055.x + EmissionGlowAnimation195_g8053 );
			float y12_g8053 = 127.0;
			float localglslmod12_g8053 = glslmod12_g8053( x12_g8053 , y12_g8053 );
			int EmissionGlowMode35_g8053 = _GreenChGlowMode;
			int temp_output_37_0_g8053 = ( EmissionGlowMode35_g8053 - 1 );
			float lerpResult5_g8053 = lerp( localglslmod13_g8053 , localglslmod12_g8053 , (float)saturate( temp_output_37_0_g8053 ));
			float DirectionalMap106_g8053 = Direction27_g8051;
			float lerpResult179_g8053 = lerp( DirectionalMap106_g8053 , ( 1.0 - DirectionalMap106_g8053 ) , (float)saturate( ( EmissionGlowMode35_g8053 - 3 ) ));
			float x34_g8053 = ( _GreenChGlowPulseOffset + ( _GreenChGlowPulseScale * lerpResult179_g8053 ) + EmissionGlowAnimation195_g8053 );
			float y34_g8053 = 127.0;
			float localglslmod34_g8053 = glslmod34_g8053( x34_g8053 , y34_g8053 );
			float lerpResult30_g8053 = lerp( lerpResult5_g8053 , localglslmod34_g8053 , (float)saturate( ( temp_output_37_0_g8053 - 1 ) ));
			float EmissionGlowDelay56_g8053 = lerpResult30_g8053;
			float Delay11_g8061 = EmissionGlowDelay56_g8053;
			float3 localLumaGlowLerp11_g8061 = LumaGlowLerp11_g8061( Band11_g8061 , Delay11_g8061 );
			float3 lerpResult17_g8061 = lerp( ( localgetThemeData15_g8061 * localLumaGlowLerp11_g8061 ) , localLumaGlowLerp11_g8061 , (float)temp_output_13_0_g8061);
			float3 lerpResult22_g8053 = lerp( temp_cast_55 , lerpResult17_g8061 , (float)temp_output_21_0_g8053);
			float3 lerpResult23_g8053 = lerp( lerpResult20_g8053 , lerpResult22_g8053 , (float)saturate( EmissionGlowMode35_g8053 ));
			float4 temp_cast_65 = (1.0).xxxx;
			float temp_output_10_0_g8063 = EmissionGlowDelay56_g8053;
			float Position1_g8065 = ( temp_output_10_0_g8063 / 127.0 );
			float4 localAudioLinkLerp1_g8065 = AudioLinkLerp1_g8065( Position1_g8065 );
			int clampResult8_g8063 = clamp( ( EmissionGlowZone47_g8053 - 4 ) , 1 , 3 );
			int Band11_g8063 = ( 59 - ( clampResult8_g8063 - 1 ) );
			float Delay11_g8063 = temp_output_10_0_g8063;
			float3 localLumaGlowLerp11_g8063 = LumaGlowLerp11_g8063( Band11_g8063 , Delay11_g8063 );
			int Band11_g8064 = 56;
			int localIsLumaActive11_g8064 = IsLumaActive11_g8064( Band11_g8064 );
			float4 lerpResult14_g8063 = lerp( localAudioLinkLerp1_g8065 , float4( localLumaGlowLerp11_g8063 , 0.0 ) , (float)localIsLumaActive11_g8064);
			float4 lerpResult52_g8053 = lerp( temp_cast_65 , lerpResult14_g8063 , (float)saturate( EmissionGlowZone47_g8053 ));
			float4 lerpResult51_g8053 = lerp( float4( lerpResult23_g8053 , 0.0 ) , lerpResult52_g8053 , (float)saturate( ( EmissionGlowZone47_g8053 - 4 ) ));
			float4 temp_cast_70 = (_GreenChGlowMinBrightness).xxxx;
			float4 temp_cast_71 = (( _GreenChGlowMinBrightness + 1.0 )).xxxx;
			int temp_output_255_0_g8053 = saturate( EmissionGlowZone47_g8053 );
			int localIfAudioLinkv2Exists1_g8069 = IfAudioLinkv2Exists1_g8069();
			float4 lerpResult280_g8053 = lerp( _GreenChGlowFallback , ( (temp_cast_70 + (lerpResult51_g8053 - float4( 0,0,0,0 )) * (temp_cast_71 - temp_cast_70) / (float4( 1,1,1,1 ) - float4( 0,0,0,0 ))) * _GreenChGlowTint * temp_output_255_0_g8053 ) , (float)localIfAudioLinkv2Exists1_g8069);
			float4 EmissionGlow142_g8053 = lerpResult280_g8053;
			float4 lerpResult258_g8053 = lerp( temp_cast_49 , EmissionGlow142_g8053 , (float)temp_output_255_0_g8053);
			float4 EmissionGlowTog259_g8053 = lerpResult258_g8053;
			int EmissionReactiveBand243_g8053 = _GreenChReactiveBand;
			int Band3_g8054 = EmissionReactiveBand243_g8053;
			int Delay3_g8054 = 0;
			float localAudioLinkData3_g8054 = AudioLinkData3_g8054( Band3_g8054 , Delay3_g8054 );
			int temp_output_64_0_g8053 = step( _GreenChReactiveBand , 9 );
			float lerpResult66_g8053 = lerp( 1.0 , localAudioLinkData3_g8054 , (float)temp_output_64_0_g8053);
			int Band3_g8056 = _GreenChReactiveBand;
			float cos78_g8053 = cos( radians( _GreenChReactivePulseDir ) );
			float sin78_g8053 = sin( radians( _GreenChReactivePulseDir ) );
			float2 rotator78_g8053 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos78_g8053 , -sin78_g8053 , sin78_g8053 , cos78_g8053 )) + float2( 0.5,0.5 );
			float x96_g8053 = ( ( rotator78_g8053.x * _GreenChReactivePulseScale ) + _GreenChReactivePulseOffset );
			float y96_g8053 = 127.0;
			float localglslmod96_g8053 = glslmod96_g8053( x96_g8053 , y96_g8053 );
			float2 temp_output_34_0_g8057 = ( i.uv_texcoord - _GreenChReactiveRadialCenter );
			float2 break39_g8057 = temp_output_34_0_g8057;
			float2 appendResult50_g8057 = (float2(( _GreenChReactivePulseScale * ( length( temp_output_34_0_g8057 ) * 2.0 ) ) , ( ( atan2( break39_g8057.x , break39_g8057.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x97_g8053 = ( _GreenChReactivePulseOffset + appendResult50_g8057.x );
			float y97_g8053 = 127.0;
			float localglslmod97_g8053 = glslmod97_g8053( x97_g8053 , y97_g8053 );
			int EmissionReactiveMode99_g8053 = _GreenChReactiveMode;
			int temp_output_90_0_g8053 = ( EmissionReactiveMode99_g8053 - 1 );
			float lerpResult77_g8053 = lerp( localglslmod96_g8053 , localglslmod97_g8053 , (float)saturate( temp_output_90_0_g8053 ));
			float lerpResult174_g8053 = lerp( DirectionalMap106_g8053 , ( 1.0 - DirectionalMap106_g8053 ) , (float)saturate( ( EmissionReactiveMode99_g8053 - 3 ) ));
			float x98_g8053 = ( _GreenChReactivePulseOffset + ( _GreenChReactivePulseScale * lerpResult174_g8053 ) );
			float y98_g8053 = 127.0;
			float localglslmod98_g8053 = glslmod98_g8053( x98_g8053 , y98_g8053 );
			float lerpResult87_g8053 = lerp( lerpResult77_g8053 , localglslmod98_g8053 , (float)saturate( ( temp_output_90_0_g8053 - 1 ) ));
			float Delay3_g8056 = lerpResult87_g8053;
			float localAudioLinkLerp3_g8056 = AudioLinkLerp3_g8056( Band3_g8056 , Delay3_g8056 );
			float lerpResult102_g8053 = lerp( 1.0 , localAudioLinkLerp3_g8056 , (float)temp_output_64_0_g8053);
			float lerpResult103_g8053 = lerp( lerpResult66_g8053 , lerpResult102_g8053 , (float)saturate( EmissionReactiveMode99_g8053 ));
			int Band3_g8058 = _GreenChReactiveBand;
			float FilteredAmount3_g8058 = ( ( 1.0 - _GreenChReactiveGlobalSmoothing ) * 15.0 );
			float localAudioLinkLerp3_g8058 = AudioLinkLerp3_g8058( Band3_g8058 , FilteredAmount3_g8058 );
			float lerpResult168_g8053 = lerp( 1.0 , localAudioLinkLerp3_g8058 , (float)temp_output_64_0_g8053);
			float lerpResult172_g8053 = lerp( lerpResult103_g8053 , lerpResult168_g8053 , (float)saturate( ( EmissionReactiveMode99_g8053 - 4 ) ));
			float ReactivityAlpha132_g8053 = (_GreenChReactiveMinBrightness + (lerpResult172_g8053 - 0.0) * (( _GreenChReactiveMinBrightness + 1.0 ) - _GreenChReactiveMinBrightness) / (1.0 - 0.0));
			float4 temp_cast_83 = (1.0).xxxx;
			float4 lerpResult264_g8053 = lerp( temp_cast_83 , _GreenChReactiveTint , (float)step( EmissionReactiveBand243_g8053 , 9 ));
			float4 FinalReactivity68_g8053 = ( ReactivityAlpha132_g8053 * lerpResult264_g8053 );
			float4 lerpResult146_g8053 = lerp( ( EmissionGlowTog259_g8053 * FinalReactivity68_g8053 ) , ( EmissionGlow142_g8053 + FinalReactivity68_g8053 ) , (float)saturate( _GreenChReactiveBlendMode ));
			float4 ReversedReactivity152_g8053 = ( ( 1.0 - ReactivityAlpha132_g8053 ) * lerpResult264_g8053 );
			int temp_output_157_0_g8053 = ( _GreenChReactiveBlendMode - 1 );
			float4 lerpResult114_g8053 = lerp( lerpResult146_g8053 , ( EmissionGlowTog259_g8053 * ReversedReactivity152_g8053 ) , (float)saturate( temp_output_157_0_g8053 ));
			float4 lerpResult164_g8053 = lerp( lerpResult114_g8053 , ( EmissionGlow142_g8053 + ( ReversedReactivity152_g8053 * step( EmissionReactiveBand243_g8053 , 9 ) ) ) , (float)max( saturate( ( temp_output_157_0_g8053 - 1 ) ) , ( 1.0 - step( EmissionReactiveBand243_g8053 , 9 ) ) ));
			int localIfAudioLinkv2Exists1_g8068 = IfAudioLinkv2Exists1_g8068();
			float4 temp_output_213_0_g8053 = ( lerpResult164_g8053 * temp_output_236_0_g8053 * saturate( ( localIfAudioLinkv2Exists1_g8068 + _UseFallback1 ) ) );
			float4 lerpResult276_g8053 = lerp( temp_output_283_0_g8053 , temp_output_213_0_g8053 , _EnableGreenChannel);
			float temp_output_236_0_g8070 = (GlowMaskRGBA174_g8051).z;
			float4 temp_output_286_0_g8070 = ( _BlueChGlowFallback * temp_output_236_0_g8070 * _UseFallback2 );
			float4 temp_cast_93 = (1.0).xxxx;
			float3 temp_cast_95 = (1.0).xxx;
			int EmissionGlowZone47_g8070 = _BlueChGlowZone;
			int clampResult8_g8076 = clamp( EmissionGlowZone47_g8070 , 1 , 4 );
			int temp_output_3_0_g8076 = ( clampResult8_g8076 - 1 );
			int Zone16_g8076 = temp_output_3_0_g8076;
			float3 localgetThemeData16_g8076 = getThemeData( Zone16_g8076 );
			int Band11_g8077 = 56;
			int localIsLumaActive11_g8077 = IsLumaActive11_g8077( Band11_g8077 );
			int temp_output_14_0_g8076 = localIsLumaActive11_g8077;
			int lerpResult15_g8076 = lerp( temp_output_3_0_g8076 , ( 63 - temp_output_3_0_g8076 ) , (float)temp_output_14_0_g8076);
			int Band2_g8076 = lerpResult15_g8076;
			int Delay2_g8076 = 0;
			float3 localLumaGlowData2_g8076 = LumaGlowData2_g8076( Band2_g8076 , Delay2_g8076 );
			float3 lerpResult17_g8076 = lerp( ( localgetThemeData16_g8076 * localLumaGlowData2_g8076 ) , localLumaGlowData2_g8076 , (float)temp_output_14_0_g8076);
			int temp_output_21_0_g8070 = saturate( EmissionGlowZone47_g8070 );
			float3 lerpResult20_g8070 = lerp( temp_cast_95 , lerpResult17_g8076 , (float)temp_output_21_0_g8070);
			float3 temp_cast_99 = (1.0).xxx;
			int clampResult8_g8078 = clamp( EmissionGlowZone47_g8070 , 1 , 4 );
			int temp_output_3_0_g8078 = ( clampResult8_g8078 - 1 );
			int Zone15_g8078 = temp_output_3_0_g8078;
			float3 localgetThemeData15_g8078 = getThemeData( Zone15_g8078 );
			int Band11_g8079 = 56;
			int localIsLumaActive11_g8079 = IsLumaActive11_g8079( Band11_g8079 );
			int temp_output_13_0_g8078 = localIsLumaActive11_g8079;
			int lerpResult14_g8078 = lerp( temp_output_3_0_g8078 , ( 63 - temp_output_3_0_g8078 ) , (float)temp_output_13_0_g8078);
			int Band11_g8078 = lerpResult14_g8078;
			float cos6_g8070 = cos( radians( _BlueChGlowPulseDir ) );
			float sin6_g8070 = sin( radians( _BlueChGlowPulseDir ) );
			float2 rotator6_g8070 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos6_g8070 , -sin6_g8070 , sin6_g8070 , cos6_g8070 )) + float2( 0.5,0.5 );
			int Band6_g8083 = _BlueChGlowAnimationBand;
			int Mode6_g8083 = ( ( _BlueChGlowAnimationMode * 2 ) + _BlueChGlowAnimationSpeed );
			int localAudioLinkDecodeDataAsUInt6_g8083 = AudioLinkDecodeDataAsUInt6_g8083( Band6_g8083 , Mode6_g8083 );
			float localGetLocalTime2_g8084 = ( AudioLinkDecodeDataAsSeconds( ALPASS_GENERALVU_LOCAL_TIME ) );
			float lerpResult206_g8070 = lerp( ( ( localAudioLinkDecodeDataAsUInt6_g8083 % 628319 ) / 100000.0 ) , localGetLocalTime2_g8084 , (float)saturate( ( _BlueChGlowAnimationMode - 3 ) ));
			float EmissionGlowAnimation195_g8070 = ( _BlueChGlowAnimationStrength * lerpResult206_g8070 * step( _BlueChGlowAnimationBand , 9 ) );
			float x13_g8070 = ( ( rotator6_g8070.x * _BlueChGlowPulseScale ) + _BlueChGlowPulseOffset + EmissionGlowAnimation195_g8070 );
			float y13_g8070 = 127.0;
			float localglslmod13_g8070 = glslmod13_g8070( x13_g8070 , y13_g8070 );
			float2 temp_output_34_0_g8072 = ( i.uv_texcoord - _BlueChGlowRadialCenter );
			float2 break39_g8072 = temp_output_34_0_g8072;
			float2 appendResult50_g8072 = (float2(( _BlueChGlowPulseScale * ( length( temp_output_34_0_g8072 ) * 2.0 ) ) , ( ( atan2( break39_g8072.x , break39_g8072.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x12_g8070 = ( _BlueChGlowPulseOffset + appendResult50_g8072.x + EmissionGlowAnimation195_g8070 );
			float y12_g8070 = 127.0;
			float localglslmod12_g8070 = glslmod12_g8070( x12_g8070 , y12_g8070 );
			int EmissionGlowMode35_g8070 = _BlueChGlowMode;
			int temp_output_37_0_g8070 = ( EmissionGlowMode35_g8070 - 1 );
			float lerpResult5_g8070 = lerp( localglslmod13_g8070 , localglslmod12_g8070 , (float)saturate( temp_output_37_0_g8070 ));
			float DirectionalMap106_g8070 = Direction27_g8051;
			float lerpResult179_g8070 = lerp( DirectionalMap106_g8070 , ( 1.0 - DirectionalMap106_g8070 ) , (float)saturate( ( EmissionGlowMode35_g8070 - 3 ) ));
			float x34_g8070 = ( _BlueChGlowPulseOffset + ( _BlueChGlowPulseScale * lerpResult179_g8070 ) + EmissionGlowAnimation195_g8070 );
			float y34_g8070 = 127.0;
			float localglslmod34_g8070 = glslmod34_g8070( x34_g8070 , y34_g8070 );
			float lerpResult30_g8070 = lerp( lerpResult5_g8070 , localglslmod34_g8070 , (float)saturate( ( temp_output_37_0_g8070 - 1 ) ));
			float EmissionGlowDelay56_g8070 = lerpResult30_g8070;
			float Delay11_g8078 = EmissionGlowDelay56_g8070;
			float3 localLumaGlowLerp11_g8078 = LumaGlowLerp11_g8078( Band11_g8078 , Delay11_g8078 );
			float3 lerpResult17_g8078 = lerp( ( localgetThemeData15_g8078 * localLumaGlowLerp11_g8078 ) , localLumaGlowLerp11_g8078 , (float)temp_output_13_0_g8078);
			float3 lerpResult22_g8070 = lerp( temp_cast_99 , lerpResult17_g8078 , (float)temp_output_21_0_g8070);
			float3 lerpResult23_g8070 = lerp( lerpResult20_g8070 , lerpResult22_g8070 , (float)saturate( EmissionGlowMode35_g8070 ));
			float4 temp_cast_109 = (1.0).xxxx;
			float temp_output_10_0_g8080 = EmissionGlowDelay56_g8070;
			float Position1_g8082 = ( temp_output_10_0_g8080 / 127.0 );
			float4 localAudioLinkLerp1_g8082 = AudioLinkLerp1_g8082( Position1_g8082 );
			int clampResult8_g8080 = clamp( ( EmissionGlowZone47_g8070 - 4 ) , 1 , 3 );
			int Band11_g8080 = ( 59 - ( clampResult8_g8080 - 1 ) );
			float Delay11_g8080 = temp_output_10_0_g8080;
			float3 localLumaGlowLerp11_g8080 = LumaGlowLerp11_g8080( Band11_g8080 , Delay11_g8080 );
			int Band11_g8081 = 56;
			int localIsLumaActive11_g8081 = IsLumaActive11_g8081( Band11_g8081 );
			float4 lerpResult14_g8080 = lerp( localAudioLinkLerp1_g8082 , float4( localLumaGlowLerp11_g8080 , 0.0 ) , (float)localIsLumaActive11_g8081);
			float4 lerpResult52_g8070 = lerp( temp_cast_109 , lerpResult14_g8080 , (float)saturate( EmissionGlowZone47_g8070 ));
			float4 lerpResult51_g8070 = lerp( float4( lerpResult23_g8070 , 0.0 ) , lerpResult52_g8070 , (float)saturate( ( EmissionGlowZone47_g8070 - 4 ) ));
			float4 temp_cast_114 = (_BlueChGlowMinBrightness).xxxx;
			float4 temp_cast_115 = (( _BlueChGlowMinBrightness + 1.0 )).xxxx;
			int temp_output_258_0_g8070 = saturate( EmissionGlowZone47_g8070 );
			int localIfAudioLinkv2Exists1_g8086 = IfAudioLinkv2Exists1_g8086();
			float4 lerpResult283_g8070 = lerp( _BlueChGlowFallback , ( (temp_cast_114 + (lerpResult51_g8070 - float4( 0,0,0,0 )) * (temp_cast_115 - temp_cast_114) / (float4( 1,1,1,1 ) - float4( 0,0,0,0 ))) * _BlueChGlowTint * temp_output_258_0_g8070 ) , (float)localIfAudioLinkv2Exists1_g8086);
			float4 EmissionGlow142_g8070 = lerpResult283_g8070;
			float4 lerpResult261_g8070 = lerp( temp_cast_93 , EmissionGlow142_g8070 , (float)temp_output_258_0_g8070);
			float4 EmissionGlowTog262_g8070 = lerpResult261_g8070;
			int EmissionReactiveBand243_g8070 = _BlueChReactiveBand;
			int Band3_g8071 = EmissionReactiveBand243_g8070;
			int Delay3_g8071 = 0;
			float localAudioLinkData3_g8071 = AudioLinkData3_g8071( Band3_g8071 , Delay3_g8071 );
			int temp_output_64_0_g8070 = step( _BlueChReactiveBand , 9 );
			float lerpResult66_g8070 = lerp( 1.0 , localAudioLinkData3_g8071 , (float)temp_output_64_0_g8070);
			int Band3_g8073 = _BlueChReactiveBand;
			float cos78_g8070 = cos( radians( _BlueChReactivePulseDir ) );
			float sin78_g8070 = sin( radians( _BlueChReactivePulseDir ) );
			float2 rotator78_g8070 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos78_g8070 , -sin78_g8070 , sin78_g8070 , cos78_g8070 )) + float2( 0.5,0.5 );
			float x96_g8070 = ( ( rotator78_g8070.x * _BlueChReactivePulseScale ) + _BlueChReactivePulseOffset );
			float y96_g8070 = 127.0;
			float localglslmod96_g8070 = glslmod96_g8070( x96_g8070 , y96_g8070 );
			float2 temp_output_34_0_g8074 = ( i.uv_texcoord - _BlueChReactiveRadialCenter );
			float2 break39_g8074 = temp_output_34_0_g8074;
			float2 appendResult50_g8074 = (float2(( _BlueChReactivePulseScale * ( length( temp_output_34_0_g8074 ) * 2.0 ) ) , ( ( atan2( break39_g8074.x , break39_g8074.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x97_g8070 = ( _BlueChReactivePulseOffset + appendResult50_g8074.x );
			float y97_g8070 = 127.0;
			float localglslmod97_g8070 = glslmod97_g8070( x97_g8070 , y97_g8070 );
			int EmissionReactiveMode99_g8070 = _BlueChReactiveMode;
			int temp_output_90_0_g8070 = ( EmissionReactiveMode99_g8070 - 1 );
			float lerpResult77_g8070 = lerp( localglslmod96_g8070 , localglslmod97_g8070 , (float)saturate( temp_output_90_0_g8070 ));
			float lerpResult174_g8070 = lerp( DirectionalMap106_g8070 , ( 1.0 - DirectionalMap106_g8070 ) , (float)saturate( ( EmissionReactiveMode99_g8070 - 3 ) ));
			float x98_g8070 = ( _BlueChReactivePulseOffset + ( _BlueChReactivePulseScale * lerpResult174_g8070 ) );
			float y98_g8070 = 127.0;
			float localglslmod98_g8070 = glslmod98_g8070( x98_g8070 , y98_g8070 );
			float lerpResult87_g8070 = lerp( lerpResult77_g8070 , localglslmod98_g8070 , (float)saturate( ( temp_output_90_0_g8070 - 1 ) ));
			float Delay3_g8073 = lerpResult87_g8070;
			float localAudioLinkLerp3_g8073 = AudioLinkLerp3_g8073( Band3_g8073 , Delay3_g8073 );
			float lerpResult102_g8070 = lerp( 1.0 , localAudioLinkLerp3_g8073 , (float)temp_output_64_0_g8070);
			float lerpResult103_g8070 = lerp( lerpResult66_g8070 , lerpResult102_g8070 , (float)saturate( EmissionReactiveMode99_g8070 ));
			int Band3_g8075 = _BlueChReactiveBand;
			float FilteredAmount3_g8075 = ( ( 1.0 - _BlueChReactiveGlobalSmoothing ) * 15.0 );
			float localAudioLinkLerp3_g8075 = AudioLinkLerp3_g8075( Band3_g8075 , FilteredAmount3_g8075 );
			float lerpResult168_g8070 = lerp( 1.0 , localAudioLinkLerp3_g8075 , (float)temp_output_64_0_g8070);
			float lerpResult172_g8070 = lerp( lerpResult103_g8070 , lerpResult168_g8070 , (float)saturate( ( EmissionReactiveMode99_g8070 - 4 ) ));
			float ReactivityAlpha132_g8070 = (_BlueChReactiveMinBrightness + (lerpResult172_g8070 - 0.0) * (( _BlueChReactiveMinBrightness + 1.0 ) - _BlueChReactiveMinBrightness) / (1.0 - 0.0));
			float4 temp_cast_127 = (1.0).xxxx;
			float4 lerpResult268_g8070 = lerp( temp_cast_127 , _BlueChReactiveTint , (float)step( EmissionReactiveBand243_g8070 , 9 ));
			float4 FinalReactivity68_g8070 = ( ReactivityAlpha132_g8070 * lerpResult268_g8070 );
			float4 lerpResult146_g8070 = lerp( ( EmissionGlowTog262_g8070 * FinalReactivity68_g8070 ) , ( EmissionGlow142_g8070 + FinalReactivity68_g8070 ) , (float)saturate( _BlueChReactiveBlendMode ));
			float4 ReversedReactivity152_g8070 = ( ( 1.0 - ReactivityAlpha132_g8070 ) * lerpResult268_g8070 );
			int temp_output_157_0_g8070 = ( _BlueChReactiveBlendMode - 1 );
			float4 lerpResult114_g8070 = lerp( lerpResult146_g8070 , ( EmissionGlowTog262_g8070 * ReversedReactivity152_g8070 ) , (float)saturate( temp_output_157_0_g8070 ));
			float4 lerpResult164_g8070 = lerp( lerpResult114_g8070 , ( EmissionGlow142_g8070 + ( ReversedReactivity152_g8070 * step( EmissionReactiveBand243_g8070 , 9 ) ) ) , (float)max( saturate( ( temp_output_157_0_g8070 - 1 ) ) , ( 1.0 - step( EmissionReactiveBand243_g8070 , 9 ) ) ));
			int localIfAudioLinkv2Exists1_g8085 = IfAudioLinkv2Exists1_g8085();
			float4 temp_output_213_0_g8070 = ( lerpResult164_g8070 * temp_output_236_0_g8070 * saturate( ( localIfAudioLinkv2Exists1_g8085 + _UseFallback2 ) ) );
			float4 lerpResult278_g8070 = lerp( temp_output_286_0_g8070 , temp_output_213_0_g8070 , _EnableBlueChannel);
			float temp_output_236_0_g8087 = (GlowMaskRGBA174_g8051).w;
			float4 temp_output_286_0_g8087 = ( _AlphaChGlowFallback * temp_output_236_0_g8087 * _UseFallback3 );
			float4 temp_cast_137 = (1.0).xxxx;
			float3 temp_cast_139 = (1.0).xxx;
			int EmissionGlowZone47_g8087 = _AlphaChGlowZone;
			int clampResult8_g8093 = clamp( EmissionGlowZone47_g8087 , 1 , 4 );
			int temp_output_3_0_g8093 = ( clampResult8_g8093 - 1 );
			int Zone16_g8093 = temp_output_3_0_g8093;
			float3 localgetThemeData16_g8093 = getThemeData( Zone16_g8093 );
			int Band11_g8094 = 56;
			int localIsLumaActive11_g8094 = IsLumaActive11_g8094( Band11_g8094 );
			int temp_output_14_0_g8093 = localIsLumaActive11_g8094;
			int lerpResult15_g8093 = lerp( temp_output_3_0_g8093 , ( 63 - temp_output_3_0_g8093 ) , (float)temp_output_14_0_g8093);
			int Band2_g8093 = lerpResult15_g8093;
			int Delay2_g8093 = 0;
			float3 localLumaGlowData2_g8093 = LumaGlowData2_g8093( Band2_g8093 , Delay2_g8093 );
			float3 lerpResult17_g8093 = lerp( ( localgetThemeData16_g8093 * localLumaGlowData2_g8093 ) , localLumaGlowData2_g8093 , (float)temp_output_14_0_g8093);
			int temp_output_21_0_g8087 = saturate( EmissionGlowZone47_g8087 );
			float3 lerpResult20_g8087 = lerp( temp_cast_139 , lerpResult17_g8093 , (float)temp_output_21_0_g8087);
			float3 temp_cast_143 = (1.0).xxx;
			int clampResult8_g8095 = clamp( EmissionGlowZone47_g8087 , 1 , 4 );
			int temp_output_3_0_g8095 = ( clampResult8_g8095 - 1 );
			int Zone15_g8095 = temp_output_3_0_g8095;
			float3 localgetThemeData15_g8095 = getThemeData( Zone15_g8095 );
			int Band11_g8096 = 56;
			int localIsLumaActive11_g8096 = IsLumaActive11_g8096( Band11_g8096 );
			int temp_output_13_0_g8095 = localIsLumaActive11_g8096;
			int lerpResult14_g8095 = lerp( temp_output_3_0_g8095 , ( 63 - temp_output_3_0_g8095 ) , (float)temp_output_13_0_g8095);
			int Band11_g8095 = lerpResult14_g8095;
			float cos6_g8087 = cos( radians( _AlphaChGlowPulseDir ) );
			float sin6_g8087 = sin( radians( _AlphaChGlowPulseDir ) );
			float2 rotator6_g8087 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos6_g8087 , -sin6_g8087 , sin6_g8087 , cos6_g8087 )) + float2( 0.5,0.5 );
			int Band6_g8100 = _AlphaChGlowAnimationBand;
			int Mode6_g8100 = ( ( _AlphaChGlowAnimationMode * 2 ) + _AlphaChGlowAnimationSpeed );
			int localAudioLinkDecodeDataAsUInt6_g8100 = AudioLinkDecodeDataAsUInt6_g8100( Band6_g8100 , Mode6_g8100 );
			float localGetLocalTime2_g8101 = ( AudioLinkDecodeDataAsSeconds( ALPASS_GENERALVU_LOCAL_TIME ) );
			float lerpResult206_g8087 = lerp( ( ( localAudioLinkDecodeDataAsUInt6_g8100 % 628319 ) / 100000.0 ) , localGetLocalTime2_g8101 , (float)saturate( ( _AlphaChGlowAnimationMode - 3 ) ));
			float EmissionGlowAnimation195_g8087 = ( _AlphaChGlowAnimationStrength * lerpResult206_g8087 * step( _AlphaChGlowAnimationBand , 9 ) );
			float x13_g8087 = ( ( rotator6_g8087.x * _AlphaChGlowPulseScale ) + _AlphaChGlowPulseOffset + EmissionGlowAnimation195_g8087 );
			float y13_g8087 = 127.0;
			float localglslmod13_g8087 = glslmod13_g8087( x13_g8087 , y13_g8087 );
			float2 temp_output_34_0_g8089 = ( i.uv_texcoord - _AlphaChGlowRadialCenter );
			float2 break39_g8089 = temp_output_34_0_g8089;
			float2 appendResult50_g8089 = (float2(( _AlphaChGlowPulseScale * ( length( temp_output_34_0_g8089 ) * 2.0 ) ) , ( ( atan2( break39_g8089.x , break39_g8089.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x12_g8087 = ( _AlphaChGlowPulseOffset + appendResult50_g8089.x + EmissionGlowAnimation195_g8087 );
			float y12_g8087 = 127.0;
			float localglslmod12_g8087 = glslmod12_g8087( x12_g8087 , y12_g8087 );
			int EmissionGlowMode35_g8087 = _AlphaChGlowMode;
			int temp_output_37_0_g8087 = ( EmissionGlowMode35_g8087 - 1 );
			float lerpResult5_g8087 = lerp( localglslmod13_g8087 , localglslmod12_g8087 , (float)saturate( temp_output_37_0_g8087 ));
			float DirectionalMap106_g8087 = Direction27_g8051;
			float lerpResult179_g8087 = lerp( DirectionalMap106_g8087 , ( 1.0 - DirectionalMap106_g8087 ) , (float)saturate( ( EmissionGlowMode35_g8087 - 3 ) ));
			float x34_g8087 = ( _AlphaChGlowPulseOffset + ( _AlphaChGlowPulseScale * lerpResult179_g8087 ) + EmissionGlowAnimation195_g8087 );
			float y34_g8087 = 127.0;
			float localglslmod34_g8087 = glslmod34_g8087( x34_g8087 , y34_g8087 );
			float lerpResult30_g8087 = lerp( lerpResult5_g8087 , localglslmod34_g8087 , (float)saturate( ( temp_output_37_0_g8087 - 1 ) ));
			float EmissionGlowDelay56_g8087 = lerpResult30_g8087;
			float Delay11_g8095 = EmissionGlowDelay56_g8087;
			float3 localLumaGlowLerp11_g8095 = LumaGlowLerp11_g8095( Band11_g8095 , Delay11_g8095 );
			float3 lerpResult17_g8095 = lerp( ( localgetThemeData15_g8095 * localLumaGlowLerp11_g8095 ) , localLumaGlowLerp11_g8095 , (float)temp_output_13_0_g8095);
			float3 lerpResult22_g8087 = lerp( temp_cast_143 , lerpResult17_g8095 , (float)temp_output_21_0_g8087);
			float3 lerpResult23_g8087 = lerp( lerpResult20_g8087 , lerpResult22_g8087 , (float)saturate( EmissionGlowMode35_g8087 ));
			float4 temp_cast_153 = (1.0).xxxx;
			float temp_output_10_0_g8097 = EmissionGlowDelay56_g8087;
			float Position1_g8099 = ( temp_output_10_0_g8097 / 127.0 );
			float4 localAudioLinkLerp1_g8099 = AudioLinkLerp1_g8099( Position1_g8099 );
			int clampResult8_g8097 = clamp( ( EmissionGlowZone47_g8087 - 4 ) , 1 , 3 );
			int Band11_g8097 = ( 59 - ( clampResult8_g8097 - 1 ) );
			float Delay11_g8097 = temp_output_10_0_g8097;
			float3 localLumaGlowLerp11_g8097 = LumaGlowLerp11_g8097( Band11_g8097 , Delay11_g8097 );
			int Band11_g8098 = 56;
			int localIsLumaActive11_g8098 = IsLumaActive11_g8098( Band11_g8098 );
			float4 lerpResult14_g8097 = lerp( localAudioLinkLerp1_g8099 , float4( localLumaGlowLerp11_g8097 , 0.0 ) , (float)localIsLumaActive11_g8098);
			float4 lerpResult52_g8087 = lerp( temp_cast_153 , lerpResult14_g8097 , (float)saturate( EmissionGlowZone47_g8087 ));
			float4 lerpResult51_g8087 = lerp( float4( lerpResult23_g8087 , 0.0 ) , lerpResult52_g8087 , (float)saturate( ( EmissionGlowZone47_g8087 - 4 ) ));
			float4 temp_cast_158 = (_AlphaChGlowMinBrightness).xxxx;
			float4 temp_cast_159 = (( _AlphaChGlowMinBrightness + 1.0 )).xxxx;
			int temp_output_258_0_g8087 = saturate( EmissionGlowZone47_g8087 );
			int localIfAudioLinkv2Exists1_g8103 = IfAudioLinkv2Exists1_g8103();
			float4 lerpResult283_g8087 = lerp( _AlphaChGlowFallback , ( (temp_cast_158 + (lerpResult51_g8087 - float4( 0,0,0,0 )) * (temp_cast_159 - temp_cast_158) / (float4( 1,1,1,1 ) - float4( 0,0,0,0 ))) * _AlphaChGlowTint * temp_output_258_0_g8087 ) , (float)localIfAudioLinkv2Exists1_g8103);
			float4 EmissionGlow142_g8087 = lerpResult283_g8087;
			float4 lerpResult261_g8087 = lerp( temp_cast_137 , EmissionGlow142_g8087 , (float)temp_output_258_0_g8087);
			float4 EmissionGlowTog262_g8087 = lerpResult261_g8087;
			int EmissionReactiveBand243_g8087 = _AlphaChReactiveBand;
			int Band3_g8088 = EmissionReactiveBand243_g8087;
			int Delay3_g8088 = 0;
			float localAudioLinkData3_g8088 = AudioLinkData3_g8088( Band3_g8088 , Delay3_g8088 );
			int temp_output_64_0_g8087 = step( _AlphaChReactiveBand , 9 );
			float lerpResult66_g8087 = lerp( 1.0 , localAudioLinkData3_g8088 , (float)temp_output_64_0_g8087);
			int Band3_g8090 = _AlphaChReactiveBand;
			float cos78_g8087 = cos( radians( _AlphaChReactivePulseDir ) );
			float sin78_g8087 = sin( radians( _AlphaChReactivePulseDir ) );
			float2 rotator78_g8087 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos78_g8087 , -sin78_g8087 , sin78_g8087 , cos78_g8087 )) + float2( 0.5,0.5 );
			float x96_g8087 = ( ( rotator78_g8087.x * _AlphaChReactivePulseScale ) + _AlphaChReactivePulseOffset );
			float y96_g8087 = 127.0;
			float localglslmod96_g8087 = glslmod96_g8087( x96_g8087 , y96_g8087 );
			float2 temp_output_34_0_g8091 = ( i.uv_texcoord - _AlphaChReactiveRadialCenter );
			float2 break39_g8091 = temp_output_34_0_g8091;
			float2 appendResult50_g8091 = (float2(( _AlphaChReactivePulseScale * ( length( temp_output_34_0_g8091 ) * 2.0 ) ) , ( ( atan2( break39_g8091.x , break39_g8091.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x97_g8087 = ( _AlphaChReactivePulseOffset + appendResult50_g8091.x );
			float y97_g8087 = 127.0;
			float localglslmod97_g8087 = glslmod97_g8087( x97_g8087 , y97_g8087 );
			int EmissionReactiveMode99_g8087 = _AlphaChReactiveMode;
			int temp_output_90_0_g8087 = ( EmissionReactiveMode99_g8087 - 1 );
			float lerpResult77_g8087 = lerp( localglslmod96_g8087 , localglslmod97_g8087 , (float)saturate( temp_output_90_0_g8087 ));
			float lerpResult174_g8087 = lerp( DirectionalMap106_g8087 , ( 1.0 - DirectionalMap106_g8087 ) , (float)saturate( ( EmissionReactiveMode99_g8087 - 3 ) ));
			float x98_g8087 = ( _AlphaChReactivePulseOffset + ( _AlphaChReactivePulseScale * lerpResult174_g8087 ) );
			float y98_g8087 = 127.0;
			float localglslmod98_g8087 = glslmod98_g8087( x98_g8087 , y98_g8087 );
			float lerpResult87_g8087 = lerp( lerpResult77_g8087 , localglslmod98_g8087 , (float)saturate( ( temp_output_90_0_g8087 - 1 ) ));
			float Delay3_g8090 = lerpResult87_g8087;
			float localAudioLinkLerp3_g8090 = AudioLinkLerp3_g8090( Band3_g8090 , Delay3_g8090 );
			float lerpResult102_g8087 = lerp( 1.0 , localAudioLinkLerp3_g8090 , (float)temp_output_64_0_g8087);
			float lerpResult103_g8087 = lerp( lerpResult66_g8087 , lerpResult102_g8087 , (float)saturate( EmissionReactiveMode99_g8087 ));
			int Band3_g8092 = _AlphaChReactiveBand;
			float FilteredAmount3_g8092 = ( ( 1.0 - _AlphaChReactiveGlobalSmoothing ) * 15.0 );
			float localAudioLinkLerp3_g8092 = AudioLinkLerp3_g8092( Band3_g8092 , FilteredAmount3_g8092 );
			float lerpResult168_g8087 = lerp( 1.0 , localAudioLinkLerp3_g8092 , (float)temp_output_64_0_g8087);
			float lerpResult172_g8087 = lerp( lerpResult103_g8087 , lerpResult168_g8087 , (float)saturate( ( EmissionReactiveMode99_g8087 - 4 ) ));
			float ReactivityAlpha132_g8087 = (_AlphaChReactiveMinBrightness + (lerpResult172_g8087 - 0.0) * (( _AlphaChReactiveMinBrightness + 1.0 ) - _AlphaChReactiveMinBrightness) / (1.0 - 0.0));
			float4 temp_cast_171 = (1.0).xxxx;
			float4 lerpResult268_g8087 = lerp( temp_cast_171 , _AlphaChReactiveTint , (float)step( EmissionReactiveBand243_g8087 , 9 ));
			float4 FinalReactivity68_g8087 = ( ReactivityAlpha132_g8087 * lerpResult268_g8087 );
			float4 lerpResult146_g8087 = lerp( ( EmissionGlowTog262_g8087 * FinalReactivity68_g8087 ) , ( EmissionGlow142_g8087 + FinalReactivity68_g8087 ) , (float)saturate( _AlphaChReactiveBlendMode ));
			float4 ReversedReactivity152_g8087 = ( ( 1.0 - ReactivityAlpha132_g8087 ) * lerpResult268_g8087 );
			int temp_output_157_0_g8087 = ( _AlphaChReactiveBlendMode - 1 );
			float4 lerpResult114_g8087 = lerp( lerpResult146_g8087 , ( EmissionGlowTog262_g8087 * ReversedReactivity152_g8087 ) , (float)saturate( temp_output_157_0_g8087 ));
			float4 lerpResult164_g8087 = lerp( lerpResult114_g8087 , ( EmissionGlow142_g8087 + ( ReversedReactivity152_g8087 * step( EmissionReactiveBand243_g8087 , 9 ) ) ) , (float)max( saturate( ( temp_output_157_0_g8087 - 1 ) ) , ( 1.0 - step( EmissionReactiveBand243_g8087 , 9 ) ) ));
			int localIfAudioLinkv2Exists1_g8102 = IfAudioLinkv2Exists1_g8102();
			float4 temp_output_213_0_g8087 = ( lerpResult164_g8087 * temp_output_236_0_g8087 * saturate( ( localIfAudioLinkv2Exists1_g8102 + _UseFallback3 ) ) );
			float4 lerpResult278_g8087 = lerp( temp_output_286_0_g8087 , temp_output_213_0_g8087 , _EnableAlphaChannel);
			float2 uv_EmissionMap = i.uv_texcoord * _EmissionMap_ST.xy + _EmissionMap_ST.zw;
			float4 EmissionRGBA590 = ( _EmissionColor * tex2D( _EmissionMap, uv_EmissionMap ) );
			float temp_output_43_0_g8141 = _EmissionMaskChannel;
			float temp_output_21_0_g8141 = ( temp_output_43_0_g8141 - 1.0 );
			float temp_output_42_0_g8141 = _EmissionMaskMap;
			float temp_output_6_0_g8141 = ( temp_output_42_0_g8141 - 1.0 );
			float temp_output_9_0_g8141 = ( temp_output_6_0_g8141 - 1.0 );
			float4 temp_cast_180 = (1.0).xxxx;
			float4 ifLocalVar10_g8141 = 0;
			if( saturate( temp_output_42_0_g8141 ) > 0.0 )
				ifLocalVar10_g8141 = MM02RGBA296;
			else if( saturate( temp_output_42_0_g8141 ) == 0.0 )
				ifLocalVar10_g8141 = MM01RGBA295;
			float4 ifLocalVar14_g8141 = 0;
			if( saturate( temp_output_6_0_g8141 ) > 0.0 )
				ifLocalVar14_g8141 = MM03RGBA412;
			else if( saturate( temp_output_6_0_g8141 ) == 0.0 )
				ifLocalVar14_g8141 = ifLocalVar10_g8141;
			float4 ifLocalVar17_g8141 = 0;
			if( saturate( temp_output_9_0_g8141 ) > 0.0 )
				ifLocalVar17_g8141 = MM04RGBA420;
			else if( saturate( temp_output_9_0_g8141 ) == 0.0 )
				ifLocalVar17_g8141 = ifLocalVar14_g8141;
			float4 ifLocalVar19_g8141 = 0;
			if( saturate( ( temp_output_9_0_g8141 - 1.0 ) ) > 0.0 )
				ifLocalVar19_g8141 = temp_cast_180;
			else if( saturate( ( temp_output_9_0_g8141 - 1.0 ) ) == 0.0 )
				ifLocalVar19_g8141 = ifLocalVar17_g8141;
			float ifLocalVar28_g8141 = 0;
			if( saturate( temp_output_43_0_g8141 ) > 0.0 )
				ifLocalVar28_g8141 = (ifLocalVar19_g8141).g;
			else if( saturate( temp_output_43_0_g8141 ) == 0.0 )
				ifLocalVar28_g8141 = (ifLocalVar19_g8141).r;
			float ifLocalVar32_g8141 = 0;
			if( saturate( temp_output_21_0_g8141 ) > 0.0 )
				ifLocalVar32_g8141 = (ifLocalVar19_g8141).b;
			else if( saturate( temp_output_21_0_g8141 ) == 0.0 )
				ifLocalVar32_g8141 = ifLocalVar28_g8141;
			float ifLocalVar33_g8141 = 0;
			if( saturate( ( temp_output_21_0_g8141 - 1.0 ) ) > 0.0 )
				ifLocalVar33_g8141 = (ifLocalVar19_g8141).a;
			else if( saturate( ( temp_output_21_0_g8141 - 1.0 ) ) == 0.0 )
				ifLocalVar33_g8141 = ifLocalVar32_g8141;
			float EmissionMaskChannel676 = ifLocalVar33_g8141;
			float4 EmissionFinal688 = ( EmissionRGBA590 * EmissionMaskChannel676 );
			#ifdef _EMISSION
				float4 staticSwitch886 = EmissionFinal688;
			#else
				float4 staticSwitch886 = float4( 0,0,0,0 );
			#endif
			float4 temp_output_211_0_g8104 = staticSwitch886;
			float4 temp_cast_182 = (1.0).xxxx;
			float3 temp_cast_183 = (1.0).xxx;
			int EmissionGlowZone47_g8104 = _EmissionGlowZone;
			int clampResult8_g8115 = clamp( EmissionGlowZone47_g8104 , 1 , 4 );
			int temp_output_3_0_g8115 = ( clampResult8_g8115 - 1 );
			int Zone16_g8115 = temp_output_3_0_g8115;
			float3 localgetThemeData16_g8115 = getThemeData( Zone16_g8115 );
			int Band11_g8116 = 56;
			int localIsLumaActive11_g8116 = IsLumaActive11_g8116( Band11_g8116 );
			int temp_output_14_0_g8115 = localIsLumaActive11_g8116;
			int lerpResult15_g8115 = lerp( temp_output_3_0_g8115 , ( 63 - temp_output_3_0_g8115 ) , (float)temp_output_14_0_g8115);
			int Band2_g8115 = lerpResult15_g8115;
			int Delay2_g8115 = 0;
			float3 localLumaGlowData2_g8115 = LumaGlowData2_g8115( Band2_g8115 , Delay2_g8115 );
			float3 lerpResult17_g8115 = lerp( ( localgetThemeData16_g8115 * localLumaGlowData2_g8115 ) , localLumaGlowData2_g8115 , (float)temp_output_14_0_g8115);
			int temp_output_21_0_g8104 = saturate( EmissionGlowZone47_g8104 );
			float3 lerpResult20_g8104 = lerp( temp_cast_183 , lerpResult17_g8115 , (float)temp_output_21_0_g8104);
			float3 temp_cast_187 = (1.0).xxx;
			int clampResult8_g8117 = clamp( EmissionGlowZone47_g8104 , 1 , 4 );
			int temp_output_3_0_g8117 = ( clampResult8_g8117 - 1 );
			int Zone15_g8117 = temp_output_3_0_g8117;
			float3 localgetThemeData15_g8117 = getThemeData( Zone15_g8117 );
			int Band11_g8118 = 56;
			int localIsLumaActive11_g8118 = IsLumaActive11_g8118( Band11_g8118 );
			int temp_output_13_0_g8117 = localIsLumaActive11_g8118;
			int lerpResult14_g8117 = lerp( temp_output_3_0_g8117 , ( 63 - temp_output_3_0_g8117 ) , (float)temp_output_13_0_g8117);
			int Band11_g8117 = lerpResult14_g8117;
			float cos6_g8104 = cos( radians( _EmissionGlowPulseDir ) );
			float sin6_g8104 = sin( radians( _EmissionGlowPulseDir ) );
			float2 rotator6_g8104 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos6_g8104 , -sin6_g8104 , sin6_g8104 , cos6_g8104 )) + float2( 0.5,0.5 );
			int Band6_g8110 = _EmissionGlowAnimationBand;
			int Mode6_g8110 = ( ( _EmissionGlowAnimationMode * 2 ) + _EmissionGlowAnimationSpeed );
			int localAudioLinkDecodeDataAsUInt6_g8110 = AudioLinkDecodeDataAsUInt6_g8110( Band6_g8110 , Mode6_g8110 );
			float localGetLocalTime2_g8111 = ( AudioLinkDecodeDataAsSeconds( ALPASS_GENERALVU_LOCAL_TIME ) );
			float lerpResult206_g8104 = lerp( ( ( localAudioLinkDecodeDataAsUInt6_g8110 % 628319 ) / 100000.0 ) , localGetLocalTime2_g8111 , (float)saturate( ( _EmissionGlowAnimationMode - 3 ) ));
			float EmissionGlowAnimation195_g8104 = ( _EmissionGlowAnimationStrength * lerpResult206_g8104 * step( _EmissionGlowAnimationBand , 9 ) );
			float x13_g8104 = ( ( rotator6_g8104.x * _EmissionGlowPulseScale ) + _EmissionGlowPulseOffset + EmissionGlowAnimation195_g8104 );
			float y13_g8104 = 127.0;
			float localglslmod13_g8104 = glslmod13_g8104( x13_g8104 , y13_g8104 );
			float2 temp_output_34_0_g8106 = ( i.uv_texcoord - _EmissionGlowRadialCenter );
			float2 break39_g8106 = temp_output_34_0_g8106;
			float2 appendResult50_g8106 = (float2(( _EmissionGlowPulseScale * ( length( temp_output_34_0_g8106 ) * 2.0 ) ) , ( ( atan2( break39_g8106.x , break39_g8106.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x12_g8104 = ( _EmissionGlowPulseOffset + appendResult50_g8106.x + EmissionGlowAnimation195_g8104 );
			float y12_g8104 = 127.0;
			float localglslmod12_g8104 = glslmod12_g8104( x12_g8104 , y12_g8104 );
			int EmissionGlowMode35_g8104 = _EmissionGlowMode;
			int temp_output_37_0_g8104 = ( EmissionGlowMode35_g8104 - 1 );
			float lerpResult5_g8104 = lerp( localglslmod13_g8104 , localglslmod12_g8104 , (float)saturate( temp_output_37_0_g8104 ));
			float DirectionalMap106_g8104 = Direction27_g8051;
			float lerpResult179_g8104 = lerp( DirectionalMap106_g8104 , ( 1.0 - DirectionalMap106_g8104 ) , (float)saturate( ( EmissionGlowMode35_g8104 - 3 ) ));
			float x34_g8104 = ( _EmissionGlowPulseOffset + ( _EmissionGlowPulseScale * lerpResult179_g8104 ) + EmissionGlowAnimation195_g8104 );
			float y34_g8104 = 127.0;
			float localglslmod34_g8104 = glslmod34_g8104( x34_g8104 , y34_g8104 );
			float lerpResult30_g8104 = lerp( lerpResult5_g8104 , localglslmod34_g8104 , (float)saturate( ( temp_output_37_0_g8104 - 1 ) ));
			float EmissionGlowDelay56_g8104 = lerpResult30_g8104;
			float Delay11_g8117 = EmissionGlowDelay56_g8104;
			float3 localLumaGlowLerp11_g8117 = LumaGlowLerp11_g8117( Band11_g8117 , Delay11_g8117 );
			float3 lerpResult17_g8117 = lerp( ( localgetThemeData15_g8117 * localLumaGlowLerp11_g8117 ) , localLumaGlowLerp11_g8117 , (float)temp_output_13_0_g8117);
			float3 lerpResult22_g8104 = lerp( temp_cast_187 , lerpResult17_g8117 , (float)temp_output_21_0_g8104);
			float3 lerpResult23_g8104 = lerp( lerpResult20_g8104 , lerpResult22_g8104 , (float)saturate( EmissionGlowMode35_g8104 ));
			float4 temp_cast_197 = (1.0).xxxx;
			float temp_output_10_0_g8112 = EmissionGlowDelay56_g8104;
			float Position1_g8114 = ( temp_output_10_0_g8112 / 127.0 );
			float4 localAudioLinkLerp1_g8114 = AudioLinkLerp1_g8114( Position1_g8114 );
			int clampResult8_g8112 = clamp( ( EmissionGlowZone47_g8104 - 4 ) , 1 , 3 );
			int Band11_g8112 = ( 59 - ( clampResult8_g8112 - 1 ) );
			float Delay11_g8112 = temp_output_10_0_g8112;
			float3 localLumaGlowLerp11_g8112 = LumaGlowLerp11_g8112( Band11_g8112 , Delay11_g8112 );
			int Band11_g8113 = 56;
			int localIsLumaActive11_g8113 = IsLumaActive11_g8113( Band11_g8113 );
			float4 lerpResult14_g8112 = lerp( localAudioLinkLerp1_g8114 , float4( localLumaGlowLerp11_g8112 , 0.0 ) , (float)localIsLumaActive11_g8113);
			float4 lerpResult52_g8104 = lerp( temp_cast_197 , lerpResult14_g8112 , (float)saturate( EmissionGlowZone47_g8104 ));
			float4 lerpResult51_g8104 = lerp( float4( lerpResult23_g8104 , 0.0 ) , lerpResult52_g8104 , (float)saturate( ( EmissionGlowZone47_g8104 - 4 ) ));
			float4 temp_cast_202 = (_EmissionGlowMinBrightness).xxxx;
			float4 temp_cast_203 = (( _EmissionGlowMinBrightness + 1.0 )).xxxx;
			int temp_output_245_0_g8104 = saturate( EmissionGlowZone47_g8104 );
			float4 EmissionGlow142_g8104 = ( (temp_cast_202 + (lerpResult51_g8104 - float4( 0,0,0,0 )) * (temp_cast_203 - temp_cast_202) / (float4( 1,1,1,1 ) - float4( 0,0,0,0 ))) * _EmissionGlowTint * temp_output_245_0_g8104 );
			float4 lerpResult248_g8104 = lerp( temp_cast_182 , EmissionGlow142_g8104 , (float)temp_output_245_0_g8104);
			float4 EmissionGlowTog249_g8104 = lerpResult248_g8104;
			int EmissionReactiveBand254_g8104 = _EmissionReactiveBand;
			int Band3_g8105 = EmissionReactiveBand254_g8104;
			int Delay3_g8105 = 0;
			float localAudioLinkData3_g8105 = AudioLinkData3_g8105( Band3_g8105 , Delay3_g8105 );
			int temp_output_64_0_g8104 = step( _EmissionReactiveBand , 9 );
			float lerpResult66_g8104 = lerp( 1.0 , localAudioLinkData3_g8105 , (float)temp_output_64_0_g8104);
			int Band3_g8107 = _EmissionReactiveBand;
			float cos78_g8104 = cos( radians( _EmissionReactivePulseDir ) );
			float sin78_g8104 = sin( radians( _EmissionReactivePulseDir ) );
			float2 rotator78_g8104 = mul( i.uv_texcoord - float2( 0.5,0.5 ) , float2x2( cos78_g8104 , -sin78_g8104 , sin78_g8104 , cos78_g8104 )) + float2( 0.5,0.5 );
			float x96_g8104 = ( ( rotator78_g8104.x * _EmissionReactivePulseScale ) + _EmissionReactivePulseOffset );
			float y96_g8104 = 127.0;
			float localglslmod96_g8104 = glslmod96_g8104( x96_g8104 , y96_g8104 );
			float2 temp_output_34_0_g8108 = ( i.uv_texcoord - _EmissionReactiveRadialCenter );
			float2 break39_g8108 = temp_output_34_0_g8108;
			float2 appendResult50_g8108 = (float2(( _EmissionReactivePulseScale * ( length( temp_output_34_0_g8108 ) * 2.0 ) ) , ( ( atan2( break39_g8108.x , break39_g8108.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
			float x97_g8104 = ( _EmissionReactivePulseOffset + appendResult50_g8108.x );
			float y97_g8104 = 127.0;
			float localglslmod97_g8104 = glslmod97_g8104( x97_g8104 , y97_g8104 );
			int EmissionReactiveMode99_g8104 = _EmissionReactiveMode;
			int temp_output_90_0_g8104 = ( EmissionReactiveMode99_g8104 - 1 );
			float lerpResult77_g8104 = lerp( localglslmod96_g8104 , localglslmod97_g8104 , (float)saturate( temp_output_90_0_g8104 ));
			float lerpResult174_g8104 = lerp( DirectionalMap106_g8104 , ( 1.0 - DirectionalMap106_g8104 ) , (float)saturate( ( EmissionReactiveMode99_g8104 - 3 ) ));
			float x98_g8104 = ( _EmissionReactivePulseOffset + ( _EmissionReactivePulseScale * lerpResult174_g8104 ) );
			float y98_g8104 = 127.0;
			float localglslmod98_g8104 = glslmod98_g8104( x98_g8104 , y98_g8104 );
			float lerpResult87_g8104 = lerp( lerpResult77_g8104 , localglslmod98_g8104 , (float)saturate( ( temp_output_90_0_g8104 - 1 ) ));
			float Delay3_g8107 = lerpResult87_g8104;
			float localAudioLinkLerp3_g8107 = AudioLinkLerp3_g8107( Band3_g8107 , Delay3_g8107 );
			float lerpResult102_g8104 = lerp( 1.0 , localAudioLinkLerp3_g8107 , (float)temp_output_64_0_g8104);
			float lerpResult103_g8104 = lerp( lerpResult66_g8104 , lerpResult102_g8104 , (float)saturate( EmissionReactiveMode99_g8104 ));
			int Band3_g8109 = _EmissionReactiveBand;
			float FilteredAmount3_g8109 = ( ( 1.0 - _EmissionReactiveGlobalSmoothing ) * 15.0 );
			float localAudioLinkLerp3_g8109 = AudioLinkLerp3_g8109( Band3_g8109 , FilteredAmount3_g8109 );
			float lerpResult168_g8104 = lerp( 1.0 , localAudioLinkLerp3_g8109 , (float)temp_output_64_0_g8104);
			float lerpResult172_g8104 = lerp( lerpResult103_g8104 , lerpResult168_g8104 , (float)saturate( ( EmissionReactiveMode99_g8104 - 4 ) ));
			float ReactivityAlpha132_g8104 = (_EmissionReactiveMinBrightness + (lerpResult172_g8104 - 0.0) * (( _EmissionReactiveMinBrightness + 1.0 ) - _EmissionReactiveMinBrightness) / (1.0 - 0.0));
			float4 temp_cast_214 = (1.0).xxxx;
			float4 lerpResult265_g8104 = lerp( temp_cast_214 , _EmissionReactiveTint , (float)step( EmissionReactiveBand254_g8104 , 9 ));
			float4 FinalReactivity68_g8104 = ( ReactivityAlpha132_g8104 * lerpResult265_g8104 );
			float4 lerpResult146_g8104 = lerp( ( EmissionGlowTog249_g8104 * FinalReactivity68_g8104 ) , ( EmissionGlow142_g8104 + FinalReactivity68_g8104 ) , (float)saturate( _EmissionReactiveBlendMode ));
			float4 ReversedReactivity152_g8104 = ( ( 1.0 - ReactivityAlpha132_g8104 ) * lerpResult265_g8104 );
			int temp_output_157_0_g8104 = ( _EmissionReactiveBlendMode - 1 );
			float4 lerpResult114_g8104 = lerp( lerpResult146_g8104 , ( EmissionGlowTog249_g8104 * ReversedReactivity152_g8104 ) , (float)saturate( temp_output_157_0_g8104 ));
			float4 lerpResult164_g8104 = lerp( lerpResult114_g8104 , ( EmissionGlow142_g8104 + ( ReversedReactivity152_g8104 * step( EmissionReactiveBand254_g8104 , 9 ) ) ) , (float)saturate( ( temp_output_157_0_g8104 - 1 ) ));
			float grayscale214_g8104 = Luminance(temp_output_211_0_g8104.rgb);
			float smoothstepResult215_g8104 = smoothstep( 0.0 , 0.5 , grayscale214_g8104);
			int ReactiveBlendmode272_g8104 = _EmissionReactiveBlendMode;
			float x270_g8104 = (float)ReactiveBlendmode272_g8104;
			float y270_g8104 = 2.0;
			float localglslmod270_g8104 = glslmod270_g8104( x270_g8104 , y270_g8104 );
			float lerpResult271_g8104 = lerp( localglslmod270_g8104 , (float)_EmissionGlowBlendMode , (float)saturate( EmissionGlowZone47_g8104 ));
			float4 lerpResult212_g8104 = lerp( ( lerpResult164_g8104 * temp_output_211_0_g8104 ) , ( ( lerpResult164_g8104 * smoothstepResult215_g8104 ) + temp_output_211_0_g8104 ) , lerpResult271_g8104);
			int localIfAudioLinkv2Exists1_g8119 = IfAudioLinkv2Exists1_g8119();
			float4 lerpResult281_g8104 = lerp( temp_output_211_0_g8104 , lerpResult212_g8104 , (float)localIfAudioLinkv2Exists1_g8119);
			#ifdef _EMISSION
				float4 staticSwitch284_g8104 = lerpResult281_g8104;
			#else
				float4 staticSwitch284_g8104 = float4( 0,0,0,0 );
			#endif
			float4 Emiss1322 = ( ( lerpResult280_g8120 + lerpResult276_g8053 + lerpResult278_g8070 + lerpResult278_g8087 ) + staticSwitch284_g8104 );
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
				o.customPack1.xy = customInputData.vertexToFrag51_g5489;
				o.customPack1.zw = customInputData.vertexToFrag51_g5488;
				o.customPack2.xy = customInputData.vertexToFrag51_g5487;
				o.customPack2.zw = customInputData.vertexToFrag51_g5486;
				o.customPack3.xy = customInputData.uv_texcoord;
				o.customPack3.xy = v.texcoord;
				o.customPack3.zw = customInputData.vertexToFrag51_g8052;
				o.customPack4.xy = customInputData.vertexToFrag51_g8025;
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
				surfIN.vertexToFrag51_g5489 = IN.customPack1.xy;
				surfIN.vertexToFrag51_g5488 = IN.customPack1.zw;
				surfIN.vertexToFrag51_g5487 = IN.customPack2.xy;
				surfIN.vertexToFrag51_g5486 = IN.customPack2.zw;
				surfIN.uv_texcoord = IN.customPack3.xy;
				surfIN.vertexToFrag51_g8052 = IN.customPack3.zw;
				surfIN.vertexToFrag51_g8025 = IN.customPack4.xy;
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
				#if defined( CAN_SKIP_VPOS )
				float2 vpos = IN.pos;
				#endif
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
Node;AmplifyShaderEditor.CommentaryNode;8;-10160.09,-2522.909;Inherit;False;3982.787;1722.466;Comment;87;4;6;1371;1370;411;1368;1366;12;11;50;1363;1360;1356;1359;1358;1357;1124;973;972;971;970;975;974;967;966;418;417;416;415;410;409;408;407;218;219;216;17;217;53;18;7;689;1361;23;596;692;691;1362;5;595;22;693;690;590;593;38;594;21;646;645;20;592;589;16;588;587;420;414;412;419;406;296;295;413;52;9;405;51;1388;1393;1394;1395;1396;1401;1402;1403;1404;Texture Assignments;0.1176471,0.3137255,0.627451,1;0;0
Node;AmplifyShaderEditor.TexturePropertyNode;50;-8329.261,-1976.14;Inherit;True;Property;_MaskMap02;Mask Map 02;203;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;11;-8375.626,-2470.025;Inherit;True;Property;_MaskMap01;Mask Map 01;200;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;405;-7289.081,-2353.497;Inherit;True;Property;_MaskMap03;Mask Map 03;205;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RegisterLocalVarNode;51;-8118.705,-1970.098;Inherit;False;MaskMap02Tex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;12;-8149.914,-2469.857;Inherit;False;MaskMap01Tex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;1366;-8348.26,-2254.953;Inherit;False;Property;_MaskMap01UV;MaskMap01UV;201;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1368;-8319.121,-1791.788;Inherit;False;Property;_MaskMap02UV;MaskMap02UV;204;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;411;-7063.568,-2354.629;Inherit;False;MaskMap03Tex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;1370;-7280.11,-2174.296;Inherit;False;Property;_MaskMap03UV;MaskMap03UV;206;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;413;-7287.021,-1938.036;Inherit;True;Property;_MaskMap04;Mask Map 04;207;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1371;-7278.111,-1747.296;Inherit;False;Property;_MaskMap04UV;MaskMap04UV;208;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;316;-4321.019,-6534.272;Inherit;False;7732.825;5126.378;Comment;133;1135;1169;1207;1241;1286;1449;1615;1719;1720;1721;1722;1726;1772;1773;1771;1776;1777;1778;1202;1727;1181;422;423;1791;1792;299;292;232;1794;1796;1795;322;1797;244;517;518;520;514;1799;527;542;344;342;343;449;346;257;1801;1802;1803;1804;1806;1807;1808;1810;379;1809;380;279;598;611;1811;1812;1813;1814;1815;452;1817;1818;1819;1820;291;399;400;1816;1821;1822;1823;1824;1825;626;320;648;661;676;1826;465;478;1715;1827;1828;1829;1830;493;1831;895;899;898;901;905;923;1833;1834;1835;1836;1837;1009;977;993;1838;1839;1840;1841;1842;1043;1041;1042;1843;1844;1845;1846;1847;1077;1075;1848;1849;1850;1851;1852;1853;1111;1109;1854;Packed Map Channel Selector;0.4103774,0.8871209,1,1;0;0
Node;AmplifyShaderEditor.FunctionNode;1604;-8141.204,-2278.725;Inherit;False;UV Channel Select;-1;;5486;756457f5c2398324eb74b053d38f83bd;1,50,1;2;2;SAMPLER2D;0;False;14;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;1605;-8112.065,-1815.56;Inherit;False;UV Channel Select;-1;;5487;756457f5c2398324eb74b053d38f83bd;1,50,1;2;2;SAMPLER2D;0;False;14;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;1606;-7073.054,-2198.068;Inherit;False;UV Channel Select;-1;;5488;756457f5c2398324eb74b053d38f83bd;1,50,1;2;2;SAMPLER2D;0;False;14;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;419;-7054.808,-1939.169;Inherit;False;MaskMap04Tex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.FunctionNode;1607;-7071.055,-1771.068;Inherit;False;UV Channel Select;-1;;5489;756457f5c2398324eb74b053d38f83bd;1,50,1;2;2;SAMPLER2D;0;False;14;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;9;-7905.46,-2348.815;Inherit;True;Property;;;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;52;-7912.179,-1969.705;Inherit;True;Property;;;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;406;-6849.04,-2354.236;Inherit;True;Property;;;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;414;-6848.282,-1938.776;Inherit;True;Property;;;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;1449;-1649.26,-2215.641;Inherit;False;2300.768;603.0762;Comment;33;1482;1481;1480;1479;1478;1477;1476;1475;1474;1473;1472;1471;1470;1469;1468;1467;1466;1465;1464;1463;1462;1461;1460;1459;1458;1457;1456;1455;1454;1453;1452;1451;1450;Metallic;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;235;-9424.979,-6467.464;Inherit;False;4467.322;2418.005;Comment;51;686;685;677;281;340;338;627;280;258;268;245;234;212;211;743;747;749;750;751;752;753;756;759;1488;42;1497;43;1575;1584;1389;1673;1675;1676;1677;1678;1679;1680;1681;1682;1683;1685;10;225;230;228;1707;1710;247;1724;1385;1770;Workflow Switcher;0.6670364,1,0.3820755,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;295;-7568.321,-2461.267;Inherit;False;MM01RGBA;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;296;-7575.453,-2078.679;Inherit;False;MM02RGBA;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;412;-6513.314,-2463.209;Inherit;False;MM03RGBA;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;420;-6512.555,-2047.747;Inherit;False;MM04RGBA;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1450;-1536.194,-1974.164;Inherit;False;Property;_FleckMetallicMap;Fleck Metallic Map;214;1;[Enum];Create;True;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;211;-5442.605,-6355.02;Inherit;False;Property;_Workflow;Workflow;199;2;[Header];[Enum];Create;True;0;4;Furality;3;Metallic;0;Specular;1;Packed;2;0;True;0;False;3;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1451;-1482.574,-2136.097;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1452;-1479.569,-2059.869;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1453;-1356.076,-1974.811;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1454;-1358.076,-1905.812;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;212;-5281.526,-6370.381;Inherit;False;Workflow;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;299;-4190.257,-6378.381;Inherit;False;Property;_MetallicChannel;Metallic Channel;216;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;292;-4177.271,-6462.408;Inherit;False;Property;_MetallicMask;Metallic Map;213;2;[Header];[Enum];Create;False;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;1;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1791;-4188.476,-6220.491;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1792;-4191.48,-6296.719;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;422;-4194.651,-6147.284;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;423;-4186.852,-6071.183;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.TexturePropertyNode;587;-9486.039,-1586.093;Inherit;True;Property;_EmissionMap;EmissionMap;195;1;[Header];Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.LerpOp;1455;-1181.341,-2092.413;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1456;-1187.076,-1906.812;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1457;-1196.076,-1974.811;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1458;-1186.076,-1835.812;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;16;-7568.299,-2393.18;Inherit;False;MM01R;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;227;-9491.711,-6115.233;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1801;-3875.544,-6328.392;Inherit;False;General Selector;-1;;8024;b8b7e166d0aa2464aa905a5bb0ec6609;0;6;42;FLOAT;0;False;43;FLOAT;0;False;44;COLOR;0,0,0,0;False;45;COLOR;0,0,0,0;False;46;COLOR;0,0,0,0;False;47;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;234;-9129.711,-6282.38;Inherit;False;1120.352;378.5132;Comment;11;226;229;233;231;694;695;696;224;1705;1706;1708;Metallics;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;588;-9267.763,-1589.364;Inherit;False;EmissionTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.CommentaryNode;1207;-1699.792,-2883.859;Inherit;False;2359.104;566.9634;Comment;34;1240;1239;1238;1237;1236;1235;1234;1233;1232;1231;1230;1229;1228;1227;1226;1225;1224;1223;1222;1221;1220;1219;1218;1217;1216;1215;1214;1213;1212;1211;1210;1209;1208;1774;Glint Smoothness;1,1,1,1;0;0
Node;AmplifyShaderEditor.SaturateNode;1459;-923.0762,-1902.812;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1460;-936.076,-1972.811;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1461;-924.1111,-2088.547;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1462;-923.2732,-1675.805;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;228;-9314.673,-6114.867;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;225;-9344.359,-6234.38;Inherit;False;16;MM01R;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;230;-9308.673,-6042.867;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;232;-3588.962,-6352.825;Inherit;False;MetallicChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1821;-4168.885,-5452.226;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1822;-4159.785,-5525.726;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1823;-4145.552,-5605.245;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1824;-4148.558,-5681.474;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;648;-4170.949,-5858.044;Inherit;False;Property;_EmissionMaskMap;Emission Mask Map;210;1;[Enum];Create;False;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;661;-4183.241,-5766.453;Inherit;False;Property;_EmissionMaskChannel;Emission Mask Channel;211;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;592;-8344.867,-1656.893;Inherit;True;Property;_DetailNormal;DetailNormal;274;1;[Header];Create;False;1;Detail Normal;0;0;False;0;False;None;None;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SamplerNode;589;-9035.837,-1591.692;Inherit;True;Property;;;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;645;-9009.097,-1770.446;Inherit;False;Property;_EmissionColor;Emission Tint;196;1;[HDR];Create;False;0;0;0;False;0;False;0,0,0,0;0.01,0.01,0.01,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;4;-10050.54,-2432.819;Inherit;True;Property;_MainTex;Main Tex;194;1;[Header];Create;True;1;Main;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.LerpOp;1463;-667.1111,-2090.547;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1464;-924.2732,-1747.805;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1465;-925.2732,-1822.805;Inherit;False;Constant;_Float47;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;226;-9112.358,-6234.38;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;233;-9142.434,-6116.027;Inherit;False;232;MetallicChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;231;-9084.673,-6041.867;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1707;-9082.383,-5965.946;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1208;-1604.544,-2652.118;Inherit;False;Property;_GlintGlossMap;Glint Gloss Map;267;2;[Header];[Enum];Create;True;1;;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1825;-3851.821,-5730.003;Inherit;False;General Selector;-1;;8141;b8b7e166d0aa2464aa905a5bb0ec6609;0;6;42;FLOAT;0;False;43;FLOAT;0;False;44;COLOR;0,0,0,0;False;45;COLOR;0,0,0,0;False;46;COLOR;0,0,0,0;False;47;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;20;-9387.941,-1963.747;Inherit;True;Property;_BumpMap;Normal Map;197;0;Create;False;0;0;0;False;0;False;None;None;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RegisterLocalVarNode;593;-8118.025,-1659.884;Inherit;False;DetailNormalTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;1393;-8326.467,-1367.27;Inherit;False;Property;_DetailUV;DetailUV;202;1;[Enum];Create;False;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;646;-8733.097,-1650.446;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;6;-9833.266,-2435.09;Inherit;False;MainTexTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SaturateNode;1209;-1345.742,-2649.785;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1210;-1347.742,-2580.785;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1211;-1634.919,-2726.821;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1212;-1637.925,-2803.049;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1466;-687.9661,-1804.806;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1467;-658.3411,-1888.413;Inherit;False;Property;_FleckMetallicChannel;Fleck Metallic Channel;215;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;229;-8855.673,-6233.867;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1708;-8927.383,-5967.946;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1706;-8876.383,-6116.946;Inherit;False;16;MM01R;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;676;-3469.91,-5714.781;Inherit;False;EmissionMaskChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;21;-9152.033,-1969.67;Inherit;False;NormalTex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;38;-9421.629,-1771.309;Inherit;False;Property;_BumpScale;Normal Scale;198;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;594;-8378.557,-1464.456;Inherit;False;Property;_BumpScale1;Detail Normal Scale;275;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1610;-8110.467,-1390.27;Inherit;False;UV Channel Select;-1;;8025;756457f5c2398324eb74b053d38f83bd;1,50,1;2;2;SAMPLER2D;0;False;14;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;590;-8580.003,-1649.685;Inherit;False;EmissionRGBA;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;690;-9368.858,-2113.604;Inherit;False;676;EmissionMaskChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;5;-9617.34,-2434.419;Inherit;True;Property;;;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;693;-9348.517,-2186.109;Inherit;False;Property;_ReplaceBaseColor;Replace Base Color;209;1;[ToggleUI];Create;True;1;Emission;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1213;-1176.742,-2581.785;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1214;-1185.742,-2649.785;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1215;-1345.917,-2777.821;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1216;-1175.742,-2510.786;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1468;-459.3423,-2161.413;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1469;-445.3423,-1888.413;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1470;-459.3423,-2090.413;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1471;-442.3423,-2017.413;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1472;-445.3423,-1819.414;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1362;-9628.442,-2231.165;Inherit;False;Property;_Color;Color;179;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;694;-8224.161,-6000.491;Inherit;False;Property;_MetallicMult;MetallicMult;212;0;Create;True;0;0;0;False;0;False;1;1.75;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1705;-8611.383,-6231.946;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;895;-4207.517,-5256.353;Inherit;False;Property;_SpecularTintMap;Specular Tint Map;242;2;[Header];[Enum];Create;True;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;899;-4168.147,-5187.347;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;898;-4176.984,-5104.35;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;901;-4171.065,-5027.315;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;905;-4164.839,-4954.258;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;22;-8945.507,-1969.277;Inherit;True;Property;;;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;595;-7892.499,-1652.492;Inherit;True;Property;;;2;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;691;-9146.063,-2236.339;Inherit;False;590;EmissionRGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;692;-9116.776,-2147.149;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1361;-9269.643,-2432.665;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;695;-8187.161,-6118.491;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1217;-925.7422,-2647.785;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1218;-913.7762,-2763.52;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1219;-912.7422,-2577.785;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1220;-909.1422,-2362.03;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1473;-241.3423,-2142.413;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1474;-249.3423,-2019.413;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1475;-237.3423,-1947.413;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1476;-253.3423,-1796.414;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1477;-252.3423,-1869.413;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1811;1041.21,-6211.22;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1812;1038.204,-6287.448;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1813;1055.957,-6134.185;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1814;1062.7,-6043.4;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;598;1001.474,-6450.402;Inherit;False;Property;_DetailNormalMask;Detail Normal Mask;276;1;[Enum];Create;True;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;611;989.6478,-6366.765;Inherit;False;Property;_DetailNormalChannel;Detail Normal Channel;277;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1831;-3729.269,-5147.679;Inherit;False;Color Selector;-1;;8143;07727ce853d61fb45b31b53bb140c0c3;0;6;42;FLOAT;0;False;43;FLOAT;0;False;44;COLOR;0,0,0,0;False;45;COLOR;0,0,0,0;False;46;COLOR;0,0,0,0;False;47;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;627;-7725.081,-5189.773;Inherit;False;1085.658;378.5127;Comment;11;642;643;639;641;637;640;638;1580;1581;1582;1583;Detail Normal;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;23;-8626.42,-1964.787;Inherit;False;Normal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;596;-7588.001,-1659.933;Inherit;False;DetailNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1615;801.4782,-2199.686;Inherit;False;2359.104;566.9634;Comment;18;1633;1632;1631;1630;1629;1628;1627;1626;1625;1624;1623;1622;1621;1620;1619;1618;1617;1616;Specular Tint;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;268;-7545.961,-6326.3;Inherit;False;1770.602;430.8945;Comment;23;40;222;41;2;223;220;260;262;263;264;266;267;337;924;925;1387;1489;1487;1386;1510;1511;1576;1645;Specular Color;1,1,1,1;0;0
Node;AmplifyShaderEditor.SaturateNode;696;-8189.152,-6193.963;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1221;-661.7773,-2761.52;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1222;-911.1422,-2509.03;Inherit;False;Constant;_Float44;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1223;-910.1422,-2434.03;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1478;-12.34218,-2140.413;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1479;-21.34218,-2021.413;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1480;-22.34218,-1950.413;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1497;-6591.523,-4674.796;Inherit;False;1120.352;378.5132;Comment;12;1509;1508;1507;1505;1504;1503;1502;1501;1500;1499;1498;1448;Fleck Metallics;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;689;-8836.897,-2440.347;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;346;-1079.653,-6367.491;Inherit;False;Property;_OcclusionChannel;Occlusion Channel;225;1;[Enum];Create;False;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;344;-1043.963,-6452.993;Inherit;False;Property;_OcclusionMap;Occlusion Map;224;1;[Enum];Create;False;1;     Occlusion;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1815;1316.171,-6329.14;Inherit;False;General Selector;-1;;8030;b8b7e166d0aa2464aa905a5bb0ec6609;0;6;42;FLOAT;0;False;43;FLOAT;0;False;44;COLOR;0,0,0,0;False;45;COLOR;0,0,0,0;False;46;COLOR;0,0,0,0;False;47;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;923;-3421.635,-5139.485;Inherit;False;SpecularTintCol;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;452;-1092.471,-6060.078;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;449;-1083.37,-6133.578;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;342;-1069.138,-6213.097;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;343;-1072.142,-6289.326;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;640;-7691.354,-5053.058;Inherit;False;23;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;638;-7692.354,-4980.058;Inherit;False;596;DetailNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1616;896.7263,-1967.944;Inherit;False;Property;_FleckColorMap;Fleck Color Map;241;1;[Enum];Create;True;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;7;-8643.507,-2426.412;Inherit;False;MainTexRGBA;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;222;-7478.552,-6120.153;Inherit;False;Property;_SpecularTint;Specular Tint;240;0;Create;True;1;Specular Color;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;224;-8216.358,-6264.38;Inherit;False;Metallic;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1224;-668.1424,-2491.03;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1225;-706.4355,-2560.53;Inherit;False;Property;_GlintGlossChannel;Glint Gloss Channel;269;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1481;251.6577,-2140.413;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1498;-6541.523,-4505.649;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;258;-6192.622,-5750.287;Inherit;False;1102.033;405.5127;Comment;12;252;254;253;250;249;246;1390;1648;1723;1725;248;255;Occlusion;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;924;-7478.273,-5952.07;Inherit;False;923;SpecularTintCol;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;247;-6456.622,-5567.141;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;626;1603.581,-6320.924;Inherit;False;DetailNormalChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1804;-775.4067,-6337.857;Inherit;False;General Selector;-1;;8031;b8b7e166d0aa2464aa905a5bb0ec6609;0;6;42;FLOAT;0;False;43;FLOAT;0;False;44;COLOR;0,0,0,0;False;45;COLOR;0,0,0,0;False;46;COLOR;0,0,0,0;False;47;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.BlendNormalsNode;637;-7484.354,-5034.058;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;641;-7497.354,-4939.058;Inherit;False;626;DetailNormalChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;642;-7454.354,-5107.058;Inherit;False;23;Normal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;1617;1155.53,-1965.611;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1618;1153.53,-1896.611;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1619;866.3513,-2042.648;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1620;863.3455,-2118.876;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;41;-7466.961,-6185.3;Inherit;False;224;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;925;-7249.273,-6124.07;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;40;-7495.961,-6259.299;Inherit;False;7;MainTexRGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SwizzleNode;1226;-451.5366,-2829.631;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1227;-437.5366,-2556.631;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1228;-451.5366,-2758.631;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1229;-434.5366,-2685.631;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1230;-437.5366,-2487.632;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1482;409.5067,-2142.456;Inherit;False;FleckMetallicChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1499;-6394.172,-4624.796;Inherit;False;16;MM01R;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1500;-6358.485,-4433.283;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1501;-6364.485,-4505.283;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1385;-7458.38,-5866.48;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;249;-6273.584,-5495.774;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;217;-7577.012,-1918.816;Inherit;False;MM02G;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;257;-458.1215,-6314.105;Inherit;False;OcclusionChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;639;-7182.354,-5054.058;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;1621;1324.53,-1897.611;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1622;1315.53,-1965.611;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1623;1155.355,-2093.648;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1624;1325.53,-1826.61;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;223;-7072.227,-6130.498;Inherit;False;FLOAT3;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1231;-233.5363,-2810.631;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1232;-241.5363,-2687.631;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1233;-229.5364,-2615.631;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1234;-245.5363,-2464.632;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1235;-244.5363,-2537.631;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1502;-6162.171,-4624.796;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1504;-6134.485,-4432.283;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1503;-6192.246,-4506.443;Inherit;False;1482;FleckMetallicChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;260;-6831.678,-6104.771;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;2;-7249.962,-6258.075;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1386;-7178.228,-5995.815;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;216;-7569.49,-2314.261;Inherit;False;MM01G;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1724;-6048.134,-5421.394;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;253;-6049.585,-5494.774;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;255;-6094.73,-5681.594;Inherit;False;217;MM02G;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;252;-6096.346,-5586.934;Inherit;False;257;OcclusionChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1806;16.74329,-6292.759;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1807;28.24873,-6209.131;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1808;22.0727,-6135.924;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1809;29.87262,-6059.823;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;380;-23.50848,-6359.477;Inherit;False;Property;_ReflectionMaskChannel;Reflection Mask Channel;227;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;379;11.69789,-6438.637;Inherit;False;Property;_ReflectionMask;Reflection Mask;226;1;[Enum];Create;False;1;     Reflection Mask;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;202;3688.677,-6496.571;Inherit;False;4100.554;2387.413;Comment;32;200;548;581;553;579;198;176;783;1127;1126;1125;1128;1129;1333;1429;1430;1411;1427;192;1573;1585;1586;1587;1588;1654;1655;1518;1589;1688;1769;776;782;Lighting;1,1,0,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1580;-7021.11,-5141.565;Inherit;False;InitialNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1390;-5562.837,-5443.929;Inherit;False;Property;_OcclusionPower;Occlusion Power;223;0;Create;False;0;0;0;True;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1625;1575.53,-1963.611;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1626;1587.496,-2079.347;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1627;1584.476,-1825.46;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1628;1588.53,-1893.611;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1387;-7022.228,-5997.815;Inherit;False;FLOAT3;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;220;-6897.55,-6222.153;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;263;-6654.64,-6104.406;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;262;-6648.64,-6032.406;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1236;-4.536285,-2808.631;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1237;-13.53628,-2689.631;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1238;-14.53628,-2618.631;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1505;-5905.485,-4624.283;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1448;-5934.668,-4437.196;Inherit;False;Property;_FleckMetallic;FleckMetallic;170;0;Create;True;0;0;0;False;0;False;1;0;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1725;-5861.134,-5491.394;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;254;-5825.585,-5682.774;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;248;-5846.271,-5560.287;Inherit;False;216;MM01G;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1810;315.2366,-6319.553;Inherit;False;General Selector;-1;;8032;b8b7e166d0aa2464aa905a5bb0ec6609;0;6;42;FLOAT;0;False;43;FLOAT;0;False;44;COLOR;0,0,0,0;False;45;COLOR;0,0,0,0;False;46;COLOR;0,0,0,0;False;47;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1648;-5273.817,-5443.662;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.0001;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1629;1844.496,-2081.347;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1630;1842.476,-1964.46;Inherit;False;Constant;_Float49;Float 27;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1631;1837.476,-1892.46;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;264;-6452.324,-6223.918;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;266;-6425.638,-5983.406;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;280;-7680.977,-5719.77;Inherit;False;1085.658;378.5127;Comment;9;269;271;272;273;276;278;274;275;277;Reflection Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.LerpOp;1239;208.3765,-2810.09;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1507;-5648.974,-4510.907;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1723;-5610.134,-5679.394;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1688;6681.715,-5237.285;Inherit;False;1580;InitialNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;1241;820.8502,-2871.79;Inherit;False;2359.104;566.9634;Comment;37;1274;1273;1272;1271;1270;1269;1268;1267;1266;1265;1264;1263;1262;1261;1260;1259;1258;1257;1256;1255;1254;1253;1252;1251;1250;1249;1248;1247;1246;1245;1244;1243;1242;1779;1780;1781;1782;Glint Highlight;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;279;606.687,-6322.035;Inherit;False;ReflectionMaskChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1389;-5294.837,-5563.929;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1632;2050.475,-2082.46;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;267;-6195.638,-6223.406;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;274;-7281.698,-5551.418;Inherit;False;279;ReflectionMaskChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;176;3788.802,-6379.216;Inherit;False;1688.495;505.423;Comment;13;32;35;34;60;33;1275;1324;1417;1422;1424;1328;780;1412;GlintSpecular;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1240;421.2957,-2803.256;Inherit;False;GlintGlossChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1508;-5650.964,-4586.379;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1769;6865.567,-5238.322;Inherit;False;VRC Light;-1;;8033;675a2dca12829524d8a7f69e08069f38;0;1;23;FLOAT3;0,0,0;False;2;FLOAT3;21;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1273;916.0982,-2640.049;Inherit;False;Property;_GlintHighlightMap;Glint Highlight Map;262;2;[Header];[Enum];Create;True;1;;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;527;-2084.21,-6374.54;Inherit;False;Property;_GlintChannel;Glint Channel;273;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;514;-2065.618,-6456.448;Inherit;False;Property;_GlintMap;Glint Map;272;1;[Enum];Create;True;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;517;-2078.076,-6209.636;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;518;-2081.082,-6285.864;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;520;-2063.329,-6132.601;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1799;-2056.586,-6041.817;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1633;2249.368,-2077.783;Inherit;False;FleckTintCol;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1489;-5899.582,-6176.917;Inherit;False;InitialSpec;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;277;-6837.318,-5668.423;Inherit;False;ReflectionMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;33;3908.608,-6210.92;Inherit;False;1240;GlintGlossChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1509;-5678.171,-4656.796;Inherit;False;MetallicForFleck;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1510;-7034.496,-6066.408;Inherit;False;GlintSpecCol1;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;246;-5332.591,-5673.358;Inherit;False;Occlusion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;60;3849.242,-6282.301;Inherit;False;Property;_GlintGloss;Glint Gloss;266;0;Create;True;0;0;0;False;0;False;0.95;0.8;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;34;3874.565,-6065.255;Inherit;False;Property;_GlintAmount;Glint Amount;270;0;Create;True;0;0;0;False;0;False;0.5;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1511;-6870.496,-5994.408;Inherit;False;GlintSpecCol2;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;776;7200.425,-5260.927;Inherit;False;LightDir;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;782;7205.788,-5184;Inherit;False;LightCol;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;1242;1174.9,-2637.716;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1243;1172.9,-2568.716;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1244;885.7232,-2714.752;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1245;882.7172,-2790.98;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;1803;-1803.115,-6327.556;Inherit;False;General Selector;-1;;8037;b8b7e166d0aa2464aa905a5bb0ec6609;0;6;42;FLOAT;0;False;43;FLOAT;0;False;44;COLOR;0,0,0,0;False;45;COLOR;0,0,0,0;False;46;COLOR;0,0,0,0;False;47;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1422;4159.723,-6113.592;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1438;4197.736,-6715.53;Inherit;False;277;ReflectionMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;1414;4195.669,-7029.948;Inherit;True;Property;_DictionaryTex;Texture 0;177;0;Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
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
Node;AmplifyShaderEditor.RangedFloatNode;1410;4410.086,-6543.163;Inherit;False;Property;_FleckScale;Fleck Scale;174;0;Create;False;0;0;0;False;0;False;500;1500;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1411;4403.586,-6471.663;Inherit;False;Property;_FleckSize;Fleck Size;175;0;Create;False;0;0;0;False;0;False;0.35;0.35;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1424;4350.822,-6087.594;Inherit;False;Property;_GlintTimescale;Glint Timescale;176;0;Create;False;0;0;0;False;0;False;0.001;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;35;3873.565,-5994.255;Inherit;False;Property;_GlintDensity;Glint Density;271;0;Create;True;0;0;0;False;0;False;0.5;41;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1246;1343.9,-2569.716;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1247;1334.9,-2637.716;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1248;1174.725,-2765.752;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1249;1344.9,-2498.717;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;322;-3134.958,-6359.248;Inherit;False;Property;_GlossChannel;Gloss Channel;222;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;3;3;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;320;-3126.012,-6458.22;Inherit;False;Property;_GlossMap;Gloss Map;221;1;[Enum];Create;False;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1795;-3140.818,-6278.638;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1794;-3129.313,-6195.01;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1796;-3135.488,-6121.803;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1797;-3127.688,-6045.702;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;542;-1523.623,-6318.094;Inherit;False;GlintChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1528;5576.223,-6754.175;Inherit;False;542;GlintChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1531;5905.467,-6723.654;Inherit;False;1580;InitialNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;245;-9341.006,-5806.67;Inherit;False;1463.023;341.2168;Comment;13;213;215;214;241;236;243;239;697;698;1684;1709;1711;1712;Gloss;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;238;-9634.963,-5612.329;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1760;4910.676,-6632.703;Inherit;False;SparkleSpec;1;;8038;58aee035235c0c144a49b4bba6f3b797;2,127,1,174,1;21;135;FLOAT;0;False;124;FLOAT3;0,0,0;False;125;FLOAT;0;False;123;FLOAT3;0,0,0;False;102;FLOAT;0;False;63;FLOAT3;0,0,0;False;71;FLOAT3;0,0,0;False;191;FLOAT3;0,0,0;False;72;FLOAT3;0,0,0;False;73;FLOAT3;0,0,0;False;51;SAMPLER2D;0;False;53;FLOAT2;0,0;False;60;FLOAT3;0,0,0;False;74;FLOAT;0;False;75;FLOAT;0;False;59;FLOAT;0;False;62;FLOAT;0;False;57;FLOAT;0;False;54;FLOAT;0;False;58;FLOAT;0;False;55;FLOAT;0;False;7;FLOAT3;210;FLOAT;181;FLOAT3;110;FLOAT3;169;FLOAT4;0;FLOAT4;69;FLOAT3;77
Node;AmplifyShaderEditor.GetLocalVarNode;1250;1594.9,-2635.716;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1251;1606.866,-2751.451;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1252;1607.9,-2565.716;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1253;1611.5,-2349.961;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1135;-4154.57,-3581.463;Inherit;False;2359.104;566.9634;Comment;37;1168;1167;1166;1165;1164;1163;1162;1161;1160;1159;1158;1157;1156;1155;1154;1153;1152;1151;1150;1149;1148;1147;1146;1145;1144;1143;1142;1141;1140;1139;1138;1137;1136;1660;1661;1662;1775;Clear Coat Highlight;1,1,1,1;0;0
Node;AmplifyShaderEditor.FunctionNode;1802;-2842.324,-6305.432;Inherit;False;General Selector;-1;;8044;b8b7e166d0aa2464aa905a5bb0ec6609;0;6;42;FLOAT;0;False;43;FLOAT;0;False;44;COLOR;0,0,0,0;False;45;COLOR;0,0,0,0;False;46;COLOR;0,0,0,0;False;47;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldNormalVector;1673;-9336.532,-5408.79;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LerpOp;1529;6094.467,-6632.654;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;18;-7571.474,-2159.141;Inherit;False;MM01A;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;239;-9458.926,-5610.963;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1254;1858.865,-2749.451;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1255;1609.5,-2496.961;Inherit;False;Constant;_Float45;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1256;1610.5,-2421.961;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1136;-4059.322,-3349.721;Inherit;False;Property;_ClearCoatHighlightMap;Clear Coat Highlight Map;245;2;[Header];[Enum];Create;False;1;;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1169;-4152.225,-2885.631;Inherit;False;2359.104;566.9634;Comment;35;1664;1663;1665;1718;1199;1198;1197;1196;1195;1194;1193;1192;1191;1190;1189;1188;1187;1186;1200;1185;1184;1183;1182;1180;1179;1178;1177;1176;1175;1174;1173;1172;1171;1170;1201;Clear Coat Reflection;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;244;-2537.095,-6313.693;Inherit;False;GlossChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DdxOpNode;1675;-9133.217,-5438.194;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DdyOpNode;1676;-9135.217,-5368.194;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1561;6296.244,-6740.922;Inherit;False;Property;_GlintHighlightToggle1;Glint Highlight;259;0;Create;False;0;0;0;False;0;False;0;0;0;True;_GLINT_HIGHLIGHT_ON;Toggle;2;Key0;Key1;Reference;544;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;242;-9574.1,-5747.827;Inherit;False;244;GlossChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;243;-9300.926,-5610.963;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;236;-9325.322,-5811.18;Inherit;False;18;MM01A;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1710;-9295.779,-5542.52;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1257;1852.5,-2478.961;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1274;1814.206,-2548.461;Inherit;False;Property;_GlintHighlightChannel;Glint Highlight Channel;263;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1137;-3800.52,-3347.388;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1138;-3802.52,-3278.388;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1139;-4089.697,-3424.425;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1140;-4092.703,-3500.653;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1201;-4056.978,-2653.89;Inherit;False;Property;_ClearCoatReflectionMap;Clear Coat Reflection Map;250;2;[Header];[Enum];Create;False;1;;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1677;-8994.217,-5462.194;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1678;-8992.217,-5370.194;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1443;6500.138,-6637.986;Inherit;False;FleckNorm;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;241;-9094.985,-5755.197;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1711;-9090.779,-5566.52;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1712;-9109.779,-5639.52;Inherit;False;18;MM01A;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1258;2069.105,-2817.562;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1259;2083.105,-2544.562;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1260;2069.105,-2746.562;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1261;2086.105,-2673.562;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1262;2083.105,-2475.563;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1141;-3631.52,-3279.388;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1142;-3640.52,-3347.388;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1143;-3800.695,-3475.425;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1144;-3630.52,-3208.389;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1170;-3798.176,-2651.557;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1171;-3800.176,-2582.557;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1172;-4087.353,-2728.593;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1173;-4090.359,-2804.821;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1679;-8868.217,-5422.194;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1491;5232.7,-7033.944;Inherit;False;1489;InitialSpec;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1583;-7199.009,-4937.565;Inherit;False;1443;FleckNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1579;5001.6,-6729.54;Inherit;False;Property;_AffectDiffuseColor;Affect Diffuse Color;164;1;[ToggleUI];Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1582;-7099.009,-4889.565;Inherit;False;Property;_AffectDiffuseNormals;AffectDiffuseNormals;167;1;[ToggleUI];Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1566;5338.969,-6817.645;Inherit;False;Property;_AffectIndirectColor;AffectIndirectColor;168;1;[ToggleUI];Create;False;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1709;-8838.779,-5747.52;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1263;2287.105,-2798.562;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1264;2279.105,-2675.562;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1265;2291.105,-2603.562;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1266;2275.105,-2452.563;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1267;2276.105,-2525.562;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1145;-3380.52,-3345.388;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1146;-3368.553,-3461.124;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1148;-3363.919,-3059.634;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1147;-3367.52,-3275.388;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1174;-3629.176,-2583.557;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1175;-3638.176,-2651.557;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1176;-3798.351,-2779.593;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1177;-3628.176,-2512.558;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1680;-8750.217,-5423.194;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1682;-8762.217,-5353.194;Inherit;False;Constant;_Float50;Float 50;119;0;Create;True;0;0;0;False;0;False;0.333;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1490;5569.867,-6873.781;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1581;-6904.009,-5028.565;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1578;5216.6,-6663.54;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;214;-8485.32,-5673.946;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;215;-8522.32,-5597.946;Inherit;False;Property;_InvertGloss;Invert Gloss;218;1;[ToggleUI];Create;False;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1268;2516.105,-2796.562;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1269;2507.105,-2677.562;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1270;2506.105,-2606.562;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1149;-3116.554,-3459.124;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1150;-3365.919,-3206.634;Inherit;False;Constant;_Float42;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1151;-3364.919,-3131.634;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1178;-3378.176,-2649.557;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1179;-3366.209,-2765.292;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1180;-3365.176,-2579.557;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1181;-3361.575,-2363.802;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;1681;-8547.217,-5422.194;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1527;6072.512,-6929.836;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;338;-7354.245,-6335.094;Inherit;False;Constant;_Float25;Float 25;21;0;Create;True;0;0;0;False;0;False;0.05;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1584;-6796.209,-5132.434;Inherit;False;Property;_Keyword2;Keyword 2;259;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;544;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1572;5308.327,-6732.049;Inherit;False;FleckShape;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;213;-8266.261,-5749.987;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;698;-8574.068,-5531.772;Inherit;False;Property;_GlossMult;GlossMult;217;0;Create;True;1;Gloss;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1271;2729.019,-2798.021;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1152;-3122.919,-3188.634;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1153;-3161.213,-3258.134;Inherit;False;Property;_ClearCoatHighlightChannel;Clear Coat Highlight Channel;246;1;[Enum];Create;False;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1182;-3114.21,-2763.292;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1183;-3363.575,-2510.802;Inherit;False;Constant;_Float43;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1184;-3362.575,-2435.802;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1770;-8397.503,-5324.909;Inherit;False;SpecAntiAlias;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;198;3730.206,-5350.383;Inherit;False;1274.357;1203.484;Comment;37;556;190;561;180;555;186;732;181;735;736;560;558;557;44;54;164;46;45;47;761;777;778;784;1331;1340;1343;1205;1332;1329;1330;1276;1134;1133;1132;1131;1130;1516;GGX Lighting;1,1,1,1;0;0
Node;AmplifyShaderEditor.StaticSwitch;1562;6314.289,-6983.431;Inherit;False;Property;_GlintHighlightToggle2;Glint Highlight;259;0;Create;False;0;0;0;False;0;False;0;0;0;True;_GLINT_HIGHLIGHT_ON;Toggle;2;Key0;Key1;Reference;544;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;340;-7144.714,-6348.828;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1576;-6763.313,-6237.79;Inherit;False;1572;FleckShape;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1573;5356.327,-6454.049;Inherit;False;FleckAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1645;-6761.216,-6171.47;Inherit;False;542;GlintChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;760;-9279.985,-4760.734;Inherit;False;2490.12;632.1313;Comment;9;744;748;754;757;758;741;746;755;742;Clear Coat Normal;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;1589;3705.477,-5597.418;Inherit;False;1580;InitialNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;697;-8128.068,-5668.772;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;643;-6711.354,-5034.058;Inherit;False;NormalFinal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SwizzleNode;1154;-2906.313,-3527.235;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1155;-2892.313,-3254.235;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1156;-2906.313,-3456.235;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1157;-2889.313,-3383.235;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1158;-2892.313,-3185.236;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1185;-3120.575,-2492.802;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1200;-3158.869,-2562.302;Inherit;False;Property;_ClearCoatReflectionChannel;Clear Coat Reflection Channel;252;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1779;2844.613,-2565.526;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1782;2689.914,-2452.426;Inherit;False;1770;SpecAntiAlias;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1486;6532.272,-6913.082;Inherit;False;GlintSpecColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;337;-6898.245,-6304.094;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT3;0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1577;-6891.313,-6408.79;Inherit;False;1573;FleckAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1646;-6572.216,-6266.47;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;748;-9062.287,-4579.181;Inherit;False;21;NormalTex;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RangedFloatNode;746;-9217.125,-4507.811;Inherit;False;Property;_ClearCoatNormalScale;Clear Coat Normal Scale;254;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;742;-8282.306,-4439.367;Inherit;False;Property;_ClearCoatNormal;Clear Coat Normal;256;1;[Enum];Create;False;0;4;None;0;Normal;1;Detail Normal;2;Both;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.BreakToComponentsNode;1585;3879.677,-5615.619;Inherit;False;FLOAT3;1;0;FLOAT3;0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.GetLocalVarNode;45;3865.577,-5128.354;Inherit;False;643;NormalFinal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;1684;-8131.18,-5567.124;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1159;-2688.313,-3508.235;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1160;-2696.313,-3385.235;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1161;-2684.313,-3313.235;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1162;-2700.313,-3162.236;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1163;-2699.313,-3235.235;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1186;-2903.969,-2831.403;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1187;-2889.969,-2558.403;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1188;-2903.969,-2760.403;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1189;-2886.969,-2687.403;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1190;-2889.969,-2489.404;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1780;2908.313,-2455.026;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1487;-6188.625,-6079.877;Inherit;False;1486;GlintSpecColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1575;-6534.313,-6410.79;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SwizzleNode;1130;4257.464,-4883.995;Inherit;False;FLOAT;2;1;2;3;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;744;-8811.566,-4707.837;Inherit;False;Constant;_Vector2;Vector 2;47;0;Create;True;0;0;0;False;0;False;0,0,1;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SamplerNode;747;-8847.124,-4556.912;Inherit;True;Property;_TextureSample0;Texture Sample 0;48;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;754;-9100.888,-4361.603;Inherit;False;593;DetailNormalTex;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SaturateNode;749;-8075.73,-4441.332;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;751;-8074.73,-4369.332;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;755;-9213.971,-4435.162;Inherit;False;Property;_ClearCoatDetailNormalScale;Clear Coat Detail Normal Scale;255;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1586;3998.548,-5480.276;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1683;-8304.217,-5453.194;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1164;-2459.313,-3506.235;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1165;-2468.313,-3387.235;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1166;-2469.313,-3316.235;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1191;-2685.969,-2812.403;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1192;-2693.969,-2689.403;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1193;-2681.969,-2617.403;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1194;-2697.969,-2466.404;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1195;-2696.969,-2539.403;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1720;-2745.116,-2277.174;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1781;3037.013,-2469.326;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1488;-5875.582,-6081.917;Inherit;False;Property;_Keyword1;Keyword 1;259;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;544;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1574;-6318.025,-6401.966;Inherit;False;Property;_Keyword0;Keyword 0;259;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;544;True;True;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.NegateNode;1131;4417.494,-4877.76;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;753;-8853.027,-4353.031;Inherit;True;Property;_TextureSample1;Texture Sample 1;48;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleSubtractOpNode;757;-7906.352,-4294.605;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;752;-7891.729,-4366.332;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;743;-7800.107,-4707.366;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1272;2941.938,-2791.187;Inherit;False;GlintHighlightChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwitchByFaceNode;1587;4147.147,-5513.53;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1685;-8147.58,-5456.224;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1167;-2246.401,-3507.694;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1196;-2456.969,-2810.403;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1197;-2465.969,-2691.403;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1198;-2466.969,-2620.403;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1721;-2563.116,-2307.174;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;42;-5693.358,-6085.401;Inherit;False;SpecularColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;43;-6000.959,-6400.3;Inherit;False;Albedo;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SwizzleNode;1133;4383.202,-4967.127;Inherit;False;FLOAT2;0;1;2;3;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SwitchByFaceNode;1132;4566.093,-4911.013;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;758;-7764.652,-4292.005;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;750;-7524.228,-4708.031;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode;759;-7561.089,-4578.033;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;735;3793.667,-4311.217;Inherit;False;Property;_GlintHighlight;Glint Highlight;261;0;Create;True;0;0;0;False;0;False;0.5;0.565;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;556;3843.156,-4238.315;Inherit;False;1272;GlintHighlightChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1588;4350.037,-5621.648;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1430;4552.984,-5536.31;Inherit;False;Property;_AffectIndirect;Affect Indirect;173;1;[ToggleUI];Create;False;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1429;4331.885,-5498.511;Inherit;False;1443;FleckNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;10;-7985.943,-5454.745;Inherit;False;Gloss;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1661;-2339.052,-3237.249;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1660;-2376.052,-3161.249;Inherit;False;Property;_InvertHighlightGloss;Invert Highlight Gloss;219;1;[ToggleUI];Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1199;-2257.057,-2797.562;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1719;-2728.116,-2366.174;Inherit;False;217;MM02G;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1722;-2410.116,-2276.174;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1134;4778.083,-4961.931;Inherit;False;FLOAT3;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;756;-7311.171,-4708.162;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
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
Node;AmplifyShaderEditor.LerpOp;1662;-2119.991,-3313.29;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1718;-2467.875,-2481.231;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1727;-2211.478,-2308.183;Inherit;False;Constant;_Float53;Float 53;119;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1665;-2404.653,-2390.749;Inherit;False;Property;_InvertReflectionGloss;InvertReflectionGloss;220;1;[ToggleUI];Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;553;5088.034,-4843.559;Inherit;False;1425.021;451.9258;Comment;16;499;495;500;549;762;565;1204;1342;507;508;506;504;505;501;1341;1203;Indirect Clear Coat;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;741;-7019.007,-4706.365;Inherit;False;ClearCoatNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1761;4306.257,-4514.011;Inherit;False;GGX_Specular_Light;-1;;8045;a8c3189e23c816d4394170a4738b987b;6,318,0,326,0,329,0,322,0,339,1,369,0;12;366;FLOAT3;0,0,0;False;359;FLOAT3;0,0,0;False;338;FLOAT;0;False;328;FLOAT3;0,0,0;False;327;FLOAT3;0,0,0;False;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;317;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;368;FLOAT;0;False;302;FLOAT;0;False;8;FLOAT;358;FLOAT;348;FLOAT3;336;FLOAT3;331;FLOAT3;314;FLOAT3;315;FLOAT3;0;FLOAT;316
Node;AmplifyShaderEditor.FunctionNode;1762;4310.834,-5215.458;Inherit;False;GGX_Specular_Light;-1;;8047;a8c3189e23c816d4394170a4738b987b;6,318,0,326,0,329,0,322,0,339,1,369,0;12;366;FLOAT3;0,0,0;False;359;FLOAT3;0,0,0;False;338;FLOAT;0;False;328;FLOAT3;0,0,0;False;327;FLOAT3;0,0,0;False;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;317;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;368;FLOAT;0;False;302;FLOAT;0;False;8;FLOAT;358;FLOAT;348;FLOAT3;336;FLOAT3;331;FLOAT3;314;FLOAT3;315;FLOAT3;0;FLOAT;316
Node;AmplifyShaderEditor.OneMinusNode;1663;-2263.653,-2554.749;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1726;-2026.477,-2416.183;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1775;-2008.232,-3189.991;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1778;-2162.932,-3076.891;Inherit;False;1770;SpecAntiAlias;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1332;4694.144,-4342.206;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;762;5151.165,-4675.066;Inherit;False;741;ClearCoatNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1333;4909.079,-5094.867;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;1664;-2044.592,-2630.79;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1776;-1944.531,-3079.491;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;579;5503.016,-5905.569;Inherit;False;1349.509;379.459;Comment;15;740;739;572;544;543;547;546;737;545;37;182;177;1653;1517;1671;Final Glint;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;175;5516.828,-6681.481;Inherit;False;GlintSpec;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SwizzleNode;1127;5242.624,-4354.962;Inherit;False;FLOAT;2;1;2;3;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;732;4763.099,-4432.435;Inherit;False;GlintHighlight;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;186;4660.121,-5014.451;Inherit;False;ggxSpec;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.OneMinusNode;1771;-1821.842,-2595.168;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1773;-1976.541,-2482.068;Inherit;False;1770;SpecAntiAlias;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1777;-1815.831,-3093.791;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;1125;5402.654,-4348.727;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1168;-2033.481,-3500.86;Inherit;False;ClearCoatHighlightChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;739;5542.793,-5640.431;Inherit;False;732;GlintHighlight;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;182;5471.016,-5737.019;Inherit;False;186;ggxSpec;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;177;5585.343,-5818.591;Inherit;False;175;GlintSpec;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1772;-1758.141,-2484.668;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwitchByFaceNode;1126;5551.253,-4381.98;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1128;5368.362,-4438.094;Inherit;False;FLOAT2;0;1;2;3;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;1206;3654.048,-4494.437;Inherit;False;1168;ClearCoatHighlightChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1518;5974.479,-5504.594;Inherit;False;Constant;_Float48;Float 48;114;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;737;6069.782,-5608.317;Inherit;False;3;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;498;3661.047,-4569.473;Inherit;False;Property;_ClearCoatHighlight;Clear Coat Highlight;244;0;Create;True;0;0;0;False;0;False;0.9;0.8;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1774;-1629.441,-2498.968;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;555;3857.465,-4742.089;Inherit;False;7;MainTexRGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.DynamicAppendNode;1129;5763.242,-4432.898;Inherit;False;FLOAT3;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1205;3969.048,-4535.437;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1202;-2031.137,-2805.028;Inherit;False;ClearCoatReflectionChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1516;4074.934,-4608.452;Inherit;False;1489;InitialSpec;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1517;6240.479,-5605.594;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1671;6077.235,-5698.993;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;565;5098.232,-4582.246;Inherit;False;Property;_ClearCoatReflection;Clear Coat Reflection;248;0;Create;True;0;0;0;False;0;False;1;0.95;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;545;5872.958,-5837.723;Inherit;False;186;ggxSpec;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;546;6015.218,-5763.747;Inherit;False;542;GlintChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;740;6394.059,-5644.546;Inherit;False;Property;_GlintHighlightToggle;Glint Highlight;260;0;Create;False;0;0;0;False;0;False;0;0;0;True;_GLINT_HIGHLIGHT_ON;Toggle;2;Key0;Key1;Create;True;False;All;9;1;FLOAT4;0,0,0,0;False;0;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;1204;5105.201,-4781.477;Inherit;False;1202;ClearCoatReflectionChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1763;4304.216,-4803.619;Inherit;False;GGX_Specular_Light;-1;;8049;a8c3189e23c816d4394170a4738b987b;6,318,0,326,0,329,0,322,0,339,1,369,1;12;366;FLOAT3;0,0,0;False;359;FLOAT3;0,0,0;False;338;FLOAT;0;False;328;FLOAT3;0,0,0;False;327;FLOAT3;0,0,0;False;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;317;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;368;FLOAT;0;False;302;FLOAT;0;False;8;FLOAT;358;FLOAT;348;FLOAT3;336;FLOAT3;331;FLOAT3;314;FLOAT3;315;FLOAT3;0;FLOAT;316
Node;AmplifyShaderEditor.GetLocalVarNode;499;5187.034,-4504.633;Inherit;False;246;Occlusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1203;5422.201,-4776.477;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1340;4676.104,-4769.536;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;547;6213.552,-5854.633;Inherit;False;186;ggxSpec;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.LerpOp;543;6216.41,-5778.868;Inherit;False;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.IndirectSpecularLight;495;5472.814,-4600.535;Inherit;False;Tangent;3;0;FLOAT3;0,0,1;False;1;FLOAT;0.5;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1342;5584.804,-4469.236;Inherit;False;Constant;_Float1;Float 1;81;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1331;4669.144,-4668.206;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;544;6427.516,-5855.569;Inherit;False;Property;_SpecularGlint;Specular Glint;259;0;Create;True;0;0;0;False;0;False;0;0;0;True;_GLINT_ON;Toggle;2;Key0;Key1;Create;True;False;All;9;1;FLOAT4;0,0,0,0;False;0;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.DynamicAppendNode;1343;4638.646,-5110.267;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;180;4828.821,-4762.181;Inherit;False;CustomIndirect;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CommentaryNode;581;6689.426,-4773.174;Inherit;False;846.0758;317.3114;Comment;7;580;568;573;566;567;569;571;Specular Clear Coat;1,1,1,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;500;5507.035,-4677.633;Inherit;False;180;CustomIndirect;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.DynamicAppendNode;1341;5778.504,-4556.336;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;561;4807.481,-4672.095;Inherit;False;ggxClearCoat;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;192;4905.994,-5209.873;Inherit;False;IndirectSpec;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;572;6595.419,-5852.736;Inherit;False;GlintFinal;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;501;5727.928,-4650.633;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;505;5728.496,-4724.84;Inherit;False;Constant;_Float0;Float 0;33;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;507;5715.114,-4793.559;Inherit;False;192;IndirectSpec;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;568;6762.311,-4650.267;Inherit;False;Constant;_Float21;Float 0;33;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;566;6739.426,-4730.403;Inherit;False;561;ggxClearCoat;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;573;6778.06,-4568.863;Inherit;False;572;GlintFinal;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CommentaryNode;677;-6446.111,-5198.323;Inherit;False;1085.658;378.5127;Comment;2;687;688;Emission Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;504;5960.495,-4675.84;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;506;5961.114,-4767.559;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;567;6994.313,-4601.267;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;569;6994.931,-4692.986;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;400;1952.864,-6348.067;Inherit;False;Property;_SpecularMaskChannel;Specular Mask Channel;239;1;[Enum];Create;False;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1816;1967.613,-6046.872;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1817;1976.714,-6120.372;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1818;1990.946,-6199.891;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1819;1987.941,-6276.12;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;399;1987.208,-6430.198;Inherit;False;Property;_SpecularMask;Specular Mask;238;1;[Enum];Create;False;1;     Specular Mask;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;465;-3138.279,-5887.31;Inherit;False;Property;_ClearCoatMap;Clear Coat Map;257;1;[Enum];Create;False;0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;0;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;478;-3152.576,-5802.896;Inherit;False;Property;_ClearCoatChannel;Clear Coat Channel;258;1;[Enum];Create;False;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1715;-3128.958,-5729.698;Inherit;False;212;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1827;-3141.813,-5432.985;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1828;-3132.712,-5506.485;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1829;-3118.479,-5586.004;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1830;-3121.484,-5662.233;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;685;-6207.609,-5115.699;Inherit;False;590;EmissionRGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;687;-6234.609,-5040.699;Inherit;False;676;EmissionMaskChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;508;6141.054,-4731.475;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode;571;7174.871,-4656.902;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.FunctionNode;1820;2284.677,-6324.651;Inherit;False;General Selector;-1;;8140;b8b7e166d0aa2464aa905a5bb0ec6609;0;6;42;FLOAT;0;False;43;FLOAT;0;False;44;COLOR;0,0,0,0;False;45;COLOR;0,0,0,0;False;46;COLOR;0,0,0,0;False;47;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1826;-2661.555,-5765.008;Inherit;False;Clear Coat Selector;-1;;8142;4658edb511900f644a5e21b5b40d53d7;0;7;42;FLOAT;0;False;43;FLOAT;0;False;57;FLOAT;0;False;44;COLOR;0,0,0,0;False;45;COLOR;0,0,0,0;False;46;COLOR;0,0,0,0;False;47;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;977;-833.2316,-4803.244;Inherit;False;Property;_GlowMask0;Glow Mask 0;228;1;[Enum];Create;False;1;     Glow Mask 0;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;993;-873.0563,-4735.542;Inherit;False;Property;_GlowMask0Channel;Glow Mask 0 Channel;229;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1838;1697.014,-4474.853;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1839;1711.246,-4554.372;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1840;1708.242,-4630.601;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1842;1687.913,-4401.353;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1043;1677.461,-4788.856;Inherit;False;Property;_GlowMask1;Glow Mask 1;230;1;[Enum];Create;True;1;     Glow Mask 1;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1041;1663.849,-4712.032;Inherit;False;Property;_GlowMask1Channel;Glow Mask 1 Channel;231;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1834;-816.8127,-4490.17;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1835;-802.5806,-4569.689;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1836;-805.5847,-4645.918;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1833;-825.9136,-4416.67;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1077;-828.0332,-4207.476;Inherit;False;Property;_GlowMask2;Glow Mask 2;232;1;[Enum];Create;True;1;     Glow Mask 2;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1075;-864.5991,-4123.811;Inherit;False;Property;_GlowMask2Channel;Glow Mask 2 Channel;233;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1843;-836.9897,-3879.88;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1844;-822.7577,-3959.399;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1845;-825.7618,-4035.628;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1847;-846.0906,-3806.38;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1849;1579.159,-3792.316;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1850;1593.391,-3871.835;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1851;1590.387,-3948.064;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1853;1570.058,-3718.816;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1111;1588.661,-4099.38;Inherit;False;Property;_GlowMask3;Glow Mask 3;234;1;[Enum];Create;True;1;     Glow Mask 3;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1109;1554.553,-4021.753;Inherit;False;Property;_GlowMask3Channel;Glow Mask 3 Channel;235;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;686;-5960.609,-5115.699;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;281;-9285.328,-5207.07;Inherit;False;1085.658;378.5127;Comment;9;289;288;287;286;285;284;283;282;402;Specular Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;200;5077.198,-5344.86;Inherit;False;1312.125;373.7759;Comment;8;550;511;194;195;73;503;509;510;Final Indirect Specular;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;548;5961.547,-6372.754;Inherit;False;1243.437;387.9226;Comment;9;188;36;586;574;575;576;578;582;577;Final Specular;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;549;6269.056,-4732.918;Inherit;False;IndirectClearCoat;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;580;7293.501,-4656.457;Inherit;False;ClearCoatSpecular;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;291;2593.873,-6313.037;Inherit;False;SpecularMaskChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;493;-2299.446,-5756.021;Inherit;False;ClearCoatChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1841;2004.977,-4679.132;Inherit;False;General Selector;-1;;8146;b8b7e166d0aa2464aa905a5bb0ec6609;0;6;42;FLOAT;0;False;43;FLOAT;0;False;44;COLOR;0,0,0,0;False;45;COLOR;0,0,0,0;False;46;COLOR;0,0,0,0;False;47;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1837;-508.8495,-4694.449;Inherit;False;General Selector;-1;;8145;b8b7e166d0aa2464aa905a5bb0ec6609;0;6;42;FLOAT;0;False;43;FLOAT;0;False;44;COLOR;0,0,0,0;False;45;COLOR;0,0,0,0;False;46;COLOR;0,0,0,0;False;47;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1846;-529.0266,-4084.16;Inherit;False;General Selector;-1;;8147;b8b7e166d0aa2464aa905a5bb0ec6609;0;6;42;FLOAT;0;False;43;FLOAT;0;False;44;COLOR;0,0,0,0;False;45;COLOR;0,0,0,0;False;46;COLOR;0,0,0,0;False;47;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1852;1887.122,-3996.596;Inherit;False;General Selector;-1;;8148;b8b7e166d0aa2464aa905a5bb0ec6609;0;6;42;FLOAT;0;False;43;FLOAT;0;False;44;COLOR;0,0,0,0;False;45;COLOR;0,0,0,0;False;46;COLOR;0,0,0,0;False;47;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;688;-5793.609,-5117.699;Inherit;False;EmissionFinal;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;288;-8886.05,-5038.718;Inherit;False;291;SpecularMaskChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;511;5127.176,-5102.847;Inherit;False;493;ClearCoatChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;550;5128.646,-5177.507;Inherit;False;549;IndirectClearCoat;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;577;6078.755,-6094.221;Inherit;False;493;ClearCoatChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;194;5154.938,-5248.915;Inherit;False;192;IndirectSpec;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;582;6073.168,-6176.331;Inherit;False;580;ClearCoatSpecular;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;578;6085.467,-6260.397;Inherit;False;572;GlintFinal;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1009;57.21446,-4666.154;Inherit;False;GlowMask0Channel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1042;2714.065,-4679.767;Inherit;False;GlowMask1Channel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1848;-211.2705,-4075.76;Inherit;False;GlowMask2Channel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1854;2222.581,-4000.369;Inherit;False;GlowMask3Channel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;591;-10015.99,-3215.344;Inherit;False;688;EmissionFinal;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1113;-10055.68,-3522.17;Inherit;False;1009;GlowMask0Channel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1116;-10057.38,-3305.352;Inherit;False;1854;GlowMask3Channel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;509;5379.057,-5189.546;Inherit;False;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;402;-8432.971,-5162.108;Inherit;False;SpecularMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;576;6325.767,-6229.603;Inherit;False;3;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;2;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;575;6300.651,-6313.146;Inherit;False;572;GlintFinal;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;510;5364.176,-5260.846;Inherit;False;192;IndirectSpec;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;1114;-10059.38,-3450.352;Inherit;False;1042;GlowMask1Channel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1115;-10059.38,-3374.352;Inherit;False;1848;GlowMask2Channel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1117;-9777.38,-3454.352;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;886;-9796.092,-3237.98;Inherit;False;Property;_EnableEmission;Emission;193;0;Create;False;0;0;0;False;0;False;0;0;0;True;_EMISSION;Toggle;2;Key0;Key1;Create;True;False;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch;574;6530.651,-6251.146;Inherit;False;Property;_ClearCoat1;Clear Coat;243;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;503;True;True;All;9;1;FLOAT4;0,0,0,0;False;0;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;36;6532.515,-6154.366;Inherit;False;402;SpecularMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;503;5667.337,-5251.328;Inherit;False;Property;_ClearCoat;Clear Coat;243;0;Create;False;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT4;0,0,0,0;False;0;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;1373;4810.437,-841.1832;Inherit;False;Property;_TileDiscardUV;TileDiscardUV;311;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;73;5879.576,-5249.74;Inherit;False;Property;_UNITY_PASS_FORWARD_ADD;UNITY_PASS_FORWARD_ADD;39;0;Create;True;0;0;0;False;0;False;0;0;0;False;UNITY_PASS_FORWARDADD;ToggleOff;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT4;0,0,0,0;False;0;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;586;6783.801,-6245.819;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.FunctionNode;1745;-9583.693,-3302.96;Inherit;False;Luma Glow Properties;8;;8051;601d9734366b2cb4e9b77694fc25ef31;1,260,0;3;266;FLOAT4;0,0,0,0;False;1;COLOR;0,0,0,0;False;155;FLOAT3;0,0,0;False;3;FLOAT;244;FLOAT4;183;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;769;5144.872,-619.409;Inherit;False;Constant;_Float26;Float 26;49;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;883;-9277.568,-3279.069;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.FunctionNode;1608;4996.493,-841.9552;Inherit;False;UV Channel Select;-1;;8137;756457f5c2398324eb74b053d38f83bd;1,50,0;2;2;SAMPLER2D;0;False;14;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;195;6154.94,-5249.196;Inherit;False;IndirectSpecFinal;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;188;6940.674,-6243.694;Inherit;False;SpecularFinal;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;190;4658.432,-5157.637;Inherit;False;AlbedoFinal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PosVertexDataNode;159;5229.119,-771.5396;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleDivideOpNode;770;5287.872,-626.4091;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1406;5226.854,-843.709;Inherit;False;UVTileDiscard;278;;8138;495696ca07f989c468e0b68e1fa68101;0;1;19;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;1286;-4151.522,-2209.466;Inherit;False;2359.104;566.9634;Comment;33;1319;1318;1317;1316;1315;1314;1313;1312;1311;1310;1309;1308;1307;1306;1305;1304;1303;1302;1301;1300;1299;1298;1297;1296;1295;1294;1293;1292;1291;1290;1289;1288;1287;Iridescence Mask;1,1,1,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1322;-9152.007,-3277.63;Inherit;False;Emiss;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;191;5073.197,-1125.172;Inherit;False;190;AlbedoFinal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;189;5053.949,-1203.042;Inherit;False;188;SpecularFinal;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;196;5062.086,-1041.603;Inherit;False;195;IndirectSpecFinal;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.CommentaryNode;1732;-6725.434,-7218.184;Inherit;False;637.5515;488.855;Blend RGB;6;1738;1737;1736;1735;1734;1733;;0,0,0,1;0;0
Node;AmplifyShaderEditor.GetLocalVarNode;1674;-9520.13,-5407.657;Inherit;False;1580;InitialNormal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1855;-8566.016,-5263.496;Inherit;False;Constant;_Float27;Float 27;125;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;53;-7577.803,-2008.305;Inherit;False;MM02R;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1654;5198.351,-5474.229;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1655;5386.851,-5496.329;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1653;5679.281,-5735.711;Inherit;False;FLOAT;3;1;2;3;1;0;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1330;4475.396,-5289.907;Inherit;False;Constant;_Float22;Float 22;81;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1329;4693.396,-5307.907;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;181;4858.023,-5315.383;Inherit;False;CustomSpec;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;1412;4343.665,-6001.409;Inherit;False;Property;_GlintFrequency;GlintFrequency;172;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;1;0;1;FLOAT;0
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
Node;AmplifyShaderEditor.SimpleAddOpNode;56;5339.993,-1145.527;Inherit;False;3;3;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT4;0,0,0,0;False;1;FLOAT4;0
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
Node;AmplifyShaderEditor.ColorNode;966;-7145.192,-1629.061;Inherit;False;Property;_GlobalColor0;Global Color 0;192;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;967;-7149.569,-1461.658;Inherit;False;Property;_GlobalColor1;Global Color 1;191;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;974;-7138.453,-1271.676;Inherit;False;Property;_GlobalColor2;Global Color 2;190;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ColorNode;975;-7138.453,-1052.796;Inherit;False;Property;_GlobalColor3;Global Color 3;189;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;970;-6915.424,-1626.873;Inherit;False;GlobalColor0;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;971;-6913.235,-1463.847;Inherit;False;GlobalColor1;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;972;-6911.664,-1276.219;Inherit;False;GlobalColor2;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;973;-6898.217,-1056.245;Inherit;False;GlobalColor3;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1124;-6486.82,-1611.824;Inherit;False;Property;_Culling;Culling;7;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1278;-9256.417,-2899.682;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1279;-9141.417,-2904.682;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;1280;-9613.907,-2891.097;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1281;-9393.286,-2917.828;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1283;-9430.286,-2815.828;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1284;-9256.288,-2807.134;Inherit;False;776;LightDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1285;-9256.691,-2740.051;Inherit;False;643;NormalFinal;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;1288;-3797.473,-1975.392;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1289;-3799.473,-1906.392;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1290;-4086.65,-2052.428;Inherit;False;296;MM02RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1291;-4089.656,-2128.656;Inherit;False;295;MM01RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1292;-3628.473,-1907.392;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1293;-3637.473,-1975.392;Inherit;False;412;MM03RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1294;-3797.647,-2103.428;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1295;-3627.473,-1836.393;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1296;-3377.473,-1973.392;Inherit;False;420;MM04RGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;1297;-3365.508,-2089.127;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SaturateNode;1298;-3364.473,-1903.392;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1299;-3360.873,-1687.638;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1300;-3113.508,-2087.127;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1301;-3362.873,-1834.638;Inherit;False;Constant;_Float46;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1302;-3361.873,-1759.638;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1303;-3119.873,-1816.638;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SwizzleNode;1305;-2903.267,-2155.238;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1306;-2889.267,-1882.239;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1307;-2903.267,-2084.238;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1308;-2886.267,-2011.238;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1309;-2889.267,-1813.24;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1310;-2685.267,-2136.238;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1311;-2693.267,-2013.238;Inherit;False;FLOAT;2;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;1312;-2681.267,-1941.239;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1313;-2697.267,-1790.24;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1314;-2696.267,-1863.239;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1315;-2456.267,-2134.238;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1316;-2465.267,-2015.238;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1317;-2466.267,-1944.239;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1318;-2243.353,-2135.697;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1287;-4056.275,-1977.725;Inherit;False;Property;_IridescenceMask;Iridescence Mask;236;2;[Header];[Enum];Create;True;1;     Glow Mask 2;5;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1304;-3158.166,-1886.138;Inherit;False;Property;_IridescenceChannel;Iridescence Channel;237;1;[Enum];Create;True;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1319;-2030.434,-2128.863;Inherit;False;IridescenceChannel;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1321;-9291.106,-2669.231;Inherit;False;1319;IridescenceChannel;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1323;5814.732,-1269.837;Inherit;False;1322;Emiss;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SaturateNode;1335;6028.548,-1440.768;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1348;6082.787,-1095.249;Inherit;False;Constant;_Float2;Float 2;81;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1355;6191.769,-1454.661;Inherit;False;SpecularAlpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1357;-6442.47,-1527.803;Inherit;False;Property;_BlendOPdst;_BlendOPdst;253;0;Create;True;0;0;0;True;0;False;10;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1356;-6636.47,-1520.803;Inherit;False;Property;_BlendOPsrc;_BlendOPsrc;249;0;Create;True;0;0;0;True;0;False;5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1363;-6436.512,-1357.944;Inherit;False;Property;_ShowMaps;ShowMaps;178;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1364;-8070.787,-3007.886;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;276;-6994.937,-5669.257;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1360;-6594.919,-1355.498;Inherit;False;Property;_ShowMain;ShowMain;188;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1388;-6605.261,-1271.583;Inherit;False;Property;_ShowLighting;ShowLighting;180;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1394;-6412.515,-1275.131;Inherit;False;Property;_ShowEmission;ShowEmission;182;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1396;-6402.515,-1197.131;Inherit;False;Property;_ShowEmissionMain;ShowEmissionMain;181;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1395;-6612.515,-1196.131;Inherit;False;Property;_ShowEmission01;ShowEmission01;187;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1401;-6620.369,-1116.484;Inherit;False;Property;_ShowEmission02;ShowEmission02;185;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1402;-6410.369,-1117.484;Inherit;False;Property;_ShowEmission03;ShowEmission03;186;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1403;-6627.369,-1045.484;Inherit;False;Property;_ShowEmission04;ShowEmission04;184;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1404;-6406.369,-1041.484;Inherit;False;Property;_ShowTileDiscard;ShowTileDiscard;183;0;Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;32;3871.622,-6137.979;Inherit;False;Property;_GlintIntensity;Glint Intensity;265;0;Create;True;1;Glinty Specular;0;0;True;0;False;1;1.15;0;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1419;6186.232,-1168.817;Inherit;False;1486;GlintSpecColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1426;5531.882,-6626.83;Inherit;False;FleckIndirect;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;1417;4758.018,-5987.908;Inherit;False;Property;_GlintIgnoreNormals;Glint Ignore Normals;0;1;[ToggleUI];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;37;5818.331,-5603.343;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SaturateNode;250;-6279.584,-5566.774;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StickyNoteNode;1733;-6469.453,-7157.91;Inherit;False;316.5269;103;_SourceBlendRGB;;0,0,0,1;Unity.Engine Enum Class$UnityEngine.Rendering.BlendMode$;0;0
Node;AmplifyShaderEditor.StickyNoteNode;1734;-6467.133,-7028.354;Inherit;False;289.5269;100;_DestinationBlendRGB;;0,0,0,1;Unity.Engine Enum Class$UnityEngine.Rendering.BlendMode$;0;0
Node;AmplifyShaderEditor.StickyNoteNode;1735;-6471.133,-6900.354;Inherit;False;285.5269;109.007;_BlendOpRGB;;0,0,0,1;Unity.Engine Enum Class$UnityEngine.Rendering.BlendOp$;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1736;-6693.352,-7156.03;Inherit;False;Property;_SourceBlendRGB;Source Blend RGB;171;1;[Enum];Create;False;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1737;-6694.742,-7028.547;Inherit;False;Property;_DestinationBlendRGB;Destination Blend RGB;169;1;[Enum];Create;False;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;10;10;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1738;-6692.552,-6904.447;Inherit;False;Property;_BlendOpRGB;Blend Op RGB;166;1;[Enum];Create;False;0;0;1;UnityEngine.Rendering.BlendOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1359;-6440.47,-1438.803;Inherit;False;Property;_BlendOPIndex;_BlendOPIndex;251;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1358;-6664.266,-1437.581;Inherit;False;Property;_BlendModeIndex;_BlendModeIndex;247;0;Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1739;-6319.992,-1614.718;Inherit;False;Property;_MaskClipValue;MaskClipValue;165;0;Create;True;0;0;0;True;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1741;-6251.046,-1524.512;Inherit;False;Property;_OpacityMap;Opacity Map;264;2;[Header];[Enum];Create;False;1;;6;Map 01;0;Map 02;1;Map 03;2;Map 04;3;MainTex;5;None;4;0;True;0;False;5;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1740;-6248.937,-1440.924;Inherit;False;Property;_OpacityChannel;Opacity Channel;268;1;[Enum];Create;False;0;4;Red;0;Green;1;Blue;2;Alpha;3;0;True;0;False;3;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1764;-9668.417,-2815.682;Inherit;False;Detect Light;-1;;8139;ca949bbda0856d040a3b3a723d67d4ef;0;0;2;FLOAT;0;FLOAT;10
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;6404.777,-1299.916;Float;False;True;-1;4;UmbraShaderUI;0;0;CustomLighting;Furality/Umbra Shader/Umbra Opaque;False;False;False;False;False;False;True;False;True;False;True;False;False;False;False;False;False;False;False;False;False;Back;0;False;;0;False;;False;0;False;;0;False;;False;0;Opaque;0.5;True;True;0;False;Opaque;;Geometry;All;12;all;True;True;True;True;0;False;;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;2;15;10;25;False;0.5;True;0;5;False;;10;False;;0;0;False;;0;False;;0;False;;0;False;;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;True;Absolute;0;;-1;-1;-1;-1;0;False;0;0;True;_Culling;-1;0;False;;1;Include;;True;1ec20832dfbb48343b8e0764e0864276;Custom;False;0;0;;0;0;False;0.1;False;;0;False;;False;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;16;FLOAT4;0,0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;51;0;50;0
WireConnection;12;0;11;0
WireConnection;411;0;405;0
WireConnection;1604;2;12;0
WireConnection;1604;14;1366;0
WireConnection;1605;2;51;0
WireConnection;1605;14;1368;0
WireConnection;1606;2;411;0
WireConnection;1606;14;1370;0
WireConnection;419;0;413;0
WireConnection;1607;2;413;0
WireConnection;1607;14;1371;0
WireConnection;9;0;12;0
WireConnection;9;1;1604;0
WireConnection;52;0;51;0
WireConnection;52;1;1605;0
WireConnection;406;0;411;0
WireConnection;406;1;1606;0
WireConnection;414;0;419;0
WireConnection;414;1;1607;0
WireConnection;295;0;9;0
WireConnection;296;0;52;0
WireConnection;412;0;406;0
WireConnection;420;0;414;0
WireConnection;1453;0;1450;0
WireConnection;1454;0;1450;0
WireConnection;212;0;211;0
WireConnection;1455;0;1451;0
WireConnection;1455;1;1452;0
WireConnection;1455;2;1453;0
WireConnection;1456;0;1454;0
WireConnection;1458;0;1454;0
WireConnection;16;0;9;1
WireConnection;1801;42;292;0
WireConnection;1801;43;299;0
WireConnection;1801;44;1792;0
WireConnection;1801;45;1791;0
WireConnection;1801;46;422;0
WireConnection;1801;47;423;0
WireConnection;588;0;587;0
WireConnection;1459;0;1458;0
WireConnection;1461;0;1455;0
WireConnection;1461;1;1457;0
WireConnection;1461;2;1456;0
WireConnection;1462;0;1458;0
WireConnection;228;0;227;0
WireConnection;230;0;227;0
WireConnection;232;0;1801;0
WireConnection;589;0;588;0
WireConnection;1463;0;1461;0
WireConnection;1463;1;1460;0
WireConnection;1463;2;1459;0
WireConnection;1464;0;1462;0
WireConnection;226;0;225;0
WireConnection;226;2;228;0
WireConnection;231;0;230;0
WireConnection;1707;0;230;0
WireConnection;1825;42;648;0
WireConnection;1825;43;661;0
WireConnection;1825;44;1824;0
WireConnection;1825;45;1823;0
WireConnection;1825;46;1822;0
WireConnection;1825;47;1821;0
WireConnection;593;0;592;0
WireConnection;646;0;645;0
WireConnection;646;1;589;0
WireConnection;6;0;4;0
WireConnection;1209;0;1208;0
WireConnection;1210;0;1208;0
WireConnection;1466;0;1463;0
WireConnection;1466;1;1465;0
WireConnection;1466;2;1464;0
WireConnection;229;0;226;0
WireConnection;229;1;233;0
WireConnection;229;2;231;0
WireConnection;1708;0;1707;0
WireConnection;676;0;1825;0
WireConnection;21;0;20;0
WireConnection;1610;2;593;0
WireConnection;1610;14;1393;0
WireConnection;590;0;646;0
WireConnection;5;0;6;0
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
WireConnection;1705;0;229;0
WireConnection;1705;1;1706;0
WireConnection;1705;2;1708;0
WireConnection;22;0;21;0
WireConnection;22;5;38;0
WireConnection;595;0;593;0
WireConnection;595;1;1610;0
WireConnection;595;5;594;0
WireConnection;692;0;693;0
WireConnection;692;1;690;0
WireConnection;1361;0;5;0
WireConnection;1361;1;1362;0
WireConnection;695;0;1705;0
WireConnection;695;1;694;0
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
WireConnection;1831;42;895;0
WireConnection;1831;44;899;0
WireConnection;1831;45;898;0
WireConnection;1831;46;901;0
WireConnection;1831;47;905;0
WireConnection;23;0;22;0
WireConnection;596;0;595;0
WireConnection;696;0;695;0
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
WireConnection;1815;42;598;0
WireConnection;1815;43;611;0
WireConnection;1815;44;1812;0
WireConnection;1815;45;1811;0
WireConnection;1815;46;1813;0
WireConnection;1815;47;1814;0
WireConnection;923;0;1831;0
WireConnection;7;0;689;0
WireConnection;224;0;696;0
WireConnection;1224;0;1221;0
WireConnection;1224;1;1222;0
WireConnection;1224;2;1223;0
WireConnection;1481;0;1478;0
WireConnection;1481;1;1479;0
WireConnection;1481;2;1480;0
WireConnection;626;0;1815;0
WireConnection;1804;42;344;0
WireConnection;1804;43;346;0
WireConnection;1804;44;343;0
WireConnection;1804;45;342;0
WireConnection;1804;46;449;0
WireConnection;1804;47;452;0
WireConnection;637;0;640;0
WireConnection;637;1;638;0
WireConnection;1617;0;1616;0
WireConnection;1618;0;1616;0
WireConnection;925;0;222;0
WireConnection;925;1;924;0
WireConnection;1226;0;1224;0
WireConnection;1227;0;1225;0
WireConnection;1228;0;1224;0
WireConnection;1229;0;1224;0
WireConnection;1230;0;1225;0
WireConnection;1482;0;1481;0
WireConnection;1500;0;1498;0
WireConnection;1501;0;1498;0
WireConnection;249;0;247;0
WireConnection;217;0;52;2
WireConnection;257;0;1804;0
WireConnection;639;0;642;0
WireConnection;639;1;637;0
WireConnection;639;2;641;0
WireConnection;1621;0;1618;0
WireConnection;1623;0;1620;0
WireConnection;1623;1;1619;0
WireConnection;1623;2;1617;0
WireConnection;1624;0;1618;0
WireConnection;223;0;925;0
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
WireConnection;2;0;40;0
WireConnection;2;1;41;0
WireConnection;1386;0;222;0
WireConnection;1386;1;1385;0
WireConnection;216;0;9;2
WireConnection;1724;0;249;0
WireConnection;253;0;249;0
WireConnection;1580;0;639;0
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
WireConnection;1236;0;1231;0
WireConnection;1236;1;1232;0
WireConnection;1236;2;1235;0
WireConnection;1237;0;1233;0
WireConnection;1238;0;1234;0
WireConnection;1505;0;1502;0
WireConnection;1505;1;1503;0
WireConnection;1505;2;1504;0
WireConnection;1725;0;1724;0
WireConnection;254;0;255;0
WireConnection;254;1;252;0
WireConnection;254;2;253;0
WireConnection;1810;42;379;0
WireConnection;1810;43;380;0
WireConnection;1810;44;1806;0
WireConnection;1810;45;1807;0
WireConnection;1810;46;1808;0
WireConnection;1810;47;1809;0
WireConnection;1648;0;1390;0
WireConnection;1629;0;1626;0
WireConnection;1629;1;1625;0
WireConnection;1629;2;1628;0
WireConnection;1631;0;1627;0
WireConnection;264;0;220;0
WireConnection;264;1;1387;0
WireConnection;264;2;263;0
WireConnection;266;0;262;0
WireConnection;1239;0;1236;0
WireConnection;1239;1;1237;0
WireConnection;1239;2;1238;0
WireConnection;1507;0;1505;0
WireConnection;1507;1;1448;0
WireConnection;1723;0;254;0
WireConnection;1723;1;248;0
WireConnection;1723;2;1725;0
WireConnection;279;0;1810;0
WireConnection;1389;0;1723;0
WireConnection;1389;1;1648;0
WireConnection;1632;0;1629;0
WireConnection;1632;1;1630;0
WireConnection;1632;2;1631;0
WireConnection;267;0;264;0
WireConnection;267;1;220;0
WireConnection;267;2;266;0
WireConnection;1240;0;1239;0
WireConnection;1508;0;1507;0
WireConnection;1769;23;1688;0
WireConnection;1633;0;1632;0
WireConnection;1489;0;267;0
WireConnection;277;0;274;0
WireConnection;1509;0;1508;0
WireConnection;1510;0;223;0
WireConnection;246;0;1389;0
WireConnection;1511;0;1387;0
WireConnection;776;0;1769;21
WireConnection;782;0;1769;0
WireConnection;1242;0;1273;0
WireConnection;1243;0;1273;0
WireConnection;1803;42;514;0
WireConnection;1803;43;527;0
WireConnection;1803;44;518;0
WireConnection;1803;45;517;0
WireConnection;1803;46;520;0
WireConnection;1803;47;1799;0
WireConnection;1422;0;34;0
WireConnection;1275;0;60;0
WireConnection;1275;1;33;0
WireConnection;1246;0;1243;0
WireConnection;1248;0;1245;0
WireConnection;1248;1;1244;0
WireConnection;1248;2;1242;0
WireConnection;1249;0;1243;0
WireConnection;542;0;1803;0
WireConnection;1760;124;1514;0
WireConnection;1760;125;1515;0
WireConnection;1760;123;1513;0
WireConnection;1760;102;1483;0
WireConnection;1760;63;1436;0
WireConnection;1760;71;1437;0
WireConnection;1760;191;1635;0
WireConnection;1760;72;1435;0
WireConnection;1760;73;1434;0
WireConnection;1760;51;1414;0
WireConnection;1760;60;644;0
WireConnection;1760;74;1439;0
WireConnection;1760;75;1438;0
WireConnection;1760;59;1275;0
WireConnection;1760;62;1410;0
WireConnection;1760;57;1411;0
WireConnection;1760;54;1422;0
WireConnection;1760;58;35;0
WireConnection;1760;55;1424;0
WireConnection;1251;0;1248;0
WireConnection;1251;1;1247;0
WireConnection;1251;2;1246;0
WireConnection;1252;0;1249;0
WireConnection;1253;0;1249;0
WireConnection;1802;42;320;0
WireConnection;1802;43;322;0
WireConnection;1802;44;1795;0
WireConnection;1802;45;1794;0
WireConnection;1802;46;1796;0
WireConnection;1802;47;1797;0
WireConnection;1529;0;1531;0
WireConnection;1529;1;1760;77
WireConnection;1529;2;1528;0
WireConnection;18;0;9;4
WireConnection;239;0;238;0
WireConnection;1254;0;1251;0
WireConnection;1254;1;1250;0
WireConnection;1254;2;1252;0
WireConnection;1256;0;1253;0
WireConnection;244;0;1802;0
WireConnection;1675;0;1673;0
WireConnection;1676;0;1673;0
WireConnection;1561;1;1531;0
WireConnection;1561;0;1529;0
WireConnection;243;0;239;0
WireConnection;1710;0;239;0
WireConnection;1257;0;1254;0
WireConnection;1257;1;1255;0
WireConnection;1257;2;1256;0
WireConnection;1137;0;1136;0
WireConnection;1138;0;1136;0
WireConnection;1677;0;1675;0
WireConnection;1677;1;1675;0
WireConnection;1678;0;1676;0
WireConnection;1678;1;1676;0
WireConnection;1443;0;1561;0
WireConnection;241;0;236;0
WireConnection;241;1;242;0
WireConnection;241;2;243;0
WireConnection;1711;0;1710;0
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
WireConnection;1679;0;1677;0
WireConnection;1679;1;1678;0
WireConnection;1709;0;241;0
WireConnection;1709;1;1712;0
WireConnection;1709;2;1711;0
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
WireConnection;1680;0;1679;0
WireConnection;1490;0;1491;0
WireConnection;1490;1;1760;110
WireConnection;1490;2;1566;0
WireConnection;1581;0;639;0
WireConnection;1581;1;1583;0
WireConnection;1581;2;1582;0
WireConnection;1578;0;1579;0
WireConnection;1578;1;1760;181
WireConnection;214;0;1709;0
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
WireConnection;1681;0;1680;0
WireConnection;1681;1;1682;0
WireConnection;1527;0;1491;0
WireConnection;1527;1;1490;0
WireConnection;1527;2;1528;0
WireConnection;1584;1;639;0
WireConnection;1584;0;1581;0
WireConnection;1572;0;1578;0
WireConnection;213;0;1709;0
WireConnection;213;1;214;0
WireConnection;213;2;215;0
WireConnection;1271;0;1268;0
WireConnection;1271;1;1269;0
WireConnection;1271;2;1270;0
WireConnection;1152;0;1149;0
WireConnection;1152;1;1150;0
WireConnection;1152;2;1151;0
WireConnection;1182;0;1179;0
WireConnection;1182;1;1178;0
WireConnection;1182;2;1180;0
WireConnection;1184;0;1181;0
WireConnection;1770;0;1681;0
WireConnection;1562;1;1491;0
WireConnection;1562;0;1527;0
WireConnection;340;0;338;0
WireConnection;340;1;40;0
WireConnection;1573;0;1760;169
WireConnection;697;0;213;0
WireConnection;697;1;698;0
WireConnection;643;0;1584;0
WireConnection;1154;0;1152;0
WireConnection;1155;0;1153;0
WireConnection;1156;0;1152;0
WireConnection;1157;0;1152;0
WireConnection;1158;0;1153;0
WireConnection;1185;0;1182;0
WireConnection;1185;1;1183;0
WireConnection;1185;2;1184;0
WireConnection;1779;0;1271;0
WireConnection;1486;0;1562;0
WireConnection;337;0;340;0
WireConnection;337;1;2;0
WireConnection;1646;0;1576;0
WireConnection;1646;1;1645;0
WireConnection;1585;0;1589;0
WireConnection;1684;0;697;0
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
WireConnection;1780;0;1779;0
WireConnection;1780;1;1782;0
WireConnection;1575;0;337;0
WireConnection;1575;1;1577;0
WireConnection;1575;2;1646;0
WireConnection;1130;0;45;0
WireConnection;747;0;748;0
WireConnection;747;5;746;0
WireConnection;749;0;742;0
WireConnection;751;0;742;0
WireConnection;1586;0;1585;2
WireConnection;1683;0;1684;0
WireConnection;1683;1;1681;0
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
WireConnection;1781;0;1780;0
WireConnection;1488;1;267;0
WireConnection;1488;0;1487;0
WireConnection;1574;1;337;0
WireConnection;1574;0;1575;0
WireConnection;1131;0;1130;0
WireConnection;753;0;754;0
WireConnection;753;5;755;0
WireConnection;757;0;751;0
WireConnection;752;0;751;0
WireConnection;743;0;744;0
WireConnection;743;1;747;0
WireConnection;743;2;749;0
WireConnection;1272;0;1781;0
WireConnection;1587;0;1585;2
WireConnection;1587;1;1586;0
WireConnection;1685;0;1683;0
WireConnection;1167;0;1164;0
WireConnection;1167;1;1165;0
WireConnection;1167;2;1166;0
WireConnection;1196;0;1191;0
WireConnection;1196;1;1192;0
WireConnection;1196;2;1195;0
WireConnection;1197;0;1193;0
WireConnection;1198;0;1194;0
WireConnection;1721;0;1720;0
WireConnection;42;0;1488;0
WireConnection;43;0;1574;0
WireConnection;1133;0;45;0
WireConnection;1132;0;1130;0
WireConnection;1132;1;1131;0
WireConnection;758;0;757;0
WireConnection;750;0;743;0
WireConnection;750;1;753;0
WireConnection;750;2;752;0
WireConnection;759;0;747;0
WireConnection;759;1;753;0
WireConnection;1588;0;1585;0
WireConnection;1588;1;1585;1
WireConnection;1588;2;1587;0
WireConnection;10;0;1685;0
WireConnection;1661;0;1167;0
WireConnection;1199;0;1196;0
WireConnection;1199;1;1197;0
WireConnection;1199;2;1198;0
WireConnection;1722;0;1721;0
WireConnection;1134;0;1133;0
WireConnection;1134;2;1132;0
WireConnection;756;0;750;0
WireConnection;756;1;759;0
WireConnection;756;2;758;0
WireConnection;1276;0;735;0
WireConnection;1276;1;556;0
WireConnection;1427;0;1588;0
WireConnection;1427;1;1429;0
WireConnection;1427;2;1430;0
WireConnection;1662;0;1167;0
WireConnection;1662;1;1661;0
WireConnection;1662;2;1660;0
WireConnection;1718;0;1199;0
WireConnection;1718;1;1719;0
WireConnection;1718;2;1722;0
WireConnection;741;0;756;0
WireConnection;1761;338;558;0
WireConnection;1761;328;784;0
WireConnection;1761;327;778;0
WireConnection;1761;286;736;0
WireConnection;1761;30;1134;0
WireConnection;1761;146;557;0
WireConnection;1761;147;1276;0
WireConnection;1761;302;560;0
WireConnection;1762;359;1427;0
WireConnection;1762;338;164;0
WireConnection;1762;328;783;0
WireConnection;1762;327;777;0
WireConnection;1762;286;44;0
WireConnection;1762;30;1134;0
WireConnection;1762;146;46;0
WireConnection;1762;147;47;0
WireConnection;1762;302;54;0
WireConnection;1663;0;1718;0
WireConnection;1726;0;1665;0
WireConnection;1726;1;1727;0
WireConnection;1726;2;1722;0
WireConnection;1775;0;1662;0
WireConnection;1332;0;1761;0
WireConnection;1332;3;1761;348
WireConnection;1333;0;1762;0
WireConnection;1333;3;1762;348
WireConnection;1664;0;1718;0
WireConnection;1664;1;1663;0
WireConnection;1664;2;1726;0
WireConnection;1776;0;1775;0
WireConnection;1776;1;1778;0
WireConnection;175;0;1760;0
WireConnection;1127;0;762;0
WireConnection;732;0;1332;0
WireConnection;186;0;1333;0
WireConnection;1771;0;1664;0
WireConnection;1777;0;1776;0
WireConnection;1125;0;1127;0
WireConnection;1168;0;1777;0
WireConnection;1772;0;1771;0
WireConnection;1772;1;1773;0
WireConnection;1126;0;1127;0
WireConnection;1126;1;1125;0
WireConnection;1128;0;762;0
WireConnection;737;0;177;0
WireConnection;737;1;739;0
WireConnection;737;2;182;0
WireConnection;1774;0;1772;0
WireConnection;1129;0;1128;0
WireConnection;1129;2;1126;0
WireConnection;1205;0;498;0
WireConnection;1205;1;1206;0
WireConnection;1202;0;1774;0
WireConnection;1517;0;737;0
WireConnection;1517;1;1518;0
WireConnection;1671;0;177;0
WireConnection;1671;1;182;0
WireConnection;740;1;1671;0
WireConnection;740;0;1517;0
WireConnection;1763;338;558;0
WireConnection;1763;328;784;0
WireConnection;1763;327;778;0
WireConnection;1763;286;555;0
WireConnection;1763;30;1129;0
WireConnection;1763;146;1516;0
WireConnection;1763;147;1205;0
WireConnection;1763;368;565;0
WireConnection;1763;302;560;0
WireConnection;1203;0;1204;0
WireConnection;1203;1;565;0
WireConnection;1340;0;1763;336
WireConnection;1340;3;1763;358
WireConnection;543;0;545;0
WireConnection;543;1;740;0
WireConnection;543;2;546;0
WireConnection;495;0;1129;0
WireConnection;495;1;1203;0
WireConnection;495;2;499;0
WireConnection;1331;0;1763;0
WireConnection;1331;3;1763;348
WireConnection;544;1;547;0
WireConnection;544;0;543;0
WireConnection;1343;0;1762;315
WireConnection;1343;3;1762;358
WireConnection;180;0;1340;0
WireConnection;1341;0;495;0
WireConnection;1341;3;1342;0
WireConnection;561;0;1331;0
WireConnection;192;0;1343;0
WireConnection;572;0;544;0
WireConnection;501;0;500;0
WireConnection;501;1;1341;0
WireConnection;504;0;505;0
WireConnection;504;1;501;0
WireConnection;506;0;507;0
WireConnection;506;1;505;0
WireConnection;567;0;568;0
WireConnection;567;1;573;0
WireConnection;569;0;566;0
WireConnection;569;1;568;0
WireConnection;508;0;506;0
WireConnection;508;1;504;0
WireConnection;571;0;569;0
WireConnection;571;1;567;0
WireConnection;1820;42;399;0
WireConnection;1820;43;400;0
WireConnection;1820;44;1819;0
WireConnection;1820;45;1818;0
WireConnection;1820;46;1817;0
WireConnection;1820;47;1816;0
WireConnection;1826;42;465;0
WireConnection;1826;43;478;0
WireConnection;1826;57;1715;0
WireConnection;1826;44;1830;0
WireConnection;1826;45;1829;0
WireConnection;1826;46;1828;0
WireConnection;1826;47;1827;0
WireConnection;686;0;685;0
WireConnection;686;1;687;0
WireConnection;549;0;508;0
WireConnection;580;0;571;0
WireConnection;291;0;1820;0
WireConnection;493;0;1826;0
WireConnection;1841;42;1043;0
WireConnection;1841;43;1041;0
WireConnection;1841;44;1840;0
WireConnection;1841;45;1839;0
WireConnection;1841;46;1838;0
WireConnection;1841;47;1842;0
WireConnection;1837;42;977;0
WireConnection;1837;43;993;0
WireConnection;1837;44;1836;0
WireConnection;1837;45;1835;0
WireConnection;1837;46;1834;0
WireConnection;1837;47;1833;0
WireConnection;1846;42;1077;0
WireConnection;1846;43;1075;0
WireConnection;1846;44;1845;0
WireConnection;1846;45;1844;0
WireConnection;1846;46;1843;0
WireConnection;1846;47;1847;0
WireConnection;1852;42;1111;0
WireConnection;1852;43;1109;0
WireConnection;1852;44;1851;0
WireConnection;1852;45;1850;0
WireConnection;1852;46;1849;0
WireConnection;1852;47;1853;0
WireConnection;688;0;686;0
WireConnection;1009;0;1837;0
WireConnection;1042;0;1841;0
WireConnection;1848;0;1846;0
WireConnection;1854;0;1852;0
WireConnection;509;0;194;0
WireConnection;509;1;550;0
WireConnection;509;2;511;0
WireConnection;402;0;288;0
WireConnection;576;0;578;0
WireConnection;576;1;582;0
WireConnection;576;2;577;0
WireConnection;1117;0;1113;0
WireConnection;1117;1;1114;0
WireConnection;1117;2;1115;0
WireConnection;1117;3;1116;0
WireConnection;886;0;591;0
WireConnection;574;1;575;0
WireConnection;574;0;576;0
WireConnection;503;1;510;0
WireConnection;503;0;509;0
WireConnection;73;1;503;0
WireConnection;586;0;574;0
WireConnection;586;1;36;0
WireConnection;1745;266;1117;0
WireConnection;1745;1;886;0
WireConnection;883;0;1745;183
WireConnection;883;1;1745;0
WireConnection;1608;14;1373;0
WireConnection;195;0;73;0
WireConnection;188;0;586;0
WireConnection;190;0;1762;314
WireConnection;770;0;769;0
WireConnection;770;1;769;0
WireConnection;1406;19;1608;0
WireConnection;1322;0;883;0
WireConnection;53;0;52;1
WireConnection;1654;0;1762;358
WireConnection;1655;0;1654;0
WireConnection;1653;0;182;0
WireConnection;1329;0;1762;331
WireConnection;1329;3;1330;0
WireConnection;181;0;1329;0
WireConnection;768;0;1406;0
WireConnection;768;2;770;0
WireConnection;768;3;159;0
WireConnection;1328;0;1760;0
WireConnection;1328;1;1760;0
WireConnection;1328;2;1760;0
WireConnection;1328;3;1760;0
WireConnection;1324;0;1760;0
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
WireConnection;56;0;189;0
WireConnection;56;1;191;0
WireConnection;56;2;196;0
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
WireConnection;1283;0;1764;0
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
WireConnection;1426;0;1760;69
WireConnection;37;0;177;0
WireConnection;37;1;1655;0
WireConnection;250;0;247;0
WireConnection;0;2;1323;0
WireConnection;0;13;56;0
WireConnection;0;11;768;0
ASEEND*/
//CHKSM=B87FB08AAD11486B901B9FBA504AEDDCD672CC88