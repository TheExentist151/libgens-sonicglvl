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
//   float4 mrgLocalLight0_Color;
//   float4 mrgLocalLight0_Position;
//   float4 mrgLocalLight0_Range;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLuminanceRange;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm0;
//   sampler2D sampNrm1;
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
//   mrgLocalLight0_Position    c38      1
//   mrgLocalLight0_Color       c39      1
//   mrgLocalLight0_Range       c40      1
//   mrgLocalLight1_Position    c42      1
//   mrgLocalLight1_Color       c43      1
//   mrgLocalLight1_Range       c44      1
//   mrgLocalLight2_Position    c46      1
//   mrgLocalLight2_Color       c47      1
//   mrgLocalLight2_Range       c48      1
//   mrgLocalLight3_Position    c50      1
//   mrgLocalLight3_Color       c51      1
//   mrgLocalLight3_Range       c52      1
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
//   sampNrm1                   s4       1
//   sampEnv                    s5       1
//   sampRef                    s6       1
//   g_VerticalShadowMapSampler s7       1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0, -2, 3, 1024
    def c1, 500, 5, 0.583607316, 1
    def c2, 0.25, 4, 0, 0
    def c3, 2, -1, 1, 0.5
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
    dcl_2d s0
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
    mov r1.z, c3.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c3.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c3.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    add r1.x, -c52.z, c52.w
    rcp r1.x, r1.x
    add r1.yzw, -c50.xxyz, v1.xxyz
    dp3 r2.x, r1.yzww, r1.yzww
    rsq r2.x, r2.x
    rcp r2.y, r2.x
    mul_pp r1.yzw, r1, r2.x
    add r2.x, r2.y, -c52.z
    mul_sat r1.x, r1.x, r2.x
    add_pp r1.x, -r1.x, c3.z
    add r2.x, -c48.z, c48.w
    rcp r2.x, r2.x
    add r2.yzw, -c46.xxyz, v1.xxyz
    dp3 r3.x, r2.yzww, r2.yzww
    rsq r3.x, r3.x
    rcp r3.y, r3.x
    mul_pp r2.yzw, r2, r3.x
    add r3.x, r3.y, -c48.z
    mul_sat r2.x, r2.x, r3.x
    add_pp r2.x, -r2.x, c3.z
    add r3.x, -c40.z, c40.w
    rcp r3.x, r3.x
    add r3.yzw, -c38.xxyz, v1.xxyz
    dp3 r4.x, r3.yzww, r3.yzww
    rsq r4.x, r4.x
    rcp r4.y, r4.x
    mul_pp r3.yzw, r3, r4.x
    add r4.x, r4.y, -c40.z
    mul_sat r3.x, r3.x, r4.x
    add_pp r3.x, -r3.x, c3.z
    add r4.x, -c44.z, c44.w
    rcp r4.x, r4.x
    add r4.yzw, -c42.xxyz, v1.xxyz
    dp3 r5.x, r4.yzww, r4.yzww
    rsq r5.x, r5.x
    rcp r5.y, r5.x
    mul_pp r4.yzw, r4, r5.x
    add r5.x, r5.y, -c44.z
    mul_sat r4.x, r4.x, r5.x
    add_pp r4.x, -r4.x, c3.z
    texld_pp r5, v0, s3
    mul_pp r5.x, r5.w, r5.x
    mad_pp r5.xy, r5, c3.x, c3.y
    dp2add_pp r5.z, r5, -r5, c3.z
    rsq_pp r5.z, r5.z
    rcp_pp r5.z, r5.z
    nrm_pp r6, v7.xyzx
    mul_pp r7, r5.y, r6.wyzw
    nrm_pp r8, v6.xyzx
    mad_pp r7, r5.x, r8.wyzw, r7
    nrm_pp r9, v2.xyzx
    mad_pp r5, r5.z, r9.wyzw, r7
    dp3_pp r7.x, r5.wyzw, -r4.yzww
    mul_pp r7.yzw, r7.x, c43.xxyz
    cmp_pp r7.xyz, r7.x, r7.yzww, c0.x
    mul_pp r7.xyz, r4.x, r7
    dp3_pp r7.w, r5.wyzw, -r3.yzww
    mul_pp r10.xyz, r7.w, c39
    cmp_pp r10.xyz, r7.w, r10, c0.x
    mad_pp r7.xyz, r3.x, r10, r7
    dp3_pp r7.w, r5.wyzw, -r2.yzww
    mul_pp r10.xyz, r7.w, c47
    cmp_pp r10.xyz, r7.w, r10, c0.x
    mad_pp r7.xyz, r2.x, r10, r7
    dp3_pp r7.w, r5.wyzw, -r1.yzww
    mul_pp r10.xyz, r7.w, c51
    cmp_pp r10.xyz, r7.w, r10, c0.x
    mad_pp r7.xyz, r1.x, r10, r7
    max r7.w, v3.z, c0.x
    add r10.x, r7.w, -v3.w
    cmp r10.z, r10.x, c0.x, r7.w
    mov r10.xyw, v3
    texldp_pp r10, r10, s13
    max r7.w, v4.z, c0.x
    add r10.y, r7.w, -v4.w
    cmp r11.z, r10.y, c0.x, r7.w
    mov r11.xyw, v4
    texldp_pp r11, r11, s7
    min_pp r7.w, r11.x, r10.x
    lrp_pp r10.x, v5.z, c3.z, r7.w
    rcp r7.w, v3.w
    mul r10.yz, r7.w, v3.xxyw
    mad r10.yz, r10, c3.x, c3.y
    abs_sat r10.yz, r10
    add_sat r10.yz, r10, -c65.x
    mul r10.yz, r10, c65.y
    max r7.w, r10.y, r10.z
    lrp_pp r11.x, r7.w, c3.z, r10.x
    mul r7.w, r11.x, c77.w
    dp3_pp r10.x, r5.wyzw, -c10
    mul r10.yzw, r10.x, c36.xxyz
    mul_pp r10.yzw, r7.w, r10
    cmp_pp r10.xyz, r10.x, r10.yzww, c0.x
    add_pp r7.xyz, r7, r10
    mul_pp r10.xyz, c58.w, c58
    dp3_pp r10.w, r5.wyzw, -r0.yzww
    mul_pp r10.xyz, r10.w, r10
    cmp_pp r10.xyz, r10.w, r10, c0.x
    mad_pp r7.xyz, r0.x, r10, r7
    mov r10.xyz, c79
    add r10.xyz, -r10, c80
    mad_pp r11.xyz, r5.wyzw, c3.w, c3.w
    mad r10.xyz, r11.y, r10, c79
    mul_pp r12.xyz, r5.wyzw, r5.wyzw
    mul r10.xyz, r10, r12.y
    mov r13.xyz, c77
    add r13.xyz, -r13, c78
    mad r11.xyw, r11.x, r13.xyzz, c77.xyzz
    mad_pp r10.xyz, r12.x, r11.xyww, r10
    mov r13.xyz, c81
    add r11.xyw, -r13.xyzz, c82.xyzz
    mad r11.xyz, r11.z, r11.xyww, c81
    mad_pp r10.xyz, r12.z, r11, r10
    mad_pp r7.xyz, r10, c17, r7
    mul_pp r7.xyz, r7, c16
    add_pp r10, c22.xyzx, -v1.xyzx
    dp3_pp r11.x, r10.yzww, r10.yzww
    rsq_pp r11.x, r11.x
    mad_pp r4.yzw, r10.xxyz, r11.x, -r4
    nrm_pp r12.xyz, r4.yzww
    dp3_sat_pp r4.y, r12, r5
    mov_pp r12.xy, c1
    mul_pp r4.zw, r12.xyxy, c20.xyyz
    max_pp r11.y, r4.z, c3.z
    min r4.z, r11.y, c0.w
    pow r11.y, r4.y, r4.z
    mul_pp r12.xyz, r4.w, c43
    mul_pp r11.yzw, r11.y, r12.xxyz
    mul_pp r11.yzw, r4.x, r11
    mad_pp r3.yzw, r10.xxyz, r11.x, -r3
    nrm_pp r12.xyz, r3.yzww
    dp3_sat_pp r3.y, r12, r5
    pow r12.x, r3.y, r4.z
    mul_pp r3.yzw, r4.w, c39.xxyz
    mul_pp r3.yzw, r12.x, r3
    mad_pp r3.xyz, r3.x, r3.yzww, r11.yzww
    mad_pp r2.yzw, r10.xxyz, r11.x, -r2
    nrm_pp r12.xyz, r2.yzww
    dp3_sat_pp r2.y, r12, r5
    pow r3.w, r2.y, r4.z
    mul_pp r2.yzw, r4.w, c47.xxyz
    mul_pp r2.yzw, r3.w, r2
    mad_pp r2.xyz, r2.x, r2.yzww, r3
    mad_pp r1.yzw, r10.xxyz, r11.x, -r1
    nrm_pp r3.xyz, r1.yzww
    dp3_sat_pp r1.y, r3, r5
    pow r2.w, r1.y, r4.z
    mul_pp r1.yzw, r4.w, c51.xxyz
    mul_pp r1.yzw, r2.w, r1
    mad_pp r1.xyz, r1.x, r1.yzww, r2
    mul_pp r2.xyz, r4.w, c37
    mad_pp r3.xyz, r10, r11.x, -c10
    nrm_pp r12.xyz, r3
    dp3_sat_pp r1.w, r12, r5
    pow r2.w, r1.w, r4.z
    mul_pp r2.xyz, r2.w, r2
    mad_pp r1.xyz, r2, r7.w, r1
    mul_pp r2.xyz, c59.w, c59
    mul_pp r2.xyz, r4.w, r2
    mad_pp r0.yzw, r10.xxyz, r11.x, -r0
    mul_pp r3, r10, r11.x
    nrm_pp r10.xyz, r0.yzww
    dp3_sat_pp r0.y, r10, r5
    pow r1.w, r0.y, r4.z
    mul_pp r0.yzw, r1.w, r2.xxyz
    mad_pp r0.xyz, r0.x, r0.yzww, r1
    mul_pp r0.xyz, r0, c18
    mul_pp r0.xyz, r0, v2.w
    texld_pp r1, v0, s0
    mad_pp r0.xyz, r7, r1, r0
    mul_pp r1.w, r1.w, c16.w
    texld_pp r2, v0, s4
    mul_pp r2.x, r2.w, r2.x
    mad_pp r2.xy, r2, c3.x, c3.y
    mul_pp r4, r6, r2.y
    mad_pp r4, r2.x, r8, r4
    dp2add_pp r0.w, r2, -r2, c3.z
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    mad r2, r0.w, r9, r4
    dp3_pp r0.w, r3.yzww, r2.yzww
    mad_pp r4.x, r0.w, -r0.w, c3.z
    mad_pp r4.x, r4.x, -c1.z, c1.w
    rsq_pp r4.x, r4.x
    rcp_pp r4.x, r4.x
    mad r0.w, r0.w, c4.x, -r4.x
    mul_pp r4, r3.wyzw, c4.x
    mad r2, r2, r0.w, -r4
    mad r4, r2.wyzw, c5.xxyz, c5.zzzw
    mul r6, r2, c4.yzzw
    cmp_pp r2, r2.z, r4, r6
    add_pp r0.w, r2.z, c3.z
    rcp r0.w, r0.w
    mad_pp r2.xy, r2.yxzw, r0.w, c3.z
    mad_pp r4.x, r2.y, c2.x, r2.w
    mul_pp r4.y, r2.x, c3.w
    texld_pp r2, r4, s6
    mul r4.xyz, r2, c63.x
    mad_pp r2.xyz, r4, r2.w, r2
    mul r0.w, c64.z, c64.x
    mov r4.xz, c64
    mad r2.w, r4.x, -r4.z, r4.z
    mad_pp r0.w, r7.w, r2.w, r0.w
    dp3_pp r2.w, r3.yzww, r5.yzww
    add_pp r2.w, r2.w, r2.w
    mad r3, r2.w, r5, -r3
    mad r4, r3.wyzw, c5.xxyz, c5.zzzw
    mul r5, r3, c4.yzzw
    cmp_pp r3, r3.z, r4, r5
    add_pp r2.w, r3.z, c3.z
    rcp r2.w, r2.w
    mad_pp r3.xy, r3.yxzw, r2.w, c3.z
    mad_pp r4.x, r3.y, c2.x, r3.w
    mul_pp r4.y, r3.x, c3.w
    texld_pp r3, r4, s5
    mul r4.xyz, r3, c63.x
    mad_pp r3.xyz, r4, r3.w, r3
    mad_pp r3.xyz, r3, r0.w, -r2
    mov_sat_pp r0.w, v2.w
    mad_pp r2.xyz, r0.w, r3, r2
    add_pp r1.xyz, r0, r2
    mul_pp r0, r1, c89
    min_pp r1, r0, c2.y
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 284 instruction slots used (7 texture, 277 arithmetic)
