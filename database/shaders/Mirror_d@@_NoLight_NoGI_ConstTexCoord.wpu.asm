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
//   sampler2D g_ReflectionMapSampler;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgPlayableParam;
//   sampler2D sampDif;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   g_ViewportSize                        c24      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//   g_ReflectionMapSampler                s14      1
//

    ps_3_0
    def c0, 0.5, 0, 1, -2
    def c1, -2, 3, 4, 0
    def c2, 1, 0, -1, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_color_pp v6
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s7
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
    mov r1.z, c0.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c0.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c0.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v3.z, c0.y
    add r1.y, r1.x, -v3.w
    cmp r1.z, r1.y, c0.y, r1.x
    mov r1.xyw, v3
    texldp_pp r1, r1, s13
    max r1.y, v4.z, c0.y
    add r1.z, r1.y, -v4.w
    cmp r2.z, r1.z, c0.y, r1.y
    mov r2.xyw, v4
    texldp_pp r2, r2, s7
    min_pp r3.x, r2.x, r1.x
    lrp_pp r1.x, v5.z, c0.z, r2.x
    lrp_pp r1.y, v5.z, c0.z, r3.x
    rcp r1.z, v3.w
    mul r1.zw, r1.z, v3.xyxy
    mad r1.zw, r1, -c0.w, -c0.z
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.x, r1.z, r1.w
    lrp_pp r3.x, r2.x, c0.z, r1.y
    lrp_pp r3.y, r2.x, c0.z, r1.x
    mul_pp r1.x, r3.x, c77.w
    nrm_pp r2.xyz, v2
    dp3_pp r1.y, r2, -c10
    mul r3.xzw, r1.y, c36.xyyz
    mul_pp r1.xzw, r1.x, r3
    cmp_pp r1.xyz, r1.y, r1.xzww, c0.y
    dp3_pp r0.y, r2, -r0.yzww
    mul_pp r3.xzw, c58.w, c58.xyyz
    mul_pp r3.xzw, r0.y, r3
    cmp_pp r0.yzw, r0.y, r3.xxzw, c0.y
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mov r1.xyz, c79
    add r1.xyz, -r1, c80
    mad_pp r3.xzw, r2.xyyz, c0.x, c0.x
    mul_pp r2.xyz, r2, r2
    mad r1.xyz, r3.z, r1, c79
    mul r1.xyz, r1, r2.y
    mov r4.xyz, c77
    add r4.xyz, -r4, c78
    mad r4.xyz, r3.x, r4, c77
    mad_pp r1.xyz, r2.x, r4, r1
    mov r4.xyz, c81
    add r2.xyw, -r4.xyzz, c82.xyzz
    mad r2.xyw, r3.w, r2, c81.xyzz
    mad_pp r1.xyz, r2.z, r2.xyww, r1
    mul_pp r2.xyz, r1, c17
    mul r2.xyz, r2, c70.w
    mad r1.xyz, r1, c17, -r2
    mad_pp r1.xyz, r3.y, r1, r2
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    mul r1.xy, c24.zwzw, vPos
    mov r2.xyz, c2
    mad r2, c24.zzzw, r2.xyyz, r2.yzzy
    mad r1.xy, r1, -c0.w, r2
    mov r1.z, -r1.y
    add r1.xy, r2.zwzw, r1.xzzw
    mad r1.xy, r1, c0.x, c0.x
    texld_pp r1, r1, s14
    mul_pp r1.xyz, r1, v2.w
    add r0.w, c0.x, vPos.y
    mov r1.w, c24.w
    mad r0.w, r0.w, r1.w, -c86.x
    mul_sat_pp r0.w, r0.w, c86.y
    texld_pp r2, v0, s0
    mul_pp r1.w, r2.w, c16.w
    mul_pp r1.w, r1.w, v6.w
    mul_pp r3.w, r1.w, c21.x
    lrp_pp r4.xyz, r0.w, r2, c0.z
    mad_pp r0.xyz, r0, r4, r1
    mul_pp r3.xyz, r0, v6
    mul_pp r0, r3, c89
    min_pp r1, r0, c1.z
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 106 instruction slots used (4 texture, 102 arithmetic)
