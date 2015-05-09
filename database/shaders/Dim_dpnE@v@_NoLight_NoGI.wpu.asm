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
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampEmi;
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
//   mrgTexcoordIndex                      c26      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   sampDif                               s0       1
//   sampPow                               s1       1
//   sampNrm                               s2       1
//   sampEmi                               s3       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, 0.5, -3
    def c1, 500, 5, 1024, 4
    def c2, 0.5, -0.5, 0, 0
    def c3, 0, 1, 2, 3
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
    mad_pp r1.y, r0.x, -c0.x, -c0.w
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
    max r1.x, v4.z, c3.x
    add r1.y, r1.x, -v4.w
    cmp r1.z, r1.y, c3.x, r1.x
    mov r1.xyw, v4
    texldp_pp r1, r1, s13
    max r1.y, v5.z, c3.x
    add r1.z, r1.y, -v5.w
    cmp r3.z, r1.z, c3.x, r1.y
    mov r3.xyw, v5
    texldp_pp r3, r3, s7
    min_pp r2.y, r3.x, r1.x
    lrp_pp r1.x, v6.z, c3.y, r3.x
    lrp_pp r1.y, v6.z, c3.y, r2.y
    rcp r1.z, v4.w
    mul r1.zw, r1.z, v4.xyxy
    mad r1.zw, r1, c0.x, c0.y
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.y, r1.z, r1.w
    lrp_pp r3.x, r2.y, c3.y, r1.y
    lrp_pp r3.y, r2.y, c3.y, r1.x
    mul_pp r1.x, r3.x, c77.w
    frc r1.yzw, c26.xxzw
    cmp r2.yzw, -r1, c3.x, c3.y
    add r1.yzw, -r1, c26.xxzw
    cmp r2.xyz, c26.xzww, r2.x, r2.yzww
    add r1.yzw, r1, r2.xxyz
    add r2, r1.w, -c3
    cmp r3.xz, -r2_abs.x, v0.xyyw, c3.x
    cmp r2.xy, -r2_abs.y, v0.zwzw, r3.xzzw
    cmp r2.xy, -r2_abs.z, v1, r2
    cmp r2.xy, -r2_abs.w, v1.zwzw, r2
    texld_pp r2, r2, s2
    mul_pp r2.x, r2.w, r2.x
    mad_pp r2.xy, r2, c0.x, c0.y
    nrm_pp r4.xyz, v8
    mul_pp r3.xzw, r2.y, r4.xyyz
    nrm_pp r4.xyz, v7
    mad_pp r3.xzw, r2.x, r4.xyyz, r3
    dp2add_pp r1.w, r2, -r2, c3.y
    rsq_pp r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r2.xyz, v3
    mad_pp r2.xyz, r1.w, r2, r3.xzww
    dp3_pp r1.w, r2, -c10
    mul r3.xzw, r1.w, c36.xyyz
    mul_pp r3.xzw, r1.x, r3
    cmp_pp r3.xzw, r1.w, r3, c3.x
    dp3_pp r1.w, r2, -r0.yzww
    mul_pp r4.xyz, c58.w, c58
    mul_pp r4.xyz, r1.w, r4
    cmp_pp r4.xyz, r1.w, r4, c3.x
    mad_pp r3.xzw, r0.x, r4.xyyz, r3
    mad_pp r4.xyz, r2, c0.z, c0.z
    mov r5.xyz, c79
    add r5.xyz, -r5, c80
    mad r5.xyz, r4.y, r5, c79
    mul_pp r6.xyz, r2, r2
    mul r5.xyz, r5, r6.y
    mov r7.xyz, c77
    add r7.xyz, -r7, c78
    mad r4.xyw, r4.x, r7.xyzz, c77.xyzz
    mad_pp r4.xyw, r6.x, r4, r5.xyzz
    mov r5.xyz, c81
    add r5.xyz, -r5, c82
    mad r5.xyz, r4.z, r5, c81
    mad_pp r4.xyz, r6.z, r5, r4.xyww
    mul r5.xyz, r4, c70.w
    mad r4.xyz, r4, -c70.w, r4
    mad_pp r4.xyz, r3.y, r4, r5
    add_pp r3.xyz, r3.xzww, r4
    mul_pp r3.xyz, r3, c16
    add_pp r4.xyz, c22, -v2
    dp3_pp r1.w, r4, r4
    rsq_pp r1.w, r1.w
    mad_pp r0.yzw, r4.xxyz, r1.w, -r0
    mad_pp r4.xyz, r4, r1.w, -c10
    nrm_pp r5.xyz, r4
    dp3_sat_pp r1.w, r5, r2
    nrm_pp r4.xyz, r0.yzww
    dp3_sat_pp r0.y, r4, r2
    add r4, r1.z, -c3
    add r5, r1.y, -c3
    cmp r0.zw, -r4_abs.x, v0.xyxy, c3.x
    cmp r0.zw, -r4_abs.y, v0, r0
    cmp r0.zw, -r4_abs.z, v1.xyxy, r0
    cmp r0.zw, -r4_abs.w, v1, r0
    texld_pp r4, r0.zwzw, s1
    mul_pp r0.zw, r4.x, c20.xyyz
    mul_pp r0.zw, r0, c1.xyxy
    max_pp r1.y, r0.z, c3.y
    min r0.z, r1.y, c1.z
    pow r1.y, r0.y, r0.z
    pow r2.w, r1.w, r0.z
    mul_pp r4.xyz, c59.w, c59
    mul_pp r4.xyz, r0.w, r4
    mul_pp r0.yzw, r0.w, c37.xxyz
    mul_pp r0.yzw, r2.w, r0
    mul_pp r1.yzw, r1.y, r4.xxyz
    mul_pp r1.yzw, r0.x, r1
    mad_pp r0.xyz, r0.yzww, r1.x, r1.yzww
    mul_pp r0.xyz, r0, c18
    mul_pp r0.xyz, r0, v3.w
    cmp r1.xy, -r5_abs.x, v0, c3.x
    cmp r1.xy, -r5_abs.y, v0.zwzw, r1
    cmp r1.xy, -r5_abs.z, v1, r1
    cmp r1.xy, -r5_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    mad_pp r0.xyz, r3, r1, r0
    mul_pp r0.w, r1.w, c16.w
    mul_pp r0.w, r0.w, v9.w
    mul_pp r1.w, r0.w, c21.x
    mul r3, r2.y, c91
    mad r3, r2.x, c90, r3
    mad r2, r2.z, c92, r3
    dp4 r0.w, r2, r2
    rsq r0.w, r0.w
    mul r2.xy, r0.w, r2
    mad_pp r2.xy, r2, c2, c2.x
    texld_pp r2, r2, s3
    mad_pp r0.xyz, r2, c17, r0
    mul_pp r1.xyz, r0, v9
    mul_pp r0, r1, c89
    min_pp r1, r0, c1.w
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 169 instruction slots used (6 texture, 163 arithmetic)
