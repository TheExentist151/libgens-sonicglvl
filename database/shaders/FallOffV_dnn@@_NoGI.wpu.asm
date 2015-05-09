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
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampNrm;
//   sampler2D sampNrm2;
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
//   mrgTexcoordIndex                      c26      2
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
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampNrm                               s3       1
//   sampNrm2                              s4       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, 0.5, -3
    def c1, 4, 0, 0, 0
    def c2, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl_color_pp v9.xyz
    dcl_2d s0
    dcl_2d s3
    dcl_2d s4
    dcl_2d s7
    dcl_2d s13
    frc r0.xy, c27
    cmp r0.zw, -r0.xyxy, c2.x, c2.y
    add r0.xy, -r0, c27
    mov r1.xy, c2
    cmp r0.zw, c27.xyxy, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c2
    add r0, r0.y, -c2
    cmp r1.zw, -r2_abs.x, v0.xyxy, c2.x
    cmp r1.zw, -r2_abs.y, v0, r1
    cmp r1.zw, -r2_abs.z, v1.xyxy, r1
    cmp r1.zw, -r2_abs.w, v1, r1
    texld_pp r2, r1.zwzw, s3
    mul_pp r2.x, r2.w, r2.x
    mad_pp r1.zw, r2.xyxy, c0.x, c0.y
    dp2add_pp r2.x, r1.zwzw, -r1.zwzw, c2.y
    rsq_pp r2.x, r2.x
    rcp_pp r2.x, r2.x
    nrm_pp r3.xyz, v8
    mul_pp r2.yzw, r1.w, r3.xxyz
    nrm_pp r4.xyz, v7
    mad_pp r2.yzw, r1.z, r4.xxyz, r2
    nrm_pp r5.xyz, v3
    mad_pp r2.xyz, r2.x, r5, r2.yzww
    cmp r1.zw, -r0_abs.x, v0.xyxy, c2.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.zwzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s4
    mul_pp r0.x, r0.w, r0.x
    mad_pp r0.xy, r0, c0.x, c0.y
    mul_pp r3.xyz, r3, r0.y
    mad_pp r3.xyz, r0.x, r4, r3
    dp2add_pp r0.x, r0, -r0, c2.y
    rsq_pp r0.x, r0.x
    rcp_pp r0.x, r0.x
    mad_pp r0.xyz, r0.x, r5, r3
    add_pp r0.xyz, r0, r2
    nrm_pp r2.xyz, r0
    add r0.xyz, -c42, v2
    dp3 r0.w, r0, r0
    rsq r0.w, r0.w
    mul_pp r0.xyz, r0.w, r0
    rcp r0.w, r0.w
    add r0.w, r0.w, -c44.z
    dp3_pp r0.x, r2, -r0
    mul_pp r3.xyz, r0.x, c43
    cmp_pp r0.xyz, r0.x, r3, c2.x
    add r1.z, -c44.z, c44.w
    rcp r1.z, r1.z
    mul_sat r0.w, r0.w, r1.z
    add_pp r0.w, -r0.w, c2.y
    mul_pp r0.xyz, r0, r0.w
    add r3.xyz, -c38, v2
    dp3 r0.w, r3, r3
    rsq r0.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    rcp r0.w, r0.w
    add r0.w, r0.w, -c40.z
    dp3_pp r1.z, r2, -r3
    mul_pp r3.xyz, r1.z, c39
    cmp_pp r3.xyz, r1.z, r3, c2.x
    add r1.z, -c40.z, c40.w
    rcp r1.z, r1.z
    mul_sat r0.w, r0.w, r1.z
    add_pp r0.w, -r0.w, c2.y
    mad_pp r0.xyz, r0.w, r3, r0
    add r3.xyz, -c46, v2
    dp3 r0.w, r3, r3
    rsq r0.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    rcp r0.w, r0.w
    add r0.w, r0.w, -c48.z
    dp3_pp r1.z, r2, -r3
    mul_pp r3.xyz, r1.z, c47
    cmp_pp r3.xyz, r1.z, r3, c2.x
    add r1.z, -c48.z, c48.w
    rcp r1.z, r1.z
    mul_sat r0.w, r0.w, r1.z
    add_pp r0.w, -r0.w, c2.y
    mad_pp r0.xyz, r0.w, r3, r0
    add r3.xyz, -c50, v2
    dp3 r0.w, r3, r3
    rsq r0.w, r0.w
    mul_pp r3.xyz, r0.w, r3
    rcp r0.w, r0.w
    add r0.w, r0.w, -c52.z
    dp3_pp r1.z, r2, -r3
    mul_pp r3.xyz, r1.z, c51
    cmp_pp r3.xyz, r1.z, r3, c2.x
    add r1.z, -c52.z, c52.w
    rcp r1.z, r1.z
    mul_sat r0.w, r0.w, r1.z
    add_pp r0.w, -r0.w, c2.y
    mad_pp r0.xyz, r0.w, r3, r0
    dp3_pp r0.w, r2, -c10
    mul r3.xyz, r0.w, c36
    max r1.z, v4.z, c2.x
    add r1.w, r1.z, -v4.w
    cmp r4.z, r1.w, c2.x, r1.z
    mov r4.xyw, v4
    texldp_pp r4, r4, s13
    max r1.z, v5.z, c2.x
    add r1.w, r1.z, -v5.w
    cmp r6.z, r1.w, c2.x, r1.z
    mov r6.xyw, v5
    texldp_pp r6, r6, s7
    min_pp r1.z, r6.x, r4.x
    lrp_pp r1.w, v6.z, c2.y, r6.x
    lrp_pp r2.w, v6.z, c2.y, r1.z
    rcp r1.z, v4.w
    mul r4.xy, r1.z, v4
    mad r4.xy, r4, c0.x, c0.y
    abs_sat r4.xy, r4
    add_sat r4.xy, r4, -c65.x
    mul r4.xy, r4, c65.y
    max r1.z, r4.x, r4.y
    lrp_pp r3.w, r1.z, c2.y, r2.w
    lrp_pp r2.w, r1.z, c2.y, r1.w
    mul_pp r1.z, r3.w, c77.w
    mul_pp r3.xyz, r1.z, r3
    cmp_pp r3.xyz, r0.w, r3, c2.x
    add_pp r0.xyz, r0, r3
    add_pp r0.w, -c61.z, c61.y
    rcp_pp r0.w, r0.w
    add r3.xyz, -c22, v2
    dp3 r1.z, r3, r3
    rsq r1.z, r1.z
    mul_pp r3.xyz, r1.z, r3
    rcp r1.z, r1.z
    add r1.z, r1.z, -c60.z
    dp3_pp r1.w, r3, c23
    dp3_pp r3.x, r2, -r3
    add_pp r1.w, r1.w, -c61.z
    mul_sat_pp r0.w, r0.w, r1.w
    mad_pp r1.w, r0.w, -c0.x, -c0.w
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r0.w, r1.w
    pow_sat_pp r1.w, r0.w, c61.w
    add r0.w, r1.y, -c61.x
    cmp_pp r0.w, r0.w, c2.y, r1.w
    add r1.w, -c60.z, c60.w
    rcp r1.w, r1.w
    mul_sat r1.z, r1.w, r1.z
    add_pp r1.z, -r1.z, c2.y
    cmp_pp r1.y, -c61.x, r1.y, r1.z
    mul_pp r0.w, r0.w, r1.y
    mul_pp r1.yzw, c58.w, c58.xxyz
    mul_pp r1.yzw, r3.x, r1
    cmp_pp r1.yzw, r3.x, r1, c2.x
    mad_pp r0.xyz, r0.w, r1.yzww, r0
    mad_pp r1.yzw, r2.xxyz, c0.z, c0.z
    mul_pp r2.xyz, r2, r2
    mov r3.xyz, c79
    add r3.xyz, -r3, c80
    mad r3.xyz, r1.z, r3, c79
    mul r3.xyz, r2.y, r3
    mov r4.xyz, c77
    add r4.xyz, -r4, c78
    mad r4.xyz, r1.y, r4, c77
    mad_pp r3.xyz, r2.x, r4, r3
    mov r4.xyz, c81
    add r4.xyz, -r4, c82
    mad r1.yzw, r1.w, r4.xxyz, c81.xxyz
    mad_pp r1.yzw, r2.z, r1, r3.xxyz
    mul_pp r2.xyz, r1.yzww, c17
    mul r2.xyz, r2, c70.w
    mad r1.yzw, r1, c17.xxyz, -r2.xxyz
    mad_pp r1.yzw, r2.w, r1, r2.xxyz
    add_pp r0.xyz, r0, r1.yzww
    mul_pp r0.xyz, r0, c16
    frc r0.w, c26.x
    cmp r1.y, -r0.w, c2.x, c2.y
    add r0.w, -r0.w, c26.x
    cmp r1.x, c26.x, r1.x, r1.y
    add r0.w, r0.w, r1.x
    add r1, r0.w, -c2
    cmp r2.xy, -r1_abs.x, v0, c2.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r2
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    add_pp r2.xyz, c22, -v2
    nrm_pp r3.xyz, r2
    dp3_pp r0.w, r5, r3
    add_pp r2.x, -r0.w, c2.y
    cmp_pp r0.w, r0.w, r2.x, c2.y
    mul_pp r0.w, r0.w, r0.w
    mul_pp r2.xyz, r0.w, v9
    mad_pp r0.xyz, r0, r1, r2
    mul_pp r1.x, r1.w, c16.w
    mul_pp r0.w, r1.x, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c1.x
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 211 instruction slots used (5 texture, 206 arithmetic)
