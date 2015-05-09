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
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 mrgChrEmissionParam;
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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
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
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   mrgChrEmissionParam                   c150     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampNrm                               s2       1
//   sampEnv                               s3       1
//   g_VerticalShadowMapSampler            s7       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, -2, 3, 500, 5
    def c1, 0.298900008, 0.586600006, 0.114399999, 1024
    def c2, 2, -1, -0.0500000007, 1.05263162
    def c3, 0.5, -0.5, 4, 0
    def c4, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl_color_pp v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s7
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
    mad_pp r1.y, r0.x, c0.x, c0.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c4
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c4.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c4.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v4.z, c4.x
    add r1.y, r1.x, -v4.w
    cmp r1.z, r1.y, c4.x, r1.x
    mov r1.xyw, v4
    texldp_pp r1, r1, s13
    max r1.y, v5.z, c4.x
    add r1.z, r1.y, -v5.w
    cmp r3.z, r1.z, c4.x, r1.y
    mov r3.xyw, v5
    texldp_pp r3, r3, s7
    min_pp r2.y, r3.x, r1.x
    lrp_pp r1.x, v6.z, c4.y, r2.y
    rcp r1.y, v4.w
    mul r1.yz, r1.y, v4.xxyw
    mad r1.yz, r1, c2.x, c2.y
    abs_sat r1.yz, r1
    add_sat r1.yz, r1, -c65.x
    mul r1.yz, r1, c65.y
    max r2.y, r1.y, r1.z
    lrp_pp r3.x, r2.y, c4.y, r1.x
    texld_pp r1, v0.zwzw, s10
    mul r1.w, r1.w, r3.x
    add r2.y, -c52.z, c52.w
    rcp r2.y, r2.y
    add r3.yzw, -c50.xxyz, v2.xxyz
    dp3 r2.z, r3.yzww, r3.yzww
    rsq r2.z, r2.z
    rcp r2.w, r2.z
    mul_pp r3.yzw, r2.z, r3
    add r2.z, r2.w, -c52.z
    mul_sat r2.y, r2.y, r2.z
    add r2.z, -c48.z, c48.w
    rcp r2.z, r2.z
    add r4.xyz, -c46, v2
    dp3 r2.w, r4, r4
    rsq r2.w, r2.w
    rcp r4.w, r2.w
    mul_pp r4.xyz, r2.w, r4
    add r2.w, r4.w, -c48.z
    mul_sat r2.z, r2.z, r2.w
    add r2.w, -c40.z, c40.w
    rcp r2.w, r2.w
    add r5.xyz, -c38, v2
    dp3 r4.w, r5, r5
    rsq r4.w, r4.w
    rcp r5.w, r4.w
    mul_pp r5.xyz, r4.w, r5
    add r4.w, r5.w, -c40.z
    mul_sat r2.w, r2.w, r4.w
    add_pp r2.yzw, -r2, c4.y
    add r4.w, -c44.z, c44.w
    rcp r4.w, r4.w
    add r6.xyz, -c42, v2
    dp3 r5.w, r6, r6
    rsq r5.w, r5.w
    rcp r6.w, r5.w
    mul_pp r6.xyz, r5.w, r6
    add r5.w, r6.w, -c44.z
    mul_sat r4.w, r4.w, r5.w
    add_pp r4.w, -r4.w, c4.y
    frc r7.xyz, c26.xzww
    cmp r8.xyz, -r7, c4.x, c4.y
    add r7.xyz, -r7, c26.xzww
    cmp r8.xyz, c26.xzww, r2.x, r8
    add r7.xyz, r7, r8
    add r8, r7.z, -c4
    cmp r7.zw, -r8_abs.x, v0.xyxy, c4.x
    cmp r7.zw, -r8_abs.y, v0, r7
    cmp r7.zw, -r8_abs.z, v1.xyxy, r7
    cmp r7.zw, -r8_abs.w, v1, r7
    texld_pp r8, r7.zwzw, s2
    mul_pp r8.x, r8.w, r8.x
    mad_pp r7.zw, r8.xyxy, c2.x, c2.y
    nrm_pp r8.xyz, v8
    mul_pp r8.xyz, r7.w, r8
    nrm_pp r9.xyz, v7
    mad_pp r8.xyz, r7.z, r9, r8
    dp2add_pp r2.x, r7.zwzw, -r7.zwzw, c4.y
    rsq_pp r2.x, r2.x
    rcp_pp r2.x, r2.x
    nrm_pp r9.xyz, v3
    mad_pp r8.xyz, r2.x, r9, r8
    add_pp r9.xyz, c22, -v2
    dp3_pp r2.x, r9, r9
    rsq_pp r2.x, r2.x
    mad_pp r10.xyz, r9, r2.x, -r6
    dp3_pp r5.w, r8, -r6
    add_pp r5.w, r5.w, c2.z
    mul_sat_pp r5.w, r5.w, c2.w
    mul_pp r6.xyz, r5.w, c43
    mul_pp r6.xyz, r4.w, r6
    nrm_pp r11.xyz, r10
    dp3_sat_pp r5.w, r11, r8
    mov_pp r7.zw, c0
    mul_pp r7.zw, r7, c20.xyyz
    max_pp r6.w, r7.z, c4.y
    min r7.z, r6.w, c1.w
    pow r6.w, r5.w, r7.z
    mul_pp r10.xyz, r7.w, c43
    mul_pp r10.xyz, r6.w, r10
    mul_pp r10.xyz, r4.w, r10
    mad_pp r11.xyz, r9, r2.x, -r5
    dp3_pp r4.w, r8, -r5
    add_pp r4.w, r4.w, c2.z
    mul_sat_pp r4.w, r4.w, c2.w
    mul_pp r5.xyz, r4.w, c39
    mad_pp r5.xyz, r2.w, r5, r6
    nrm_pp r6.xyz, r11
    dp3_sat_pp r4.w, r6, r8
    pow r5.w, r4.w, r7.z
    mul_pp r6.xyz, r7.w, c39
    mul_pp r6.xyz, r5.w, r6
    mad_pp r6.xyz, r2.w, r6, r10
    mad_pp r10.xyz, r9, r2.x, -r4
    dp3_pp r2.w, r8, -r4
    add_pp r2.w, r2.w, c2.z
    mul_sat_pp r2.w, r2.w, c2.w
    mul_pp r4.xyz, r2.w, c47
    mad_pp r4.xyz, r2.z, r4, r5
    nrm_pp r5.xyz, r10
    dp3_sat_pp r2.w, r5, r8
    pow r4.w, r2.w, r7.z
    mul_pp r5.xyz, r7.w, c47
    mul_pp r5.xyz, r4.w, r5
    mad_pp r5.xyz, r2.z, r5, r6
    mad_pp r6.xyz, r9, r2.x, -r3.yzww
    dp3_pp r2.z, r8, -r3.yzww
    add_pp r2.z, r2.z, c2.z
    mul_sat_pp r2.z, r2.z, c2.w
    mul_pp r3.yzw, r2.z, c51.xxyz
    mad_pp r3.yzw, r2.y, r3, r4.xxyz
    nrm_pp r4.xyz, r6
    dp3_sat_pp r2.z, r4, r8
    pow r4.x, r2.z, r7.z
    mul_pp r4.yzw, r7.w, c51.xxyz
    mul_pp r4.xyz, r4.x, r4.yzww
    mad_pp r2.yzw, r2.y, r4.xxyz, r5.xxyz
    mad_pp r4.xyz, r9, r2.x, -c10
    mad_pp r5.xyz, r9, r2.x, -r0.yzww
    dp3_pp r0.y, r8, -r0.yzww
    add_pp r0.y, r0.y, c2.z
    nrm_pp r6.xyz, r5
    dp3_sat_pp r0.z, r6, r8
    pow r2.x, r0.z, r7.z
    nrm_pp r5.xyz, r4
    dp3_sat_pp r0.z, r5, r8
    pow r4.x, r0.z, r7.z
    mul_pp r4.yzw, r7.w, c37.xxyz
    mul_pp r4.xyz, r4.x, r4.yzww
    mad_pp r2.yzw, r4.xxyz, r1.w, r2
    mul_pp r4.xyz, c59.w, c59
    mul_pp r4.xyz, r7.w, r4
    mul_pp r4.xyz, r2.x, r4
    mad_pp r2.xyz, r0.x, r4, r2.yzww
    mul_pp r2.xyz, r2, c18
    mul r4, r8.y, c91
    mad r4, r8.x, c90, r4
    mad r4, r8.z, c92, r4
    dp3_pp r0.z, r8, -c10
    add_pp r0.z, r0.z, c2.z
    mul_sat_pp r0.yz, r0, c2.w
    mul_pp r5.xyz, r0.z, c36
    mad_pp r3.yzw, r5.xxyz, r1.w, r3
    dp4 r0.z, r4, r4
    rsq r0.z, r0.z
    mul r0.zw, r0.z, r4.xyxy
    mad_pp r0.zw, r0, c3.xyxy, c3.x
    texld_pp r4, r0.zwzw, s3
    mul r5.xyz, r4, c63.x
    mad_pp r4.xyz, r5, r4.w, r4
    add r5, r7.y, -c4
    add r6, r7.x, -c4
    cmp r0.zw, -r5_abs.x, v0.xyxy, c4.x
    cmp r0.zw, -r5_abs.y, v0, r0
    cmp r0.zw, -r5_abs.z, v1.xyxy, r0
    cmp r0.zw, -r5_abs.w, v1, r0
    texld_pp r5, r0.zwzw, s1
    mul_pp r4.xyz, r4, r5.w
    mul r0.z, c64.z, c64.x
    mov r7.xz, c64
    mad r0.w, r7.x, -r7.z, r7.z
    mad_pp r0.z, r1.w, r0.w, r0.z
    mul_pp r4.xyz, r0.z, r4
    mad_pp r2.xyz, r2, r5, r4
    mul_pp r2.xyz, r2, v3.w
    mul_pp r4.xyz, r1, r1
    dp3_pp r0.z, r4, c1
    mad_pp r1.xyz, r1, r1, -r0.z
    mad_sat_pp r1.xyz, r1, c71.w, r0.z
    mul_pp r4.xyz, r1, c70
    mul r4.xyz, r4, c70.w
    mad r1.xyz, r1, c70, -r4
    mad_pp r1.xyz, r3.x, r1, r4
    mul r4.xyz, c58.w, c58
    mul_pp r0.yzw, r0.y, r4.xxyz
    mad_pp r0.xyz, r0.x, r0.yzww, r3.yzww
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    cmp r1.xy, -r6_abs.x, v0, c4.x
    cmp r1.xy, -r6_abs.y, v0.zwzw, r1
    cmp r1.xy, -r6_abs.z, v1, r1
    cmp r1.xy, -r6_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    add_sat_pp r0.w, r4.w, r1.w
    mul_pp r3.w, r0.w, c16.w
    mad_pp r0.xyz, r0, r1, r2
    mov r1.xyz, c150
    mul_pp r1.xyz, r1, c17
    mad_pp r3.xyz, r1, c150.w, r0
    mul_pp r0, r3, v9
    mul_pp r0.w, r0.w, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c3.z
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 273 instruction slots used (7 texture, 266 arithmetic)
