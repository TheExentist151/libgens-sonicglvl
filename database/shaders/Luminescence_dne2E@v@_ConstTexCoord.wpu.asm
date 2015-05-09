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
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   float4 g_ViewportSize;
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
//   float4 mrgPlayableParam;
//   sampler2D sampDif;
//   sampler2D sampEmi;
//   samplerCUBE sampEnv;
//   sampler2D sampNrm;
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
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampNrm                               s3       1
//   sampEmi                               s4       1
//   sampEnv                               s5       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 2, -1, 1
    def c1, 0.298900008, 0.586600006, 0.114399999, 0
    def c2, -2, 3, 500, 5
    def c3, 1024, 4, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord5_pp v4.xyz
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.y
    dcl_2d s0
    dcl_2d s3
    dcl_2d s4
    dcl_cube s5
    dcl_2d s10
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
    mov_pp r1.w, c0.w
    add r0.x, r1.w, -c61.x
    cmp_pp r0.x, r0.x, c0.w, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c0.w
    cmp_pp r1.x, -c61.x, r1.w, r1.x
    mul_pp r0.x, r0.x, r1.x
    add r1.x, -c52.z, c52.w
    rcp r1.x, r1.x
    add r1.yzw, -c50.xxyz, v1.xxyz
    dp3 r2.x, r1.yzww, r1.yzww
    rsq r2.x, r2.x
    rcp r2.y, r2.x
    mul_pp r1.yzw, r1, r2.x
    add r2.x, r2.y, -c52.z
    mul_sat r1.x, r1.x, r2.x
    add_pp r1.x, -r1.x, c0.w
    add r2.x, -c48.z, c48.w
    rcp r2.x, r2.x
    add r2.yzw, -c46.xxyz, v1.xxyz
    dp3 r3.x, r2.yzww, r2.yzww
    rsq r3.x, r3.x
    rcp r3.y, r3.x
    mul_pp r2.yzw, r2, r3.x
    add r3.x, r3.y, -c48.z
    mul_sat r2.x, r2.x, r3.x
    add_pp r2.x, -r2.x, c0.w
    add r3.x, -c40.z, c40.w
    rcp r3.x, r3.x
    add r3.yzw, -c38.xxyz, v1.xxyz
    dp3 r4.x, r3.yzww, r3.yzww
    rsq r4.x, r4.x
    rcp r4.y, r4.x
    mul_pp r3.yzw, r3, r4.x
    add r4.x, r4.y, -c40.z
    mul_sat r3.x, r3.x, r4.x
    add_pp r3.x, -r3.x, c0.w
    add r4.x, -c44.z, c44.w
    rcp r4.x, r4.x
    add r4.yzw, -c42.xxyz, v1.xxyz
    dp3 r5.x, r4.yzww, r4.yzww
    rsq r5.x, r5.x
    rcp r5.y, r5.x
    mul_pp r4.yzw, r4, r5.x
    add r5.x, r5.y, -c44.z
    mul_sat r4.x, r4.x, r5.x
    add_pp r4.x, -r4.x, c0.w
    nrm_pp r5.xyz, v6
    texld_pp r6, v0, s3
    mul_pp r6.x, r6.w, r6.x
    mad_pp r6.xy, r6, c0.y, c0.z
    mul_pp r5.xyz, r5, r6.y
    nrm_pp r7.xyz, v5
    mad_pp r5.xyz, r6.x, r7, r5
    dp2add_pp r5.w, r6, -r6, c0.w
    rsq_pp r5.w, r5.w
    rcp_pp r5.w, r5.w
    nrm_pp r6.xyz, v2
    mad r5.xyz, r5.w, r6, r5
    add_pp r6.xyz, c22, -v1
    dp3_pp r5.w, r6, r6
    rsq_pp r5.w, r5.w
    mad_pp r7.xyz, r6, r5.w, -r4.yzww
    dp3_pp r4.y, r5, -r4.yzww
    nrm_pp r8.xyz, r7
    dp3_sat_pp r4.z, r8, r5
    mov_pp r7.zw, c2
    mul_pp r7.xy, r7.zwzw, c20.yzzw
    max_pp r4.w, r7.x, c0.w
    min r6.w, r4.w, c3.x
    pow r7.x, r4.z, r6.w
    mul_pp r8.xyz, r7.y, c43
    mul_pp r7.xzw, r7.x, r8.xyyz
    mul_pp r7.xzw, r4.x, r7
    mad_pp r8.xyz, r6, r5.w, -r3.yzww
    dp3_pp r3.y, r5, -r3.yzww
    nrm_pp r9.xyz, r8
    dp3_sat_pp r3.z, r9, r5
    pow r4.z, r3.z, r6.w
    mul_pp r8.xyz, r7.y, c39
    mul_pp r8.xyz, r4.z, r8
    mad_pp r7.xzw, r3.x, r8.xyyz, r7
    mad_pp r8.xyz, r6, r5.w, -r2.yzww
    dp3_pp r2.y, r5, -r2.yzww
    nrm_pp r9.xyz, r8
    dp3_sat_pp r2.z, r9, r5
    pow r3.z, r2.z, r6.w
    mul_pp r8.xyz, r7.y, c47
    mul_pp r8.xyz, r3.z, r8
    mad_pp r7.xzw, r2.x, r8.xyyz, r7
    mad_pp r8.xyz, r6, r5.w, -r1.yzww
    dp3_pp r1.y, r5, -r1.yzww
    nrm_pp r9.xyz, r8
    dp3_sat_pp r1.z, r9, r5
    pow r2.z, r1.z, r6.w
    mul_pp r8.xyz, r7.y, c51
    mul_pp r8.xyz, r2.z, r8
    mad_pp r7.xzw, r1.x, r8.xyyz, r7
    rcp r1.z, v3.w
    mul r1.zw, r1.z, v3.xyxy
    mad r1.zw, r1, c0.y, c0.z
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.z, r1.z, r1.w
    max r1.z, v3.z, c1.w
    add r1.w, r1.z, -v3.w
    cmp r8.z, r1.w, c1.w, r1.z
    mov r8.xyw, v3
    texldp_pp r8, r8, s13
    lrp_pp r1.z, v4.z, c0.w, r8.x
    lrp_pp r3.z, r2.z, c0.w, r1.z
    texld_pp r8, v0.zwzw, s10
    mul r1.z, r3.z, r8.w
    mul_pp r9.xyz, r7.y, c37
    mad_pp r10.xyz, r6, r5.w, -c10
    nrm_pp r11.xyz, r10
    dp3_sat_pp r1.w, r11, r5
    pow r2.z, r1.w, r6.w
    mul_pp r9.xyz, r2.z, r9
    mad_pp r7.xzw, r9.xyyz, r1.z, r7
    mul_pp r9.xyz, c59.w, c59
    mul_pp r9.xyz, r7.y, r9
    mad_pp r10.xyz, r6, r5.w, -r0.yzww
    dp3_pp r0.y, r5, -r0.yzww
    mul r6.xyz, r5.w, r6
    nrm_pp r11.xyz, r10
    dp3_sat_pp r0.z, r11, r5
    pow r1.w, r0.z, r6.w
    mul_pp r9.xyz, r1.w, r9
    mad_pp r7.xyz, r0.x, r9, r7.xzww
    dp3 r0.z, -r6, r5
    add r0.z, r0.z, r0.z
    mad_pp r6.xyz, r5, -r0.z, -r6
    dp3_pp r0.z, r5, -c10
    texld_pp r5, r6, s5
    mul r6.xyz, r5, c63.x
    mad_pp r5.xyz, r6, r5.w, r5
    mul r0.w, c64.z, c64.x
    mov r6.xz, c64
    mad r1.w, r6.x, -r6.z, r6.z
    mad_pp r0.w, r1.z, r1.w, r0.w
    mul_pp r5.xyz, r0.w, r5
    mad_pp r5.xyz, r7, c18, r5
    mul_pp r5.xyz, r5, v2.w
    mul_pp r6.xyz, r4.y, c43
    cmp_pp r4.yzw, r4.y, r6.xxyz, c1.w
    mul_pp r4.xyz, r4.yzww, r4.x
    mul_pp r6.xyz, r3.y, c39
    cmp_pp r6.xyz, r3.y, r6, c1.w
    mad_pp r3.xyw, r3.x, r6.xyzz, r4.xyzz
    mul_pp r4.xyz, r2.y, c47
    cmp_pp r2.yzw, r2.y, r4.xxyz, c1.w
    mad_pp r2.xyz, r2.x, r2.yzww, r3.xyww
    mul_pp r3.xyw, r1.y, c51.xyzz
    cmp_pp r3.xyw, r1.y, r3, c1.w
    mad_pp r1.xyw, r1.x, r3, r2.xyzz
    mul r2.xyz, r0.z, c36
    mul_pp r2.xyz, r1.z, r2
    cmp_pp r2.xyz, r0.z, r2, c1.w
    add_pp r1.xyz, r1.xyww, r2
    mul_pp r2.xyz, c58.w, c58
    mul_pp r2.xyz, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2.xxyz, c1.w
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mul_pp r1.xyz, r8, r8
    dp3_pp r0.w, r1, c1
    mad_pp r1.xyz, r8, r8, -r0.w
    mad_sat_pp r1.xyz, r1, c71.w, r0.w
    mul_pp r2.xyz, r1, c70
    mul r2.xyz, r2, c70.w
    mad r1.xyz, r1, c70, -r2
    mad_pp r1.xyz, r3.z, r1, r2
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    add r0.w, c0.x, vPos.y
    mov r1.x, c86.x
    mad r0.w, r0.w, c24.w, -r1.x
    mul_sat_pp r0.w, r0.w, c86.y
    texld_pp r1, v0, s0
    add_pp r1.xyz, r1, c0.z
    mul_pp r1.w, r1.w, c16.w
    mul_pp r1.w, r1.w, v7.w
    mul_pp r2.w, r1.w, c21.x
    mad_pp r1.xyz, r1, r0.w, c0.w
    mad_pp r0.xyz, r0, r1, r5
    texld_pp r1, v0, s4
    mul_pp r1.xyz, r1, c17
    mad_pp r0.xyz, r1, r0.w, r0
    mul_pp r2.xyz, r0, v7
    mul_pp r0, r2, c89
    min_pp r1, r0, c3.y
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 245 instruction slots used (6 texture, 239 arithmetic)
