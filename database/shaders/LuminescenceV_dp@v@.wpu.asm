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
//   float4 mrgPlayableParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
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
//   g_ViewportSize                        c24      1
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
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampPow                               s2       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, -2, 3
    def c1, 0.5, 0.298900008, 0.586600006, 0.114399999
    def c2, 500, 5, 1024, 4
    def c3, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord5_pp v5.xyz
    dcl_color_pp v6.xyz
    dcl vPos.y
    dcl_2d s0
    dcl_2d s2
    dcl_2d s10
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
    mad_pp r1.y, r0.x, c0.z, c0.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c3
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c3.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c3.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    rcp r1.x, v4.w
    mul r1.xy, r1.x, v4
    mad r1.xy, r1, c0.x, c0.y
    abs_sat r1.xy, r1
    add_sat r1.xy, r1, -c65.x
    mul r1.xy, r1, c65.y
    max r2.y, r1.x, r1.y
    max r1.x, v4.z, c3.x
    add r1.y, r1.x, -v4.w
    cmp r1.z, r1.y, c3.x, r1.x
    mov r1.xyw, v4
    texldp_pp r1, r1, s13
    lrp_pp r2.z, v5.z, c3.y, r1.x
    lrp_pp r1.x, r2.y, c3.y, r2.z
    texld_pp r3, v0.zwzw, s10
    mul_pp r1.y, r1.x, r3.w
    add r1.z, -c52.z, c52.w
    rcp r1.z, r1.z
    add r2.yzw, -c50.xxyz, v2.xxyz
    dp3 r1.w, r2.yzww, r2.yzww
    rsq r1.w, r1.w
    rcp r3.w, r1.w
    mul_pp r2.yzw, r1.w, r2
    add r1.w, r3.w, -c52.z
    mul_sat r1.z, r1.z, r1.w
    add r1.w, -c48.z, c48.w
    rcp r1.w, r1.w
    add r4.xyz, -c46, v2
    dp3 r3.w, r4, r4
    rsq r3.w, r3.w
    rcp r4.w, r3.w
    mul_pp r4.xyz, r3.w, r4
    add r3.w, r4.w, -c48.z
    mul_sat r1.w, r1.w, r3.w
    add_pp r1.zw, -r1, c3.y
    add r3.w, -c40.z, c40.w
    rcp r3.w, r3.w
    add r5.xyz, -c38, v2
    dp3 r4.w, r5, r5
    rsq r4.w, r4.w
    rcp r5.w, r4.w
    mul_pp r5.xyz, r4.w, r5
    add r4.w, r5.w, -c40.z
    mul_sat r3.w, r3.w, r4.w
    add_pp r3.w, -r3.w, c3.y
    add r4.w, -c44.z, c44.w
    rcp r4.w, r4.w
    add r6.xyz, -c42, v2
    dp3 r5.w, r6, r6
    rsq r5.w, r5.w
    rcp r6.w, r5.w
    mul_pp r6.xyz, r5.w, r6
    add r5.w, r6.w, -c44.z
    mul_sat r4.w, r4.w, r5.w
    add_pp r4.w, -r4.w, c3.y
    frc r7.xy, c26.xzzw
    cmp r7.zw, -r7.xyxy, c3.x, c3.y
    add r7.xy, -r7, c26.xzzw
    cmp r7.zw, c26.xyxz, r2.x, r7
    add r7.xy, r7.zwzw, r7
    add r8, r7.y, -c3
    add r7, r7.x, -c3
    cmp r9.xy, -r8_abs.x, v0, c3.x
    cmp r8.xy, -r8_abs.y, v0.zwzw, r9
    cmp r8.xy, -r8_abs.z, v1, r8
    cmp r8.xy, -r8_abs.w, v1.zwzw, r8
    texld_pp r8, r8, s2
    mul_pp r8.xy, r8.x, c20.yzzw
    mul_pp r8.xy, r8, c2
    mul_pp r9.xyz, r8.y, c43
    max_pp r2.x, r8.x, c3.y
    min r5.w, r2.x, c2.z
    add_pp r8.xzw, c22.xyyz, -v2.xyyz
    dp3_pp r2.x, r8.xzww, r8.xzww
    rsq_pp r2.x, r2.x
    mad_pp r10.xyz, r8.xzww, r2.x, -r6
    nrm_pp r11.xyz, r10
    nrm_pp r10.xyz, v3
    dp3_sat_pp r6.w, r11, r10
    pow r9.w, r6.w, r5.w
    mul_pp r9.xyz, r9.w, r9
    mul_pp r9.xyz, r4.w, r9
    mul_pp r11.xyz, r8.y, c39
    mad_pp r12.xyz, r8.xzww, r2.x, -r5
    dp3_pp r5.x, r10, -r5
    nrm_pp r13.xyz, r12
    dp3_sat_pp r5.y, r13, r10
    pow r6.w, r5.y, r5.w
    mul_pp r11.xyz, r6.w, r11
    mad_pp r9.xyz, r3.w, r11, r9
    mul_pp r11.xyz, r8.y, c47
    mad_pp r12.xyz, r8.xzww, r2.x, -r4
    dp3_pp r4.x, r10, -r4
    nrm_pp r13.xyz, r12
    dp3_sat_pp r4.y, r13, r10
    pow r6.w, r4.y, r5.w
    mul_pp r11.xyz, r6.w, r11
    mad_pp r9.xyz, r1.w, r11, r9
    mul_pp r11.xyz, r8.y, c51
    mad_pp r12.xyz, r8.xzww, r2.x, -r2.yzww
    dp3_pp r2.y, r10, -r2.yzww
    nrm_pp r13.xyz, r12
    dp3_sat_pp r2.z, r13, r10
    pow r4.y, r2.z, r5.w
    mul_pp r11.xyz, r4.y, r11
    mad_pp r9.xyz, r1.z, r11, r9
    mul_pp r11.xyz, r8.y, c37
    mad_pp r12.xyz, r8.xzww, r2.x, -c10
    mad_pp r2.xzw, r8, r2.x, -r0.yyzw
    dp3_pp r0.y, r10, -r0.yzww
    nrm_pp r13.xyz, r2.xzww
    dp3_sat_pp r0.z, r13, r10
    pow r2.x, r0.z, r5.w
    nrm_pp r13.xyz, r12
    dp3_sat_pp r0.z, r13, r10
    pow r2.z, r0.z, r5.w
    mul_pp r5.yzw, r2.z, r11.xxyz
    mad_pp r5.yzw, r5, r1.y, r9.xxyz
    mul_pp r8.xzw, c59.w, c59.xyyz
    mul_pp r8.xyz, r8.y, r8.xzww
    mul_pp r2.xzw, r2.x, r8.xyyz
    mad_pp r2.xzw, r0.x, r2, r5.yyzw
    mul_pp r2.xzw, r2, c18.xyyz
    mul_pp r2.xzw, r2, v3.w
    dp3_pp r0.z, r10, -r6
    dp3_pp r0.w, r10, -c10
    mul_pp r5.yzw, r0.z, c43.xxyz
    cmp_pp r5.yzw, r0.z, r5, c3.x
    mul_pp r4.yzw, r4.w, r5
    mul_pp r5.yzw, r5.x, c39.xxyz
    cmp_pp r5.xyz, r5.x, r5.yzww, c3.x
    mad_pp r4.yzw, r3.w, r5.xxyz, r4
    mul_pp r5.xyz, r4.x, c47
    cmp_pp r5.xyz, r4.x, r5, c3.x
    mad_pp r4.xyz, r1.w, r5, r4.yzww
    mul_pp r5.xyz, r2.y, c51
    cmp_pp r5.xyz, r2.y, r5, c3.x
    mad_pp r4.xyz, r1.z, r5, r4
    mul r5.xyz, r0.w, c36
    mul_pp r1.yzw, r1.y, r5.xxyz
    cmp_pp r1.yzw, r0.w, r1, c3.x
    add_pp r1.yzw, r4.xxyz, r1
    mul_pp r4.xyz, c58.w, c58
    mul_pp r4.xyz, r0.y, r4
    cmp_pp r0.yzw, r0.y, r4.xxyz, c3.x
    mad_pp r0.xyz, r0.x, r0.yzww, r1.yzww
    mul_pp r1.yzw, r3.xxyz, r3.xxyz
    dp3_pp r0.w, r1.yzww, c1.yzww
    mad_pp r1.yzw, r3.xxyz, r3.xxyz, -r0.w
    mad_sat_pp r1.yzw, r1, c71.w, r0.w
    mul_pp r3.xyz, r1.yzww, c70
    mul r3.xyz, r3, c70.w
    mad r1.yzw, r1, c70.xxyz, -r3.xxyz
    mad_pp r1.xyz, r1.x, r1.yzww, r3
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    cmp r1.xy, -r7_abs.x, v0, c3.x
    cmp r1.xy, -r7_abs.y, v0.zwzw, r1
    cmp r1.xy, -r7_abs.z, v1, r1
    cmp r1.xy, -r7_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    mul_pp r0.w, r1.w, c16.w
    mul_pp r3.w, r0.w, c21.x
    add r0.w, c1.x, vPos.y
    mov r4.x, c86.x
    mad r0.w, r0.w, c24.w, -r4.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r4.xyz, r0.w, r1, c3.y
    mad_pp r0.xyz, r0, r4, r2.xzww
    mul_pp r1.xyz, c17, v6
    mad_pp r3.xyz, r1, r0.w, r0
    mul_pp r0, r3, c89
    min_pp r1, r0, c2.w
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 228 instruction slots used (4 texture, 224 arithmetic)
