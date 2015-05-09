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
//   sampler2D g_ReflectionMapSampler;
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
//   sampler2D sampDif;
//   sampler2D sampNrm;
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
//   sampNrm                               s3       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//   g_ReflectionMapSampler                s14      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 0
    def c1, -2, 3, 500, 5
    def c2, 0.5, 2, -1, 1
    def c3, 1024, 1, 0, -1
    def c4, 0.0500000007, 4, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord5_pp v4.xyz
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s2
    dcl_2d s3
    dcl_2d s10
    dcl_2d s13
    dcl_2d s14
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
    mov_pp r1.w, c2.w
    add r0.x, r1.w, -c61.x
    cmp_pp r0.x, r0.x, c2.w, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c2.w
    cmp_pp r1.x, -c61.x, r1.w, r1.x
    mul_pp r0.x, r0.x, r1.x
    add r1.x, -c48.z, c48.w
    rcp r1.x, r1.x
    add r1.yzw, -c46.xxyz, v1.xxyz
    dp3 r2.x, r1.yzww, r1.yzww
    rsq r2.x, r2.x
    rcp r2.y, r2.x
    mul_pp r1.yzw, r1, r2.x
    add r2.x, r2.y, -c48.z
    mul_sat r1.x, r1.x, r2.x
    add_pp r1.x, -r1.x, c2.w
    add r2.x, -c40.z, c40.w
    rcp r2.x, r2.x
    add r2.yzw, -c38.xxyz, v1.xxyz
    dp3 r3.x, r2.yzww, r2.yzww
    rsq r3.x, r3.x
    rcp r3.y, r3.x
    mul_pp r2.yzw, r2, r3.x
    add r3.x, r3.y, -c40.z
    mul_sat r2.x, r2.x, r3.x
    add_pp r2.x, -r2.x, c2.w
    add r3.x, -c44.z, c44.w
    rcp r3.x, r3.x
    add r3.yzw, -c42.xxyz, v1.xxyz
    dp3 r4.x, r3.yzww, r3.yzww
    rsq r4.x, r4.x
    rcp r4.y, r4.x
    mul_pp r3.yzw, r3, r4.x
    add r4.x, r4.y, -c44.z
    mul_sat r3.x, r3.x, r4.x
    add_pp r3.x, -r3.x, c2.w
    nrm_pp r4.xyz, v5
    nrm_pp r5.xyz, v6
    texld_pp r6, v0, s3
    mul_pp r6.x, r6.w, r6.x
    mad_pp r6.xy, r6, c2.y, c2.z
    mul_pp r5.xyz, r5, r6.y
    mad_pp r4.xyz, r6.x, r4, r5
    nrm_pp r5.xyz, v2
    dp2add_pp r4.w, r6, -r6, c2.w
    rsq_pp r4.w, r4.w
    rcp_pp r4.w, r4.w
    mad_pp r4.xyz, r4.w, r5, r4
    add_pp r5.xyz, c22, -v1
    dp3_pp r4.w, r5, r5
    rsq_pp r4.w, r4.w
    mad_pp r7.xyz, r5, r4.w, -r3.yzww
    dp3_pp r3.y, r4, -r3.yzww
    nrm_pp r8.xyz, r7
    dp3_sat_pp r3.z, r8, r4
    texld_pp r7, v0, s2
    mul_pp r6.zw, r7.x, c20.xyyz
    mul_pp r6.zw, r6, c1
    max_pp r3.w, r6.z, c2.w
    min r5.w, r3.w, c3.x
    pow r6.z, r3.z, r5.w
    mul_pp r7.xyz, r6.w, c43
    mul_pp r7.xyz, r6.z, r7
    mul_pp r7.xyz, r3.x, r7
    mul_pp r8.xyz, r6.w, c39
    mad_pp r9.xyz, r5, r4.w, -r2.yzww
    dp3_pp r2.y, r4, -r2.yzww
    nrm_pp r10.xyz, r9
    dp3_sat_pp r2.z, r10, r4
    pow r3.z, r2.z, r5.w
    mul_pp r8.xyz, r3.z, r8
    mad_pp r7.xyz, r2.x, r8, r7
    mul_pp r8.xyz, r6.w, c47
    mad_pp r9.xyz, r5, r4.w, -r1.yzww
    dp3_pp r1.y, r4, -r1.yzww
    nrm_pp r10.xyz, r9
    dp3_sat_pp r1.z, r10, r4
    pow r2.z, r1.z, r5.w
    mul_pp r8.xyz, r2.z, r8
    mad_pp r7.xyz, r1.x, r8, r7
    add r1.z, -c52.z, c52.w
    rcp r1.z, r1.z
    add r8.xyz, -c50, v1
    dp3 r1.w, r8, r8
    rsq r1.w, r1.w
    rcp r2.z, r1.w
    mul_pp r8.xyz, r1.w, r8
    add r1.w, r2.z, -c52.z
    mul_sat r1.z, r1.z, r1.w
    add_pp r1.z, -r1.z, c2.w
    mul_pp r9.xyz, r6.w, c51
    mad_pp r10.xyz, r5, r4.w, -r8
    dp3_pp r1.w, r4, -r8
    nrm_pp r8.xyz, r10
    dp3_sat_pp r2.z, r8, r4
    pow r3.z, r2.z, r5.w
    mul_pp r8.xyz, r3.z, r9
    mad_pp r7.xyz, r1.z, r8, r7
    rcp r2.z, v3.w
    mul r2.zw, r2.z, v3.xyxy
    mad r2.zw, r2, c2.y, c2.z
    abs_sat r2.zw, r2
    add_sat r2.zw, r2, -c65.x
    mul r2.zw, r2, c65.y
    max r3.z, r2.z, r2.w
    max r2.z, v3.z, c0.w
    add r2.w, r2.z, -v3.w
    cmp r8.z, r2.w, c0.w, r2.z
    mov r8.xyw, v3
    texldp_pp r8, r8, s13
    lrp_pp r2.z, v4.z, c2.w, r8.x
    lrp_pp r6.z, r3.z, c2.w, r2.z
    texld_pp r8, v0.zwzw, s10
    mul_pp r2.z, r6.z, r8.w
    mul_pp r9.xyz, r6.w, c37
    mad_pp r10.xyz, r5, r4.w, -c10
    mad_pp r5.xyz, r5, r4.w, -r0.yzww
    dp3_pp r0.y, r4, -r0.yzww
    nrm_pp r11.xyz, r5
    dp3_sat_pp r0.z, r11, r4
    pow r2.w, r0.z, r5.w
    nrm_pp r5.xyz, r10
    dp3_sat_pp r0.z, r5, r4
    dp3_pp r0.w, r4, -c10
    pow r3.z, r0.z, r5.w
    mul_pp r4.xyz, r3.z, r9
    mad_pp r4.xyz, r4, r2.z, r7
    mul_pp r5.xyz, c59.w, c59
    mul_pp r5.xyz, r6.w, r5
    mul_pp r5.xyz, r2.w, r5
    mad_pp r4.xyz, r0.x, r5, r4
    mul r3.zw, c24, vPos.xyxy
    mov r5.yzw, c3
    mad r5, c24.zzzw, r5.yzzw, r5.zwwz
    mad r7.xy, r3.zwzw, c2.y, r5
    mov r7.z, -r7.y
    add r3.zw, r5, r7.xyxz
    mad r3.zw, r6.xyxy, c4.x, r3
    mad r3.zw, r3, c2.x, c2.x
    texld_pp r5, r3.zwzw, s14
    mad_pp r4.xyz, r4, c18, r5
    mul_pp r4.xyz, r4, v2.w
    mul_pp r5.xyz, r3.y, c43
    cmp_pp r3.yzw, r3.y, r5.xxyz, c0.w
    mul_pp r3.xyz, r3.yzww, r3.x
    mul_pp r5.xyz, r2.y, c39
    cmp_pp r5.xyz, r2.y, r5, c0.w
    mad_pp r2.xyw, r2.x, r5.xyzz, r3.xyzz
    mul_pp r3.xyz, r1.y, c47
    cmp_pp r3.xyz, r1.y, r3, c0.w
    mad_pp r2.xyw, r1.x, r3.xyzz, r2
    mul_pp r3.xyz, r1.w, c51
    cmp_pp r1.xyw, r1.w, r3.xyzz, c0.w
    mad_pp r1.xyz, r1.z, r1.xyww, r2.xyww
    mul r2.xyw, r0.w, c36.xyzz
    mul_pp r2.xyz, r2.z, r2.xyww
    cmp_pp r2.xyz, r0.w, r2, c0.w
    add_pp r1.xyz, r1, r2
    mul_pp r2.xyz, c58.w, c58
    mul_pp r2.xyz, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2.xxyz, c0.w
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mul_pp r1.xyz, r8, r8
    dp3_pp r0.w, r1, c0
    mad_pp r1.xyz, r8, r8, -r0.w
    mad_sat_pp r1.xyz, r1, c71.w, r0.w
    mul_pp r1.xyz, r1, c70
    mul_pp r2.xyz, r1, c17
    mul r2.xyz, r2, c70.w
    mad r1.xyz, r1, c17, -r2
    mad_pp r1.xyz, r6.z, r1, r2
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    add r0.w, c2.x, vPos.y
    mov r1.w, c24.w
    mad r0.w, r0.w, r1.w, -c86.x
    mul_sat_pp r0.w, r0.w, c86.y
    texld_pp r1, v0, s0
    add_pp r1.xyz, r1, c2.z
    mul_pp r1.w, r1.w, c16.w
    mul_pp r1.w, r1.w, v7.w
    mul_pp r2.w, r1.w, c21.x
    mad_pp r1.xyz, r1, r0.w, c2.w
    mad_pp r0.xyz, r0, r1, r4
    mul_pp r2.xyz, r0, v7
    mul_pp r0, r2, c89
    min_pp r1, r0, c4.y
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 241 instruction slots used (6 texture, 235 arithmetic)
