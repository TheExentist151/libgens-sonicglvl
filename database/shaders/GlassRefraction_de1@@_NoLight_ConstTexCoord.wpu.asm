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
//   float2 mrgFresnelParam;
//   float2 mrgGlassRefractionParam;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDif;
//   sampler2D sampEnv;
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
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgFresnelParam                       c62      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   mrgGlassRefractionParam               c150     1
//   sampDif                               s0       1
//   sampEnv                               s1       1
//   g_GISampler                           s10      1
//   g_FramebufferSampler                  s11      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 1024
    def c1, 2, -2, -1, 3
    def c2, 500, 5, 0.5, -0.5
    def c3, 0.5, 1, 0, -1
    def c4, -0.707106769, 4, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3
    dcl_texcoord5_pp v4.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s10
    dcl_2d s11
    dcl_2d s13
    rcp r0.x, v3.w
    mul r0.xy, r0.x, v3
    mad r0.xy, r0, c1.x, c1.z
    abs_sat r0.xy, r0
    add_sat r0.xy, r0, -c65.x
    mul r0.xy, r0, c65.y
    max r1.x, r0.x, r0.y
    max r0.x, v3.z, c3.z
    add r0.y, r0.x, -v3.w
    cmp r0.z, r0.y, c3.z, r0.x
    mov r0.xyw, v3
    texldp_pp r0, r0, s13
    lrp_pp r1.y, v4.z, c3.y, r0.x
    lrp_pp r0.x, r1.x, c3.y, r1.y
    texld_pp r1, v0.zwzw, s10
    mul_pp r0.yzw, r1.xxyz, r1.xxyz
    dp3_pp r0.y, r0.yzww, c0
    mad_pp r1.xyz, r1, r1, -r0.y
    mad_sat_pp r0.yzw, r1.xxyz, c71.w, r0.y
    mul_pp r0.yzw, r0, c70.xxyz
    mul r1.x, r0.x, r1.w
    mul_pp r1.yzw, r0, c17.xxyz
    mul r1.yzw, r1, c70.w
    mad r0.yzw, r0, c17.xxyz, -r1
    mad_pp r0.xyz, r0.x, r0.yzww, r1.yzww
    add_pp r0.w, -c61.z, c61.y
    rcp_pp r0.w, r0.w
    add r1.yzw, -c22.xxyz, v1.xxyz
    dp3 r2.x, r1.yzww, r1.yzww
    rsq r2.x, r2.x
    mul_pp r1.yzw, r1, r2.x
    rcp r2.x, r2.x
    add r2.x, r2.x, -c60.z
    dp3_pp r2.y, r1.yzww, c23
    add_pp r2.y, r2.y, -c61.z
    mul_sat_pp r0.w, r0.w, r2.y
    mad_pp r2.y, r0.w, c1.y, c1.w
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r0.w, r2.y
    pow_sat_pp r2.y, r0.w, c61.w
    mov r3.yzw, c3
    add r0.w, r3.y, -c61.x
    cmp_pp r0.w, r0.w, c3.y, r2.y
    add r2.y, -c60.z, c60.w
    rcp r2.y, r2.y
    mul_sat r2.x, r2.y, r2.x
    add_pp r2.x, -r2.x, c3.y
    cmp_pp r2.x, -c61.x, r3.y, r2.x
    mul_pp r0.w, r0.w, r2.x
    nrm_pp r2.xyz, v2
    dp3_pp r2.w, r2, -c10
    mul r4.xyz, r2.w, c36
    mul_pp r4.xyz, r1.x, r4
    cmp_pp r4.xyz, r2.w, r4, c3.z
    mul_pp r5.xyz, c58.w, c58
    dp3_pp r2.w, r2, -r1.yzww
    mul_pp r5.xyz, r2.w, r5
    cmp_pp r5.xyz, r2.w, r5, c3.z
    mad_pp r4.xyz, r0.w, r5, r4
    add_pp r0.xyz, r0, r4
    mul_pp r0.xyz, r0, c16
    add r4.xy, c3.x, vPos
    mul r4.xy, r4, c24.zwzw
    mad r5, c24.zzww, r3.yzzw, r3.zywz
    mad r3.xz, r4.xyyw, c1.xyyw, r5.xyyw
    add_pp r3.xz, r5.zyww, r3
    mul r2.w, c150.x, c150.x
    mul r4, r2.y, c91
    mad r4, r2.x, c90, r4
    mad r4, r2.z, c92, r4
    mad r3.w, r4.z, -r4.z, c3.y
    mad r2.w, r2.w, -r3.w, c3.y
    cmp r3.w, r2.w, c3.y, c3.z
    mul r2.w, r2.w, r3.w
    mul r3.w, r3.w, c150.x
    rsq r2.w, r2.w
    rcp r2.w, r2.w
    mad r2.w, r3.w, -r4.z, r2.w
    mul_pp r5.xy, r4, r2.w
    mad_pp r3.xz, r5.xyyw, c4.x, r3
    mad r3.xz, r3, c2.zyww, c2.z
    texld_pp r5, r3.xzzw, s11
    texld_pp r6, v0, s0
    mad r0.xyz, r0, r6, -r5
    mul_pp r2.w, r6.w, c16.w
    mad_pp r3.x, c16.w, -r6.w, r3.y
    mad_pp r0.xyz, r2.w, r0, r5
    add_pp r5.xyz, c22, -v1
    dp3_pp r2.w, r5, r5
    rsq_pp r2.w, r2.w
    mad_pp r1.yzw, r5.xxyz, r2.w, -r1
    nrm_pp r6.xyz, r1.yzww
    dp3_sat_pp r1.y, r6, r2
    mov_pp r6.xy, c2
    mul_pp r1.zw, r6.xyxy, c20.xyyz
    max_pp r3.z, r1.z, c3.y
    min r1.z, r3.z, c0.w
    pow r3.z, r1.y, r1.z
    mul_pp r6.xyz, c59.w, c59
    mul_pp r6.xyz, r1.w, r6
    mul_pp r7.xyz, r1.w, c37
    mul_pp r6.xyz, r3.z, r6
    mul_pp r6.xyz, r0.w, r6
    mad_pp r8.xyz, r5, r2.w, -c10
    mul_pp r5.xyz, r2.w, r5
    dp3_sat_pp r0.w, r2, r5
    add_pp r0.w, -r0.w, c3.y
    nrm_pp r5.xyz, r8
    dp3_sat_pp r1.y, r5, r2
    pow r2.x, r1.y, r1.z
    mul_pp r1.yzw, r2.x, r7.xxyz
    mad_pp r1.yzw, r1, r1.x, r6.xxyz
    dp4 r2.x, r4, r4
    rsq r2.x, r2.x
    mul r2.xy, r2.x, r4
    mad_pp r2.xy, r2, c2.zwzw, c2.z
    texld_pp r2, r2, s1
    mul r4.xyz, r2, c63.x
    mad_pp r2.xyz, r4, r2.w, r2
    mul_pp r2.xyz, r3.x, r2
    mul r2.w, c64.z, c64.x
    mov r3.xz, c64
    mad r3.x, r3.x, -r3.z, r3.z
    mad_pp r1.x, r1.x, r3.x, r2.w
    mul_pp r2.xyz, r1.x, r2
    mad_pp r1.xyz, r1.yzww, c18, r2
    mul_pp r1.w, r0.w, r0.w
    mul_pp r1.w, r1.w, r1.w
    mul_pp r0.w, r0.w, r1.w
    lrp_pp r1.w, r0.w, r3.y, c62.x
    mul_pp r0.w, r1.w, c62.y
    mad_pp r0.xyz, r1, r0.w, r0
    mul_pp r0.xyz, r0, c89
    mov_pp r1.w, c89.w
    mul_pp r0.w, r1.w, c21.x
    min_pp r1, r0, c4.y
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 151 instruction slots used (5 texture, 146 arithmetic)
