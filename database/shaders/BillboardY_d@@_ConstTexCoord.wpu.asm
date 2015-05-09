//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_GI0Scale;
//   float4 g_GI1Scale;
//   sampler2D g_GISampler;
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgLocalLight0_Color;
//   float4 mrgLocalLight0_Position;
//   float4 mrgLocalLight0_Range;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   sampler2D sampDif;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgLocalLight0_Position               c38      1
//   mrgLocalLight0_Color                  c39      1
//   mrgLocalLight0_Range                  c40      1
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 0
    def c1, 1, 2, -1, -3
    def c2, 4, 0, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3
    dcl_texcoord5_pp v4.xyz
    dcl_color_pp v5
    dcl_2d s0
    dcl_2d s10
    dcl_2d s13
    add r0.x, -c40.z, c40.w
    rcp r0.x, r0.x
    add r0.yzw, -c38.xxyz, v1.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    rcp r1.y, r1.x
    mul_pp r0.yzw, r0, r1.x
    add r1.x, r1.y, -c40.z
    mul_sat r0.x, r0.x, r1.x
    add_pp r0.x, -r0.x, c1.x
    add r1.x, -c44.z, c44.w
    rcp r1.x, r1.x
    add r1.yzw, -c42.xxyz, v1.xxyz
    dp3 r2.x, r1.yzww, r1.yzww
    rsq r2.x, r2.x
    rcp r2.y, r2.x
    mul_pp r1.yzw, r1, r2.x
    add r2.x, r2.y, -c44.z
    mul_sat r1.x, r1.x, r2.x
    add_pp r1.x, -r1.x, c1.x
    nrm_pp r2.xyz, v2
    dp3_pp r1.y, r2, -r1.yzww
    mul_pp r3.xyz, r1.y, c43
    cmp_pp r1.yzw, r1.y, r3.xxyz, c0.w
    mul_pp r1.xyz, r1.yzww, r1.x
    dp3_pp r0.y, r2, -r0.yzww
    mul_pp r3.xyz, r0.y, c39
    cmp_pp r0.yzw, r0.y, r3.xxyz, c0.w
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    add r0.w, -c48.z, c48.w
    rcp r0.w, r0.w
    add r1.xyz, -c46, v1
    dp3 r1.w, r1, r1
    rsq r1.w, r1.w
    rcp r2.w, r1.w
    mul_pp r1.xyz, r1.w, r1
    dp3_pp r1.x, r2, -r1
    add r1.y, r2.w, -c48.z
    mul_sat r0.w, r0.w, r1.y
    add_pp r0.w, -r0.w, c1.x
    mul_pp r1.yzw, r1.x, c47.xxyz
    cmp_pp r1.xyz, r1.x, r1.yzww, c0.w
    mad_pp r0.xyz, r0.w, r1, r0
    add r0.w, -c52.z, c52.w
    rcp r0.w, r0.w
    add r1.xyz, -c50, v1
    dp3 r1.w, r1, r1
    rsq r1.w, r1.w
    rcp r2.w, r1.w
    mul_pp r1.xyz, r1.w, r1
    dp3_pp r1.x, r2, -r1
    add r1.y, r2.w, -c52.z
    mul_sat r0.w, r0.w, r1.y
    add_pp r0.w, -r0.w, c1.x
    mul_pp r1.yzw, r1.x, c51.xxyz
    cmp_pp r1.xyz, r1.x, r1.yzww, c0.w
    mad_pp r0.xyz, r0.w, r1, r0
    rcp r0.w, v3.w
    mul r1.xy, r0.w, v3
    mad r1.xy, r1, c1.y, c1.z
    abs_sat r1.xy, r1
    add_sat r1.xy, r1, -c65.x
    mul r1.xy, r1, c65.y
    max r0.w, r1.x, r1.y
    max r1.x, v3.z, c0.w
    add r1.y, r1.x, -v3.w
    cmp r1.z, r1.y, c0.w, r1.x
    mov r1.xyw, v3
    texldp_pp r1, r1, s13
    lrp_pp r2.w, v4.z, c1.x, r1.x
    lrp_pp r1.x, r0.w, c1.x, r2.w
    texld_pp r3, v0.zwzw, s10
    mul_pp r0.w, r1.x, r3.w
    dp3_pp r1.y, r2, -c10
    mul r4.xyz, r1.y, c36
    mul_pp r4.xyz, r0.w, r4
    cmp_pp r1.yzw, r1.y, r4.xxyz, c0.w
    add_pp r0.xyz, r0, r1.yzww
    add_pp r0.w, -c61.z, c61.y
    rcp_pp r0.w, r0.w
    add r1.yzw, -c22.xxyz, v1.xxyz
    dp3 r2.w, r1.yzww, r1.yzww
    rsq r2.w, r2.w
    mul_pp r1.yzw, r1, r2.w
    rcp r2.w, r2.w
    add r2.w, r2.w, -c60.z
    dp3_pp r3.w, r1.yzww, c23
    dp3_pp r1.y, r2, -r1.yzww
    add_pp r1.z, r3.w, -c61.z
    mul_sat_pp r0.w, r0.w, r1.z
    mad_pp r1.z, r0.w, -c1.y, -c1.w
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r0.w, r1.z
    pow_sat_pp r1.z, r0.w, c61.w
    mov r2.x, c1.x
    add r0.w, r2.x, -c61.x
    cmp_pp r0.w, r0.w, c1.x, r1.z
    add r1.z, -c60.z, c60.w
    rcp r1.z, r1.z
    mul_sat r1.z, r1.z, r2.w
    add_pp r1.z, -r1.z, c1.x
    cmp_pp r1.z, -c61.x, r2.x, r1.z
    mul_pp r0.w, r0.w, r1.z
    mul_pp r2.xyz, c58.w, c58
    mul_pp r2.xyz, r1.y, r2
    cmp_pp r1.yzw, r1.y, r2.xxyz, c0.w
    mad_pp r0.xyz, r0.w, r1.yzww, r0
    mul_pp r1.yzw, r3.xxyz, r3.xxyz
    dp3_pp r0.w, r1.yzww, c0
    mad_pp r1.yzw, r3.xxyz, r3.xxyz, -r0.w
    mad_sat_pp r1.yzw, r1, c71.w, r0.w
    mul_pp r1.yzw, r1, c70.xxyz
    mul_pp r2.xyz, r1.yzww, c17
    mul r2.xyz, r2, c70.w
    mad r1.yzw, r1, c17.xxyz, -r2.xxyz
    mad_pp r1.xyz, r1.x, r1.yzww, r2
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    texld_pp r1, v0, s0
    mul_pp r0.xyz, r0, r1
    mul_pp r0.w, r1.w, c16.w
    mul_pp r0.w, r0.w, v5.w
    mul_pp r1.w, r0.w, c21.x
    mul_pp r1.xyz, r0, v5
    mul_pp r0, r1, c89
    min_pp r1, r0, c2.x
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 133 instruction slots used (3 texture, 130 arithmetic)
