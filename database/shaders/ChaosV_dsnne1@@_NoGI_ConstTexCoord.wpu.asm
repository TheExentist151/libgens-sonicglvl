//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_ChaosWaveParamEx;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   sampler2D g_FramebufferSampler;
//   float4 g_GI0Scale;
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_SonicSkinFalloffParam;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
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
//   float4 mrgLuminanceRange;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampNrm2;
//   sampler2D sampSpec;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   g_ViewportSize                        c24      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
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
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   g_SonicSkinFalloffParam               c150     1
//   g_ChaosWaveParamEx                    c151     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampNrm                               s2       1
//   sampNrm2                              s3       1
//   sampEnv                               s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_FramebufferSampler                  s11      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, 1, 0.5
    def c1, 0, -0.0500000007, 1.05263162, 1024
    def c2, -2, 3, 500, 5
    def c3, 0.5, -0.5, 4, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s5
    dcl_2d s7
    dcl_2d s11
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v1.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c2.x, c2.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.yz, c0
    add r0.x, r2.z, -c61.x
    cmp_pp r0.x, r0.x, c0.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c0.z
    cmp_pp r1.x, -c61.x, r2.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v3.z, c1.x
    add r1.y, r1.x, -v3.w
    cmp r1.z, r1.y, c1.x, r1.x
    mov r1.xyw, v3
    texldp_pp r1, r1, s13
    max r1.y, v4.z, c1.x
    add r1.z, r1.y, -v4.w
    cmp r3.z, r1.z, c1.x, r1.y
    mov r3.xyw, v4
    texldp_pp r3, r3, s7
    min_pp r2.x, r3.x, r1.x
    lrp_pp r1.x, v5.z, c0.z, r3.x
    lrp_pp r1.y, v5.z, c0.z, r2.x
    rcp r1.z, v3.w
    mul r1.zw, r1.z, v3.xyxy
    mad r1.zw, r1, c0.x, c0.y
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.x, r1.z, r1.w
    lrp_pp r3.x, r2.x, c0.z, r1.y
    lrp_pp r3.y, r2.x, c0.z, r1.x
    mul r1.x, r3.x, c77.w
    add r1.y, -c52.z, c52.w
    rcp r1.y, r1.y
    add r2.xzw, -c50.xyyz, v1.xyyz
    dp3 r1.z, r2.xzww, r2.xzww
    rsq r1.z, r1.z
    rcp r1.w, r1.z
    mul_pp r2.xzw, r1.z, r2
    add r1.z, r1.w, -c52.z
    mul_sat r1.y, r1.y, r1.z
    add r1.z, -c48.z, c48.w
    rcp r1.z, r1.z
    add r3.xzw, -c46.xyyz, v1.xyyz
    dp3 r1.w, r3.xzww, r3.xzww
    rsq r1.w, r1.w
    rcp r4.x, r1.w
    mul_pp r3.xzw, r1.w, r3
    add r1.w, r4.x, -c48.z
    mul_sat r1.z, r1.z, r1.w
    add r1.w, -c40.z, c40.w
    rcp r1.w, r1.w
    add r4.xyz, -c38, v1
    dp3 r4.w, r4, r4
    rsq r4.w, r4.w
    rcp r5.x, r4.w
    mul_pp r4.xyz, r4.w, r4
    add r4.w, r5.x, -c40.z
    mul_sat r1.w, r1.w, r4.w
    add_pp r1.yzw, -r1, c0.z
    add r4.w, -c44.z, c44.w
    rcp r4.w, r4.w
    add r5.xyz, -c42, v1
    dp3 r5.w, r5, r5
    rsq r5.w, r5.w
    rcp r6.x, r5.w
    mul_pp r5.xyz, r5.w, r5
    add r5.w, r6.x, -c44.z
    mul_sat r4.w, r4.w, r5.w
    add_pp r4.w, -r4.w, c0.z
    texld_pp r6, v0, s2
    mul_pp r6.x, r6.w, r6.x
    mad_pp r6.xy, r6, c0.x, c0.y
    dp2add_pp r5.w, r6, -r6, c0.z
    rsq_pp r5.w, r5.w
    rcp_pp r5.w, r5.w
    nrm_pp r7.xyz, v7
    mul_pp r6.yzw, r6.y, r7.xxyz
    nrm_pp r8.xyz, v6
    mad_pp r6.xyz, r6.x, r8, r6.yzww
    nrm_pp r9.xyz, v2
    mad_pp r6.xyz, r5.w, r9, r6
    texld_pp r10, v0, s3
    mul_pp r10.x, r10.w, r10.x
    mad_pp r10.xy, r10, c0.x, c0.y
    mul_pp r7.xyz, r7, r10.y
    mad_pp r7.xyz, r10.x, r8, r7
    dp2add_pp r5.w, r10, -r10, c0.z
    rsq_pp r5.w, r5.w
    rcp_pp r5.w, r5.w
    mad_pp r7.xyz, r5.w, r9, r7
    add_pp r6.xyz, r6, r7
    nrm_pp r7.xyz, r6
    add_pp r6.xyz, c22, -v1
    dp3_pp r5.w, r6, r6
    rsq_pp r5.w, r5.w
    mad_pp r8.xyz, r6, r5.w, -r5
    dp3_pp r5.x, r7, -r5
    add_pp r5.x, r5.x, c1.y
    mul_sat_pp r5.x, r5.x, c1.z
    mul_pp r5.xyz, r5.x, c43
    mul_pp r5.xyz, r4.w, r5
    nrm_pp r9.xyz, r8
    dp3_sat_pp r6.w, r9, r7
    mov_pp r8.zw, c2
    mul_pp r8.xy, r8.zwzw, c20.yzzw
    max_pp r7.w, r8.x, c0.z
    min r8.x, r7.w, c1.w
    pow r7.w, r6.w, r8.x
    mul_pp r9.xyz, r8.y, c43
    mul_pp r9.xyz, r7.w, r9
    mul_pp r9.xyz, r4.w, r9
    mad_pp r10.xyz, r6, r5.w, -r4
    dp3_pp r4.x, r7, -r4
    add_pp r4.x, r4.x, c1.y
    mul_sat_pp r4.x, r4.x, c1.z
    mul_pp r4.xyz, r4.x, c39
    mad_pp r4.xyz, r1.w, r4, r5
    nrm_pp r5.xyz, r10
    dp3_sat_pp r4.w, r5, r7
    pow r5.x, r4.w, r8.x
    mul_pp r10.xyz, r8.y, c39
    mul_pp r5.xyz, r5.x, r10
    mad_pp r5.xyz, r1.w, r5, r9
    mad_pp r9.xyz, r6, r5.w, -r3.xzww
    dp3_pp r1.w, r7, -r3.xzww
    add_pp r1.w, r1.w, c1.y
    mul_sat_pp r1.w, r1.w, c1.z
    mul_pp r3.xzw, r1.w, c47.xyyz
    mad_pp r3.xzw, r1.z, r3, r4.xyyz
    nrm_pp r4.xyz, r9
    dp3_sat_pp r1.w, r4, r7
    pow r4.x, r1.w, r8.x
    mul_pp r4.yzw, r8.y, c47.xxyz
    mul_pp r4.xyz, r4.x, r4.yzww
    mad_pp r4.xyz, r1.z, r4, r5
    mad_pp r5.xyz, r6, r5.w, -r2.xzww
    dp3_pp r1.z, r7, -r2.xzww
    add_pp r1.z, r1.z, c1.y
    mul_sat_pp r1.z, r1.z, c1.z
    mul_pp r2.xzw, r1.z, c51.xyyz
    mad_pp r2.xzw, r1.y, r2, r3
    nrm_pp r9.xyz, r5
    dp3_sat_pp r1.z, r9, r7
    pow r3.x, r1.z, r8.x
    mul_pp r5.xyz, r8.y, c51
    mul_pp r3.xzw, r3.x, r5.xyyz
    mad_pp r1.yzw, r1.y, r3.xxzw, r4.xxyz
    mul_pp r3.xzw, r8.y, c37.xyyz
    mad_pp r4.xyz, r6, r5.w, -c10
    nrm_pp r5.xyz, r4
    dp3_sat_pp r4.x, r5, r7
    pow r5.x, r4.x, r8.x
    mul_pp r3.xzw, r3, r5.x
    mad_pp r1.yzw, r3.xxzw, r1.x, r1
    mul_pp r3.xzw, c59.w, c59.xyyz
    mul_pp r3.xzw, r8.y, r3
    mad_pp r4.xyz, r6, r5.w, -r0.yzww
    dp3_pp r0.y, r7, -r0.yzww
    add_pp r0.y, r0.y, c1.y
    mul_pp r5.xyz, r5.w, r6
    nrm_pp r6.xyz, r4
    dp3_sat_pp r0.z, r6, r7
    pow r4.x, r0.z, r8.x
    mul_pp r3.xzw, r3, r4.x
    mad_pp r1.yzw, r0.x, r3.xxzw, r1
    mul_pp r1.yzw, r1, c18.xxyz
    mul r0.z, c64.z, c64.x
    mov r3.xz, c64
    mad r0.w, r3.x, -r3.z, r3.z
    mad_pp r0.z, r1.x, r0.w, r0.z
    mul r4, r7.y, c91
    mad r4, r7.x, c90, r4
    mad r4, r7.z, c92, r4
    dp4 r0.w, r4, r4
    rsq r0.w, r0.w
    mul r3.xz, r0.w, r4.xyyw
    mad_pp r3.xz, r3, c3.xyyw, c3.x
    texld_pp r6, r3.xzzw, s5
    mul r3.xzw, r6.xyyz, c63.x
    mad_pp r3.xzw, r3, r6.w, r6.xyyz
    texld_pp r6, v0, s1
    mul_pp r3.xzw, r3, r6.w
    mul_pp r3.xzw, r0.z, r3
    mul_pp r3.xzw, r3, c17.xyyz
    mad_pp r1.yzw, r1, r6.xxyz, r3.xxzw
    dp3_pp r0.z, r7, -c10
    add_pp r0.z, r0.z, c1.y
    mul_sat_pp r0.yz, r0, c1.z
    mul_pp r3.xzw, r0.z, c36.xyyz
    mad_pp r2.xzw, r3, r1.x, r2
    mad r0.z, r1.x, c0.w, c0.w
    mul r3.xzw, c58.w, c58.xyyz
    mul_pp r3.xzw, r0.y, r3
    mad_pp r0.xyw, r0.x, r3.xzzw, r2.xzzw
    mul_pp r2.xzw, r7.xyyz, r7.xyyz
    mad_pp r3.xzw, r7.xyyz, c0.w, c0.w
    mov r6.xyz, c79
    add r6.xyz, -r6, c80
    mad r8.xyz, r3.z, r6, c79
    mul r8.xyz, r2.z, r8
    mov r9.xyz, c77
    add r9.xyz, -r9, c78
    mad r10.xyz, r3.x, r9, c77
    mad_pp r8.xyz, r2.x, r10, r8
    mov r10.xyz, c81
    add r10.xyz, -r10, c82
    mad r3.xzw, r3.w, r10.xyyz, c81.xyyz
    mad_pp r2.xzw, r2.w, r3, r8.xyyz
    mul_pp r3.xzw, r2, c17.xyyz
    mul r3.xzw, r3, c70.w
    mad r2.xzw, r2, c17.xyyz, -r3
    mad_pp r2.xzw, r3.y, r2, r3
    add_pp r0.xyw, r0, r2.xzzw
    mul_pp r0.xyw, r0, c16.xyzz
    mul r1.x, c24.w, vPos.y
    mad_pp r3.y, r1.x, -c0.x, -c0.y
    dp2add_pp r3.x, vPos.x, c24.z, r2.y
    mad_pp r2.xy, r4, c151.y, r3
    mad r2.xy, r2, c3, c3.x
    texld_pp r2, r2, s11
    texld_pp r3, v0, s0
    mad_pp r0.xyw, r0, r3.xyzz, -r2.xyzz
    mad_pp r0.xyw, v8.w, r0, r2.xyzz
    mad_pp r0.xyw, r1.yzzw, v2.w, r0
    mul_pp r1.x, r3.w, c16.w
    mul_pp r1.w, r1.x, c21.x
    dp3_pp r2.x, r5, r7
    add_sat_pp r2.y, -r2.x, c0.z
    add_pp r2.x, r2.x, r2.x
    mad_pp r2.xzw, r2.x, r7.xyyz, -r5.xyyz
    pow_pp r3.x, r2.y, c150.z
    mul r2.y, r3.x, c150.y
    mad_pp r0.z, r2.y, r0.z, c150.x
    mad_pp r3.xyz, r2.xzww, c0.w, c0.w
    mul_pp r2.xyz, r2.xzww, r2.xzww
    mad r4.xyz, r3.y, r6, c79
    mul r4.xyz, r2.y, r4
    mad r3.xyw, r3.x, r9.xyzz, c77.xyzz
    mad r5.xyz, r3.z, r10, c81
    mad_pp r2.xyw, r2.x, r3, r4.xyzz
    mad_pp r2.xyz, r2.z, r5, r2.xyww
    mad_pp r0.xyz, r2, r0.z, r0.xyww
    add_pp r1.xyz, r0, v8
    mul_pp r0, r1, c89
    min_pp r1, r0, c3.z
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 303 instruction slots used (8 texture, 295 arithmetic)
