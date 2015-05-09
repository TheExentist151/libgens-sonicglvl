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
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxView;
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
//   float4 mrgLuminanceRange;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
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
//   sampDif                               s0       1
//   sampSpe                               s1       1
//   sampNrm                               s3       1
//   sampEnv                               s4       1
//   g_VerticalShadowMapSampler            s7       1
//   g_FramebufferSampler                  s11      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0, -2, 3, 1024
    def c1, 500, 5, 0.5, -0.5
    def c2, 2, -1, 1, 0.5
    def c3, 0.0500000007, 4, 0, 0
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
    dcl_2d s3
    dcl_2d s4
    dcl_2d s7
    dcl_2d s11
    dcl_2d s13
    max r0.x, v3.z, c0.x
    add r0.y, r0.x, -v3.w
    cmp r0.z, r0.y, c0.x, r0.x
    mov r0.xyw, v3
    texldp_pp r0, r0, s13
    max r0.y, v4.z, c0.x
    add r0.z, r0.y, -v4.w
    cmp r1.z, r0.z, c0.x, r0.y
    mov r1.xyw, v4
    texldp_pp r1, r1, s7
    min_pp r2.x, r1.x, r0.x
    lrp_pp r0.x, v5.z, c2.z, r1.x
    lrp_pp r0.y, v5.z, c2.z, r2.x
    rcp r0.z, v3.w
    mul r0.zw, r0.z, v3.xyxy
    mad r0.zw, r0, c2.x, c2.y
    abs_sat r0.zw, r0
    add_sat r0.zw, r0, -c65.x
    mul r0.zw, r0, c65.y
    max r1.x, r0.z, r0.w
    lrp_pp r2.x, r1.x, c2.z, r0.y
    lrp_pp r2.y, r1.x, c2.z, r0.x
    mul r0.x, r2.x, c77.w
    add_pp r0.y, -c61.z, c61.y
    rcp_pp r0.y, r0.y
    add r1.xyz, -c22, v1
    dp3 r0.z, r1, r1
    rsq r0.z, r0.z
    mul_pp r1.xyz, r0.z, r1
    rcp r0.z, r0.z
    add r0.z, r0.z, -c60.z
    dp3_pp r0.w, r1, c23
    add_pp r0.w, r0.w, -c61.z
    mul_sat_pp r0.y, r0.y, r0.w
    mad_pp r0.w, r0.y, c0.y, c0.z
    mul_pp r0.y, r0.y, r0.y
    mul_pp r0.y, r0.y, r0.w
    pow_sat_pp r1.w, r0.y, c61.w
    mov_pp r3.yz, c2
    add r0.y, r3.z, -c61.x
    cmp_pp r0.y, r0.y, c2.z, r1.w
    add r0.w, -c60.z, c60.w
    rcp r0.w, r0.w
    mul_sat r0.z, r0.w, r0.z
    add_pp r0.z, -r0.z, c2.z
    cmp_pp r0.z, -c61.x, r3.z, r0.z
    mul_pp r0.y, r0.y, r0.z
    add_pp r2.xzw, c22.xyyz, -v1.xyyz
    dp3_pp r0.z, r2.xzww, r2.xzww
    rsq_pp r0.z, r0.z
    mad_pp r3.xzw, r2, r0.z, -r1.xyyz
    mad_pp r2.xzw, r2, r0.z, -c10.xyyz
    nrm_pp r4.xyz, r2.xzww
    nrm_pp r5.xyz, r3.xzww
    nrm_pp r6.xyz, v7
    texld_pp r7, v0, s3
    mul_pp r7.x, r7.w, r7.x
    mad_pp r0.zw, r7.xyxy, c2.x, c2.y
    mul_pp r2.xzw, r6.xyyz, r0.w
    nrm_pp r6.xyz, v6
    mad_pp r2.xzw, r0.z, r6.xyyz, r2
    dp2add_pp r0.z, r0.zwzw, -r0.zwzw, c2.z
    rsq_pp r0.z, r0.z
    rcp_pp r0.z, r0.z
    nrm_pp r6.xyz, v2
    mad_pp r2.xzw, r0.z, r6.xyyz, r2
    dp3_sat_pp r0.z, r5, r2.xzww
    mov_pp r5.xy, c1
    mul_pp r3.xz, r5.xyyw, c20.yyzw
    max_pp r0.w, r3.x, c2.z
    min r1.w, r0.w, c0.w
    pow r3.x, r0.z, r1.w
    mul_pp r5.xyz, c59.w, c59
    mul_pp r5.xyz, r3.z, r5
    mul_pp r6.xyz, r3.z, c37
    mul_pp r3.xzw, r3.x, r5.xyyz
    mul_pp r3.xzw, r0.y, r3
    dp3_sat_pp r0.z, r4, r2.xzww
    pow r4.x, r0.z, r1.w
    mul_pp r4.xyz, r4.x, r6
    mad_pp r3.xzw, r4.xyyz, r0.x, r3
    mul r0.z, c64.z, c64.x
    mov r4.xz, c64
    mad r0.w, r4.x, -r4.z, r4.z
    mad_pp r0.z, r0.x, r0.w, r0.z
    mul r4, r2.z, c91
    mad r4, r2.x, c90, r4
    mad r4, r2.w, c92, r4
    dp4 r0.w, r4, r4
    rsq r0.w, r0.w
    mul r4.zw, r0.w, r4.xyxy
    mad_pp r4.zw, r4, c1, c1.z
    texld_pp r5, r4.zwzw, s4
    mul r6.xyz, r5, c63.x
    mad_pp r5.xyz, r6, r5.w, r5
    texld_pp r6, v0, s1
    mul_pp r5.xyz, r5, r6.w
    mul_pp r5.xyz, r0.z, r5
    mad_pp r3.xzw, r3, c18.xyyz, r5.xyyz
    mul_pp r3.xzw, r6.xyyz, r3
    mul_pp r3.xzw, r3, v2.w
    dp3_pp r0.z, r2.xzww, -c10
    mul r5.xyz, r0.z, c36
    mul_pp r5.xyz, r0.x, r5
    cmp_pp r0.xzw, r0.z, r5.xyyz, c0.x
    dp3_pp r1.x, r2.xzww, -r1
    mul_pp r1.yzw, c58.w, c58.xxyz
    mul_pp r1.yzw, r1.x, r1
    cmp_pp r1.xyz, r1.x, r1.yzww, c0.x
    mad_pp r0.xyz, r0.y, r1, r0.xzww
    mad_pp r1.xyz, r2.xzww, c2.w, c2.w
    mul_pp r2.xzw, r2, r2
    mov r5.xyz, c79
    add r5.xyz, -r5, c80
    mad r5.xyz, r1.y, r5, c79
    mul r5.xyz, r2.z, r5
    mov r6.xyz, c77
    add r6.xyz, -r6, c78
    mad r1.xyw, r1.x, r6.xyzz, c77.xyzz
    mad_pp r1.xyw, r2.x, r1, r5.xyzz
    mov r5.xyz, c81
    add r5.xyz, -r5, c82
    mad r5.xyz, r1.z, r5, c81
    mad_pp r1.xyz, r2.w, r5, r1.xyww
    mul_pp r2.xzw, r1.xyyz, c17.xyyz
    mul r2.xzw, r2, c70.w
    mad r1.xyz, r1, c17, -r2.xzww
    mad_pp r1.xyz, r2.y, r1, r2.xzww
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    texld_pp r1, v0, s0
    mad_pp r0.xyz, r0, r1, r3.xzww
    mul_pp r0.w, r1.w, c16.w
    mul_pp r0.w, r0.w, v8.w
    mul_pp r1.w, r0.w, c21.x
    mul r0.w, c24.w, vPos.y
    mad_pp r2.y, r0.w, -c2.x, -c2.y
    dp2add_pp r2.x, vPos.x, c24.z, r3.y
    mad_pp r2.xy, r4, c3.x, r2
    mad r2.xy, r2, c1.zwzw, c1.z
    texld_pp r2, r2, s11
    add_pp r0.xyz, r0, r2
    mul_pp r1.xyz, r0, v8
    mul_pp r0, r1, c89
    min_pp r1, r0, c3.y
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 166 instruction slots used (7 texture, 159 arithmetic)
