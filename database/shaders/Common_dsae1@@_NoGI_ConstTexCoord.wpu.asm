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
//   float4 mrgPlayableParam;
//   sampler2D sampAlpha;
//   sampler2D sampDif;
//   sampler2D sampEnv;
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
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampSpe                               s1       1
//   sampEnv                               s5       1
//   sampAlpha                             s6       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, -2, 3, 500, 5
    def c1, 1024, 1, -1, 0
    def c2, 0.25, 4, 0, 0
    def c3, 0.5, 0, 1, -2
    def c4, -1, 1, 0, 0.5
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_color_pp v6
    dcl vPos.y
    dcl_2d s0
    dcl_2d s1
    dcl_2d s5
    dcl_2d s6
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
    mad_pp r1.y, r0.x, c0.x, c0.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r1.z, c3.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c3.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c3.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v3.z, c3.y
    add r1.y, r1.x, -v3.w
    cmp r1.z, r1.y, c3.y, r1.x
    mov r1.xyw, v3
    texldp_pp r1, r1, s13
    max r1.y, v4.z, c3.y
    add r1.z, r1.y, -v4.w
    cmp r2.z, r1.z, c3.y, r1.y
    mov r2.xyw, v4
    texldp_pp r2, r2, s7
    min_pp r3.x, r2.x, r1.x
    lrp_pp r1.x, v5.z, c3.z, r2.x
    lrp_pp r1.y, v5.z, c3.z, r3.x
    rcp r1.z, v3.w
    mul r1.zw, r1.z, v3.xyxy
    mad r1.zw, r1, -c3.w, -c3.z
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.x, r1.z, r1.w
    lrp_pp r3.x, r2.x, c3.z, r1.y
    lrp_pp r3.y, r2.x, c3.z, r1.x
    mul r1.x, r3.x, c77.w
    add r1.y, -c52.z, c52.w
    rcp r1.y, r1.y
    add r2.xyz, -c50, v1
    dp3 r1.z, r2, r2
    rsq r1.z, r1.z
    rcp r1.w, r1.z
    mul_pp r2.xyz, r1.z, r2
    add r1.z, r1.w, -c52.z
    mul_sat r1.y, r1.y, r1.z
    add r1.z, -c48.z, c48.w
    rcp r1.z, r1.z
    add r3.xzw, -c46.xyyz, v1.xyyz
    dp3 r1.w, r3.xzww, r3.xzww
    rsq r1.w, r1.w
    rcp r2.w, r1.w
    mul_pp r3.xzw, r1.w, r3
    add r1.w, r2.w, -c48.z
    mul_sat r1.z, r1.z, r1.w
    add r1.w, -c40.z, c40.w
    rcp r1.w, r1.w
    add r4.xyz, -c38, v1
    dp3 r2.w, r4, r4
    rsq r2.w, r2.w
    rcp r4.w, r2.w
    mul_pp r4.xyz, r2.w, r4
    add r2.w, r4.w, -c40.z
    mul_sat r1.w, r1.w, r2.w
    add_pp r1.yzw, -r1, c3.z
    add r2.w, -c44.z, c44.w
    rcp r2.w, r2.w
    add r5.xyz, -c42, v1
    dp3 r4.w, r5, r5
    rsq r4.w, r4.w
    rcp r5.w, r4.w
    mul_pp r5.xyz, r4.w, r5
    add r4.w, r5.w, -c44.z
    mul_sat r2.w, r2.w, r4.w
    add_pp r2.w, -r2.w, c3.z
    mov_pp r6.zw, c0
    mul_pp r6.xy, r6.zwzw, c20.yzzw
    mul_pp r7.xyz, r6.y, c43
    add_pp r8, c22.xyzx, -v1.xyzx
    dp3_pp r4.w, r8.yzww, r8.yzww
    rsq_pp r4.w, r4.w
    mad_pp r9.xyz, r8, r4.w, -r5
    nrm_pp r10.xyz, r9
    nrm r9, v2.xyzx
    dp3_sat_pp r5.w, r10, r9
    max_pp r7.w, r6.x, c3.z
    min r6.x, r7.w, c1.x
    pow r7.w, r5.w, r6.x
    mul_pp r7.xyz, r7.w, r7
    mul_pp r7.xyz, r2.w, r7
    mul_pp r10.xyz, r6.y, c39
    mad_pp r11.xyz, r8, r4.w, -r4
    dp3_pp r4.x, r9.wyzw, -r4
    nrm_pp r12.xyz, r11
    dp3_sat_pp r4.y, r12, r9
    pow r5.w, r4.y, r6.x
    mul_pp r10.xyz, r5.w, r10
    mad_pp r7.xyz, r1.w, r10, r7
    mul_pp r10.xyz, r6.y, c47
    mad_pp r11.xyz, r8, r4.w, -r3.xzww
    dp3_pp r3.x, r9.wyzw, -r3.xzww
    nrm_pp r12.xyz, r11
    dp3_sat_pp r3.z, r12, r9
    pow r4.y, r3.z, r6.x
    mul_pp r10.xyz, r4.y, r10
    mad_pp r7.xyz, r1.z, r10, r7
    mul_pp r10.xyz, r6.y, c51
    mad_pp r11.xyz, r8, r4.w, -r2
    dp3_pp r2.x, r9.wyzw, -r2
    nrm_pp r12.xyz, r11
    dp3_sat_pp r2.y, r12, r9
    pow r3.z, r2.y, r6.x
    mul_pp r10.xyz, r3.z, r10
    mad_pp r7.xyz, r1.y, r10, r7
    mul_pp r10.xyz, r6.y, c37
    mad_pp r11.xyz, r8, r4.w, -c10
    nrm_pp r12.xyz, r11
    dp3_sat_pp r2.y, r12, r9
    pow r3.z, r2.y, r6.x
    mul_pp r10.xyz, r3.z, r10
    mad_pp r7.xyz, r10, r1.x, r7
    mul_pp r10.xyz, c59.w, c59
    mul_pp r6.yzw, r6.y, r10.xxyz
    mad_pp r10.xyz, r8, r4.w, -r0.yzww
    dp3_pp r0.y, r9.wyzw, -r0.yzww
    mul r8, r4.w, r8
    nrm_pp r11.xyz, r10
    dp3_sat_pp r0.z, r11, r9
    pow r2.y, r0.z, r6.x
    mul_pp r4.yzw, r2.y, r6
    mad_pp r4.yzw, r0.x, r4, r7.xxyz
    mul r0.z, c64.z, c64.x
    mov r6.xz, c64
    mad r0.w, r6.x, -r6.z, r6.z
    mad_pp r0.z, r1.x, r0.w, r0.z
    dp3 r0.w, r8.yzww, r9.yzww
    add r0.w, r0.w, r0.w
    mad r6, r0.w, r9, -r8
    mad r7, r6.wyzw, c4.xxyz, c4.zzzw
    mul r8, r6, c1.yzzw
    cmp r6, r6.z, r7, r8
    add r0.w, r6.z, c3.z
    rcp r0.w, r0.w
    mad r2.yz, r6.xyxw, r0.w, c3.z
    mad_pp r6.x, r2.z, c2.x, r6.w
    mul_pp r6.y, r2.y, c3.x
    texld_pp r6, r6, s5
    mul r7.xyz, r6, c63.x
    mad_pp r6.xyz, r7, r6.w, r6
    texld_pp r7, v0, s1
    mul_pp r6.xyz, r6, r7.w
    mul_pp r6.xyz, r0.z, r6
    mad_pp r4.yzw, r4, c18.xxyz, r6.xxyz
    mul_pp r4.yzw, r7.xxyz, r4
    mul_pp r4.yzw, r4, v2.w
    dp3_pp r0.z, r9.wyzw, -r5
    mul_pp r5.xyz, r0.z, c43
    cmp_pp r5.xyz, r0.z, r5, c3.y
    mul_pp r2.yzw, r2.w, r5.xxyz
    mul_pp r5.xyz, r4.x, c39
    cmp_pp r5.xyz, r4.x, r5, c3.y
    mad_pp r2.yzw, r1.w, r5.xxyz, r2
    mul_pp r5.xyz, r3.x, c47
    cmp_pp r3.xzw, r3.x, r5.xyyz, c3.y
    mad_pp r2.yzw, r1.z, r3.xxzw, r2
    mul_pp r3.xzw, r2.x, c51.xyyz
    cmp_pp r3.xzw, r2.x, r3, c3.y
    mad_pp r1.yzw, r1.y, r3.xxzw, r2
    dp3_pp r0.z, r9.wyzw, -c10
    mul r2.xyz, r0.z, c36
    mul_pp r2.xyz, r1.x, r2
    cmp_pp r2.xyz, r0.z, r2, c3.y
    add_pp r1.xyz, r1.yzww, r2
    mul_pp r2.xyz, c58.w, c58
    mul_pp r2.xyz, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2.xxyz, c3.y
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mov r1.xyz, c79
    add r1.xyz, -r1, c80
    mad_pp r2.xyz, r9.wyzw, c3.x, c3.x
    mul_pp r3.xzw, r9.wyyz, r9.wyyz
    mad r1.xyz, r2.y, r1, c79
    mul r1.xyz, r1, r3.z
    mov r5.xyz, c77
    add r5.xyz, -r5, c78
    mad r2.xyw, r2.x, r5.xyzz, c77.xyzz
    mad_pp r1.xyz, r3.x, r2.xyww, r1
    mov r5.xyz, c81
    add r2.xyw, -r5.xyzz, c82.xyzz
    mad r2.xyz, r2.z, r2.xyww, c81
    mad_pp r1.xyz, r3.w, r2, r1
    mul_pp r2.xyz, r1, c17
    mul r2.xyz, r2, c70.w
    mad r1.xyz, r1, c17, -r2
    mad_pp r1.xyz, r3.y, r1, r2
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    add r0.w, c3.x, vPos.y
    mov r1.x, c86.x
    mad r0.w, r0.w, c24.w, -r1.x
    mul_sat_pp r0.w, r0.w, c86.y
    texld_pp r1, v0, s0
    mul_pp r1.w, r1.w, c16.w
    mul_pp r1.w, r1.w, v6.w
    mul_pp r1.w, r1.w, c21.x
    lrp_pp r2.xyz, r0.w, r1, c3.z
    mad_pp r0.xyz, r0, r2, r4.yzww
    mul_pp r0.xyz, r0, v6
    texld r2, v0, s6
    mul_pp r0.w, r1.w, r2.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c2.y
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 253 instruction slots used (6 texture, 247 arithmetic)
