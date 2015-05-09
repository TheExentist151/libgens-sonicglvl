//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_ChrPlayableMenuParam;
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
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampPower;
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
//   g_ChrPlayableMenuParam                c150     1
//   sampDif                               s0       1
//   sampPower                             s1       1
//   sampNrm                               s2       1
//   sampEnv                               s3       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, 1, 0.5
    def c1, 0, 0.0500000007, 10, 1024
    def c2, -2, 3, 500, 5
    def c3, 4, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s7
    dcl_2d s13
    max r0.x, v3.z, c1.x
    add r0.y, r0.x, -v3.w
    cmp r0.z, r0.y, c1.x, r0.x
    mov r0.xyw, v3
    texldp_pp r0, r0, s13
    max r0.y, v4.z, c1.x
    add r0.z, r0.y, -v4.w
    cmp r1.z, r0.z, c1.x, r0.y
    mov r1.xyw, v4
    texldp_pp r1, r1, s7
    min_pp r2.x, r1.x, r0.x
    lrp_pp r0.x, v5.z, c0.z, r1.x
    lrp_pp r0.y, v5.z, c0.z, r2.x
    rcp r0.z, v3.w
    mul r0.zw, r0.z, v3.xyxy
    mad r0.zw, r0, c0.x, c0.y
    abs_sat r0.zw, r0
    add_sat r0.zw, r0, -c65.x
    mul r0.zw, r0, c65.y
    max r1.x, r0.z, r0.w
    lrp_pp r2.x, r1.x, c0.z, r0.y
    lrp_pp r2.y, r1.x, c0.z, r0.x
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
    mad_pp r0.w, r0.y, c2.x, c2.y
    mul_pp r0.y, r0.y, r0.y
    mul_pp r0.y, r0.y, r0.w
    pow_sat_pp r1.w, r0.y, c61.w
    mov_pp r2.z, c0.z
    add r0.y, r2.z, -c61.x
    cmp_pp r0.y, r0.y, c0.z, r1.w
    add r0.w, -c60.z, c60.w
    rcp r0.w, r0.w
    mul_sat r0.z, r0.w, r0.z
    add_pp r0.z, -r0.z, c0.z
    cmp_pp r0.z, -c61.x, r2.z, r0.z
    mul_pp r0.y, r0.y, r0.z
    add_pp r2.xzw, c22.xyyz, -v1.xyyz
    dp3_pp r0.z, r2.xzww, r2.xzww
    rsq_pp r0.z, r0.z
    mad_pp r3.xyz, r2.xzww, r0.z, -r1
    nrm_pp r4.xyz, r3
    nrm_pp r3.xyz, v7
    texld_pp r5, v0, s2
    mul_pp r5.x, r5.w, r5.x
    mad_pp r5.xy, r5, c0.x, c0.y
    mul_pp r3.xyz, r3, r5.y
    nrm_pp r6.xyz, v6
    mad_pp r3.xyz, r5.x, r6, r3
    dp2add_pp r0.w, r5, -r5, c0.z
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    nrm_pp r5.xyz, v2
    mad_pp r3.xyz, r0.w, r5, r3
    dp3_sat_pp r0.w, r4, r3
    texld_pp r4, v0, s1
    mul_pp r4.xy, r4.w, c20.yzzw
    mul_pp r4.xy, r4, c2.zwzw
    max_pp r1.w, r4.x, c0.z
    min r3.w, r1.w, c1.w
    pow r1.w, r0.w, r3.w
    mul_pp r5.xyz, c59.w, c59
    mul_pp r5.xyz, r4.y, r5
    mul_pp r4.xyz, r4.y, c37
    mul_pp r5.xyz, r1.w, r5
    mul_pp r5.xyz, r0.y, r5
    mad_pp r6.xyz, r2.xzww, r0.z, -c10
    mul_pp r2.xzw, r0.z, r2
    nrm_pp r7.xyz, r6
    dp3_sat_pp r0.z, r7, r3
    pow r1.w, r0.z, r3.w
    mul_pp r4.xyz, r1.w, r4
    mad_pp r4.xyz, r4, r0.x, r5
    mul_pp r4.xyz, r4, c18
    dp3_pp r0.z, r2.xzww, r3
    add_pp r0.z, r0.z, r0.z
    mad_pp r5.xyz, r0.z, r3, -r2.xzww
    add_pp r5.w, r5.z, c0.z
    dp3_pp r0.z, r5.xyww, r5.xyww
    rsq_pp r0.z, r0.z
    rcp_pp r0.z, r0.z
    add_pp r0.z, r0.z, r0.z
    rcp r0.z, r0.z
    mad_pp r0.zw, r5.xyxy, r0.z, c0.w
    texld_pp r5, r0.zwzw, s3
    mul r2.xzw, r5.xyyz, c63.x
    mad_pp r2.xzw, r2, r5.w, r5.xyyz
    mul_pp r2.xzw, r4.w, r2
    mul r0.z, c64.z, c64.x
    mov r5.xz, c64
    mad r0.w, r5.x, -r5.z, r5.z
    mad_pp r0.z, r0.x, r0.w, r0.z
    mul_pp r2.xzw, r0.z, r2
    add_pp r0.z, c150.x, -v1.y
    add_pp r0.z, r0.z, c1.y
    mul_sat_pp r0.z, r0.z, c1.z
    mul_pp r2.xzw, r0.z, r2
    mad_pp r2.xzw, r4.xyyz, r0.z, r2
    mul_pp r2.xzw, r2, v2.w
    dp3_pp r0.w, r3, -c10
    mul r4.xyz, r0.w, c36
    mul_pp r4.xyz, r0.x, r4
    cmp_pp r4.xyz, r0.w, r4, c1.x
    dp3_pp r0.x, r3, -r1
    mul_pp r1.xyz, c58.w, c58
    mul_pp r1.xyz, r0.x, r1
    cmp_pp r1.xyz, r0.x, r1, c1.x
    mad_pp r0.xyw, r0.y, r1.xyzz, r4.xyzz
    mad_pp r1.xyz, r3, c0.w, c0.w
    mul_pp r3.xyz, r3, r3
    mov r4.xyz, c79
    add r4.xyz, -r4, c80
    mad r4.xyz, r1.y, r4, c79
    mul r4.xyz, r3.y, r4
    mov r5.xyz, c77
    add r5.xyz, -r5, c78
    mad r1.xyw, r1.x, r5.xyzz, c77.xyzz
    mad_pp r1.xyw, r3.x, r1, r4.xyzz
    mov r4.xyz, c81
    add r3.xyw, -r4.xyzz, c82.xyzz
    mad r3.xyw, r1.z, r3, c81.xyzz
    mad_pp r1.xyz, r3.z, r3.xyww, r1.xyww
    mul_pp r3.xyz, r1, c17
    mul r3.xyz, r3, c70.w
    mad r1.xyz, r1, c17, -r3
    mad_pp r1.xyz, r2.y, r1, r3
    add_pp r0.xyw, r0, r1.xyzz
    mul_pp r0.xyw, r0, c16.xyzz
    texld_pp r1, v0, s0
    add_pp r1, r1, c0.y
    mad_pp r1, r0.z, r1, c0.z
    mad_pp r0.xyz, r0.xyww, r1, r2.xzww
    mul_pp r1.x, r1.w, c16.w
    mul_pp r0.w, r1.x, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c3.x
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 166 instruction slots used (6 texture, 160 arithmetic)
