// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "/_Vefects_/T/SH_VFX_Vefects_DissolveAdd"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[ASEBegin]_Texture("Texture", 2D) = "white" {}
		_TextureChannel("Texture Channel", Vector) = (0,1,0,0)
		_TextureRotation("Texture Rotation", Float) = 0
		_ColorTexture("Color Texture", 2D) = "white" {}
		_ColorRotation("Color Rotation", Float) = 0
		_GradientShape("Gradient Shape", 2D) = "white" {}
		_GradientShapeChannel("Gradient Shape Channel", Vector) = (0,1,0,0)
		_GradientShapeRotation("Gradient Shape Rotation", Float) = 0
		_DissolveMask("Dissolve Mask", 2D) = "white" {}
		_DistoMask("Disto Mask", 2D) = "white" {}
		_DissolveMaskChannel("Dissolve Mask Channel", Vector) = (0,1,0,0)
		_DistoMaskChannel("Disto Mask Channel", Vector) = (0,1,0,0)
		_DissolveMaskRotation("Dissolve Mask Rotation", Float) = 0
		_DistoMaskRotation("Disto Mask Rotation", Float) = 0
		_DissolveMaskInvert("Dissolve Mask Invert", Range( 0 , 1)) = 0
		_GradientMap("Gradient Map", 2D) = "white" {}
		_GradientMapDisplacement("Gradient Map Displacement", Float) = 0.1
		_TexturePanSpeed("Texture Pan Speed", Vector) = (0,0,0,0)
		_DistoMaskPanSpeed("Disto Mask Pan Speed", Vector) = (0,0,0,0)
		_DissolveMaskPanSpeed("Dissolve Mask Pan Speed", Vector) = (0,0,0,0)
		_InvertGradient("Invert Gradient", Float) = 0
		_CorePower("Core Power", Float) = 1
		_CoreIntensity("Core Intensity", Float) = 0
		_DifferentCoreColor("Different Core Color", Float) = 0
		_CoreColor("Core Color", Color) = (1,1,1,0)
		_GlowIntensity("Glow Intensity", Float) = 1
		_Brightness("Brightness", Float) = 1
		_AlphaBoldness("Alpha Boldness", Float) = 1
		_CameraDirPush("CameraDirPush", Float) = 0
		[Toggle(_CUSTOMPANSWITCH_ON)] _CustomPanSwitch("CustomPanSwitch", Float) = 0
		[Toggle(_MESHVERTEXCOLOR_ON)] _MeshVertexColor("MeshVertexColor", Float) = 0
		_Dissolve("Dissolve", Float) = 0
		[Toggle(_STEP_ON)] _Step("Step", Float) = 0
		_ValueStep("ValueStep", Float) = 0
		_ValueStepAdd("ValueStepAdd", Float) = 0.1
		[ASEEnd]_Disto("Disto", Float) = 0

		[HideInInspector]_RenderQueueType("Render Queue Type", Float) = 5
		[HideInInspector][ToggleUI]_AddPrecomputedVelocity("Add Precomputed Velocity", Float) = 1
		//[HideInInspector]_ShadowMatteFilter("Shadow Matte Filter", Float) = 2
		[HideInInspector]_StencilRef("Stencil Ref", Int) = 0
		[HideInInspector]_StencilWriteMask("StencilWrite Mask", Int) = 6
		[HideInInspector]_StencilRefDepth("StencilRefDepth", Int) = 0
		[HideInInspector]_StencilWriteMaskDepth("_StencilWriteMaskDepth", Int) = 8
		[HideInInspector]_StencilRefMV("_StencilRefMV", Int) = 32
		[HideInInspector]_StencilWriteMaskMV("_StencilWriteMaskMV", Int) = 40
		[HideInInspector]_StencilRefDistortionVec("_StencilRefDistortionVec", Int) = 4
		[HideInInspector]_StencilWriteMaskDistortionVec("_StencilWriteMaskDistortionVec", Int) = 4
		[HideInInspector]_StencilWriteMaskGBuffer("_StencilWriteMaskGBuffer", Int) = 14
		[HideInInspector]_StencilRefGBuffer("_StencilRefGBuffer", Int) = 2
		[HideInInspector]_ZTestGBuffer("_ZTestGBuffer", Int) = 4
		[HideInInspector][ToggleUI]_RequireSplitLighting("_RequireSplitLighting", Float) = 0
		[HideInInspector][ToggleUI]_ReceivesSSR("_ReceivesSSR", Float) = 0
		[HideInInspector]_SurfaceType("_SurfaceType", Float) = 1
		[HideInInspector]_BlendMode("_BlendMode", Float) = 0
		[HideInInspector]_SrcBlend("_SrcBlend", Float) = 1
		[HideInInspector]_DstBlend("_DstBlend", Float) = 0
		[HideInInspector]_AlphaSrcBlend("Vec_AlphaSrcBlendtor1", Float) = 1
		[HideInInspector]_AlphaDstBlend("_AlphaDstBlend", Float) = 0
		[HideInInspector][ToggleUI]_ZWrite("_ZWrite", Float) = 1
		[HideInInspector][ToggleUI]_TransparentZWrite("_TransparentZWrite", Float) = 1
		[HideInInspector]_CullMode("Cull Mode", Float) = 2
		[HideInInspector]_TransparentSortPriority("_TransparentSortPriority", Int) = 0
		[HideInInspector][ToggleUI]_EnableFogOnTransparent("_EnableFogOnTransparent", Float) = 1
		[HideInInspector]_CullModeForward("_CullModeForward", Float) = 2
		[HideInInspector][Enum(Front, 1, Back, 2)]_TransparentCullMode("_TransparentCullMode", Float) = 2
		[HideInInspector]_ZTestDepthEqualForOpaque("_ZTestDepthEqualForOpaque", Int) = 4
		[HideInInspector][Enum(UnityEngine.Rendering.CompareFunction)]_ZTestTransparent("_ZTestTransparent", Float) = 4
		[HideInInspector][ToggleUI]_TransparentBackfaceEnable("_TransparentBackfaceEnable", Float) = 0
		[HideInInspector][ToggleUI]_AlphaCutoffEnable("_AlphaCutoffEnable", Float) = 0
		[HideInInspector][ToggleUI]_UseShadowThreshold("_UseShadowThreshold", Float) = 0
		[HideInInspector][ToggleUI]_DoubleSidedEnable("_DoubleSidedEnable", Float) = 0
		[HideInInspector][Enum(Flip, 0, Mirror, 1, None, 2)]_DoubleSidedNormalMode("_DoubleSidedNormalMode", Float) = 2
		[HideInInspector]_DoubleSidedConstants("_DoubleSidedConstants", Vector) = (1, 1, -1, 0)
		[HideInInspector]_DistortionEnable("_DistortionEnable",Float) = 0
		[HideInInspector]_DistortionOnly("_DistortionOnly",Float) = 0
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="HDRenderPipeline" "RenderType"="Opaque" "Queue"="Transparent" }

		HLSLINCLUDE
		#pragma target 4.5
		#pragma only_renderers d3d11 metal vulkan xboxone xboxseries playstation switch 
		#pragma instancing_options renderinglayer

		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}
		
		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlaneASE (float3 pos, float4 plane)
		{
			return dot (float4(pos,1.0f), plane);
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlaneASE(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlaneASE(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlaneASE(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlaneASE(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlaneASE(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS

		ENDHLSL

		
		Pass
		{
			
			Name "Forward Unlit"
			Tags { "LightMode"="ForwardOnly" }

			Blend [_SrcBlend] [_DstBlend], [_AlphaSrcBlend] [_AlphaDstBlend]
			Cull [_CullMode]
			ZTest [_ZTestTransparent]
			ZWrite [_ZWrite]

			Stencil
			{
				Ref [_StencilRef]
				WriteMask [_StencilWriteMask]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}

			HLSLPROGRAM
			#pragma multi_compile_instancing
			#define HAVE_MESH_MODIFICATION 1
			#define ASE_SRP_VERSION 999999

			#define SHADERPASS SHADERPASS_FORWARD_UNLIT
			#pragma multi_compile _ DEBUG_DISPLAY

			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ALPHATEST_ON
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT

			#pragma vertex Vert
			#pragma fragment Frag

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#if defined(_ENABLE_SHADOW_MATTE) && SHADERPASS == SHADERPASS_FORWARD_UNLIT
				#define LIGHTLOOP_DISABLE_TILE_AND_CLUSTER
				#define HAS_LIGHTLOOP
				#define SHADOW_OPTIMIZE_REGISTER_USAGE 1

				#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/CommonLighting.hlsl"
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/Shadow/HDShadowContext.hlsl"
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/HDShadow.hlsl"
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/LightLoopDef.hlsl"
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/PunctualLightCommon.hlsl"
				#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Lighting/LightLoop/HDShadowLoop.hlsl"
			#endif



			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _CUSTOMPANSWITCH_ON
			#pragma shader_feature_local _STEP_ON
			#pragma shader_feature_local _MESHVERTEXCOLOR_ON


			struct VertexInput
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_Position;
				float3 positionRWS : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START( UnityPerMaterial )
			float4 _GradientShapeChannel;
			float4 _TextureChannel;
			float4 _DissolveMaskChannel;
			float4 _DissolveMask_ST;
			float4 _CoreColor;
			float4 _GradientShape_ST;
			float4 _Texture_ST;
			float4 _DistoMask_ST;
			float4 _ColorTexture_ST;
			float4 _DistoMaskChannel;
			float2 _DistoMaskPanSpeed;
			float2 _DissolveMaskPanSpeed;
			float2 _TexturePanSpeed;
			float _Brightness;
			float _DifferentCoreColor;
			float _GlowIntensity;
			float _CoreIntensity;
			float _AlphaBoldness;
			float _CorePower;
			float _TextureRotation;
			float _CameraDirPush;
			float _DissolveMaskInvert;
			float _InvertGradient;
			float _Dissolve;
			float _ValueStep;
			float _DissolveMaskRotation;
			float _GradientShapeRotation;
			float _Disto;
			float _DistoMaskRotation;
			float _ColorRotation;
			float _GradientMapDisplacement;
			float _ValueStepAdd;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			#ifdef _ENABLE_SHADOW_MATTE
			float _ShadowMatteFilter;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _ColorTexture;
			sampler2D _DistoMask;
			sampler2D _GradientMap;
			sampler2D _GradientShape;
			sampler2D _DissolveMask;
			sampler2D _Texture;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			
			struct SurfaceDescription
			{
				float3 Color;
				float3 Emission;
				float4 ShadowTint;
				float Alpha;
				float AlphaClipThreshold;
			};

			void BuildSurfaceData(FragInputs fragInputs, SurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);
				surfaceData.color = surfaceDescription.Color;
			}

			void GetSurfaceAndBuiltinData(SurfaceDescription surfaceDescription , FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#if _ALPHATEST_ON
				DoAlphaTest ( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				BuildSurfaceData(fragInputs, surfaceDescription, V, surfaceData);

				#if defined(_ENABLE_SHADOW_MATTE) && SHADERPASS == SHADERPASS_FORWARD_UNLIT
					HDShadowContext shadowContext = InitShadowContext();
					float shadow;
					float3 shadow3;
					posInput = GetPositionInput(fragInputs.positionSS.xy, _ScreenSize.zw, fragInputs.positionSS.z, UNITY_MATRIX_I_VP, UNITY_MATRIX_V);
					float3 normalWS = normalize(fragInputs.tangentToWorld[1]);
					uint renderingLayers = _EnableLightLayers ? asuint(unity_RenderingLayer.x) : DEFAULT_LIGHT_LAYERS;
					ShadowLoopMin(shadowContext, posInput, normalWS, asuint(_ShadowMatteFilter), renderingLayers, shadow3);
					shadow = dot(shadow3, float3(1.0f/3.0f, 1.0f/3.0f, 1.0f/3.0f));

					float4 shadowColor = (1 - shadow)*surfaceDescription.ShadowTint.rgba;
					float  localAlpha  = saturate(shadowColor.a + surfaceDescription.Alpha);

					#ifdef _SURFACE_TYPE_TRANSPARENT
						surfaceData.color = lerp(shadowColor.rgb*surfaceData.color, lerp(lerp(shadowColor.rgb, surfaceData.color, 1 - surfaceDescription.ShadowTint.a), surfaceData.color, shadow), surfaceDescription.Alpha);
					#else
						surfaceData.color = lerp(lerp(shadowColor.rgb, surfaceData.color, 1 - surfaceDescription.ShadowTint.a), surfaceData.color, shadow);
					#endif
					localAlpha = ApplyBlendMode(surfaceData.color, localAlpha).a;
					surfaceDescription.Alpha = localAlpha;
				#endif

				ZERO_INITIALIZE(BuiltinData, builtinData);
				builtinData.opacity = surfaceDescription.Alpha;
				builtinData.emissiveColor = surfaceDescription.Emission;
			}

			VertexOutput VertexFunction( VertexInput inputMesh  )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				float2 texCoord123 = inputMesh.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				
				o.ase_texcoord1 = inputMesh.ase_texcoord;
				o.ase_texcoord2.xy = inputMesh.ase_texcoord1.xy;
				o.ase_texcoord2.zw = inputMesh.ase_texcoord3.xy;
				o.ase_color = inputMesh.ase_color;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ( ( ase_worldPos - _WorldSpaceCameraPos ) * ( ( _CameraDirPush + texCoord123.y ) * 0.01 ) );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS = inputMesh.normalOS;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				o.positionCS = TransformWorldToHClip(positionRWS);
				o.positionRWS = positionRWS;
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput Vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			float4 Frag( VertexOutput packedInput ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				float3 positionRWS = packedInput.positionRWS;

				input.positionSS = packedInput.positionCS;
				input.positionRWS = positionRWS;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir( input.positionRWS );

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;
				float2 uv_ColorTexture = packedInput.ase_texcoord1.xy * _ColorTexture_ST.xy + _ColorTexture_ST.zw;
				float cos48 = cos( radians( _ColorRotation ) );
				float sin48 = sin( radians( _ColorRotation ) );
				float2 rotator48 = mul( uv_ColorTexture - float2( 0.5,0.5 ) , float2x2( cos48 , -sin48 , sin48 , cos48 )) + float2( 0.5,0.5 );
				float2 temp_cast_0 = (0.0).xx;
				float2 texCoord110 = packedInput.ase_texcoord2.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _CUSTOMPANSWITCH_ON
				float2 staticSwitch113 = texCoord110;
				#else
				float2 staticSwitch113 = temp_cast_0;
				#endif
				float2 CustomUV111 = staticSwitch113;
				float2 uv_DistoMask = packedInput.ase_texcoord1.xy * _DistoMask_ST.xy + _DistoMask_ST.zw;
				float cos155 = cos( radians( _DistoMaskRotation ) );
				float sin155 = sin( radians( _DistoMaskRotation ) );
				float2 rotator155 = mul( uv_DistoMask - float2( 0.5,0.5 ) , float2x2( cos155 , -sin155 , sin155 , cos155 )) + float2( 0.5,0.5 );
				float4 uvs4_DistoMask = packedInput.ase_texcoord1;
				uvs4_DistoMask.xy = packedInput.ase_texcoord1.xy * _DistoMask_ST.xy + _DistoMask_ST.zw;
				float dotResult149 = dot( tex2D( _DistoMask, ( rotator155 + uvs4_DistoMask.w + CustomUV111 + ( _TimeParameters.x * _DistoMaskPanSpeed ) ) ) , _DistoMaskChannel );
				float Disto161 = ( saturate( dotResult149 ) * _Disto );
				float2 texCoord135 = packedInput.ase_texcoord2.zw * float2( 1,1 ) + float2( 0,0 );
				float2 uv_GradientShape = packedInput.ase_texcoord1.xy * _GradientShape_ST.xy + _GradientShape_ST.zw;
				float cos19 = cos( radians( _GradientShapeRotation ) );
				float sin19 = sin( radians( _GradientShapeRotation ) );
				float2 rotator19 = mul( uv_GradientShape - float2( 0.5,0.5 ) , float2x2( cos19 , -sin19 , sin19 , cos19 )) + float2( 0.5,0.5 );
				float dotResult25 = dot( tex2D( _GradientShape, ( rotator19 + CustomUV111 + Disto161 ) ) , _GradientShapeChannel );
				float2 uv_DissolveMask = packedInput.ase_texcoord1.xy * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
				float cos6 = cos( radians( _DissolveMaskRotation ) );
				float sin6 = sin( radians( _DissolveMaskRotation ) );
				float2 rotator6 = mul( uv_DissolveMask - float2( 0.5,0.5 ) , float2x2( cos6 , -sin6 , sin6 , cos6 )) + float2( 0.5,0.5 );
				float4 uvs4_DissolveMask = packedInput.ase_texcoord1;
				uvs4_DissolveMask.xy = packedInput.ase_texcoord1.xy * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
				float dotResult10 = dot( tex2D( _DissolveMask, ( rotator6 + uvs4_DissolveMask.w + CustomUV111 + ( _TimeParameters.x * _DissolveMaskPanSpeed ) + Disto161 ) ) , _DissolveMaskChannel );
				float temp_output_13_0 = saturate( dotResult10 );
				float lerpResult22 = lerp( temp_output_13_0 , saturate( ( 1.0 - temp_output_13_0 ) ) , _DissolveMaskInvert);
				float4 texCoord24 = packedInput.ase_texcoord1;
				texCoord24.xy = packedInput.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_26_0 = ( saturate( lerpResult22 ) + texCoord24.z + _Dissolve );
				float temp_output_33_0 = saturate( ( saturate( dotResult25 ) * temp_output_26_0 ) );
				float lerpResult43 = lerp( saturate( ( 1.0 - temp_output_33_0 ) ) , temp_output_33_0 , _InvertGradient);
				float2 temp_cast_4 = (( lerpResult43 + _GradientMapDisplacement )).xx;
				float3 temp_output_60_0 = (packedInput.ase_color).rgb;
				float3 temp_output_63_0 = ( saturate( ( (tex2D( _ColorTexture, ( rotator48 + CustomUV111 + Disto161 ) )).rgb + texCoord135.x ) ) * (tex2D( _GradientMap, temp_cast_4 )).rgb * temp_output_60_0 );
				float2 uv_Texture = packedInput.ase_texcoord1.xy * _Texture_ST.xy + _Texture_ST.zw;
				float cos34 = cos( radians( _TextureRotation ) );
				float sin34 = sin( radians( _TextureRotation ) );
				float2 rotator34 = mul( uv_Texture - float2( 0.5,0.5 ) , float2x2( cos34 , -sin34 , sin34 , cos34 )) + float2( 0.5,0.5 );
				float dotResult38 = dot( tex2D( _Texture, ( rotator34 + ( _TimeParameters.x * _TexturePanSpeed ) + CustomUV111 + Disto161 ) ) , _TextureChannel );
				float temp_output_50_0 = ( temp_output_26_0 * saturate( dotResult38 ) );
				float temp_output_59_0 = ( pow( temp_output_50_0 , _CorePower ) * _CoreIntensity );
				float3 lerpResult67 = lerp( temp_output_63_0 , (_CoreColor).rgb , saturate( temp_output_59_0 ));
				float3 lerpResult74 = lerp( temp_output_63_0 , saturate( lerpResult67 ) , _DifferentCoreColor);
				float3 temp_output_77_0 = saturate( lerpResult74 );
				
				float3 temp_cast_6 = (1.0).xxx;
				#ifdef _MESHVERTEXCOLOR_ON
				float3 staticSwitch126 = temp_output_60_0;
				#else
				float3 staticSwitch126 = temp_cast_6;
				#endif
				float3 temp_output_78_0 = saturate( ( ( packedInput.ase_color.a * saturate( ( temp_output_59_0 + ( temp_output_50_0 * _GlowIntensity ) ) ) * staticSwitch126 ) * _AlphaBoldness ) );
				float3 temp_cast_7 = (_ValueStep).xxx;
				float3 temp_cast_8 = (( _ValueStep + _ValueStepAdd )).xxx;
				float3 smoothstepResult129 = smoothstep( temp_cast_7 , temp_cast_8 , temp_output_78_0);
				#ifdef _STEP_ON
				float3 staticSwitch130 = saturate( smoothstepResult129 );
				#else
				float3 staticSwitch130 = temp_output_78_0;
				#endif
				
				surfaceDescription.Color = temp_output_77_0;
				surfaceDescription.Emission = ( temp_output_77_0 * _Brightness );
				surfaceDescription.Alpha = staticSwitch130.x;
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;
				surfaceDescription.ShadowTint = float4( 0, 0 ,0 ,1 );
				float2 Distortion = float2 ( 0, 0 );
				float DistortionBlur = 0;

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData( input.positionSS.xy, surfaceData );

				float4 outColor = ApplyBlendMode( bsdfData.color + builtinData.emissiveColor * GetCurrentExposureMultiplier(), builtinData.opacity );
				outColor = EvaluateAtmosphericScattering( posInput, V, outColor );

				#ifdef DEBUG_DISPLAY
					int bufferSize = int(_DebugViewMaterialArray[0].x);
					for (int index = 1; index <= bufferSize; index++)
					{
						int indexMaterialProperty = int(_DebugViewMaterialArray[index].x);
						if (indexMaterialProperty != 0)
						{
							float3 result = float3(1.0, 0.0, 1.0);
							bool needLinearToSRGB = false;

							GetPropertiesDataDebug(indexMaterialProperty, result, needLinearToSRGB);
							GetVaryingsDataDebug(indexMaterialProperty, input, result, needLinearToSRGB);
							GetBuiltinDataDebug(indexMaterialProperty, builtinData, posInput, result, needLinearToSRGB);
							GetSurfaceDataDebug(indexMaterialProperty, surfaceData, result, needLinearToSRGB);
							GetBSDFDataDebug(indexMaterialProperty, bsdfData, result, needLinearToSRGB);

							if (!needLinearToSRGB)
								result = SRGBToLinear(max(0, result));

							outColor = float4(result, 1.0);
						}
					}

					if (_DebugFullScreenMode == FULLSCREENDEBUGMODE_TRANSPARENCY_OVERDRAW)
					{
						float4 result = _DebugTransparencyOverdrawWeight * float4(TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_COST, TRANSPARENCY_OVERDRAW_A);
						outColor = result;
					}
				#endif
				return outColor;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			Cull [_CullMode]
			ZWrite On
			ZClip [_ZClip]
			ColorMask 0

			HLSLPROGRAM
			#pragma multi_compile_instancing
			#define HAVE_MESH_MODIFICATION 1
			#define ASE_SRP_VERSION 999999

			#define SHADERPASS SHADERPASS_SHADOWS

			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ALPHATEST_ON
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT

			#pragma vertex Vert
			#pragma fragment Frag

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _STEP_ON
			#pragma shader_feature_local _CUSTOMPANSWITCH_ON
			#pragma shader_feature_local _MESHVERTEXCOLOR_ON


			struct VertexInput
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_Position;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START( UnityPerMaterial )
			float4 _GradientShapeChannel;
			float4 _TextureChannel;
			float4 _DissolveMaskChannel;
			float4 _DissolveMask_ST;
			float4 _CoreColor;
			float4 _GradientShape_ST;
			float4 _Texture_ST;
			float4 _DistoMask_ST;
			float4 _ColorTexture_ST;
			float4 _DistoMaskChannel;
			float2 _DistoMaskPanSpeed;
			float2 _DissolveMaskPanSpeed;
			float2 _TexturePanSpeed;
			float _Brightness;
			float _DifferentCoreColor;
			float _GlowIntensity;
			float _CoreIntensity;
			float _AlphaBoldness;
			float _CorePower;
			float _TextureRotation;
			float _CameraDirPush;
			float _DissolveMaskInvert;
			float _InvertGradient;
			float _Dissolve;
			float _ValueStep;
			float _DissolveMaskRotation;
			float _GradientShapeRotation;
			float _Disto;
			float _DistoMaskRotation;
			float _ColorRotation;
			float _GradientMapDisplacement;
			float _ValueStepAdd;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			#ifdef _ENABLE_SHADOW_MATTE
			float _ShadowMatteFilter;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _DissolveMask;
			sampler2D _DistoMask;
			sampler2D _Texture;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			void BuildSurfaceData(FragInputs fragInputs, SurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);
			}

			void GetSurfaceAndBuiltinData(SurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#if _ALPHATEST_ON
				DoAlphaTest(surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold);
				#endif

				BuildSurfaceData(fragInputs, surfaceDescription, V, surfaceData);
				ZERO_INITIALIZE (BuiltinData, builtinData);
				builtinData.opacity = surfaceDescription.Alpha;
			}

			VertexOutput VertexFunction( VertexInput inputMesh  )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				float2 texCoord123 = inputMesh.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				
				o.ase_color = inputMesh.ase_color;
				o.ase_texcoord = inputMesh.ase_texcoord;
				o.ase_texcoord1.xy = inputMesh.ase_texcoord1.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ( ( ase_worldPos - _WorldSpaceCameraPos ) * ( ( _CameraDirPush + texCoord123.y ) * 0.01 ) );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				o.positionCS = TransformWorldToHClip(positionRWS);
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord1 = v.ase_texcoord1;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput Vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( VertexOutput packedInput
					#ifdef WRITE_NORMAL_BUFFER
					, out float4 outNormalBuffer : SV_Target0
						#ifdef WRITE_MSAA_DEPTH
						, out float1 depthColor : SV_Target1
						#endif
					#elif defined(WRITE_MSAA_DEPTH)
					, out float4 outNormalBuffer : SV_Target0
					, out float1 depthColor : SV_Target1
					#elif defined(SCENESELECTIONPASS)
					, out float4 outColor : SV_Target0
					#endif
					#ifdef _DEPTHOFFSET_ON
					, out float outputDepth : SV_Depth
					#endif
					
					)
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );

				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = float3( 1.0, 1.0, 1.0 );

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;
				float2 uv_DissolveMask = packedInput.ase_texcoord.xy * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
				float cos6 = cos( radians( _DissolveMaskRotation ) );
				float sin6 = sin( radians( _DissolveMaskRotation ) );
				float2 rotator6 = mul( uv_DissolveMask - float2( 0.5,0.5 ) , float2x2( cos6 , -sin6 , sin6 , cos6 )) + float2( 0.5,0.5 );
				float4 uvs4_DissolveMask = packedInput.ase_texcoord;
				uvs4_DissolveMask.xy = packedInput.ase_texcoord.xy * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
				float2 temp_cast_0 = (0.0).xx;
				float2 texCoord110 = packedInput.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _CUSTOMPANSWITCH_ON
				float2 staticSwitch113 = texCoord110;
				#else
				float2 staticSwitch113 = temp_cast_0;
				#endif
				float2 CustomUV111 = staticSwitch113;
				float2 uv_DistoMask = packedInput.ase_texcoord.xy * _DistoMask_ST.xy + _DistoMask_ST.zw;
				float cos155 = cos( radians( _DistoMaskRotation ) );
				float sin155 = sin( radians( _DistoMaskRotation ) );
				float2 rotator155 = mul( uv_DistoMask - float2( 0.5,0.5 ) , float2x2( cos155 , -sin155 , sin155 , cos155 )) + float2( 0.5,0.5 );
				float4 uvs4_DistoMask = packedInput.ase_texcoord;
				uvs4_DistoMask.xy = packedInput.ase_texcoord.xy * _DistoMask_ST.xy + _DistoMask_ST.zw;
				float dotResult149 = dot( tex2D( _DistoMask, ( rotator155 + uvs4_DistoMask.w + CustomUV111 + ( _TimeParameters.x * _DistoMaskPanSpeed ) ) ) , _DistoMaskChannel );
				float Disto161 = ( saturate( dotResult149 ) * _Disto );
				float dotResult10 = dot( tex2D( _DissolveMask, ( rotator6 + uvs4_DissolveMask.w + CustomUV111 + ( _TimeParameters.x * _DissolveMaskPanSpeed ) + Disto161 ) ) , _DissolveMaskChannel );
				float temp_output_13_0 = saturate( dotResult10 );
				float lerpResult22 = lerp( temp_output_13_0 , saturate( ( 1.0 - temp_output_13_0 ) ) , _DissolveMaskInvert);
				float4 texCoord24 = packedInput.ase_texcoord;
				texCoord24.xy = packedInput.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_26_0 = ( saturate( lerpResult22 ) + texCoord24.z + _Dissolve );
				float2 uv_Texture = packedInput.ase_texcoord.xy * _Texture_ST.xy + _Texture_ST.zw;
				float cos34 = cos( radians( _TextureRotation ) );
				float sin34 = sin( radians( _TextureRotation ) );
				float2 rotator34 = mul( uv_Texture - float2( 0.5,0.5 ) , float2x2( cos34 , -sin34 , sin34 , cos34 )) + float2( 0.5,0.5 );
				float dotResult38 = dot( tex2D( _Texture, ( rotator34 + ( _TimeParameters.x * _TexturePanSpeed ) + CustomUV111 + Disto161 ) ) , _TextureChannel );
				float temp_output_50_0 = ( temp_output_26_0 * saturate( dotResult38 ) );
				float temp_output_59_0 = ( pow( temp_output_50_0 , _CorePower ) * _CoreIntensity );
				float3 temp_cast_4 = (1.0).xxx;
				float3 temp_output_60_0 = (packedInput.ase_color).rgb;
				#ifdef _MESHVERTEXCOLOR_ON
				float3 staticSwitch126 = temp_output_60_0;
				#else
				float3 staticSwitch126 = temp_cast_4;
				#endif
				float3 temp_output_78_0 = saturate( ( ( packedInput.ase_color.a * saturate( ( temp_output_59_0 + ( temp_output_50_0 * _GlowIntensity ) ) ) * staticSwitch126 ) * _AlphaBoldness ) );
				float3 temp_cast_5 = (_ValueStep).xxx;
				float3 temp_cast_6 = (( _ValueStep + _ValueStepAdd )).xxx;
				float3 smoothstepResult129 = smoothstep( temp_cast_5 , temp_cast_6 , temp_output_78_0);
				#ifdef _STEP_ON
				float3 staticSwitch130 = saturate( smoothstepResult129 );
				#else
				float3 staticSwitch130 = temp_output_78_0;
				#endif
				
				surfaceDescription.Alpha = staticSwitch130.x;
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription,input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "META"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM
			#pragma multi_compile_instancing
			#define HAVE_MESH_MODIFICATION 1
			#define ASE_SRP_VERSION 999999

			#define SHADERPASS SHADERPASS_LIGHT_TRANSPORT

			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ALPHATEST_ON
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT

			#pragma vertex Vert
			#pragma fragment Frag

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			CBUFFER_START( UnityPerMaterial )
			float4 _GradientShapeChannel;
			float4 _TextureChannel;
			float4 _DissolveMaskChannel;
			float4 _DissolveMask_ST;
			float4 _CoreColor;
			float4 _GradientShape_ST;
			float4 _Texture_ST;
			float4 _DistoMask_ST;
			float4 _ColorTexture_ST;
			float4 _DistoMaskChannel;
			float2 _DistoMaskPanSpeed;
			float2 _DissolveMaskPanSpeed;
			float2 _TexturePanSpeed;
			float _Brightness;
			float _DifferentCoreColor;
			float _GlowIntensity;
			float _CoreIntensity;
			float _AlphaBoldness;
			float _CorePower;
			float _TextureRotation;
			float _CameraDirPush;
			float _DissolveMaskInvert;
			float _InvertGradient;
			float _Dissolve;
			float _ValueStep;
			float _DissolveMaskRotation;
			float _GradientShapeRotation;
			float _Disto;
			float _DistoMaskRotation;
			float _ColorRotation;
			float _GradientMapDisplacement;
			float _ValueStepAdd;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			#ifdef _ENABLE_SHADOW_MATTE
			float _ShadowMatteFilter;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			CBUFFER_START( UnityMetaPass )
			bool4 unity_MetaVertexControl;
			bool4 unity_MetaFragmentControl;
			CBUFFER_END

			float unity_OneOverOutputBoost;
			float unity_MaxOutputValue;
			sampler2D _ColorTexture;
			sampler2D _DistoMask;
			sampler2D _GradientMap;
			sampler2D _GradientShape;
			sampler2D _DissolveMask;
			sampler2D _Texture;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _CUSTOMPANSWITCH_ON
			#pragma shader_feature_local _STEP_ON
			#pragma shader_feature_local _MESHVERTEXCOLOR_ON


			struct VertexInput
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_Position;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};


			
			struct SurfaceDescription
			{
				float3 Color;
				float3 Emission;
				float Alpha;
				float AlphaClipThreshold;
			};

			void BuildSurfaceData( FragInputs fragInputs, SurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData )
			{
				ZERO_INITIALIZE( SurfaceData, surfaceData );
				surfaceData.color = surfaceDescription.Color;
			}

			void GetSurfaceAndBuiltinData( SurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData )
			{
				#if _ALPHATEST_ON
				DoAlphaTest( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				BuildSurfaceData( fragInputs, surfaceDescription, V, surfaceData );
				ZERO_INITIALIZE( BuiltinData, builtinData );
				builtinData.opacity = surfaceDescription.Alpha;
				builtinData.emissiveColor = surfaceDescription.Emission;
			}

			VertexOutput VertexFunction( VertexInput inputMesh  )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID( inputMesh );
				UNITY_TRANSFER_INSTANCE_ID( inputMesh, o );

				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				float2 texCoord123 = inputMesh.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				
				o.ase_texcoord = inputMesh.ase_texcoord;
				o.ase_texcoord1.xy = inputMesh.uv1.xy;
				o.ase_texcoord1.zw = inputMesh.ase_texcoord3.xy;
				o.ase_color = inputMesh.ase_color;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ( ( ase_worldPos - _WorldSpaceCameraPos ) * ( ( _CameraDirPush + texCoord123.y ) * 0.01 ) );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;

				float2 uv = float2( 0.0, 0.0 );
				if( unity_MetaVertexControl.x )
				{
					uv = inputMesh.uv1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				}
				else if( unity_MetaVertexControl.y )
				{
					uv = inputMesh.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				}

				o.positionCS = float4( uv * 2.0 - 1.0, inputMesh.positionOS.z > 0 ? 1.0e-4 : 0.0, 1.0 );
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 uv1 : TEXCOORD1;
				float4 uv2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.uv1 = v.uv1;
				o.uv2 = v.uv2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.uv1 = patch[0].uv1 * bary.x + patch[1].uv1 * bary.y + patch[2].uv1 * bary.z;
				o.uv2 = patch[0].uv2 * bary.x + patch[1].uv2 * bary.y + patch[2].uv2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput Vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			float4 Frag( VertexOutput packedInput  ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE( FragInputs, input );
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				PositionInputs posInput = GetPositionInput( input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS );

				float3 V = float3( 1.0, 1.0, 1.0 );

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;
				float2 uv_ColorTexture = packedInput.ase_texcoord.xy * _ColorTexture_ST.xy + _ColorTexture_ST.zw;
				float cos48 = cos( radians( _ColorRotation ) );
				float sin48 = sin( radians( _ColorRotation ) );
				float2 rotator48 = mul( uv_ColorTexture - float2( 0.5,0.5 ) , float2x2( cos48 , -sin48 , sin48 , cos48 )) + float2( 0.5,0.5 );
				float2 temp_cast_0 = (0.0).xx;
				float2 texCoord110 = packedInput.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _CUSTOMPANSWITCH_ON
				float2 staticSwitch113 = texCoord110;
				#else
				float2 staticSwitch113 = temp_cast_0;
				#endif
				float2 CustomUV111 = staticSwitch113;
				float2 uv_DistoMask = packedInput.ase_texcoord.xy * _DistoMask_ST.xy + _DistoMask_ST.zw;
				float cos155 = cos( radians( _DistoMaskRotation ) );
				float sin155 = sin( radians( _DistoMaskRotation ) );
				float2 rotator155 = mul( uv_DistoMask - float2( 0.5,0.5 ) , float2x2( cos155 , -sin155 , sin155 , cos155 )) + float2( 0.5,0.5 );
				float4 uvs4_DistoMask = packedInput.ase_texcoord;
				uvs4_DistoMask.xy = packedInput.ase_texcoord.xy * _DistoMask_ST.xy + _DistoMask_ST.zw;
				float dotResult149 = dot( tex2D( _DistoMask, ( rotator155 + uvs4_DistoMask.w + CustomUV111 + ( _TimeParameters.x * _DistoMaskPanSpeed ) ) ) , _DistoMaskChannel );
				float Disto161 = ( saturate( dotResult149 ) * _Disto );
				float2 texCoord135 = packedInput.ase_texcoord1.zw * float2( 1,1 ) + float2( 0,0 );
				float2 uv_GradientShape = packedInput.ase_texcoord.xy * _GradientShape_ST.xy + _GradientShape_ST.zw;
				float cos19 = cos( radians( _GradientShapeRotation ) );
				float sin19 = sin( radians( _GradientShapeRotation ) );
				float2 rotator19 = mul( uv_GradientShape - float2( 0.5,0.5 ) , float2x2( cos19 , -sin19 , sin19 , cos19 )) + float2( 0.5,0.5 );
				float dotResult25 = dot( tex2D( _GradientShape, ( rotator19 + CustomUV111 + Disto161 ) ) , _GradientShapeChannel );
				float2 uv_DissolveMask = packedInput.ase_texcoord.xy * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
				float cos6 = cos( radians( _DissolveMaskRotation ) );
				float sin6 = sin( radians( _DissolveMaskRotation ) );
				float2 rotator6 = mul( uv_DissolveMask - float2( 0.5,0.5 ) , float2x2( cos6 , -sin6 , sin6 , cos6 )) + float2( 0.5,0.5 );
				float4 uvs4_DissolveMask = packedInput.ase_texcoord;
				uvs4_DissolveMask.xy = packedInput.ase_texcoord.xy * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
				float dotResult10 = dot( tex2D( _DissolveMask, ( rotator6 + uvs4_DissolveMask.w + CustomUV111 + ( _TimeParameters.x * _DissolveMaskPanSpeed ) + Disto161 ) ) , _DissolveMaskChannel );
				float temp_output_13_0 = saturate( dotResult10 );
				float lerpResult22 = lerp( temp_output_13_0 , saturate( ( 1.0 - temp_output_13_0 ) ) , _DissolveMaskInvert);
				float4 texCoord24 = packedInput.ase_texcoord;
				texCoord24.xy = packedInput.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_26_0 = ( saturate( lerpResult22 ) + texCoord24.z + _Dissolve );
				float temp_output_33_0 = saturate( ( saturate( dotResult25 ) * temp_output_26_0 ) );
				float lerpResult43 = lerp( saturate( ( 1.0 - temp_output_33_0 ) ) , temp_output_33_0 , _InvertGradient);
				float2 temp_cast_4 = (( lerpResult43 + _GradientMapDisplacement )).xx;
				float3 temp_output_60_0 = (packedInput.ase_color).rgb;
				float3 temp_output_63_0 = ( saturate( ( (tex2D( _ColorTexture, ( rotator48 + CustomUV111 + Disto161 ) )).rgb + texCoord135.x ) ) * (tex2D( _GradientMap, temp_cast_4 )).rgb * temp_output_60_0 );
				float2 uv_Texture = packedInput.ase_texcoord.xy * _Texture_ST.xy + _Texture_ST.zw;
				float cos34 = cos( radians( _TextureRotation ) );
				float sin34 = sin( radians( _TextureRotation ) );
				float2 rotator34 = mul( uv_Texture - float2( 0.5,0.5 ) , float2x2( cos34 , -sin34 , sin34 , cos34 )) + float2( 0.5,0.5 );
				float dotResult38 = dot( tex2D( _Texture, ( rotator34 + ( _TimeParameters.x * _TexturePanSpeed ) + CustomUV111 + Disto161 ) ) , _TextureChannel );
				float temp_output_50_0 = ( temp_output_26_0 * saturate( dotResult38 ) );
				float temp_output_59_0 = ( pow( temp_output_50_0 , _CorePower ) * _CoreIntensity );
				float3 lerpResult67 = lerp( temp_output_63_0 , (_CoreColor).rgb , saturate( temp_output_59_0 ));
				float3 lerpResult74 = lerp( temp_output_63_0 , saturate( lerpResult67 ) , _DifferentCoreColor);
				float3 temp_output_77_0 = saturate( lerpResult74 );
				
				float3 temp_cast_6 = (1.0).xxx;
				#ifdef _MESHVERTEXCOLOR_ON
				float3 staticSwitch126 = temp_output_60_0;
				#else
				float3 staticSwitch126 = temp_cast_6;
				#endif
				float3 temp_output_78_0 = saturate( ( ( packedInput.ase_color.a * saturate( ( temp_output_59_0 + ( temp_output_50_0 * _GlowIntensity ) ) ) * staticSwitch126 ) * _AlphaBoldness ) );
				float3 temp_cast_7 = (_ValueStep).xxx;
				float3 temp_cast_8 = (( _ValueStep + _ValueStepAdd )).xxx;
				float3 smoothstepResult129 = smoothstep( temp_cast_7 , temp_cast_8 , temp_output_78_0);
				#ifdef _STEP_ON
				float3 staticSwitch130 = saturate( smoothstepResult129 );
				#else
				float3 staticSwitch130 = temp_output_78_0;
				#endif
				
				surfaceDescription.Color = temp_output_77_0;
				surfaceDescription.Emission = ( temp_output_77_0 * _Brightness );
				surfaceDescription.Alpha = staticSwitch130.x;
				surfaceDescription.AlphaClipThreshold =  _AlphaCutoff;

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData( surfaceDescription,input, V, posInput, surfaceData, builtinData );

				BSDFData bsdfData = ConvertSurfaceDataToBSDFData( input.positionSS.xy, surfaceData );
				LightTransportData lightTransportData = GetLightTransportData( surfaceData, builtinData, bsdfData );

				float4 res = float4( 0.0, 0.0, 0.0, 1.0 );
				if( unity_MetaFragmentControl.x )
				{
					res.rgb = clamp( pow( abs( lightTransportData.diffuseColor ), saturate( unity_OneOverOutputBoost ) ), 0, unity_MaxOutputValue );
				}

				if( unity_MetaFragmentControl.y )
				{
					res.rgb = lightTransportData.emissiveColor;
				}

				return res;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }

			Cull [_CullMode]
			ZWrite On

			ColorMask 0

			HLSLPROGRAM
			#pragma multi_compile_instancing
			#define HAVE_MESH_MODIFICATION 1
			#define ASE_SRP_VERSION 999999

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
			#define SCENESELECTIONPASS
			#pragma editor_sync_compilation

			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ALPHATEST_ON
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT

			#pragma vertex Vert
			#pragma fragment Frag

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			int _ObjectId;
			int _PassValue;

			CBUFFER_START( UnityPerMaterial )
			float4 _GradientShapeChannel;
			float4 _TextureChannel;
			float4 _DissolveMaskChannel;
			float4 _DissolveMask_ST;
			float4 _CoreColor;
			float4 _GradientShape_ST;
			float4 _Texture_ST;
			float4 _DistoMask_ST;
			float4 _ColorTexture_ST;
			float4 _DistoMaskChannel;
			float2 _DistoMaskPanSpeed;
			float2 _DissolveMaskPanSpeed;
			float2 _TexturePanSpeed;
			float _Brightness;
			float _DifferentCoreColor;
			float _GlowIntensity;
			float _CoreIntensity;
			float _AlphaBoldness;
			float _CorePower;
			float _TextureRotation;
			float _CameraDirPush;
			float _DissolveMaskInvert;
			float _InvertGradient;
			float _Dissolve;
			float _ValueStep;
			float _DissolveMaskRotation;
			float _GradientShapeRotation;
			float _Disto;
			float _DistoMaskRotation;
			float _ColorRotation;
			float _GradientMapDisplacement;
			float _ValueStepAdd;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			#ifdef _ENABLE_SHADOW_MATTE
			float _ShadowMatteFilter;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _DissolveMask;
			sampler2D _DistoMask;
			sampler2D _Texture;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _STEP_ON
			#pragma shader_feature_local _CUSTOMPANSWITCH_ON
			#pragma shader_feature_local _MESHVERTEXCOLOR_ON


			struct VertexInput
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_Position;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};


			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			void BuildSurfaceData(FragInputs fragInputs, SurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);
			}

			void GetSurfaceAndBuiltinData(SurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#if _ALPHATEST_ON
				DoAlphaTest ( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				BuildSurfaceData(fragInputs, surfaceDescription, V, surfaceData);
				ZERO_INITIALIZE(BuiltinData, builtinData);
				builtinData.opacity =  surfaceDescription.Alpha;
			}

			VertexOutput VertexFunction( VertexInput inputMesh  )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				float2 texCoord123 = inputMesh.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				
				o.ase_color = inputMesh.ase_color;
				o.ase_texcoord = inputMesh.ase_texcoord;
				o.ase_texcoord1.xy = inputMesh.ase_texcoord1.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  ( ( ase_worldPos - _WorldSpaceCameraPos ) * ( ( _CameraDirPush + texCoord123.y ) * 0.01 ) );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				o.positionCS = TransformWorldToHClip(positionRWS);
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord1 = v.ase_texcoord1;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput Vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( VertexOutput packedInput
					, out float4 outColor : SV_Target0
					#ifdef _DEPTHOFFSET_ON
					, out float outputDepth : SV_Depth
					#endif
					
					)
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = float3( 1.0, 1.0, 1.0 );

				SurfaceData surfaceData;
				BuiltinData builtinData;
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;
				float2 uv_DissolveMask = packedInput.ase_texcoord.xy * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
				float cos6 = cos( radians( _DissolveMaskRotation ) );
				float sin6 = sin( radians( _DissolveMaskRotation ) );
				float2 rotator6 = mul( uv_DissolveMask - float2( 0.5,0.5 ) , float2x2( cos6 , -sin6 , sin6 , cos6 )) + float2( 0.5,0.5 );
				float4 uvs4_DissolveMask = packedInput.ase_texcoord;
				uvs4_DissolveMask.xy = packedInput.ase_texcoord.xy * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
				float2 temp_cast_0 = (0.0).xx;
				float2 texCoord110 = packedInput.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _CUSTOMPANSWITCH_ON
				float2 staticSwitch113 = texCoord110;
				#else
				float2 staticSwitch113 = temp_cast_0;
				#endif
				float2 CustomUV111 = staticSwitch113;
				float2 uv_DistoMask = packedInput.ase_texcoord.xy * _DistoMask_ST.xy + _DistoMask_ST.zw;
				float cos155 = cos( radians( _DistoMaskRotation ) );
				float sin155 = sin( radians( _DistoMaskRotation ) );
				float2 rotator155 = mul( uv_DistoMask - float2( 0.5,0.5 ) , float2x2( cos155 , -sin155 , sin155 , cos155 )) + float2( 0.5,0.5 );
				float4 uvs4_DistoMask = packedInput.ase_texcoord;
				uvs4_DistoMask.xy = packedInput.ase_texcoord.xy * _DistoMask_ST.xy + _DistoMask_ST.zw;
				float dotResult149 = dot( tex2D( _DistoMask, ( rotator155 + uvs4_DistoMask.w + CustomUV111 + ( _TimeParameters.x * _DistoMaskPanSpeed ) ) ) , _DistoMaskChannel );
				float Disto161 = ( saturate( dotResult149 ) * _Disto );
				float dotResult10 = dot( tex2D( _DissolveMask, ( rotator6 + uvs4_DissolveMask.w + CustomUV111 + ( _TimeParameters.x * _DissolveMaskPanSpeed ) + Disto161 ) ) , _DissolveMaskChannel );
				float temp_output_13_0 = saturate( dotResult10 );
				float lerpResult22 = lerp( temp_output_13_0 , saturate( ( 1.0 - temp_output_13_0 ) ) , _DissolveMaskInvert);
				float4 texCoord24 = packedInput.ase_texcoord;
				texCoord24.xy = packedInput.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_26_0 = ( saturate( lerpResult22 ) + texCoord24.z + _Dissolve );
				float2 uv_Texture = packedInput.ase_texcoord.xy * _Texture_ST.xy + _Texture_ST.zw;
				float cos34 = cos( radians( _TextureRotation ) );
				float sin34 = sin( radians( _TextureRotation ) );
				float2 rotator34 = mul( uv_Texture - float2( 0.5,0.5 ) , float2x2( cos34 , -sin34 , sin34 , cos34 )) + float2( 0.5,0.5 );
				float dotResult38 = dot( tex2D( _Texture, ( rotator34 + ( _TimeParameters.x * _TexturePanSpeed ) + CustomUV111 + Disto161 ) ) , _TextureChannel );
				float temp_output_50_0 = ( temp_output_26_0 * saturate( dotResult38 ) );
				float temp_output_59_0 = ( pow( temp_output_50_0 , _CorePower ) * _CoreIntensity );
				float3 temp_cast_4 = (1.0).xxx;
				float3 temp_output_60_0 = (packedInput.ase_color).rgb;
				#ifdef _MESHVERTEXCOLOR_ON
				float3 staticSwitch126 = temp_output_60_0;
				#else
				float3 staticSwitch126 = temp_cast_4;
				#endif
				float3 temp_output_78_0 = saturate( ( ( packedInput.ase_color.a * saturate( ( temp_output_59_0 + ( temp_output_50_0 * _GlowIntensity ) ) ) * staticSwitch126 ) * _AlphaBoldness ) );
				float3 temp_cast_5 = (_ValueStep).xxx;
				float3 temp_cast_6 = (( _ValueStep + _ValueStepAdd )).xxx;
				float3 smoothstepResult129 = smoothstep( temp_cast_5 , temp_cast_6 , temp_output_78_0);
				#ifdef _STEP_ON
				float3 staticSwitch130 = saturate( smoothstepResult129 );
				#else
				float3 staticSwitch130 = temp_output_78_0;
				#endif
				
				surfaceDescription.Alpha = staticSwitch130.x;
				surfaceDescription.AlphaClipThreshold =  _AlphaCutoff;

				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthForwardOnly"
			Tags { "LightMode"="DepthForwardOnly" }

			Cull [_CullMode]
			ZWrite On
			Stencil
			{
				Ref [_StencilRefDepth]
				WriteMask [_StencilWriteMaskDepth]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			ColorMask 0 0

			HLSLPROGRAM
			#pragma multi_compile_instancing
			#define HAVE_MESH_MODIFICATION 1
			#define ASE_SRP_VERSION 999999

			#define SHADERPASS SHADERPASS_DEPTH_ONLY
			#pragma multi_compile _ WRITE_MSAA_DEPTH

			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ALPHATEST_ON
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT

			#pragma vertex Vert
			#pragma fragment Frag

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			CBUFFER_START( UnityPerMaterial )
			float4 _GradientShapeChannel;
			float4 _TextureChannel;
			float4 _DissolveMaskChannel;
			float4 _DissolveMask_ST;
			float4 _CoreColor;
			float4 _GradientShape_ST;
			float4 _Texture_ST;
			float4 _DistoMask_ST;
			float4 _ColorTexture_ST;
			float4 _DistoMaskChannel;
			float2 _DistoMaskPanSpeed;
			float2 _DissolveMaskPanSpeed;
			float2 _TexturePanSpeed;
			float _Brightness;
			float _DifferentCoreColor;
			float _GlowIntensity;
			float _CoreIntensity;
			float _AlphaBoldness;
			float _CorePower;
			float _TextureRotation;
			float _CameraDirPush;
			float _DissolveMaskInvert;
			float _InvertGradient;
			float _Dissolve;
			float _ValueStep;
			float _DissolveMaskRotation;
			float _GradientShapeRotation;
			float _Disto;
			float _DistoMaskRotation;
			float _ColorRotation;
			float _GradientMapDisplacement;
			float _ValueStepAdd;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			#ifdef _ENABLE_SHADOW_MATTE
			float _ShadowMatteFilter;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _DissolveMask;
			sampler2D _DistoMask;
			sampler2D _Texture;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _STEP_ON
			#pragma shader_feature_local _CUSTOMPANSWITCH_ON
			#pragma shader_feature_local _MESHVERTEXCOLOR_ON


			struct VertexInput
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_Position;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			void BuildSurfaceData(FragInputs fragInputs, SurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);
			}

			void GetSurfaceAndBuiltinData(SurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#if _ALPHATEST_ON
				DoAlphaTest ( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				BuildSurfaceData(fragInputs, surfaceDescription, V, surfaceData);
				ZERO_INITIALIZE(BuiltinData, builtinData);
				builtinData.opacity =  surfaceDescription.Alpha;
			}

			VertexOutput VertexFunction( VertexInput inputMesh  )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				float2 texCoord123 = inputMesh.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				
				o.ase_color = inputMesh.ase_color;
				o.ase_texcoord = inputMesh.ase_texcoord;
				o.ase_texcoord1.xy = inputMesh.ase_texcoord1.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue =  ( ( ase_worldPos - _WorldSpaceCameraPos ) * ( ( _CameraDirPush + texCoord123.y ) * 0.01 ) );
				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif

				inputMesh.normalOS =  inputMesh.normalOS ;

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				o.positionCS = TransformWorldToHClip(positionRWS);
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord1 = v.ase_texcoord1;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput Vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( VertexOutput packedInput
					#ifdef WRITE_NORMAL_BUFFER
					, out float4 outNormalBuffer : SV_Target0
						#ifdef WRITE_MSAA_DEPTH
						, out float1 depthColor : SV_Target1
						#endif
					#elif defined(WRITE_MSAA_DEPTH)
					, out float4 outNormalBuffer : SV_Target0
					, out float1 depthColor : SV_Target1
					#elif defined(SCENESELECTIONPASS)
					, out float4 outColor : SV_Target0
					#endif
					#ifdef _DEPTHOFFSET_ON
					, out float outputDepth : SV_Depth
					#endif
					
					)
			{
				UNITY_SETUP_INSTANCE_ID( packedInput );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);

				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.positionCS;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = float3( 1.0, 1.0, 1.0 );

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;
				float2 uv_DissolveMask = packedInput.ase_texcoord.xy * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
				float cos6 = cos( radians( _DissolveMaskRotation ) );
				float sin6 = sin( radians( _DissolveMaskRotation ) );
				float2 rotator6 = mul( uv_DissolveMask - float2( 0.5,0.5 ) , float2x2( cos6 , -sin6 , sin6 , cos6 )) + float2( 0.5,0.5 );
				float4 uvs4_DissolveMask = packedInput.ase_texcoord;
				uvs4_DissolveMask.xy = packedInput.ase_texcoord.xy * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
				float2 temp_cast_0 = (0.0).xx;
				float2 texCoord110 = packedInput.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _CUSTOMPANSWITCH_ON
				float2 staticSwitch113 = texCoord110;
				#else
				float2 staticSwitch113 = temp_cast_0;
				#endif
				float2 CustomUV111 = staticSwitch113;
				float2 uv_DistoMask = packedInput.ase_texcoord.xy * _DistoMask_ST.xy + _DistoMask_ST.zw;
				float cos155 = cos( radians( _DistoMaskRotation ) );
				float sin155 = sin( radians( _DistoMaskRotation ) );
				float2 rotator155 = mul( uv_DistoMask - float2( 0.5,0.5 ) , float2x2( cos155 , -sin155 , sin155 , cos155 )) + float2( 0.5,0.5 );
				float4 uvs4_DistoMask = packedInput.ase_texcoord;
				uvs4_DistoMask.xy = packedInput.ase_texcoord.xy * _DistoMask_ST.xy + _DistoMask_ST.zw;
				float dotResult149 = dot( tex2D( _DistoMask, ( rotator155 + uvs4_DistoMask.w + CustomUV111 + ( _TimeParameters.x * _DistoMaskPanSpeed ) ) ) , _DistoMaskChannel );
				float Disto161 = ( saturate( dotResult149 ) * _Disto );
				float dotResult10 = dot( tex2D( _DissolveMask, ( rotator6 + uvs4_DissolveMask.w + CustomUV111 + ( _TimeParameters.x * _DissolveMaskPanSpeed ) + Disto161 ) ) , _DissolveMaskChannel );
				float temp_output_13_0 = saturate( dotResult10 );
				float lerpResult22 = lerp( temp_output_13_0 , saturate( ( 1.0 - temp_output_13_0 ) ) , _DissolveMaskInvert);
				float4 texCoord24 = packedInput.ase_texcoord;
				texCoord24.xy = packedInput.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_26_0 = ( saturate( lerpResult22 ) + texCoord24.z + _Dissolve );
				float2 uv_Texture = packedInput.ase_texcoord.xy * _Texture_ST.xy + _Texture_ST.zw;
				float cos34 = cos( radians( _TextureRotation ) );
				float sin34 = sin( radians( _TextureRotation ) );
				float2 rotator34 = mul( uv_Texture - float2( 0.5,0.5 ) , float2x2( cos34 , -sin34 , sin34 , cos34 )) + float2( 0.5,0.5 );
				float dotResult38 = dot( tex2D( _Texture, ( rotator34 + ( _TimeParameters.x * _TexturePanSpeed ) + CustomUV111 + Disto161 ) ) , _TextureChannel );
				float temp_output_50_0 = ( temp_output_26_0 * saturate( dotResult38 ) );
				float temp_output_59_0 = ( pow( temp_output_50_0 , _CorePower ) * _CoreIntensity );
				float3 temp_cast_4 = (1.0).xxx;
				float3 temp_output_60_0 = (packedInput.ase_color).rgb;
				#ifdef _MESHVERTEXCOLOR_ON
				float3 staticSwitch126 = temp_output_60_0;
				#else
				float3 staticSwitch126 = temp_cast_4;
				#endif
				float3 temp_output_78_0 = saturate( ( ( packedInput.ase_color.a * saturate( ( temp_output_59_0 + ( temp_output_50_0 * _GlowIntensity ) ) ) * staticSwitch126 ) * _AlphaBoldness ) );
				float3 temp_cast_5 = (_ValueStep).xxx;
				float3 temp_cast_6 = (( _ValueStep + _ValueStepAdd )).xxx;
				float3 smoothstepResult129 = smoothstep( temp_cast_5 , temp_cast_6 , temp_output_78_0);
				#ifdef _STEP_ON
				float3 staticSwitch130 = saturate( smoothstepResult129 );
				#else
				float3 staticSwitch130 = temp_output_78_0;
				#endif
				
				surfaceDescription.Alpha = staticSwitch130.x;
				surfaceDescription.AlphaClipThreshold =  _AlphaCutoff;

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );
				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.positionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.positionCS.z;
				#elif defined(SCENESELECTIONPASS)
				outColor = float4( _ObjectId, _PassValue, 1.0, 1.0 );
				#endif
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "Motion Vectors"
			Tags { "LightMode"="MotionVectors" }

			Cull [_CullMode]

			ZWrite On

			Stencil
			{
				Ref [_StencilRefMV]
				WriteMask [_StencilWriteMaskMV]
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Keep
			}


			HLSLPROGRAM
			#pragma multi_compile_instancing
			#define HAVE_MESH_MODIFICATION 1
			#define ASE_SRP_VERSION 999999

			#define SHADERPASS SHADERPASS_MOTION_VECTORS
			#pragma multi_compile _ WRITE_MSAA_DEPTH

			#pragma shader_feature _SURFACE_TYPE_TRANSPARENT
			#pragma shader_feature_local _ _BLENDMODE_ALPHA _BLENDMODE_ADD _BLENDMODE_PRE_MULTIPLY
			#pragma shader_feature_local _ALPHATEST_ON
			#pragma shader_feature_local _ENABLE_FOG_ON_TRANSPARENT

			#pragma vertex Vert
			#pragma fragment Frag

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderVariables.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/FragInputs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/RenderPipeline/ShaderPass/ShaderPass.cs.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphHeader.hlsl"

			CBUFFER_START( UnityPerMaterial )
			float4 _GradientShapeChannel;
			float4 _TextureChannel;
			float4 _DissolveMaskChannel;
			float4 _DissolveMask_ST;
			float4 _CoreColor;
			float4 _GradientShape_ST;
			float4 _Texture_ST;
			float4 _DistoMask_ST;
			float4 _ColorTexture_ST;
			float4 _DistoMaskChannel;
			float2 _DistoMaskPanSpeed;
			float2 _DissolveMaskPanSpeed;
			float2 _TexturePanSpeed;
			float _Brightness;
			float _DifferentCoreColor;
			float _GlowIntensity;
			float _CoreIntensity;
			float _AlphaBoldness;
			float _CorePower;
			float _TextureRotation;
			float _CameraDirPush;
			float _DissolveMaskInvert;
			float _InvertGradient;
			float _Dissolve;
			float _ValueStep;
			float _DissolveMaskRotation;
			float _GradientShapeRotation;
			float _Disto;
			float _DistoMaskRotation;
			float _ColorRotation;
			float _GradientMapDisplacement;
			float _ValueStepAdd;
			float4 _EmissionColor;
			float _RenderQueueType;
			#ifdef _ADD_PRECOMPUTED_VELOCITY
			float _AddPrecomputedVelocity;
			#endif
			#ifdef _ENABLE_SHADOW_MATTE
			float _ShadowMatteFilter;
			#endif
			float _StencilRef;
			float _StencilWriteMask;
			float _StencilRefDepth;
			float _StencilWriteMaskDepth;
			float _StencilRefMV;
			float _StencilWriteMaskMV;
			float _StencilRefDistortionVec;
			float _StencilWriteMaskDistortionVec;
			float _StencilWriteMaskGBuffer;
			float _StencilRefGBuffer;
			float _ZTestGBuffer;
			float _RequireSplitLighting;
			float _ReceivesSSR;
			float _SurfaceType;
			float _BlendMode;
			float _SrcBlend;
			float _DstBlend;
			float _AlphaSrcBlend;
			float _AlphaDstBlend;
			float _ZWrite;
			float _TransparentZWrite;
			float _CullMode;
			float _TransparentSortPriority;
			float _EnableFogOnTransparent;
			float _CullModeForward;
			float _TransparentCullMode;
			float _ZTestDepthEqualForOpaque;
			float _ZTestTransparent;
			float _TransparentBackfaceEnable;
			float _AlphaCutoffEnable;
			float _AlphaCutoff;
			float _UseShadowThreshold;
			float _DoubleSidedEnable;
			float _DoubleSidedNormalMode;
			float4 _DoubleSidedConstants;
			#ifdef TESSELLATION_ON
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END
			sampler2D _DissolveMask;
			sampler2D _DistoMask;
			sampler2D _Texture;


			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Material.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/Unlit/Unlit.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/BuiltinUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/Material/MaterialUtilities.hlsl"
			#include "Packages/com.unity.render-pipelines.high-definition/Runtime/ShaderLibrary/ShaderGraphFunctions.hlsl"

			#define ASE_NEEDS_FRAG_COLOR
			#pragma shader_feature_local _STEP_ON
			#pragma shader_feature_local _CUSTOMPANSWITCH_ON
			#pragma shader_feature_local _MESHVERTEXCOLOR_ON


			struct VertexInput
			{
				float3 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float3 previousPositionOS : TEXCOORD4;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					float3 precomputedVelocity : TEXCOORD5;
				#endif
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 vmeshPositionCS : SV_Position;
				float3 vmeshInterp00 : TEXCOORD0;
				float3 vpassInterpolators0 : TEXCOORD1; //interpolators0
				float3 vpassInterpolators1 : TEXCOORD2; //interpolators1
				float4 ase_color : COLOR;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			
			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			void BuildSurfaceData(FragInputs fragInputs, SurfaceDescription surfaceDescription, float3 V, out SurfaceData surfaceData)
			{
				ZERO_INITIALIZE(SurfaceData, surfaceData);
			}

			void GetSurfaceAndBuiltinData(SurfaceDescription surfaceDescription, FragInputs fragInputs, float3 V, inout PositionInputs posInput, out SurfaceData surfaceData, out BuiltinData builtinData)
			{
				#if _ALPHATEST_ON
				DoAlphaTest ( surfaceDescription.Alpha, surfaceDescription.AlphaClipThreshold );
				#endif

				BuildSurfaceData(fragInputs, surfaceDescription, V, surfaceData);
				ZERO_INITIALIZE(BuiltinData, builtinData);
				builtinData.opacity =  surfaceDescription.Alpha;
			}

			VertexInput ApplyMeshModification(VertexInput inputMesh, float3 timeParameters, inout VertexOutput o )
			{
				_TimeParameters.xyz = timeParameters;
				float3 ase_worldPos = GetAbsolutePositionWS( TransformObjectToWorld( (inputMesh.positionOS).xyz ) );
				float2 texCoord123 = inputMesh.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				
				o.ase_color = inputMesh.ase_color;
				o.ase_texcoord3 = inputMesh.ase_texcoord;
				o.ase_texcoord4.xy = inputMesh.ase_texcoord1.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord4.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				float3 defaultVertexValue = inputMesh.positionOS.xyz;
				#else
				float3 defaultVertexValue = float3( 0, 0, 0 );
				#endif
				float3 vertexValue = ( ( ase_worldPos - _WorldSpaceCameraPos ) * ( ( _CameraDirPush + texCoord123.y ) * 0.01 ) );

				#ifdef ASE_ABSOLUTE_VERTEX_POS
				inputMesh.positionOS.xyz = vertexValue;
				#else
				inputMesh.positionOS.xyz += vertexValue;
				#endif
				inputMesh.normalOS =  inputMesh.normalOS ;
				return inputMesh;
			}

			VertexOutput VertexFunction(VertexInput inputMesh)
			{
				VertexOutput o = (VertexOutput)0;
				VertexInput defaultMesh = inputMesh;

				UNITY_SETUP_INSTANCE_ID(inputMesh);
				UNITY_TRANSFER_INSTANCE_ID(inputMesh, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				inputMesh = ApplyMeshModification( inputMesh, _TimeParameters.xyz, o);

				float3 positionRWS = TransformObjectToWorld(inputMesh.positionOS);
				float3 normalWS = TransformObjectToWorldNormal(inputMesh.normalOS);

				float3 VMESHpositionRWS = positionRWS;
				float4 VMESHpositionCS = TransformWorldToHClip(positionRWS);

				//#if defined(UNITY_REVERSED_Z)
				//	VMESHpositionCS.z -= unity_MotionVectorsParams.z * VMESHpositionCS.w;
				//#else
				//	VMESHpositionCS.z += unity_MotionVectorsParams.z * VMESHpositionCS.w;
				//#endif

				float4 VPASSpreviousPositionCS;
				float4 VPASSpositionCS = mul(UNITY_MATRIX_UNJITTERED_VP, float4(VMESHpositionRWS, 1.0));

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if (forceNoMotion)
				{
					VPASSpreviousPositionCS = float4(0.0, 0.0, 0.0, 1.0);
				}
				else
				{
					bool hasDeformation = unity_MotionVectorsParams.x > 0.0;
					float3 effectivePositionOS = (hasDeformation ? inputMesh.previousPositionOS : defaultMesh.positionOS);
					#if defined(_ADD_PRECOMPUTED_VELOCITY)
					effectivePositionOS -= inputMesh.precomputedVelocity;
					#endif

					#if defined(HAVE_MESH_MODIFICATION)
						VertexInput previousMesh = defaultMesh;
						previousMesh.positionOS = effectivePositionOS ;
						VertexOutput test = (VertexOutput)0;
						float3 curTime = _TimeParameters.xyz;
						previousMesh = ApplyMeshModification(previousMesh, _LastTimeParameters.xyz, test);
						_TimeParameters.xyz = curTime;
						float3 previousPositionRWS = TransformPreviousObjectToWorld(previousMesh.positionOS);
					#else
						float3 previousPositionRWS = TransformPreviousObjectToWorld(effectivePositionOS);
					#endif

					#ifdef ATTRIBUTES_NEED_NORMAL
						float3 normalWS = TransformPreviousObjectToWorldNormal(defaultMesh.normalOS);
					#else
						float3 normalWS = float3(0.0, 0.0, 0.0);
					#endif

					#if defined(HAVE_VERTEX_MODIFICATION)
						//ApplyVertexModification(inputMesh, normalWS, previousPositionRWS, _LastTimeParameters.xyz);
					#endif

					VPASSpreviousPositionCS = mul(UNITY_MATRIX_PREV_VP, float4(previousPositionRWS, 1.0));
				}

				o.vmeshPositionCS = VMESHpositionCS;
				o.vmeshInterp00.xyz = VMESHpositionRWS;

				o.vpassInterpolators0 = float3(VPASSpositionCS.xyw);
				o.vpassInterpolators1 = float3(VPASSpreviousPositionCS.xyw);
				return o;
			}

			#if defined(TESSELLATION_ON)
			struct VertexControl
			{
				float3 positionOS : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float3 previousPositionOS : TEXCOORD4;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					float3 precomputedVelocity : TEXCOORD5;
				#endif
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl Vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.positionOS = v.positionOS;
				o.normalOS = v.normalOS;
				o.previousPositionOS = v.previousPositionOS;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					o.precomputedVelocity = v.precomputedVelocity;
				#endif
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord1 = v.ase_texcoord1;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if (SHADEROPTIONS_CAMERA_RELATIVE_RENDERING != 0)
				float3 cameraPos = 0;
				#else
				float3 cameraPos = _WorldSpaceCameraPos;
				#endif
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), cameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, GetObjectToWorldMatrix(), cameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(float4(v[0].positionOS,1), float4(v[1].positionOS,1), float4(v[2].positionOS,1), edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), cameraPos, _ScreenParams, _FrustumPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].positionOS * bary.x + patch[1].positionOS * bary.y + patch[2].positionOS * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.previousPositionOS = patch[0].previousPositionOS * bary.x + patch[1].previousPositionOS * bary.y + patch[2].previousPositionOS * bary.z;
				#if defined (_ADD_PRECOMPUTED_VELOCITY)
					o.precomputedVelocity = patch[0].precomputedVelocity * bary.x + patch[1].precomputedVelocity * bary.y + patch[2].precomputedVelocity * bary.z;
				#endif
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].positionOS.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput Vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			void Frag( VertexOutput packedInput
						, out float4 outMotionVector : SV_Target0
						#ifdef WRITE_NORMAL_BUFFER
						, out float4 outNormalBuffer : SV_Target1
							#ifdef WRITE_MSAA_DEPTH
								, out float1 depthColor : SV_Target2
							#endif
						#elif defined(WRITE_MSAA_DEPTH)
						, out float4 outNormalBuffer : SV_Target1
						, out float1 depthColor : SV_Target2
						#endif

						#ifdef _DEPTHOFFSET_ON
							, out float outputDepth : SV_Depth
						#endif
						
					)
			{
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( packedInput );
				UNITY_SETUP_INSTANCE_ID( packedInput );
				FragInputs input;
				ZERO_INITIALIZE(FragInputs, input);
				input.tangentToWorld = k_identity3x3;
				input.positionSS = packedInput.vmeshPositionCS;
				input.positionRWS = packedInput.vmeshInterp00.xyz;

				PositionInputs posInput = GetPositionInput(input.positionSS.xy, _ScreenSize.zw, input.positionSS.z, input.positionSS.w, input.positionRWS);

				float3 V = GetWorldSpaceNormalizeViewDir(input.positionRWS);

				SurfaceDescription surfaceDescription = (SurfaceDescription)0;
				float2 uv_DissolveMask = packedInput.ase_texcoord3.xy * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
				float cos6 = cos( radians( _DissolveMaskRotation ) );
				float sin6 = sin( radians( _DissolveMaskRotation ) );
				float2 rotator6 = mul( uv_DissolveMask - float2( 0.5,0.5 ) , float2x2( cos6 , -sin6 , sin6 , cos6 )) + float2( 0.5,0.5 );
				float4 uvs4_DissolveMask = packedInput.ase_texcoord3;
				uvs4_DissolveMask.xy = packedInput.ase_texcoord3.xy * _DissolveMask_ST.xy + _DissolveMask_ST.zw;
				float2 temp_cast_0 = (0.0).xx;
				float2 texCoord110 = packedInput.ase_texcoord4.xy * float2( 1,1 ) + float2( 0,0 );
				#ifdef _CUSTOMPANSWITCH_ON
				float2 staticSwitch113 = texCoord110;
				#else
				float2 staticSwitch113 = temp_cast_0;
				#endif
				float2 CustomUV111 = staticSwitch113;
				float2 uv_DistoMask = packedInput.ase_texcoord3.xy * _DistoMask_ST.xy + _DistoMask_ST.zw;
				float cos155 = cos( radians( _DistoMaskRotation ) );
				float sin155 = sin( radians( _DistoMaskRotation ) );
				float2 rotator155 = mul( uv_DistoMask - float2( 0.5,0.5 ) , float2x2( cos155 , -sin155 , sin155 , cos155 )) + float2( 0.5,0.5 );
				float4 uvs4_DistoMask = packedInput.ase_texcoord3;
				uvs4_DistoMask.xy = packedInput.ase_texcoord3.xy * _DistoMask_ST.xy + _DistoMask_ST.zw;
				float dotResult149 = dot( tex2D( _DistoMask, ( rotator155 + uvs4_DistoMask.w + CustomUV111 + ( _TimeParameters.x * _DistoMaskPanSpeed ) ) ) , _DistoMaskChannel );
				float Disto161 = ( saturate( dotResult149 ) * _Disto );
				float dotResult10 = dot( tex2D( _DissolveMask, ( rotator6 + uvs4_DissolveMask.w + CustomUV111 + ( _TimeParameters.x * _DissolveMaskPanSpeed ) + Disto161 ) ) , _DissolveMaskChannel );
				float temp_output_13_0 = saturate( dotResult10 );
				float lerpResult22 = lerp( temp_output_13_0 , saturate( ( 1.0 - temp_output_13_0 ) ) , _DissolveMaskInvert);
				float4 texCoord24 = packedInput.ase_texcoord3;
				texCoord24.xy = packedInput.ase_texcoord3.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_26_0 = ( saturate( lerpResult22 ) + texCoord24.z + _Dissolve );
				float2 uv_Texture = packedInput.ase_texcoord3.xy * _Texture_ST.xy + _Texture_ST.zw;
				float cos34 = cos( radians( _TextureRotation ) );
				float sin34 = sin( radians( _TextureRotation ) );
				float2 rotator34 = mul( uv_Texture - float2( 0.5,0.5 ) , float2x2( cos34 , -sin34 , sin34 , cos34 )) + float2( 0.5,0.5 );
				float dotResult38 = dot( tex2D( _Texture, ( rotator34 + ( _TimeParameters.x * _TexturePanSpeed ) + CustomUV111 + Disto161 ) ) , _TextureChannel );
				float temp_output_50_0 = ( temp_output_26_0 * saturate( dotResult38 ) );
				float temp_output_59_0 = ( pow( temp_output_50_0 , _CorePower ) * _CoreIntensity );
				float3 temp_cast_4 = (1.0).xxx;
				float3 temp_output_60_0 = (packedInput.ase_color).rgb;
				#ifdef _MESHVERTEXCOLOR_ON
				float3 staticSwitch126 = temp_output_60_0;
				#else
				float3 staticSwitch126 = temp_cast_4;
				#endif
				float3 temp_output_78_0 = saturate( ( ( packedInput.ase_color.a * saturate( ( temp_output_59_0 + ( temp_output_50_0 * _GlowIntensity ) ) ) * staticSwitch126 ) * _AlphaBoldness ) );
				float3 temp_cast_5 = (_ValueStep).xxx;
				float3 temp_cast_6 = (( _ValueStep + _ValueStepAdd )).xxx;
				float3 smoothstepResult129 = smoothstep( temp_cast_5 , temp_cast_6 , temp_output_78_0);
				#ifdef _STEP_ON
				float3 staticSwitch130 = saturate( smoothstepResult129 );
				#else
				float3 staticSwitch130 = temp_output_78_0;
				#endif
				
				surfaceDescription.Alpha = staticSwitch130.x;
				surfaceDescription.AlphaClipThreshold = _AlphaCutoff;

				SurfaceData surfaceData;
				BuiltinData builtinData;
				GetSurfaceAndBuiltinData(surfaceDescription, input, V, posInput, surfaceData, builtinData);

				float4 VPASSpositionCS = float4(packedInput.vpassInterpolators0.xy, 0.0, packedInput.vpassInterpolators0.z);
				float4 VPASSpreviousPositionCS = float4(packedInput.vpassInterpolators1.xy, 0.0, packedInput.vpassInterpolators1.z);

				#ifdef _DEPTHOFFSET_ON
				VPASSpositionCS.w += builtinData.depthOffset;
				VPASSpreviousPositionCS.w += builtinData.depthOffset;
				#endif

				float2 motionVector = CalculateMotionVector( VPASSpositionCS, VPASSpreviousPositionCS );
				EncodeMotionVector( motionVector * 0.5, outMotionVector );

				bool forceNoMotion = unity_MotionVectorsParams.y == 0.0;
				if( forceNoMotion )
					outMotionVector = float4( 2.0, 0.0, 0.0, 0.0 );

				#ifdef WRITE_NORMAL_BUFFER
				EncodeIntoNormalBuffer( ConvertSurfaceDataToNormalData( surfaceData ), posInput.positionSS, outNormalBuffer );

				#ifdef WRITE_MSAA_DEPTH
				depthColor = packedInput.vmeshPositionCS.z;
				#endif
				#elif defined(WRITE_MSAA_DEPTH)
				outNormalBuffer = float4( 0.0, 0.0, 0.0, 1.0 );
				depthColor = packedInput.vmeshPositionCS.z;
				#endif

				#ifdef _DEPTHOFFSET_ON
				outputDepth = posInput.deviceDepth;
				#endif
			}

			ENDHLSL
		}

	
	}
	
	CustomEditor "Rendering.HighDefinition.HDUnlitGUI"
	Fallback "Hidden/InternalErrorShader"
	
}
/*ASEBEGIN
Version=18921
207;589;2546;1331;1517.383;633.9707;1.3;True;True
Node;AmplifyShaderEditor.CommentaryNode;115;-4655.81,-1210.096;Inherit;False;820.0869;299.5054;PanInCustomUV;1;110;;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;168;-3684.031,-1984.529;Inherit;False;2094.472;760.8214;Disto;18;156;154;155;161;163;164;160;149;147;148;159;157;158;153;152;151;146;150;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;114;-4542.313,-1160.096;Inherit;False;Constant;_Value0;Value0;26;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;110;-4605.81,-1069.591;Inherit;False;1;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;150;-3394.367,-1697.842;Inherit;False;Property;_DistoMaskRotation;Disto Mask Rotation;13;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;146;-3634.031,-1934.529;Inherit;True;Property;_DistoMask;Disto Mask;9;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.StaticSwitch;113;-4337.313,-1074.096;Inherit;False;Property;_CustomPanSwitch;CustomPanSwitch;30;0;Create;True;0;0;0;False;0;False;0;0;1;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;FLOAT2;0,0;False;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT2;0,0;False;6;FLOAT2;0,0;False;7;FLOAT2;0,0;False;8;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;154;-3267.162,-1828.38;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;111;-4059.725,-1067.236;Inherit;False;CustomUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;151;-3072.677,-1387.708;Inherit;False;Property;_DistoMaskPanSpeed;Disto Mask Pan Speed;19;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleTimeNode;153;-3063.677,-1459.709;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RadiansOpNode;152;-3131.163,-1675.38;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;157;-2950.092,-1587.232;Inherit;False;111;CustomUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;158;-2816.677,-1462.708;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;156;-3393.52,-1597.272;Inherit;False;0;-1;4;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RotatorNode;155;-2968.163,-1819.38;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;159;-2716.954,-1817.164;Inherit;False;4;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;148;-2536.271,-1902.532;Inherit;True;Property;_TextureSample5;Texture Sample 5;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;147;-2461.358,-1691.042;Inherit;False;Property;_DistoMaskChannel;Disto Mask Channel;11;0;Create;True;0;0;0;False;0;False;0,1,0,0;0,1,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DotProductOpNode;149;-2192.15,-1839.47;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;160;-1977.598,-1849.934;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;105;-5979.15,-114.1653;Inherit;False;2848.594;729.824;Dissolve Mask;24;26;128;23;24;22;18;17;15;13;10;9;8;7;116;5;6;92;91;4;90;3;1;2;166;;1,1,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;164;-2194.119,-1690.495;Inherit;False;Property;_Disto;Disto;36;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;163;-1972.92,-1766.595;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;2;-5929.15,-60.98477;Inherit;True;Property;_DissolveMask;Dissolve Mask;8;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1;-5659.369,140.5245;Inherit;False;Property;_DissolveMaskRotation;Dissolve Mask Rotation;12;0;Create;True;0;0;0;False;0;False;0;90;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;91;-5337.679,451.6586;Inherit;False;Property;_DissolveMaskPanSpeed;Dissolve Mask Pan Speed;20;0;Create;True;0;0;0;False;0;False;0,0;-0.1,-0.1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleTimeNode;90;-5328.679,378.6577;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RadiansOpNode;3;-5396.165,162.9868;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;4;-5532.164,9.986579;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;161;-1813.56,-1851.737;Inherit;False;Disto;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;92;-5081.679,375.6585;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;5;-5658.522,241.0942;Inherit;False;0;-1;4;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;116;-5215.094,251.1346;Inherit;False;111;CustomUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;166;-5219.207,326.1077;Inherit;False;161;Disto;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RotatorNode;6;-5233.165,18.98657;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;7;-4981.956,21.20225;Inherit;False;5;5;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT2;0,0;False;3;FLOAT2;0,0;False;4;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;104;-4713.032,689.6882;Inherit;False;1840.216;539.6607;Main Texture;14;45;38;37;36;94;119;34;96;95;30;93;31;28;29;;1,1,1,1;0;0
Node;AmplifyShaderEditor.Vector4Node;9;-4726.361,147.3238;Inherit;False;Property;_DissolveMaskChannel;Dissolve Mask Channel;10;0;Create;True;0;0;0;False;0;False;0,1,0,0;0,1,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;8;-4801.274,-64.16534;Inherit;True;Property;_TextureSample3;Texture Sample 3;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;29;-4554.742,948.1702;Inherit;False;Property;_TextureRotation;Texture Rotation;2;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;10;-4457.153,-1.104136;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;28;-4663.032,739.6882;Inherit;True;Property;_Texture;Texture;0;0;Create;True;0;0;0;False;0;False;None;1bfa68e04fab9cc4687a72bbb0075ee2;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.SimpleTimeNode;95;-4110.41,944.062;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RadiansOpNode;30;-4310.743,954.1702;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;13;-4239.6,2.432282;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;93;-4122.628,1019.872;Inherit;False;Property;_TexturePanSpeed;Texture Pan Speed;17;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.TextureCoordinatesNode;31;-4401.742,818.1707;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.GetLocalVarNode;119;-3883.605,1085.794;Inherit;False;111;CustomUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;167;-3872.735,1168.681;Inherit;False;161;Disto;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;96;-3891.408,954.063;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.OneMinusNode;15;-4099.783,107.5861;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RotatorNode;34;-4139.742,824.1708;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;17;-4055.097,203.4165;Inherit;False;Property;_DissolveMaskInvert;Dissolve Mask Invert;14;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;18;-3937.396,106.1128;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;94;-3667.626,825.8732;Inherit;False;4;4;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT2;0,0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.LerpOp;22;-3733.413,5.874167;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;36;-3519.3,752.6392;Inherit;True;Property;_TextureSample1;Texture Sample 1;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector4Node;37;-3417.081,979.5288;Inherit;False;Property;_TextureChannel;Texture Channel;1;0;Create;True;0;0;0;False;0;False;0,1,0,0;0,1,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DotProductOpNode;38;-3200.186,803.2869;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;23;-3523.992,90.94785;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;24;-3545.639,196.2182;Inherit;False;0;-1;4;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;128;-3466.341,386.0851;Inherit;False;Property;_Dissolve;Dissolve;32;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;45;-3037.81,804.4418;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;26;-3282.554,86.90255;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;109;-2691.135,56.00194;Inherit;False;1086.786;483.4392;Adjustments;9;66;69;68;65;59;53;56;62;49;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;50;-2873.009,104.5154;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;49;-2594.143,193.9429;Inherit;False;Property;_CorePower;Core Power;22;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;53;-2333.968,206.5723;Inherit;False;Property;_CoreIntensity;Core Intensity;23;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;56;-2442.052,106.002;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;62;-2641.135,423.4412;Inherit;False;Property;_GlowIntensity;Glow Intensity;26;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.VertexColorNode;55;-1616.964,-375.7467;Inherit;False;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;65;-2444.414,333.2482;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;59;-2149.864,112.4105;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ComponentMaskNode;60;-1424.456,-611.82;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;127;-1715.58,-164.1978;Inherit;False;Constant;_Value1;Value1;28;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;68;-1946.929,319.2549;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;126;-1539.58,-169.1978;Inherit;False;Property;_MeshVertexColor;MeshVertexColor;31;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;69;-1769.349,316.9807;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;73;-1235.613,-274.6995;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;72;-1258.878,-129.508;Inherit;False;Property;_AlphaBoldness;Alpha Boldness;28;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;132;-1014.519,-70.25574;Inherit;False;Property;_ValueStep;ValueStep;34;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;134;-1035.519,16.74426;Inherit;False;Property;_ValueStepAdd;ValueStepAdd;35;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;76;-1019.321,-203.2115;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;89;-1078.001,381.2035;Inherit;False;941;692.0367;Push Particle toward camera direction (no more glow clipping in the ground) | 0=Unabled;8;81;123;84;82;87;80;124;85;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SaturateNode;78;-835.6622,-273.9366;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;133;-865.5189,-4.255737;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.2;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;123;-1004.027,899.6945;Inherit;False;3;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;85;-992.0015,798.7557;Inherit;False;Property;_CameraDirPush;CameraDirPush;29;0;Create;True;0;0;0;False;0;False;0;-50;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;124;-730.7768,809.2678;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;129;-717.8678,-90.51944;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;1,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceCameraPos;81;-1028.001,628.7556;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldPosInputsNode;80;-952.7215,431.2033;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.CommentaryNode;107;-3369.499,-1186.259;Inherit;False;1654.745;429.7096;Color Texture;11;44;162;41;42;118;47;58;54;98;48;135;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;82;-724.0015,501.7557;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CommentaryNode;106;-5210.266,-687.5607;Inherit;False;1951.449;483.7219;Gradient Shape;12;165;14;100;21;27;19;16;117;12;25;11;20;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;87;-569.9038,809.6765;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;108;-3083.642,-749.4732;Inherit;False;1447.081;551.8389;Gradient Map;10;61;43;57;39;46;33;51;52;40;35;;1,1,1,1;0;0
Node;AmplifyShaderEditor.SaturateNode;131;-542.5189,-110.2557;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;58;-1937.755,-1125.614;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TexturePropertyNode;12;-5160.266,-636.6624;Inherit;True;Property;_GradientShape;Gradient Shape;5;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.GetLocalVarNode;117;-4373.788,-424.9778;Inherit;False;111;CustomUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ComponentMaskNode;219;-1066.993,-476.9891;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SaturateNode;137;-1436.527,-923.5192;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;173;-768,196.9;Inherit;False;Property;_DepthFadeIntensity;Depth Fade Intensity;37;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RadiansOpNode;47;-2958.626,-920.1301;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RotatorNode;19;-4407.559,-564.7294;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;122;-2989.266,369.5582;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;84;-349.0014,485.7556;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RadiansOpNode;14;-4595.559,-418.7293;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;16;-4678.559,-569.7295;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TextureCoordinatesNode;135;-1971.506,-895.2654;Inherit;False;3;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;39;-2692.187,-504.6342;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;35;-2846.187,-505.6342;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;100;-4190.427,-563.5316;Inherit;False;3;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;120;-3245.266,445.5583;Inherit;False;Property;_Vector0;Vector 0;18;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SaturateNode;66;-1771.097,115.7909;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;25;-3628.454,-467.5418;Inherit;False;2;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;75;-575.1819,-582.711;Inherit;False;Property;_Brightness;Brightness;27;0;Create;True;0;0;0;False;0;False;1;30;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;57;-2163.677,-514.5545;Inherit;True;Property;_TextureSample0;Texture Sample 0;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;71;-951.0202,-775.9909;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ComponentMaskNode;61;-1859.561,-515.1655;Inherit;False;True;True;True;False;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;63;-1250.177,-867.2894;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;171;-104.6,-283.4;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector4Node;21;-3970.491,-415.8389;Inherit;False;Property;_GradientShapeChannel;Gradient Shape Channel;6;0;Create;True;0;0;0;False;0;False;0,1,0,0;0,1,0,0;0;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TexturePropertyNode;51;-2449.447,-699.4732;Inherit;True;Property;_GradientMap;Gradient Map;15;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.LerpOp;67;-1108.567,-765.1617;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;162;-2732.463,-839.9899;Inherit;False;161;Disto;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;238;-240.7834,36.82932;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;130;-400.194,-282.6178;Inherit;False;Property;_Step;Step;33;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleTimeNode;121;-3236.266,372.5574;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;118;-2726.546,-922.5546;Inherit;False;111;CustomUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;32;-3226.523,-468.456;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;33;-3033.642,-464.3626;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;20;-4017.967,-637.5607;Inherit;True;Property;_TextureSample2;Texture Sample 2;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;46;-2608.188,-313.6343;Inherit;False;Property;_GradientMapDisplacement;Gradient Map Displacement;16;0;Create;True;0;0;0;False;0;False;0.1;0.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;43;-2511.188,-484.6341;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;64;-1324.719,-465.5314;Inherit;False;Property;_CoreColor;Core Color;25;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;54;-2266.235,-1124.69;Inherit;True;Property;_TextureSample4;Texture Sample 4;1;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SaturateNode;27;-3423.817,-469.0079;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;98;-2500.51,-1054.167;Inherit;False;3;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;165;-4347.927,-334.5757;Inherit;False;161;Disto;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;136;-1676.527,-954.5192;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RotatorNode;48;-2753.626,-1055.129;Inherit;False;3;0;FLOAT2;0,0;False;1;FLOAT2;0.5,0.5;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;44;-3037.626,-1058.129;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;41;-3202.626,-926.1298;Inherit;False;Property;_ColorRotation;Color Rotation;4;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;74;-760.4335,-861.5389;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;40;-2789.187,-400.6343;Inherit;False;Property;_InvertGradient;Invert Gradient;21;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;70;-997.174,-619.4721;Inherit;False;Property;_DifferentCoreColor;Different Core Color;24;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;52;-2324.188,-481.6342;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;79;-362.1823,-593.7109;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TexturePropertyNode;42;-3319.499,-1136.259;Inherit;True;Property;_ColorTexture;Color Texture;3;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;11;-4839.559,-424.7293;Inherit;False;Property;_GradientShapeRotation;Gradient Shape Rotation;7;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;77;-552.9362,-749.5464;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DepthFade;170;-512,128;Inherit;False;True;False;True;2;1;FLOAT3;0,0,0;False;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;232;152.0545,-449.7783;Float;False;False;-1;2;Rendering.HighDefinition.HDUnlitGUI;0;1;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;ShadowCaster;0;1;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;-26;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=ShadowCaster;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;233;152.0545,-449.7783;Float;False;False;-1;2;Rendering.HighDefinition.HDUnlitGUI;0;1;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;META;0;2;META;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;-1;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;234;152.0545,-449.7783;Float;False;False;-1;2;Rendering.HighDefinition.HDUnlitGUI;0;1;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;SceneSelectionPass;0;3;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;-26;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;False;False;True;1;False;-1;False;False;True;1;LightMode=SceneSelectionPass;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;235;152.0545,-449.7783;Float;False;False;-1;2;Rendering.HighDefinition.HDUnlitGUI;0;1;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;DepthForwardOnly;0;4;DepthForwardOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;-26;False;True;False;False;False;False;0;False;-1;False;False;False;False;False;False;False;True;True;0;True;-7;255;False;-1;255;True;-8;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;False;False;True;1;LightMode=DepthForwardOnly;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;237;152.0545,-449.7783;Float;False;False;-1;2;Rendering.HighDefinition.HDUnlitGUI;0;1;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;DistortionVectors;0;6;DistortionVectors;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;True;4;1;False;-1;1;False;-1;4;1;False;-1;1;False;-1;True;1;False;-1;1;False;-1;False;False;False;False;False;False;False;False;False;False;False;True;0;True;-26;False;False;False;False;False;False;False;False;False;True;True;0;True;-11;255;False;-1;255;True;-12;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;2;False;-1;True;3;False;-1;False;True;1;LightMode=DistortionVectors;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;236;152.0545,-449.7783;Float;False;False;-1;2;Rendering.HighDefinition.HDUnlitGUI;0;1;New Amplify Shader;7f5cb9c3ea6481f469fdd856555439ef;True;Motion Vectors;0;5;Motion Vectors;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;-26;False;False;False;False;False;False;False;False;False;True;True;0;True;-9;255;False;-1;255;True;-10;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;False;False;True;1;LightMode=MotionVectors;False;False;0;Hidden/InternalErrorShader;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;231;223.0545,-633.7783;Float;False;True;-1;2;Rendering.HighDefinition.HDUnlitGUI;0;15;/_Vefects_/T/SH_VFX_Vefects_DissolveAdd;7f5cb9c3ea6481f469fdd856555439ef;True;Forward Unlit;0;0;Forward Unlit;9;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;3;RenderPipeline=HDRenderPipeline;RenderType=Opaque=RenderType;Queue=Transparent=Queue=0;True;5;True;7;d3d11;metal;vulkan;xboxone;xboxseries;playstation;switch;0;False;True;1;0;True;-20;0;True;-21;1;0;True;-22;0;True;-23;False;False;False;False;False;False;False;False;False;False;False;False;True;0;True;-26;False;False;False;False;False;False;False;False;False;True;True;0;True;-5;255;False;-1;255;True;-6;7;False;-1;3;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;0;True;-24;True;0;True;-32;False;True;1;LightMode=ForwardOnly;False;False;0;Hidden/InternalErrorShader;0;0;Standard;29;Surface Type;1;  Rendering Pass ;0;  Rendering Pass;1;  Blending Mode;0;  Receive Fog;1;  Distortion;0;    Distortion Mode;0;    Distortion Only;1;  Depth Write;1;  Cull Mode;0;  Depth Test;4;Double-Sided;0;Alpha Clipping;0;Motion Vectors;1;  Add Precomputed Velocity;0;Shadow Matte;0;Cast Shadows;1;DOTS Instancing;0;GPU Instancing;1;Tessellation;0;  Phong;0;  Strength;0.5,False,-1;  Type;0;  Tess;16,False,-1;  Min;10,False,-1;  Max;25,False,-1;  Edge Length;16,False,-1;  Max Displacement;25,False,-1;Vertex Position,InvertActionOnDeselection;1;0;7;True;True;True;True;True;True;False;False;;False;0
WireConnection;113;1;114;0
WireConnection;113;0;110;0
WireConnection;154;2;146;0
WireConnection;111;0;113;0
WireConnection;152;0;150;0
WireConnection;158;0;153;0
WireConnection;158;1;151;0
WireConnection;156;2;146;0
WireConnection;155;0;154;0
WireConnection;155;2;152;0
WireConnection;159;0;155;0
WireConnection;159;1;156;4
WireConnection;159;2;157;0
WireConnection;159;3;158;0
WireConnection;148;0;146;0
WireConnection;148;1;159;0
WireConnection;149;0;148;0
WireConnection;149;1;147;0
WireConnection;160;0;149;0
WireConnection;163;0;160;0
WireConnection;163;1;164;0
WireConnection;3;0;1;0
WireConnection;4;2;2;0
WireConnection;161;0;163;0
WireConnection;92;0;90;0
WireConnection;92;1;91;0
WireConnection;5;2;2;0
WireConnection;6;0;4;0
WireConnection;6;2;3;0
WireConnection;7;0;6;0
WireConnection;7;1;5;4
WireConnection;7;2;116;0
WireConnection;7;3;92;0
WireConnection;7;4;166;0
WireConnection;8;0;2;0
WireConnection;8;1;7;0
WireConnection;10;0;8;0
WireConnection;10;1;9;0
WireConnection;30;0;29;0
WireConnection;13;0;10;0
WireConnection;31;2;28;0
WireConnection;96;0;95;0
WireConnection;96;1;93;0
WireConnection;15;0;13;0
WireConnection;34;0;31;0
WireConnection;34;2;30;0
WireConnection;18;0;15;0
WireConnection;94;0;34;0
WireConnection;94;1;96;0
WireConnection;94;2;119;0
WireConnection;94;3;167;0
WireConnection;22;0;13;0
WireConnection;22;1;18;0
WireConnection;22;2;17;0
WireConnection;36;0;28;0
WireConnection;36;1;94;0
WireConnection;38;0;36;0
WireConnection;38;1;37;0
WireConnection;23;0;22;0
WireConnection;45;0;38;0
WireConnection;26;0;23;0
WireConnection;26;1;24;3
WireConnection;26;2;128;0
WireConnection;50;0;26;0
WireConnection;50;1;45;0
WireConnection;56;0;50;0
WireConnection;56;1;49;0
WireConnection;65;0;50;0
WireConnection;65;1;62;0
WireConnection;59;0;56;0
WireConnection;59;1;53;0
WireConnection;60;0;55;0
WireConnection;68;0;59;0
WireConnection;68;1;65;0
WireConnection;126;1;127;0
WireConnection;126;0;60;0
WireConnection;69;0;68;0
WireConnection;73;0;55;4
WireConnection;73;1;69;0
WireConnection;73;2;126;0
WireConnection;76;0;73;0
WireConnection;76;1;72;0
WireConnection;78;0;76;0
WireConnection;133;0;132;0
WireConnection;133;1;134;0
WireConnection;124;0;85;0
WireConnection;124;1;123;2
WireConnection;129;0;78;0
WireConnection;129;1;132;0
WireConnection;129;2;133;0
WireConnection;82;0;80;0
WireConnection;82;1;81;0
WireConnection;87;0;124;0
WireConnection;131;0;129;0
WireConnection;58;0;54;0
WireConnection;219;0;64;0
WireConnection;137;0;136;0
WireConnection;47;0;41;0
WireConnection;19;0;16;0
WireConnection;19;2;14;0
WireConnection;122;0;121;0
WireConnection;122;1;120;0
WireConnection;84;0;82;0
WireConnection;84;1;87;0
WireConnection;14;0;11;0
WireConnection;16;2;12;0
WireConnection;39;0;35;0
WireConnection;35;0;33;0
WireConnection;100;0;19;0
WireConnection;100;1;117;0
WireConnection;100;2;165;0
WireConnection;66;0;59;0
WireConnection;25;0;20;0
WireConnection;25;1;21;0
WireConnection;57;0;51;0
WireConnection;57;1;52;0
WireConnection;71;0;67;0
WireConnection;61;0;57;0
WireConnection;63;0;137;0
WireConnection;63;1;61;0
WireConnection;63;2;60;0
WireConnection;171;0;130;0
WireConnection;171;1;238;0
WireConnection;67;0;63;0
WireConnection;67;1;219;0
WireConnection;67;2;66;0
WireConnection;238;0;170;0
WireConnection;130;1;78;0
WireConnection;130;0;131;0
WireConnection;32;0;27;0
WireConnection;32;1;26;0
WireConnection;33;0;32;0
WireConnection;20;0;12;0
WireConnection;20;1;100;0
WireConnection;43;0;39;0
WireConnection;43;1;33;0
WireConnection;43;2;40;0
WireConnection;54;0;42;0
WireConnection;54;1;98;0
WireConnection;27;0;25;0
WireConnection;98;0;48;0
WireConnection;98;1;118;0
WireConnection;98;2;162;0
WireConnection;136;0;58;0
WireConnection;136;1;135;1
WireConnection;48;0;44;0
WireConnection;48;2;47;0
WireConnection;44;2;42;0
WireConnection;74;0;63;0
WireConnection;74;1;71;0
WireConnection;74;2;70;0
WireConnection;52;0;43;0
WireConnection;52;1;46;0
WireConnection;79;0;77;0
WireConnection;79;1;75;0
WireConnection;77;0;74;0
WireConnection;170;0;173;0
WireConnection;231;0;77;0
WireConnection;231;1;79;0
WireConnection;231;2;130;0
WireConnection;231;6;84;0
ASEEND*/
//CHKSM=568AF92E70EF18AB17C117CEED7538B842D54763