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
//   sampler2D g_FramebufferSampler;
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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampNrm2;
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
//   mrgTexcoordIndex                      c26      2
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
//   sampDif                               s0       1
//   sampSpe                               s1       1
//   sampNrm                               s3       1
//   sampNrm2                              s4       1
//   sampEnv                               s5       1
//   g_GISampler                           s10      1
//   g_FramebufferSampler                  s11      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, -2, 3
    def c1, 0.298900008, 0.586600006, 0.114399999, 1024
    def c2, 500, 5, 0.5, -0.5
    def c3, 0.0500000007, 4, 0, 0
    def c4, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s10
    dcl_2d s11
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
    mov r2.xy, c4
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c4.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c4.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    add r1.x, -c48.z, c48.w
    rcp r1.x, r1.x
    add r1.yzw, -c46.xxyz, v2.xxyz
    dp3 r2.z, r1.yzww, r1.yzww
    rsq r2.z, r2.z
    rcp r2.w, r2.z
    mul_pp r1.yzw, r1, r2.z
    add r2.z, r2.w, -c48.z
    mul_sat r1.x, r1.x, r2.z
    add_pp r1.x, -r1.x, c4.y
    add r2.z, -c40.z, c40.w
    rcp r2.z, r2.z
    add r3.xyz, -c38, v2
    dp3 r2.w, r3, r3
    rsq r2.w, r2.w
    rcp r3.w, r2.w
    mul_pp r3.xyz, r2.w, r3
    add r2.w, r3.w, -c40.z
    mul_sat r2.z, r2.z, r2.w
    add r2.w, -c44.z, c44.w
    rcp r2.w, r2.w
    add r4.xyz, -c42, v2
    dp3 r3.w, r4, r4
    rsq r3.w, r3.w
    rcp r4.w, r3.w
    mul_pp r4.xyz, r3.w, r4
    add r3.w, r4.w, -c44.z
    mul_sat r2.w, r2.w, r3.w
    add_pp r2.zw, -r2, c4.y
    frc r5.xy, c27
    cmp r5.zw, -r5.xyxy, c4.x, c4.y
    add r5.xy, -r5, c27
    cmp r5.zw, c27.xyxy, r2.x, r5
    add r5.xy, r5.zwzw, r5
    add r6, r5.x, -c4
    add r5, r5.y, -c4
    cmp r7.xy, -r6_abs.x, v0, c4.x
    cmp r6.xy, -r6_abs.y, v0.zwzw, r7
    cmp r6.xy, -r6_abs.z, v1, r6
    cmp r6.xy, -r6_abs.w, v1.zwzw, r6
    texld_pp r6, r6, s3
    mul_pp r6.x, r6.w, r6.x
    mad_pp r6.xy, r6, c0.x, c0.y
    dp2add_pp r3.w, r6, -r6, c4.y
    rsq_pp r3.w, r3.w
    rcp_pp r3.w, r3.w
    nrm_pp r7.xyz, v7
    mul_pp r6.yzw, r6.y, r7.xxyz
    nrm_pp r8.xyz, v6
    mad_pp r6.xyz, r6.x, r8, r6.yzww
    nrm_pp r9.xyz, v3
    mad_pp r6.xyz, r3.w, r9, r6
    cmp r10.xy, -r5_abs.x, v0, c4.x
    cmp r5.xy, -r5_abs.y, v0.zwzw, r10
    cmp r5.xy, -r5_abs.z, v1, r5
    cmp r5.xy, -r5_abs.w, v1.zwzw, r5
    texld_pp r5, r5, s4
    mul_pp r5.x, r5.w, r5.x
    mad_pp r5.xy, r5, c0.x, c0.y
    mul_pp r7.xyz, r7, r5.y
    mad_pp r7.xyz, r5.x, r8, r7
    dp2add_pp r3.w, r5, -r5, c4.y
    rsq_pp r3.w, r3.w
    rcp_pp r3.w, r3.w
    mad_pp r5.xyz, r3.w, r9, r7
    add_pp r5.xyz, r5, r6
    nrm_pp r6.xyz, r5
    add_pp r5.xyz, c22, -v2
    dp3_pp r3.w, r5, r5
    rsq_pp r3.w, r3.w
    mad_pp r7.xyz, r5, r3.w, -r4
    dp3_pp r4.x, r6, -r4
    nrm_pp r8.xyz, r7
    dp3_sat_pp r4.y, r8, r6
    mov_pp r7.xy, c2
    mul_pp r4.zw, r7.xyxy, c20.xyyz
    max_pp r5.w, r4.z, c4.y
    min r4.z, r5.w, c1.w
    pow r5.w, r4.y, r4.z
    mul_pp r7.xyz, r4.w, c43
    mul_pp r7.xyz, r5.w, r7
    mul_pp r7.xyz, r2.w, r7
    mad_pp r8.xyz, r5, r3.w, -r3
    dp3_pp r3.x, r6, -r3
    nrm_pp r9.xyz, r8
    dp3_sat_pp r3.y, r9, r6
    pow r5.w, r3.y, r4.z
    mul_pp r8.xyz, r4.w, c39
    mul_pp r8.xyz, r5.w, r8
    mad_pp r7.xyz, r2.z, r8, r7
    mad_pp r8.xyz, r5, r3.w, -r1.yzww
    dp3_pp r1.y, r6, -r1.yzww
    nrm_pp r9.xyz, r8
    dp3_sat_pp r1.z, r9, r6
    pow r3.y, r1.z, r4.z
    mul_pp r8.xyz, r4.w, c47
    mul_pp r8.xyz, r3.y, r8
    mad_pp r7.xyz, r1.x, r8, r7
    add r1.z, -c52.z, c52.w
    rcp r1.z, r1.z
    add r8.xyz, -c50, v2
    dp3 r1.w, r8, r8
    rsq r1.w, r1.w
    rcp r3.y, r1.w
    mul_pp r8.xyz, r1.w, r8
    add r1.w, r3.y, -c52.z
    mul_sat r1.z, r1.z, r1.w
    add_pp r1.z, -r1.z, c4.y
    mad_pp r9.xyz, r5, r3.w, -r8
    dp3_pp r1.w, r6, -r8
    nrm_pp r8.xyz, r9
    dp3_sat_pp r3.y, r8, r6
    pow r5.w, r3.y, r4.z
    mul_pp r8.xyz, r4.w, c51
    mul_pp r8.xyz, r5.w, r8
    mad_pp r7.xyz, r1.z, r8, r7
    rcp r3.y, v4.w
    mul r3.yz, r3.y, v4.xxyw
    mad r3.yz, r3, c0.x, c0.y
    abs_sat r3.yz, r3
    add_sat r3.yz, r3, -c65.x
    mul r3.yz, r3, c65.y
    max r4.y, r3.y, r3.z
    max r3.y, v4.z, c4.x
    add r3.z, r3.y, -v4.w
    cmp r8.z, r3.z, c4.x, r3.y
    mov r8.xyw, v4
    texldp_pp r8, r8, s13
    lrp_pp r3.y, v5.z, c4.y, r8.x
    lrp_pp r5.w, r4.y, c4.y, r3.y
    texld_pp r8, v0.zwzw, s10
    mul r3.y, r5.w, r8.w
    mad_pp r9.xyz, r5, r3.w, -c10
    mad_pp r5.xyz, r5, r3.w, -r0.yzww
    dp3_pp r0.y, r6, -r0.yzww
    nrm_pp r10.xyz, r5
    dp3_sat_pp r0.z, r10, r6
    pow r3.z, r0.z, r4.z
    nrm_pp r5.xyz, r9
    dp3_sat_pp r0.z, r5, r6
    pow r3.w, r0.z, r4.z
    mul_pp r5.xyz, r4.w, c37
    mul_pp r5.xyz, r3.w, r5
    mad_pp r5.xyz, r5, r3.y, r7
    mul_pp r7.xyz, c59.w, c59
    mul_pp r4.yzw, r4.w, r7.xxyz
    mul_pp r4.yzw, r3.z, r4
    mad_pp r4.yzw, r0.x, r4, r5.xxyz
    mul r7, r6.y, c91
    mad r7, r6.x, c90, r7
    mad r7, r6.z, c92, r7
    dp3_pp r0.z, r6, -c10
    dp4 r0.w, r7, r7
    rsq r0.w, r0.w
    mul r3.zw, r0.w, r7.xyxy
    mad_pp r3.zw, r3, c2, c2.z
    texld_pp r6, r3.zwzw, s5
    mul r5.xyz, r6, c63.x
    mad_pp r5.xyz, r5, r6.w, r6
    frc r3.zw, c26.xyxz
    cmp r6.xy, -r3.zwzw, c4.x, c4.y
    add r3.zw, -r3, c26.xyxz
    cmp r6.xy, c26.xzzw, r2.x, r6
    add r3.zw, r3, r6.xyxy
    add r6, r3.w, -c4
    add r9, r3.z, -c4
    cmp r3.zw, -r6_abs.x, v0.xyxy, c4.x
    cmp r3.zw, -r6_abs.y, v0, r3
    cmp r3.zw, -r6_abs.z, v1.xyxy, r3
    cmp r3.zw, -r6_abs.w, v1, r3
    texld_pp r6, r3.zwzw, s1
    mul_pp r5.xyz, r5, r6.w
    mul r0.w, c64.z, c64.x
    mov r10.xz, c64
    mad r2.x, r10.x, -r10.z, r10.z
    mad_pp r0.w, r3.y, r2.x, r0.w
    mul_pp r5.xyz, r0.w, r5
    mad_pp r4.yzw, r4, c18.xxyz, r5.xxyz
    mul_pp r4.yzw, r6.xxyz, r4
    mul_pp r4.yzw, r4, v3.w
    mul_pp r5.xyz, r4.x, c43
    cmp_pp r5.xyz, r4.x, r5, c4.x
    mul_pp r5.xyz, r2.w, r5
    mul_pp r6.xyz, r3.x, c39
    cmp_pp r3.xzw, r3.x, r6.xyyz, c4.x
    mad_pp r2.xzw, r2.z, r3, r5.xyyz
    mul_pp r3.xzw, r1.y, c47.xyyz
    cmp_pp r3.xzw, r1.y, r3, c4.x
    mad_pp r2.xzw, r1.x, r3, r2
    mul_pp r3.xzw, r1.w, c51.xyyz
    cmp_pp r1.xyw, r1.w, r3.xzzw, c4.x
    mad_pp r1.xyz, r1.z, r1.xyww, r2.xzww
    mul r2.xzw, r0.z, c36.xyyz
    mul_pp r2.xzw, r3.y, r2
    cmp_pp r2.xzw, r0.z, r2, c4.x
    add_pp r1.xyz, r1, r2.xzww
    mul_pp r2.xzw, c58.w, c58.xyyz
    mul_pp r2.xzw, r0.y, r2
    cmp_pp r0.yzw, r0.y, r2.xxzw, c4.x
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mul_pp r1.xyz, r8, r8
    dp3_pp r0.w, r1, c1
    mad_pp r1.xyz, r8, r8, -r0.w
    mad_sat_pp r1.xyz, r1, c71.w, r0.w
    mul_pp r1.xyz, r1, c70
    mul_pp r2.xzw, r1.xyyz, c17.xyyz
    mul r2.xzw, r2, c70.w
    mad r1.xyz, r1, c17, -r2.xzww
    mad_pp r1.xyz, r5.w, r1, r2.xzww
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    cmp r1.xy, -r9_abs.x, v0, c4.x
    cmp r1.xy, -r9_abs.y, v0.zwzw, r1
    cmp r1.xy, -r9_abs.z, v1, r1
    cmp r1.xy, -r9_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    mad_pp r0.xyz, r0, r1, r4.yzww
    mul_pp r0.w, r1.w, c16.w
    mul_pp r0.w, r0.w, v8.w
    mul_pp r1.w, r0.w, c21.x
    mul r0.w, c24.w, vPos.y
    mad_pp r3.y, r0.w, -c0.x, -c0.y
    dp2add_pp r3.x, vPos.x, c24.z, -r2.y
    mad_pp r2.xy, r7, c3.x, r3
    mad r2.xy, r2, c2.zwzw, c2.z
    texld_pp r2, r2, s11
    add_pp r0.xyz, r0, r2
    mul_pp r1.xyz, r0, v8
    mul_pp r0, r1, c89
    min_pp r1, r0, c3.y
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 294 instruction slots used (8 texture, 286 arithmetic)
