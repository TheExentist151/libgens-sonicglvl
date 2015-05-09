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
//   sampler2D sampNrm1;
//   sampler2D sampPower;
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
//   sampPower                  s2       1
//   sampNrm0                   s3       1
//   sampNrm1                   s4       1
//   sampEnv                    s5       1
//   sampRef                    s6       1
//   g_VerticalShadowMapSampler s7       1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0, -2, 3, 1024
    def c1, 0.25, 4, 0, 0
    def c2, 2, -1, 1, 0.5
    def c3, 500, 5, 0.583607316, 1
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
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
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
    mov r1.z, c2.z
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
    texld_pp r2, v0, s3
    mul_pp r2.x, r2.w, r2.x
    mad_pp r1.yz, r2.xxyw, c2.x, c2.y
    dp2add_pp r1.w, r1.yzzw, -r1.yzzw, c2.z
    rsq_pp r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r2, v7.xyzx
    mul_pp r3, r1.z, r2.wyzw
    nrm_pp r4, v6.xyzx
    mad_pp r3, r1.y, r4.wyzw, r3
    nrm_pp r5, v2.xyzx
    mad_pp r3, r1.w, r5.wyzw, r3
    dp3_pp r1.y, r3.wyzw, -c10
    mul r6.xyz, r1.y, c36
    mul_pp r6.xyz, r1.x, r6
    cmp_pp r1.yzw, r1.y, r6.xxyz, c0.x
    mul_pp r6.xyz, c58.w, c58
    dp3_pp r6.w, r3.wyzw, -r0.yzww
    mul_pp r6.xyz, r6.w, r6
    cmp_pp r6.xyz, r6.w, r6, c0.x
    mad_pp r1.yzw, r0.x, r6.xxyz, r1
    mov r6.xyz, c79
    add r6.xyz, -r6, c80
    mad_pp r7.xyz, r3.wyzw, c2.w, c2.w
    mad r6.xyz, r7.y, r6, c79
    mul_pp r8.xyz, r3.wyzw, r3.wyzw
    mul r6.xyz, r6, r8.y
    mov r9.xyz, c77
    add r9.xyz, -r9, c78
    mad r7.xyw, r7.x, r9.xyzz, c77.xyzz
    mad_pp r6.xyz, r8.x, r7.xyww, r6
    mov r9.xyz, c81
    add r7.xyw, -r9.xyzz, c82.xyzz
    mad r7.xyz, r7.z, r7.xyww, c81
    mad_pp r6.xyz, r8.z, r7, r6
    mad_pp r1.yzw, r6.xxyz, c17.xxyz, r1
    mul_pp r1.yzw, r1, c16.xxyz
    texld_pp r6, v0, s0
    mul_pp r7.xyz, r1.yzww, r6
    mul_pp r7.w, r6.w, c16.w
    mul_pp r6, r7, v8
    add_pp r7, c22.xyzx, -v1.xyzx
    dp3_pp r1.y, r7.yzww, r7.yzww
    rsq_pp r1.y, r1.y
    mad_pp r0.yzw, r7.xxyz, r1.y, -r0
    nrm_pp r8.xyz, r0.yzww
    dp3_sat_pp r0.y, r8, r3
    texld_pp r8, v0, s2
    mul_pp r0.zw, r8.x, c20.xyyz
    mul_pp r0.zw, r0, c3.xyxy
    max_pp r1.z, r0.z, c2.z
    min r0.z, r1.z, c0.w
    pow r1.z, r0.y, r0.z
    mul_pp r8.yzw, c59.w, c59.xxyz
    mul_pp r8.yzw, r0.w, r8
    mul_pp r9.xyz, r0.w, c37
    mul_pp r8.yzw, r1.z, r8
    mul_pp r0.xyw, r0.x, r8.yzzw
    mad_pp r8.yzw, r7.xxyz, r1.y, -c10.xxyz
    mul_pp r7, r1.y, r7
    nrm_pp r10.xyz, r8.yzww
    dp3_sat_pp r1.y, r10, r3
    pow r8.y, r1.y, r0.z
    mul_pp r1.yzw, r8.y, r9.xxyz
    mad_pp r0.xyz, r1.yzww, r1.x, r0.xyww
    mul_pp r0.xyz, r0, c18
    mad_pp r0.xyz, r0, v2.w, r6
    texld_pp r9, v0, s4
    mul_pp r9.x, r9.w, r9.x
    mad_pp r1.yz, r9.xxyw, c2.x, c2.y
    mul_pp r2, r2, r1.z
    mad_pp r2, r1.y, r4, r2
    dp2add_pp r0.w, r1.yzzw, -r1.yzzw, c2.z
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    mad r2, r0.w, r5, r2
    dp3_pp r0.w, r7.yzww, r2.yzww
    mad_pp r1.y, r0.w, -r0.w, c2.z
    mad_pp r1.y, r1.y, -c3.z, c3.w
    rsq_pp r1.y, r1.y
    rcp_pp r1.y, r1.y
    mad r0.w, r0.w, c4.x, -r1.y
    mul_pp r4, r7.wyzw, c4.x
    mad r2, r2, r0.w, -r4
    mad r4, r2.wyzw, c5.xxyz, c5.zzzw
    mul r5, r2, c4.yzzw
    cmp_pp r2, r2.z, r4, r5
    add_pp r0.w, r2.z, c2.z
    rcp r0.w, r0.w
    mad_pp r1.yz, r2.xyxw, r0.w, c2.z
    mad_pp r2.x, r1.z, c1.x, r2.w
    mul_pp r2.y, r1.y, c2.w
    texld_pp r2, r2, s6
    mul r1.yzw, r2.xxyz, c63.x
    mad_pp r1.yzw, r1, r2.w, r2.xxyz
    mul_pp r1.yzw, r8.x, r1
    mul r0.w, c64.z, c64.x
    mov r2.xz, c64
    mad r2.x, r2.x, -r2.z, r2.z
    mad_pp r0.w, r1.x, r2.x, r0.w
    dp3_pp r1.x, r7.yzww, r3.yzww
    add_pp r1.x, r1.x, r1.x
    mad r2, r1.x, r3, -r7
    mad r3, r2.wyzw, c5.xxyz, c5.zzzw
    mul r4, r2, c4.yzzw
    cmp_pp r2, r2.z, r3, r4
    add_pp r1.x, r2.z, c2.z
    rcp r1.x, r1.x
    mad_pp r2.xy, r2.yxzw, r1.x, c2.z
    mad_pp r3.x, r2.y, c1.x, r2.w
    mul_pp r3.y, r2.x, c2.w
    texld_pp r2, r3, s5
    mul r3.xyz, r2, c63.x
    mad_pp r2.xyz, r3, r2.w, r2
    mul_pp r2.xyz, r8.x, r2
    mad_pp r2.xyz, r2, r0.w, -r1.yzww
    mov_sat_pp r0.w, v2.w
    mad_pp r1.xyz, r0.w, r2, r1.yzww
    add_pp r6.xyz, r0, r1
    mul_pp r0, r6, c89
    min_pp r1, r0, c1.y
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 187 instruction slots used (8 texture, 179 arithmetic)
