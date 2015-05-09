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
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm0;
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
//   sampNrm0                   s3       1
//   sampEnv                    s5       1
//   sampRef                    s6       1
//   g_VerticalShadowMapSampler s7       1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0, -2, 3, 1024
    def c1, 500, 5, 0.583607316, 1
    def c2, 2, -1, 1, 0.5
    def c3, 0.25, 4, 0, 0
    def c4, 0.763941944, 1, -1, 0
    def c5, -1, 1, 0, 0.5
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8
    dcl_2d s0
    dcl_2d s3
    dcl_2d s5
    dcl_2d s6
    dcl_2d s7
    dcl_2d s13
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
    mad_pp r1.y, r0.x, c0.y, c0.z
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov_pp r1.z, c2.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c2.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c2.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v3.z, c0.x
    add r1.y, r1.x, -v3.w
    cmp r1.z, r1.y, c0.x, r1.x
    mov r1.xyw, v3
    texldp_pp r1, r1, s13
    max r1.y, v4.z, c0.x
    add r1.z, r1.y, -v4.w
    cmp r2.z, r1.z, c0.x, r1.y
    mov r2.xyw, v4
    texldp_pp r2, r2, s7
    min_pp r3.x, r2.x, r1.x
    lrp_pp r1.x, v5.z, c2.z, r3.x
    rcp r1.y, v3.w
    mul r1.yz, r1.y, v3.xxyw
    mad r1.yz, r1, c2.x, c2.y
    abs_sat r1.yz, r1
    add_sat r1.yz, r1, -c65.x
    mul r1.yz, r1, c65.y
    max r2.x, r1.y, r1.z
    lrp_pp r3.x, r2.x, c2.z, r1.x
    mul r1.x, r3.x, c77.w
    nrm_pp r2, v7.xyzx
    texld_pp r3, v0, s3
    mul_pp r3.x, r3.w, r3.x
    mad_pp r1.yz, r3.xxyw, c2.x, c2.y
    mul_pp r2, r2, r1.z
    nrm_pp r3, v6.xyzx
    mad_pp r2, r1.y, r3, r2
    dp2add_pp r1.y, r1.yzzw, -r1.yzzw, c2.z
    rsq_pp r1.y, r1.y
    rcp_pp r1.y, r1.y
    nrm r3, v2.xyzx
    mad_pp r2, r1.y, r3.wyzw, r2
    dp3_pp r1.y, r2.wyzw, -c10
    mul r4.xyz, r1.y, c36
    mul_pp r4.xyz, r1.x, r4
    cmp_pp r1.yzw, r1.y, r4.xxyz, c0.x
    dp3_pp r4.x, r2.wyzw, -r0.yzww
    mul_pp r4.yzw, c58.w, c58.xxyz
    mul_pp r4.yzw, r4.x, r4
    cmp_pp r4.xyz, r4.x, r4.yzww, c0.x
    mad_pp r1.yzw, r0.x, r4.xxyz, r1
    mov r4.xyz, c79
    add r4.xyz, -r4, c80
    mad_pp r5.xyz, r2.wyzw, c2.w, c2.w
    mad r4.xyz, r5.y, r4, c79
    mul_pp r6.xyz, r2.wyzw, r2.wyzw
    mul r4.xyz, r4, r6.y
    mov r7.xyz, c77
    add r7.xyz, -r7, c78
    mad r5.xyw, r5.x, r7.xyzz, c77.xyzz
    mad_pp r4.xyz, r6.x, r5.xyww, r4
    mov r7.xyz, c81
    add r5.xyw, -r7.xyzz, c82.xyzz
    mad r5.xyz, r5.z, r5.xyww, c81
    mad_pp r4.xyz, r6.z, r5, r4
    mad_pp r1.yzw, r4.xxyz, c17.xxyz, r1
    mul_pp r1.yzw, r1, c16.xxyz
    texld_pp r4, v0, s0
    mul_pp r5.xyz, r1.yzww, r4
    mul_pp r5.w, r4.w, c16.w
    mul_pp r4, r5, v8
    add_pp r5, c22.xyzx, -v1.xyzx
    dp3_pp r1.y, r5.yzww, r5.yzww
    rsq_pp r1.y, r1.y
    mad_pp r0.yzw, r5.xxyz, r1.y, -r0
    nrm_pp r6.xyz, r0.yzww
    dp3_sat_pp r0.y, r6, r2
    mov_pp r6.xy, c1
    mul_pp r0.zw, r6.xyxy, c20.xyyz
    max_pp r1.z, r0.z, c2.z
    min r0.z, r1.z, c0.w
    pow r1.z, r0.y, r0.z
    mul_pp r6.xyz, c59.w, c59
    mul_pp r6.xyz, r0.w, r6
    mul_pp r7.xyz, r0.w, c37
    mul_pp r6.xyz, r1.z, r6
    mul_pp r0.xyw, r0.x, r6.xyzz
    mad_pp r6.xyz, r5, r1.y, -c10
    mul_pp r5, r1.y, r5
    nrm_pp r8.xyz, r6
    dp3_sat_pp r1.y, r8, r2
    pow r6.x, r1.y, r0.z
    mul_pp r1.yzw, r6.x, r7.xxyz
    mad_pp r0.xyz, r1.yzww, r1.x, r0.xyww
    mul_pp r0.xyz, r0, c18
    mad_pp r0.xyz, r0, v2.w, r4
    dp3_pp r0.w, r5.yzww, r3.yzww
    mad_pp r1.y, r0.w, -r0.w, c2.z
    mad_pp r1.y, r1.y, -c1.z, c1.w
    rsq_pp r1.y, r1.y
    rcp_pp r1.y, r1.y
    mad r0.w, r0.w, c4.x, -r1.y
    mul_pp r6, r5.wyzw, c4.x
    mad r3, r3, r0.w, -r6
    mad r6, r3.wyzw, c5.xxyz, c5.zzzw
    mul r7, r3, c4.yzzw
    cmp_pp r3, r3.z, r6, r7
    add_pp r0.w, r3.z, c2.z
    rcp r0.w, r0.w
    mad_pp r1.yz, r3.xyxw, r0.w, c2.z
    mad_pp r3.x, r1.z, c3.x, r3.w
    mul_pp r3.y, r1.y, c2.w
    texld_pp r3, r3, s6
    mul r1.yzw, r3.xxyz, c63.x
    mad_pp r1.yzw, r1, r3.w, r3.xxyz
    mul r0.w, c64.z, c64.x
    mov r3.xz, c64
    mad r3.x, r3.x, -r3.z, r3.z
    mad_pp r0.w, r1.x, r3.x, r0.w
    dp3_pp r1.x, r5.yzww, r2.yzww
    add_pp r1.x, r1.x, r1.x
    mad r2, r1.x, r2, -r5
    mad r3, r2.wyzw, c5.xxyz, c5.zzzw
    mul r5, r2, c4.yzzw
    cmp_pp r2, r2.z, r3, r5
    add_pp r1.x, r2.z, c2.z
    rcp r1.x, r1.x
    mad_pp r2.xy, r2.yxzw, r1.x, c2.z
    mad_pp r3.x, r2.y, c3.x, r2.w
    mul_pp r3.y, r2.x, c2.w
    texld_pp r2, r3, s5
    mul r3.xyz, r2, c63.x
    mad_pp r2.xyz, r3, r2.w, r2
    mad_pp r2.xyz, r2, r0.w, -r1.yzww
    mov_sat_pp r0.w, v2.w
    mad_pp r1.xyz, r0.w, r2, r1.yzww
    add_pp r4.xyz, r0, r1
    mul_pp r0, r4, c89
    min_pp r1, r0, c3.y
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 174 instruction slots used (6 texture, 168 arithmetic)
