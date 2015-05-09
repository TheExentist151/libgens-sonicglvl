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
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
//   float4 mrgChrEmissionParam;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampEnv;
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
//   mrgChrEmissionParam                   c150     1
//   sampDif                               s0       1
//   sampSpec                              s1       1
//   sampEnv                               s3       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 2, -1, -0.0500000007
    def c1, 1.05263162, -2, 3, 1024
    def c2, 500, 5, 0.5, -0.5
    def c3, 4, 0, 0, 0
    def c4, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s7
    dcl_2d s13
    max r0.x, v4.z, c4.x
    add r0.y, r0.x, -v4.w
    cmp r0.z, r0.y, c4.x, r0.x
    mov r0.xyw, v4
    texldp_pp r0, r0, s13
    max r0.y, v5.z, c4.x
    add r0.z, r0.y, -v5.w
    cmp r1.z, r0.z, c4.x, r0.y
    mov r1.xyw, v5
    texldp_pp r1, r1, s7
    min_pp r2.x, r1.x, r0.x
    lrp_pp r0.x, v6.z, c4.y, r1.x
    lrp_pp r0.y, v6.z, c4.y, r2.x
    rcp r0.z, v4.w
    mul r0.zw, r0.z, v4.xyxy
    mad r0.zw, r0, c0.y, c0.z
    abs_sat r0.zw, r0
    add_sat r0.zw, r0, -c65.x
    mul r0.zw, r0, c65.y
    max r1.x, r0.z, r0.w
    lrp_pp r2.x, r1.x, c4.y, r0.y
    lrp_pp r2.y, r1.x, c4.y, r0.x
    mul r0.x, r2.x, c77.w
    add_pp r0.y, -c61.z, c61.y
    rcp_pp r0.y, r0.y
    add r1.xyz, -c22, v2
    dp3 r0.z, r1, r1
    rsq r0.z, r0.z
    mul_pp r1.xyz, r0.z, r1
    rcp r0.z, r0.z
    add r0.z, r0.z, -c60.z
    dp3_pp r0.w, r1, c23
    add_pp r0.w, r0.w, -c61.z
    mul_sat_pp r0.y, r0.y, r0.w
    mad_pp r0.w, r0.y, c1.y, c1.z
    mul_pp r0.y, r0.y, r0.y
    mul_pp r0.y, r0.y, r0.w
    pow_sat_pp r1.w, r0.y, c61.w
    mov r3.xy, c4
    add r0.y, r3.y, -c61.x
    cmp_pp r0.y, r0.y, c4.y, r1.w
    add r0.w, -c60.z, c60.w
    rcp r0.w, r0.w
    mul_sat r0.z, r0.w, r0.z
    add_pp r0.z, -r0.z, c4.y
    cmp_pp r0.z, -c61.x, r3.y, r0.z
    mul_pp r0.y, r0.y, r0.z
    mul_pp r2.xzw, c59.w, c59.xyyz
    mov_pp r4.xy, c2
    mul_pp r0.zw, r4.xyxy, c20.xyyz
    mul_pp r2.xzw, r0.w, r2
    max_pp r1.w, r0.z, c4.y
    mul_pp r3.yzw, r0.w, c37.xxyz
    min r0.z, r1.w, c1.w
    add_pp r4.xyz, c22, -v2
    dp3_pp r0.w, r4, r4
    rsq_pp r0.w, r0.w
    mad_pp r5.xyz, r4, r0.w, -r1
    mad_pp r4.xyz, r4, r0.w, -c10
    nrm_pp r6.xyz, r4
    nrm_pp r4.xyz, r5
    nrm_pp r5.xyz, v3
    dp3_sat_pp r0.w, r4, r5
    pow r1.w, r0.w, r0.z
    mul_pp r2.xzw, r1.w, r2
    mul_pp r2.xzw, r0.y, r2
    dp3_sat_pp r0.w, r6, r5
    pow r1.w, r0.w, r0.z
    mul_pp r3.yzw, r1.w, r3
    mad_pp r2.xzw, r3.yyzw, r0.x, r2
    mul_pp r2.xzw, r2, c18.xyyz
    frc r0.zw, c26.xyxz
    cmp r3.yz, -r0.xzww, c4.x, c4.y
    add r0.zw, -r0, c26.xyxz
    cmp r3.xy, c26.xzzw, r3.x, r3.yzzw
    add r0.zw, r0, r3.xyxy
    add r3, r0.w, -c4
    add r4, r0.z, -c4
    cmp r0.zw, -r3_abs.x, v0.xyxy, c4.x
    cmp r0.zw, -r3_abs.y, v0, r0
    cmp r0.zw, -r3_abs.z, v1.xyxy, r0
    cmp r0.zw, -r3_abs.w, v1, r0
    texld_pp r3, r0.zwzw, s1
    mul r0.z, c64.z, c64.x
    mov r6.xz, c64
    mad r0.w, r6.x, -r6.z, r6.z
    mad_pp r0.z, r0.x, r0.w, r0.z
    mul r6, r5.y, c91
    mad r6, r5.x, c90, r6
    mad r6, r5.z, c92, r6
    dp4 r0.w, r6, r6
    rsq r0.w, r0.w
    mul r6.xy, r0.w, r6
    mad_pp r6.xy, r6, c2.zwzw, c2.z
    texld_pp r6, r6, s3
    mul r7.xyz, r6, c63.x
    mad_pp r6.xyz, r7, r6.w, r6
    mul_pp r6.xyz, r3.w, r6
    mul_pp r6.xyz, r0.z, r6
    mad_pp r2.xzw, r2, r3.xyyz, r6.xyyz
    mul_pp r2.xzw, r2, v3.w
    dp3_pp r0.z, r5, -r1
    add_pp r0.z, r0.z, c0.w
    mul_sat_pp r0.z, r0.z, c1.x
    mul r1.xyz, c58.w, c58
    mul_pp r1.xyz, r0.z, r1
    mul_pp r0.yzw, r0.y, r1.xxyz
    dp3_pp r1.x, r5, -c10
    add_pp r1.x, r1.x, c0.w
    mul_sat_pp r1.x, r1.x, c1.x
    mul_pp r1.xyz, r1.x, c36
    mad_pp r0.xyz, r1, r0.x, r0.yzww
    mov r1.xyz, c79
    add r1.xyz, -r1, c80
    mad_pp r3.xyz, r5, c0.x, c0.x
    mul_pp r5.xyz, r5, r5
    mad r1.xyz, r3.y, r1, c79
    mul r1.xyz, r1, r5.y
    mov r6.xyz, c77
    add r6.xyz, -r6, c78
    mad r3.xyw, r3.x, r6.xyzz, c77.xyzz
    mad_pp r1.xyz, r5.x, r3.xyww, r1
    mov r6.xyz, c81
    add r3.xyw, -r6.xyzz, c82.xyzz
    mad r3.xyz, r3.z, r3.xyww, c81
    mad_pp r1.xyz, r5.z, r3, r1
    mul r3.xyz, r1, c70.w
    mad r1.xyz, r1, -c70.w, r1
    mad_pp r1.xyz, r2.y, r1, r3
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    cmp r1.xy, -r4_abs.x, v0, c4.x
    cmp r1.xy, -r4_abs.y, v0.zwzw, r1
    cmp r1.xy, -r4_abs.z, v1, r1
    cmp r1.xy, -r4_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    add_sat_pp r0.w, r6.w, r1.w
    mul_pp r3.w, r0.w, c16.w
    mad_pp r0.xyz, r0, r1, r2.xzww
    mov r1.xyz, c150
    mul_pp r1.xyz, r1, c17
    mad_pp r3.xyz, r1, c150.w, r0
    mul_pp r0, r3, v7
    mul_pp r0.w, r0.w, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c3.x
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 161 instruction slots used (5 texture, 156 arithmetic)
