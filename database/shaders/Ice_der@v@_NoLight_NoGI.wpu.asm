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
//   float4 g_LightScatteringColor;
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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampRef;
//
//
// Registers:
//
//   Name                       Reg   Size
//   -------------------------- ----- ----
//   mrgGlobalLight_Direction   c10      1
//   g_Diffuse                  c16      1
//   g_Ambient                  c17      1
//   g_Specular                 c18      1
//   g_PowerGlossLevel          c20      1
//   g_EyePosition              c22      1
//   g_EyeDirection             c23      1
//   mrgTexcoordIndex           c26      1
//   mrgGlobalLight_Diffuse     c36      1
//   mrgGlobalLight_Specular    c37      1
//   mrgEyeLight_Diffuse        c58      1
//   mrgEyeLight_Specular       c59      1
//   mrgEyeLight_Range          c60      1
//   mrgEyeLight_Attribute      c61      1
//   mrgLuminanceRange          c63      1
//   mrgInShadowScale           c64      1
//   g_ShadowMapParams          c65      1
//   g_LightScatteringColor     c75      1
//   g_aLightField              c77      6
//   g_ForceAlphaColor          c89      1
//   sampDif                    s0       1
//   sampEnv                    s5       1
//   sampRef                    s6       1
//   g_VerticalShadowMapSampler s7       1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 500, 5, 1024, 0.763941944
    def c1, 0.5, 2, -1, -3
    def c2, 0.25, 4, 0, 0
    def c3, 0.583607316, 1, -1, 0
    def c4, 0, 1, 2, 3
    def c5, -1, 1, 0, 0.5
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_color_pp v7
    dcl_2d s0
    dcl_2d s5
    dcl_2d s6
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
    mad_pp r1.y, r0.x, -c1.y, -c1.w
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
    mad r1.yz, r1, c1.y, c1.z
    abs_sat r1.yz, r1
    add_sat r1.yz, r1, -c65.x
    mul r1.yz, r1, c65.y
    max r2.y, r1.y, r1.z
    lrp_pp r3.x, r2.y, c4.y, r1.x
    mul r1.x, r3.x, c77.w
    nrm r3, v3.xyzx
    dp3_pp r1.y, r3.wyzw, -c10
    mul r2.yzw, r1.y, c36.xxyz
    mul_pp r2.yzw, r1.x, r2
    cmp_pp r1.yzw, r1.y, r2, c4.x
    mul_pp r2.yzw, c58.w, c58.xxyz
    dp3_pp r4.x, r3.wyzw, -r0.yzww
    mul_pp r2.yzw, r2, r4.x
    cmp_pp r2.yzw, r4.x, r2, c4.x
    mad_pp r1.yzw, r0.x, r2, r1
    mov r4.xyz, c79
    add r2.yzw, -r4.xxyz, c80.xxyz
    mad_pp r4.xyz, r3.wyzw, c1.x, c1.x
    mad r2.yzw, r4.y, r2, c79.xxyz
    mul_pp r5.xyz, r3.wyzw, r3.wyzw
    mul r2.yzw, r2, r5.y
    mov r6.xyz, c77
    add r6.xyz, -r6, c78
    mad r4.xyw, r4.x, r6.xyzz, c77.xyzz
    mad_pp r2.yzw, r5.x, r4.xxyw, r2
    mov r6.xyz, c81
    add r4.xyw, -r6.xyzz, c82.xyzz
    mad r4.xyz, r4.z, r4.xyww, c81
    mad_pp r2.yzw, r5.z, r4.xxyz, r2
    mad_pp r1.yzw, r2, c17.xxyz, r1
    mul_pp r1.yzw, r1, c16.xxyz
    frc r2.y, c26.x
    cmp r2.z, -r2.y, c4.x, c4.y
    add r2.y, -r2.y, c26.x
    cmp r2.x, c26.x, r2.x, r2.z
    add r2.x, r2.x, r2.y
    add r2, r2.x, -c4
    cmp r4.xy, -r2_abs.x, v0, c4.x
    cmp r2.xy, -r2_abs.y, v0.zwzw, r4
    cmp r2.xy, -r2_abs.z, v1, r2
    cmp r2.xy, -r2_abs.w, v1.zwzw, r2
    texld_pp r2, r2, s0
    mul_pp r4.xyz, r1.yzww, r2
    mul_pp r4.w, r2.w, c16.w
    mul_pp r2, r4, v7
    add_pp r4, c22.xyzx, -v2.xyzx
    dp3_pp r1.y, r4.yzww, r4.yzww
    rsq_pp r1.y, r1.y
    mad_pp r0.yzw, r4.xxyz, r1.y, -r0
    nrm_pp r5.xyz, r0.yzww
    dp3_sat_pp r0.y, r5, r3
    mov_pp r5.xy, c0
    mul_pp r0.zw, r5.xyxy, c20.xyyz
    max_pp r1.z, r0.z, c4.y
    min r0.z, r1.z, c0.z
    pow r1.z, r0.y, r0.z
    mul_pp r5.xyz, c59.w, c59
    mul_pp r5.xyz, r0.w, r5
    mul_pp r6.xyz, r0.w, c37
    mul_pp r5.xyz, r1.z, r5
    mul_pp r0.xyw, r0.x, r5.xyzz
    mad_pp r5.xyz, r4, r1.y, -c10
    mul_pp r4, r1.y, r4
    nrm_pp r7.xyz, r5
    dp3_sat_pp r1.y, r7, r3
    pow r5.x, r1.y, r0.z
    mul_pp r1.yzw, r5.x, r6.xxyz
    mad_pp r0.xyz, r1.yzww, r1.x, r0.xyww
    mul_pp r0.xyz, r0, c18
    mad_pp r0.xyz, r0, v3.w, r2
    mul r0.w, c64.z, c64.x
    mov r5.xz, c64
    mad r1.y, r5.x, -r5.z, r5.z
    mad_pp r0.w, r1.x, r1.y, r0.w
    dp3_pp r1.x, r4.yzww, r3.yzww
    mad_pp r1.y, r1.x, -r1.x, c4.y
    mad_pp r1.y, r1.y, -c3.x, c3.y
    rsq_pp r1.y, r1.y
    rcp_pp r1.y, r1.y
    mad r1.y, r1.x, c0.w, -r1.y
    add_pp r1.x, r1.x, r1.x
    mad r5, r1.x, r3, -r4
    mul_pp r4, r4.wyzw, c0.w
    mad r1, r3.wyzw, r1.y, -r4
    mad r3, r1.wyzw, c5.xxyz, c5.zzzw
    mul r4, r1, c3.yzzw
    cmp_pp r1, r1.z, r3, r4
    add_pp r1.z, r1.z, c4.y
    rcp r1.z, r1.z
    mad_pp r1.xy, r1.yxzw, r1.z, c4.y
    mad_pp r3.x, r1.y, c2.x, r1.w
    mul_pp r3.y, r1.x, c1.x
    texld_pp r1, r3, s6
    mul r3.xyz, r1, c63.x
    mad_pp r1.xyz, r3, r1.w, r1
    mad r3, r5.wyzw, c5.xxyz, c5.zzzw
    mul r4, r5, c3.yzzw
    cmp_pp r3, r5.z, r3, r4
    add_pp r1.w, r3.z, c4.y
    rcp r1.w, r1.w
    mad_pp r3.xy, r3.yxzw, r1.w, c4.y
    mad_pp r4.x, r3.y, c2.x, r3.w
    mul_pp r4.y, r3.x, c1.x
    texld_pp r3, r4, s5
    mul r4.xyz, r3, c63.x
    mad_pp r3.xyz, r4, r3.w, r3
    mad_pp r3.xyz, r3, r0.w, -r1
    mov_sat_pp r0.w, v3.w
    mad_pp r1.xyz, r0.w, r3, r1
    add_pp r2.xyz, r0, r1
    mul_pp r0, r2, c89
    min_pp r1, r0, c2.y
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 167 instruction slots used (5 texture, 162 arithmetic)
