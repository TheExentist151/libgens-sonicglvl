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
//   float4 g_SonicEyeHighLightColor;
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
//   samplerCUBE sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampPamNpcEyeSampler;
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
//   g_SonicEyeHighLightColor              c150     1
//   g_ChrPlayableMenuParam                c151     1
//   sampDif                               s0       1
//   sampPower                             s1       1
//   sampNrm                               s2       1
//   sampEnv                               s3       1
//   sampPamNpcEyeSampler                  s6       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, 1, 0.5
    def c1, 0, 0.0500000007, 10, 1024
    def c2, -2, 3, 500, 5
    def c3, 0.699999988, 0.300000012, 4, 0
    dcl_texcoord v0.xy
    dcl_texcoord1 v1.xyz
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4_pp v4.xyz
    dcl_texcoord6_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_color_pp v7
    dcl_texcoord8 v8
    dcl_texcoord5 v9
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_cube s3
    dcl_2d s6
    dcl_2d s7
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v6.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c2.x, c2.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r1.z, c0.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c0.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c0.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v8.z, c1.x
    add r1.y, r1.x, -v8.w
    cmp r1.z, r1.y, c1.x, r1.x
    mov r1.xyw, v8
    texldp_pp r1, r1, s13
    max r1.y, v9.z, c1.x
    add r1.z, r1.y, -v9.w
    cmp r2.z, r1.z, c1.x, r1.y
    mov r2.xyw, v9
    texldp_pp r2, r2, s7
    min_pp r3.x, r2.x, r1.x
    lrp_pp r1.x, v4.z, c0.z, r2.x
    lrp_pp r1.y, v4.z, c0.z, r3.x
    rcp r1.z, v8.w
    mul r1.zw, r1.z, v8.xyxy
    mad r1.zw, r1, c0.x, c0.y
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.x, r1.z, r1.w
    lrp_pp r3.x, r2.x, c0.z, r1.y
    lrp_pp r3.y, r2.x, c0.z, r1.x
    mul r1.x, r3.x, c77.w
    nrm_pp r2.xyz, v3
    dp3_pp r1.y, r2, -c10
    mul r3.xzw, r1.y, c36.xyyz
    mul_pp r3.xzw, r1.x, r3
    cmp_pp r1.yzw, r1.y, r3.xxzw, c1.x
    mul_pp r3.xzw, c58.w, c58.xyyz
    dp3_pp r2.w, r2, -r0.yzww
    mul_pp r3.xzw, r2.w, r3
    cmp_pp r3.xzw, r2.w, r3, c1.x
    mad_pp r1.yzw, r0.x, r3.xxzw, r1
    mov r4.xyz, c79
    add r3.xzw, -r4.xyyz, c80.xyyz
    mad_pp r4.xyz, r2, c0.w, c0.w
    mad r3.xzw, r4.y, r3, c79.xyyz
    mul_pp r5.xyz, r2, r2
    mul r3.xzw, r3, r5.y
    mov r6.xyz, c77
    add r6.xyz, -r6, c78
    mad r4.xyw, r4.x, r6.xyzz, c77.xyzz
    mad_pp r3.xzw, r5.x, r4.xyyw, r3
    mov r6.xyz, c81
    add r4.xyw, -r6.xyzz, c82.xyzz
    mad r4.xyz, r4.z, r4.xyww, c81
    mad_pp r3.xzw, r5.z, r4.xyyz, r3
    mul_pp r4.xyz, r3.xzww, c17
    mul r4.xyz, r4, c70.w
    mad r3.xzw, r3, c17.xyyz, -r4.xyyz
    mad_pp r3.xyz, r3.y, r3.xzww, r4
    add_pp r1.yzw, r1, r3.xxyz
    mul_pp r1.yzw, r1, c16.xxyz
    add_pp r3.xyz, c22, -v6
    dp3_pp r2.w, r3, r3
    rsq_pp r2.w, r2.w
    mad_pp r0.yzw, r3.xxyz, r2.w, -r0
    nrm_pp r4.xyz, r0.yzww
    dp3_sat_pp r0.y, r4, r2
    texld_pp r5, v0, s1
    mov r0.zw, c2
    mul_pp r6, r0.zwzw, c20.yzyz
    mul_pp r5, r5.xxyy, r6
    max_pp r0.zw, r5.xyxz, c0.z
    min r5.xz, r0.zyww, c1.w
    pow r3.w, r0.y, r5.x
    mul_pp r0.yzw, c59.w, c59.xxyz
    mul_pp r6.xyz, r5.y, r0.yzww
    mul_pp r0.yzw, r5.w, r0
    mul_pp r6.xyz, r3.w, r6
    mul_pp r6.xyz, r0.x, r6
    mul_pp r7.xyz, r5.y, c37
    mad_pp r8.xyz, r3, r2.w, -c10
    mul_pp r3.xyz, r2.w, r3
    nrm_pp r9.xyz, r8
    dp3_sat_pp r2.w, r9, r2
    pow r3.w, r2.w, r5.x
    mul_pp r7.xyz, r3.w, r7
    mad_pp r6.xyz, r7, r1.x, r6
    mul_pp r6.xyz, r6, c18
    mul_pp r7.xyz, r5.y, c150
    mul_pp r8.xyz, r5.w, c37
    dp3_pp r2.w, v5, v5
    rsq_pp r2.w, r2.w
    mad_pp r10.xyz, v5, r2.w, r3
    nrm_pp r11.xyz, r10
    texld r10, v0, s2
    mad_pp r10, r10, c0.x, c0.y
    dp2add_pp r2.w, r10, -r10, c0.z
    rsq_pp r2.w, r2.w
    rcp_pp r2.w, r2.w
    nrm_pp r12.xyz, v1
    nrm_pp r13.xyz, v2
    mul_pp r14.xyz, r10.y, r13
    mul_pp r13.xyz, r10.w, r13
    mad_pp r13.xyz, r10.z, r12, r13
    mad_pp r12.xyz, r10.x, r12, r14
    dp2add_pp r3.w, r10.zwzw, -r10.zwzw, c0.z
    rsq_pp r3.w, r3.w
    rcp_pp r3.w, r3.w
    mad_pp r10.xyz, r3.w, r2, r13
    mad_pp r12.xyz, r2.w, r2, r12
    dp3_sat_pp r2.w, r11, r12
    pow r3.w, r2.w, r5.x
    mul_pp r5.xyw, r3.w, r7.xyzz
    add_pp r2.w, c151.x, -v6.y
    add_pp r2.w, r2.w, c1.y
    mul_sat_pp r2.w, r2.w, c1.z
    mad_pp r5.xyw, r6.xyzz, r2.w, r5
    dp3 r3.w, -r3, r2
    add r3.w, r3.w, r3.w
    mad_pp r2.xyz, r2, -r3.w, -r3
    dp3_sat_pp r3.x, r10, r3
    add_pp r3.x, -r3.x, c0.z
    texld_pp r6, r2, s3
    mul r2.xyz, r6, c63.x
    mad_pp r2.xyz, r2, r6.w, r6
    mul_pp r2.xyz, r2, v7.w
    mul r3.y, c64.z, c64.x
    mov r6.xz, c64
    mad r3.z, r6.x, -r6.z, r6.z
    mad_pp r3.y, r1.x, r3.z, r3.y
    mul_pp r2.xyz, r2, r3.y
    mad_pp r2.xyz, r2, r2.w, r5.xyww
    mul_pp r2.xyz, r2, v3.w
    texld_pp r6, v0, s6
    texld_pp r7, v0, s0
    lrp_pp r11, r2.w, r7, r6
    mad_pp r1.yzw, r1, r11.xxyz, r2.xxyz
    dp3_sat_pp r2.x, r4, r10
    dp3_sat_pp r2.y, r9, r10
    pow r3.y, r2.y, r5.z
    pow r3.z, r2.x, r5.z
    mul_pp r0.yzw, r0, r3.z
    mul_pp r0.xyz, r0.yzww, r0.x
    mul_pp r2.xyz, r3.y, r8
    mad_pp r0.xyz, r2, r1.x, r0
    mul_pp r0.xyz, r0, c18
    mul_pp r0.xyz, r2.w, r0
    mul_pp r0.xyz, r11, r0
    mul_pp r0.w, r11.w, c16.w
    mul_pp r2.w, r0.w, c21.x
    mul_pp r0.w, r3.x, r3.x
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r3.x, r0.w
    mad_pp r0.w, r0.w, c3.x, c3.y
    mad_pp r0.xyz, r0, r0.w, r1.yzww
    mul_pp r2.xyz, r0, v7
    mul_pp r0, r2, c89
    min_pp r1, r0, c3.z
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 203 instruction slots used (7 texture, 196 arithmetic)
