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
//   float4 mrgPlayableParam;
//   sampler2D sampAlpha;
//   sampler2D sampDif;
//   sampler2D sampEnv;
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
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampSpe                               s1       1
//   sampEnv                               s5       1
//   sampAlpha                             s6       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, -2, 3, 500, 5
    def c1, 1024, 1, -1, 0
    def c2, 0.25, 4, 0, 0
    def c3, 0.5, 0, 1, -2
    def c4, -1, 1, 0, 0.5
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_color_pp v6
    dcl vPos.y
    dcl_2d s0
    dcl_2d s1
    dcl_2d s5
    dcl_2d s6
    dcl_2d s7
    dcl_2d s13
    max r0.x, v3.z, c3.y
    add r0.y, r0.x, -v3.w
    cmp r0.z, r0.y, c3.y, r0.x
    mov r0.xyw, v3
    texldp_pp r0, r0, s13
    max r0.y, v4.z, c3.y
    add r0.z, r0.y, -v4.w
    cmp r1.z, r0.z, c3.y, r0.y
    mov r1.xyw, v4
    texldp_pp r1, r1, s7
    min_pp r2.x, r1.x, r0.x
    lrp_pp r0.x, v5.z, c3.z, r1.x
    lrp_pp r0.y, v5.z, c3.z, r2.x
    rcp r0.z, v3.w
    mul r0.zw, r0.z, v3.xyxy
    mad r0.zw, r0, -c3.w, -c3.z
    abs_sat r0.zw, r0
    add_sat r0.zw, r0, -c65.x
    mul r0.zw, r0, c65.y
    max r1.x, r0.z, r0.w
    lrp_pp r2.x, r1.x, c3.z, r0.y
    lrp_pp r2.y, r1.x, c3.z, r0.x
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
    mad_pp r0.w, r0.y, c0.x, c0.y
    mul_pp r0.y, r0.y, r0.y
    mul_pp r0.y, r0.y, r0.w
    pow_sat_pp r1.w, r0.y, c61.w
    mov r2.z, c3.z
    add r0.y, r2.z, -c61.x
    cmp_pp r0.y, r0.y, c3.z, r1.w
    add r0.w, -c60.z, c60.w
    rcp r0.w, r0.w
    mul_sat r0.z, r0.w, r0.z
    add_pp r0.z, -r0.z, c3.z
    cmp_pp r0.z, -c61.x, r2.z, r0.z
    mul_pp r0.y, r0.y, r0.z
    mul_pp r2.xzw, c59.w, c59.xyyz
    mov_pp r0.zw, c0
    mul_pp r0.zw, r0, c20.xyyz
    mul_pp r2.xzw, r0.w, r2
    max_pp r1.w, r0.z, c3.z
    mul_pp r3.xyz, r0.w, c37
    min r0.z, r1.w, c1.x
    add_pp r4, c22.xyzx, -v1.xyzx
    dp3_pp r0.w, r4.yzww, r4.yzww
    rsq_pp r0.w, r0.w
    mad_pp r5.xyz, r4, r0.w, -r1
    nrm_pp r6.xyz, r5
    nrm r5, v2.xyzx
    dp3_sat_pp r1.w, r6, r5
    pow r3.w, r1.w, r0.z
    mul_pp r2.xzw, r2, r3.w
    mul_pp r2.xzw, r0.y, r2
    mad_pp r6.xyz, r4, r0.w, -c10
    mul r4, r0.w, r4
    nrm_pp r7.xyz, r6
    dp3_sat_pp r0.w, r7, r5
    pow r1.w, r0.w, r0.z
    mul_pp r3.xyz, r1.w, r3
    mad_pp r2.xzw, r3.xyyz, r0.x, r2
    mul r0.z, c64.z, c64.x
    mov r3.xz, c64
    mad r0.w, r3.x, -r3.z, r3.z
    mad_pp r0.z, r0.x, r0.w, r0.z
    dp3 r0.w, r4.yzww, r5.yzww
    add r0.w, r0.w, r0.w
    mad r3, r0.w, r5, -r4
    mad r4, r3.wyzw, c4.xxyz, c4.zzzw
    mul r6, r3, c1.yzzw
    cmp r3, r3.z, r4, r6
    add r0.w, r3.z, c3.z
    rcp r0.w, r0.w
    mad r3.xy, r3.yxzw, r0.w, c3.z
    mad_pp r4.x, r3.y, c2.x, r3.w
    mul_pp r4.y, r3.x, c3.x
    texld_pp r3, r4, s5
    mul r4.xyz, r3, c63.x
    mad_pp r3.xyz, r4, r3.w, r3
    texld_pp r4, v0, s1
    mul_pp r3.xyz, r3, r4.w
    mul_pp r3.xyz, r0.z, r3
    mad_pp r2.xzw, r2, c18.xyyz, r3.xyyz
    mul_pp r2.xzw, r4.xyyz, r2
    mul_pp r2.xzw, r2, v2.w
    dp3_pp r0.z, r5.wyzw, -c10
    mul r3.xyz, r0.z, c36
    mul_pp r3.xyz, r0.x, r3
    cmp_pp r0.xzw, r0.z, r3.xyyz, c3.y
    dp3_pp r1.x, r5.wyzw, -r1
    mul_pp r1.yzw, c58.w, c58.xxyz
    mul_pp r1.yzw, r1.x, r1
    cmp_pp r1.xyz, r1.x, r1.yzww, c3.y
    mad_pp r0.xyz, r0.y, r1, r0.xzww
    mov r1.xyz, c79
    add r1.xyz, -r1, c80
    mad_pp r3.xyz, r5.wyzw, c3.x, c3.x
    mul_pp r4.xyz, r5.wyzw, r5.wyzw
    mad r1.xyz, r3.y, r1, c79
    mul r1.xyz, r1, r4.y
    mov r5.xyz, c77
    add r5.xyz, -r5, c78
    mad r3.xyw, r3.x, r5.xyzz, c77.xyzz
    mad_pp r1.xyz, r4.x, r3.xyww, r1
    mov r5.xyz, c81
    add r3.xyw, -r5.xyzz, c82.xyzz
    mad r3.xyz, r3.z, r3.xyww, c81
    mad_pp r1.xyz, r4.z, r3, r1
    mul_pp r3.xyz, r1, c17
    mul r3.xyz, r3, c70.w
    mad r1.xyz, r1, c17, -r3
    mad_pp r1.xyz, r2.y, r1, r3
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    add r0.w, c3.x, vPos.y
    mov r1.x, c86.x
    mad r0.w, r0.w, c24.w, -r1.x
    mul_sat_pp r0.w, r0.w, c86.y
    texld_pp r1, v0, s0
    mul_pp r1.w, r1.w, c16.w
    mul_pp r1.w, r1.w, v6.w
    mul_pp r1.w, r1.w, c21.x
    lrp_pp r3.xyz, r0.w, r1, c3.z
    mad_pp r0.xyz, r0, r3, r2.xzww
    mul_pp r0.xyz, r0, v6
    texld r2, v0, s6
    mul_pp r0.w, r1.w, r2.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c2.y
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 154 instruction slots used (6 texture, 148 arithmetic)
