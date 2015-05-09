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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
//   sampler2D sampPow;
//   sampler2D sampSpe;
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
//   mrgTexcoordIndex                      c26      1
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
//   sampSpe                               s1       1
//   sampPow                               s2       1
//   sampEnv                               s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 2, -1, -3
    def c1, 500, 5, 1024, 4
    def c2, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_cube s5
    dcl_2d s7
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v2.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, -c0.y, -c0.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c2
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c2.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c2.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v4.z, c2.x
    add r1.y, r1.x, -v4.w
    cmp r1.z, r1.y, c2.x, r1.x
    mov r1.xyw, v4
    texldp_pp r1, r1, s13
    max r1.y, v5.z, c2.x
    add r1.z, r1.y, -v5.w
    cmp r3.z, r1.z, c2.x, r1.y
    mov r3.xyw, v5
    texldp_pp r3, r3, s7
    min_pp r2.z, r3.x, r1.x
    lrp_pp r1.x, v6.z, c2.y, r3.x
    lrp_pp r1.y, v6.z, c2.y, r2.z
    rcp r1.z, v4.w
    mul r1.zw, r1.z, v4.xyxy
    mad r1.zw, r1, c0.y, c0.z
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.z, r1.z, r1.w
    lrp_pp r3.x, r2.z, c2.y, r1.y
    lrp_pp r3.y, r2.z, c2.y, r1.x
    mul r1.x, r3.x, c77.w
    add r1.y, -c52.z, c52.w
    rcp r1.y, r1.y
    add r3.xzw, -c50.xyyz, v2.xyyz
    dp3 r1.z, r3.xzww, r3.xzww
    rsq r1.z, r1.z
    rcp r1.w, r1.z
    mul_pp r3.xzw, r1.z, r3
    add r1.z, r1.w, -c52.z
    mul_sat r1.y, r1.y, r1.z
    add r1.z, -c48.z, c48.w
    rcp r1.z, r1.z
    add r4.xyz, -c46, v2
    dp3 r1.w, r4, r4
    rsq r1.w, r1.w
    rcp r2.z, r1.w
    mul_pp r4.xyz, r1.w, r4
    add r1.w, r2.z, -c48.z
    mul_sat r1.z, r1.z, r1.w
    add r1.w, -c40.z, c40.w
    rcp r1.w, r1.w
    add r5.xyz, -c38, v2
    dp3 r2.z, r5, r5
    rsq r2.z, r2.z
    rcp r2.w, r2.z
    mul_pp r5.xyz, r2.z, r5
    add r2.z, r2.w, -c40.z
    mul_sat r1.w, r1.w, r2.z
    add_pp r1.yzw, -r1, c2.y
    add r2.z, -c44.z, c44.w
    rcp r2.z, r2.z
    add r6.xyz, -c42, v2
    dp3 r2.w, r6, r6
    rsq r2.w, r2.w
    rcp r4.w, r2.w
    mul_pp r6.xyz, r2.w, r6
    add r2.w, r4.w, -c44.z
    mul_sat r2.z, r2.z, r2.w
    add_pp r2.z, -r2.z, c2.y
    frc r7.xyz, c26.xzww
    cmp r8.xyz, -r7, c2.x, c2.y
    add r7.xyz, -r7, c26.xzww
    cmp r8.xyz, c26.xzww, r2.x, r8
    add r7.xyz, r7, r8
    add r8, r7.z, -c2
    cmp r2.xw, -r8_abs.x, v0.xyzy, c2.x
    cmp r2.xw, -r8_abs.y, v0.zyzw, r2
    cmp r2.xw, -r8_abs.z, v1.xyzy, r2
    cmp r2.xw, -r8_abs.w, v1.zyzw, r2
    texld_pp r8, r2.xwzw, s2
    mul_pp r2.xw, r8.x, c20.yyzz
    mul_pp r2.xw, r2, c1.xyzy
    mul_pp r8.yzw, r2.w, c43.xxyz
    max_pp r4.w, r2.x, c2.y
    min r2.x, r4.w, c1.z
    add_pp r9.xyz, c22, -v2
    dp3_pp r4.w, r9, r9
    rsq_pp r4.w, r4.w
    mad_pp r10.xyz, r9, r4.w, -r6
    nrm_pp r11.xyz, r10
    nrm r10.xyz, v3
    dp3_sat_pp r5.w, r11, r10
    pow r6.w, r5.w, r2.x
    mul_pp r8.yzw, r6.w, r8
    mul_pp r8.yzw, r2.z, r8
    mul_pp r11.xyz, r2.w, c39
    mad_pp r12.xyz, r9, r4.w, -r5
    dp3_pp r5.x, r10, -r5
    nrm_pp r13.xyz, r12
    dp3_sat_pp r5.y, r13, r10
    pow r6.w, r5.y, r2.x
    mul_pp r5.yzw, r6.w, r11.xxyz
    mad_pp r5.yzw, r1.w, r5, r8
    mul_pp r8.yzw, r2.w, c47.xxyz
    mad_pp r11.xyz, r9, r4.w, -r4
    dp3_pp r4.x, r10, -r4
    nrm_pp r12.xyz, r11
    dp3_sat_pp r4.y, r12, r10
    pow r6.w, r4.y, r2.x
    mul_pp r8.yzw, r6.w, r8
    mad_pp r5.yzw, r1.z, r8, r5
    mul_pp r8.yzw, r2.w, c51.xxyz
    mad_pp r11.xyz, r9, r4.w, -r3.xzww
    dp3_pp r3.x, r10, -r3.xzww
    nrm_pp r12.xyz, r11
    dp3_sat_pp r3.z, r12, r10
    pow r4.y, r3.z, r2.x
    mul_pp r8.yzw, r4.y, r8
    mad_pp r5.yzw, r1.y, r8, r5
    mul_pp r8.yzw, r2.w, c37.xxyz
    mad_pp r11.xyz, r9, r4.w, -c10
    nrm_pp r12.xyz, r11
    dp3_sat_pp r3.z, r12, r10
    pow r4.y, r3.z, r2.x
    mul_pp r8.yzw, r4.y, r8
    mad_pp r5.yzw, r8, r1.x, r5
    mul_pp r8.yzw, c59.w, c59.xxyz
    mul_pp r8.yzw, r2.w, r8
    mad_pp r11.xyz, r9, r4.w, -r0.yzww
    dp3_pp r0.y, r10, -r0.yzww
    mul r4.yzw, r4.w, r9.xxyz
    nrm_pp r9.xyz, r11
    dp3_sat_pp r0.z, r9, r10
    pow r3.z, r0.z, r2.x
    mul_pp r8.yzw, r3.z, r8
    mad_pp r5.yzw, r0.x, r8, r5
    mul r0.z, c64.z, c64.x
    mov r9.xz, c64
    mad r0.w, r9.x, -r9.z, r9.z
    mad_pp r0.z, r1.x, r0.w, r0.z
    dp3 r0.w, -r4.yzww, r10
    add r0.w, r0.w, r0.w
    mad_pp r8.yzw, r10.xxyz, -r0.w, -r4
    dp3_sat_pp r0.w, r10, r4.yzww
    add_pp r0.w, -r0.w, c2.y
    texld_pp r9, r8.yzww, s5
    mul r4.yzw, r9.xxyz, c63.x
    mad_pp r4.yzw, r4, r9.w, r9.xxyz
    mul_pp r4.yzw, r8.x, r4
    mul_pp r4.yzw, r0.z, r4
    mad_pp r4.yzw, r5, c18.xxyz, r4
    add r8, r7.y, -c2
    add r7, r7.x, -c2
    cmp r2.xw, -r8_abs.x, v0.xyzy, c2.x
    cmp r2.xw, -r8_abs.y, v0.zyzw, r2
    cmp r2.xw, -r8_abs.z, v1.xyzy, r2
    cmp r2.xw, -r8_abs.w, v1.zyzw, r2
    texld_pp r8, r2.xwzw, s1
    mul_pp r4.yzw, r4, r8.xxyz
    mul_pp r0.z, r0.w, r0.w
    mul_pp r0.z, r0.z, r0.z
    mul_pp r0.z, r0.w, r0.z
    lrp_pp r3.z, r0.z, r2.y, c62.x
    mul_pp r0.z, r3.z, c62.y
    mul_pp r2.xyw, r0.z, r4.yzzw
    dp3_pp r0.z, r10, -r6
    mul_pp r4.yzw, r0.z, c43.xxyz
    cmp_pp r4.yzw, r0.z, r4, c2.x
    mul_pp r4.yzw, r2.z, r4
    mul_pp r5.yzw, r5.x, c39.xxyz
    cmp_pp r5.xyz, r5.x, r5.yzww, c2.x
    mad_pp r4.yzw, r1.w, r5.xxyz, r4
    mul_pp r5.xyz, r4.x, c47
    cmp_pp r5.xyz, r4.x, r5, c2.x
    mad_pp r4.xyz, r1.z, r5, r4.yzww
    mul_pp r5.xyz, r3.x, c51
    cmp_pp r3.xzw, r3.x, r5.xyyz, c2.x
    mad_pp r1.yzw, r1.y, r3.xxzw, r4.xxyz
    dp3_pp r0.z, r10, -c10
    mul r3.xzw, r0.z, c36.xyyz
    mul_pp r3.xzw, r1.x, r3
    cmp_pp r3.xzw, r0.z, r3, c2.x
    add_pp r1.xyz, r1.yzww, r3.xzww
    mul_pp r3.xzw, c58.w, c58.xyyz
    mul_pp r3.xzw, r0.y, r3
    cmp_pp r0.yzw, r0.y, r3.xxzw, c2.x
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mov r1.xyz, c79
    add r1.xyz, -r1, c80
    mad_pp r3.xzw, r10.xyyz, c0.x, c0.x
    mul_pp r4.xyz, r10, r10
    mad r1.xyz, r3.z, r1, c79
    mul r1.xyz, r1, r4.y
    mov r5.xyz, c77
    add r5.xyz, -r5, c78
    mad r5.xyz, r3.x, r5, c77
    mad_pp r1.xyz, r4.x, r5, r1
    mov r5.xyz, c81
    add r4.xyw, -r5.xyzz, c82.xyzz
    mad r3.xzw, r3.w, r4.xyyw, c81.xyyz
    mad_pp r1.xyz, r4.z, r3.xzww, r1
    mul_pp r3.xzw, r1.xyyz, c17.xyyz
    mul r3.xzw, r3, c70.w
    mad r1.xyz, r1, c17, -r3.xzww
    mad_pp r1.xyz, r3.y, r1, r3.xzww
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    cmp r1.xy, -r7_abs.x, v0, c2.x
    cmp r1.xy, -r7_abs.y, v0.zwzw, r1
    cmp r1.xy, -r7_abs.z, v1, r1
    cmp r1.xy, -r7_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    mad_pp r0.xyz, r0, r1, r2.xyww
    dp3_pp r1.x, r2.xyww, r2.xyww
    mul_pp r1.y, r1.w, c16.w
    mul_pp r1.y, r1.y, r1.y
    max_pp r2.x, r1.y, r1.x
    rsq_pp r1.x, r2.x
    rcp_pp r1.x, r1.x
    mul_pp r0.w, r1.x, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c1.w
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 269 instruction slots used (6 texture, 263 arithmetic)
