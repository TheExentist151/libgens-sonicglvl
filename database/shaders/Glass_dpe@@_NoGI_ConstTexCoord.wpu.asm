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
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float2 mrgFresnelParam;
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
//   sampler2D sampPow;
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
//   mrgFresnelParam                       c62      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampPow                               s2       1
//   sampEnv                               s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, -1, 1, 0, 0.5
    def c1, -2, 3, 500, 5
    def c2, 1024, 1, -1, 0
    def c3, 0.25, 4, 0, 0
    def c4, 0.5, 0, 1, -2
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_2d s0
    dcl_2d s2
    dcl_2d s5
    dcl_2d s7
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
    mad_pp r1.y, r0.x, c1.x, c1.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r1.z, c4.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c4.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c4.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v3.z, c4.y
    add r1.y, r1.x, -v3.w
    cmp r2.z, r1.y, c4.y, r1.x
    mov r2.xyw, v3
    texldp_pp r2, r2, s13
    max r1.x, v4.z, c4.y
    add r1.y, r1.x, -v4.w
    cmp r3.z, r1.y, c4.y, r1.x
    mov r3.xyw, v4
    texldp_pp r3, r3, s7
    min_pp r1.x, r3.x, r2.x
    lrp_pp r1.y, v5.z, c4.z, r3.x
    lrp_pp r2.x, v5.z, c4.z, r1.x
    rcp r1.x, v3.w
    mul r1.xw, r1.x, v3.xyzy
    mad r1.xw, r1, -c4.w, -c4.z
    abs_sat r1.xw, r1
    add_sat r1.xw, r1, -c65.x
    mul r1.xw, r1, c65.y
    max r2.y, r1.x, r1.w
    lrp_pp r1.x, r2.y, c4.z, r2.x
    lrp_pp r3.x, r2.y, c4.z, r1.y
    mul r1.x, r1.x, c77.w
    add r1.y, -c52.z, c52.w
    rcp r1.y, r1.y
    add r2.xyz, -c50, v1
    dp3 r1.w, r2, r2
    rsq r1.w, r1.w
    rcp r2.w, r1.w
    mul_pp r2.xyz, r1.w, r2
    add r1.w, r2.w, -c52.z
    mul_sat r1.y, r1.y, r1.w
    add r1.w, -c48.z, c48.w
    rcp r1.w, r1.w
    add r3.yzw, -c46.xxyz, v1.xxyz
    dp3 r2.w, r3.yzww, r3.yzww
    rsq r2.w, r2.w
    rcp r4.x, r2.w
    mul_pp r3.yzw, r2.w, r3
    add r2.w, r4.x, -c48.z
    mul_sat r1.w, r1.w, r2.w
    add_pp r1.yw, -r1, c4.z
    add r2.w, -c40.z, c40.w
    rcp r2.w, r2.w
    add r4.xyz, -c38, v1
    dp3 r4.w, r4, r4
    rsq r4.w, r4.w
    rcp r5.x, r4.w
    mul_pp r4.xyz, r4.w, r4
    add r4.w, r5.x, -c40.z
    mul_sat r2.w, r2.w, r4.w
    add_pp r2.w, -r2.w, c4.z
    add r4.w, -c44.z, c44.w
    rcp r4.w, r4.w
    add r5.xyz, -c42, v1
    dp3 r5.w, r5, r5
    rsq r5.w, r5.w
    rcp r6.x, r5.w
    mul_pp r5.xyz, r5.w, r5
    add r5.w, r6.x, -c44.z
    mul_sat r4.w, r4.w, r5.w
    add_pp r4.w, -r4.w, c4.z
    mov_pp r6.zw, c1
    mul_pp r6.xy, r6.zwzw, c20.yzzw
    mul_pp r7.xyz, r6.y, c43
    add_pp r8, c22.xyzx, -v1.xyzx
    dp3_pp r5.w, r8.yzww, r8.yzww
    rsq_pp r5.w, r5.w
    mad_pp r9.xyz, r8, r5.w, -r5
    nrm_pp r10.xyz, r9
    nrm r9, v2.xyzx
    dp3_sat_pp r6.z, r10, r9
    max_pp r7.w, r6.x, c4.z
    min r6.x, r7.w, c2.x
    pow r7.w, r6.z, r6.x
    mul_pp r7.xyz, r7.w, r7
    mul_pp r7.xyz, r4.w, r7
    mul_pp r10.xyz, r6.y, c39
    mad_pp r11.xyz, r8, r5.w, -r4
    dp3_pp r4.x, r9.wyzw, -r4
    nrm_pp r12.xyz, r11
    dp3_sat_pp r4.y, r12, r9
    pow r7.w, r4.y, r6.x
    mul_pp r10.xyz, r7.w, r10
    mad_pp r7.xyz, r2.w, r10, r7
    mul_pp r10.xyz, r6.y, c47
    mad_pp r11.xyz, r8, r5.w, -r3.yzww
    dp3_pp r3.y, r9.wyzw, -r3.yzww
    nrm_pp r12.xyz, r11
    dp3_sat_pp r3.z, r12, r9
    pow r4.y, r3.z, r6.x
    mul_pp r10.xyz, r4.y, r10
    mad_pp r7.xyz, r1.w, r10, r7
    mul_pp r10.xyz, r6.y, c51
    mad_pp r11.xyz, r8, r5.w, -r2
    dp3_pp r2.x, r9.wyzw, -r2
    nrm_pp r12.xyz, r11
    dp3_sat_pp r2.y, r12, r9
    pow r3.z, r2.y, r6.x
    mul_pp r10.xyz, r3.z, r10
    mad_pp r7.xyz, r1.y, r10, r7
    mul_pp r10.xyz, r6.y, c37
    mad_pp r11.xyz, r8, r5.w, -c10
    nrm_pp r12.xyz, r11
    dp3_sat_pp r2.y, r12, r9
    pow r3.z, r2.y, r6.x
    mul_pp r10.xyz, r3.z, r10
    mad_pp r7.xyz, r10, r1.x, r7
    mul_pp r10.xyz, c59.w, c59
    mul_pp r6.yzw, r6.y, r10.xxyz
    mad_pp r10.xyz, r8, r5.w, -r0.yzww
    dp3_pp r0.y, r9.wyzw, -r0.yzww
    mul r8, r5.w, r8
    nrm_pp r11.xyz, r10
    dp3_sat_pp r0.z, r11, r9
    pow r2.y, r0.z, r6.x
    mul_pp r6.xyz, r2.y, r6.yzww
    mad_pp r6.xyz, r0.x, r6, r7
    mul r0.z, c64.z, c64.x
    mov r7.xz, c64
    mad r0.w, r7.x, -r7.z, r7.z
    mad_pp r0.z, r1.x, r0.w, r0.z
    dp3 r0.w, r8.yzww, r9.yzww
    add r2.y, r0.w, r0.w
    mov_sat_pp r0.w, r0.w
    add_pp r0.w, -r0.w, c4.z
    mad r7, r2.y, r9, -r8
    mad r8, r7.wyzw, c0.xxyz, c0.zzzw
    mul r10, r7, c2.yzzw
    cmp r7, r7.z, r8, r10
    add r2.y, r7.z, c4.z
    rcp r2.y, r2.y
    mad r2.yz, r7.xyxw, r2.y, c4.z
    mad_pp r7.x, r2.z, c3.x, r7.w
    mul_pp r7.y, r2.y, c4.x
    texld_pp r7, r7, s5
    mul r8.xyz, r7, c63.x
    mad_pp r7.xyz, r8, r7.w, r7
    texld_pp r8, v0, s2
    mul_pp r7.xyz, r7, r8.w
    mul_pp r7.xyz, r0.z, r7
    mad_pp r6.xyz, r6, c18, r7
    mul_pp r6.xyz, r8, r6
    mul_pp r0.z, r0.w, r0.w
    mul_pp r0.z, r0.z, r0.z
    mul_pp r0.z, r0.w, r0.z
    lrp_pp r2.y, r0.z, r1.z, c62.x
    mul_pp r0.z, r2.y, c62.y
    mul_pp r6.xyz, r0.z, r6
    dp3_pp r0.z, r9.wyzw, -r5
    mul_pp r5.xyz, r0.z, c43
    cmp_pp r5.xyz, r0.z, r5, c4.y
    mul_pp r4.yzw, r4.w, r5.xxyz
    mul_pp r5.xyz, r4.x, c39
    cmp_pp r5.xyz, r4.x, r5, c4.y
    mad_pp r2.yzw, r2.w, r5.xxyz, r4
    mul_pp r4.xyz, r3.y, c47
    cmp_pp r3.yzw, r3.y, r4.xxyz, c4.y
    mad_pp r2.yzw, r1.w, r3, r2
    mul_pp r3.yzw, r2.x, c51.xxyz
    cmp_pp r3.yzw, r2.x, r3, c4.y
    mad_pp r1.yzw, r1.y, r3, r2
    dp3_pp r0.z, r9.wyzw, -c10
    mul r2.xyz, r0.z, c36
    mul_pp r2.xyz, r1.x, r2
    cmp_pp r2.xyz, r0.z, r2, c4.y
    add_pp r1.xyz, r1.yzww, r2
    mul_pp r2.xyz, c58.w, c58
    mul_pp r2.xyz, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2.xxyz, c4.y
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mov r1.xyz, c79
    add r1.xyz, -r1, c80
    mad_pp r2.xyz, r9.wyzw, c4.x, c4.x
    mul_pp r3.yzw, r9.xwyz, r9.xwyz
    mad r1.xyz, r2.y, r1, c79
    mul r1.xyz, r1, r3.z
    mov r4.xyz, c77
    add r4.xyz, -r4, c78
    mad r2.xyw, r2.x, r4.xyzz, c77.xyzz
    mad_pp r1.xyz, r3.y, r2.xyww, r1
    mov r4.xyz, c81
    add r2.xyw, -r4.xyzz, c82.xyzz
    mad r2.xyz, r2.z, r2.xyww, c81
    mad_pp r1.xyz, r3.w, r2, r1
    mul_pp r2.xyz, r1, c17
    mul r2.xyz, r2, c70.w
    mad r1.xyz, r1, c17, -r2
    mad_pp r1.xyz, r3.x, r1, r2
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    texld_pp r1, v0, s0
    mad_pp r0.xyz, r0, r1, r6
    dp3_pp r1.x, r6, r6
    mul_pp r1.y, r1.w, c16.w
    mul_pp r1.y, r1.y, r1.y
    max_pp r2.x, r1.y, r1.x
    rsq_pp r1.x, r2.x
    rcp_pp r1.x, r1.x
    mul_pp r0.w, r1.x, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c3.y
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 257 instruction slots used (5 texture, 252 arithmetic)
