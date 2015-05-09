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
//   float4 g_GI1Scale;
//   sampler2D g_GISampler;
//   float4 g_LightScatteringColor;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
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
//   mrgTexcoordIndex           c26      2
//   mrgGlobalLight_Diffuse     c36      1
//   mrgGlobalLight_Specular    c37      1
//   mrgEyeLight_Diffuse        c58      1
//   mrgEyeLight_Specular       c59      1
//   mrgEyeLight_Range          c60      1
//   mrgEyeLight_Attribute      c61      1
//   mrgLuminanceRange          c63      1
//   mrgInShadowScale           c64      1
//   g_ShadowMapParams          c65      1
//   g_GI0Scale                 c70      1
//   g_GI1Scale                 c71      1
//   g_LightScatteringColor     c75      1
//   g_ForceAlphaColor          c89      1
//   sampDif                    s0       1
//   sampNrm0                   s3       1
//   sampNrm1                   s4       1
//   sampEnv                    s5       1
//   sampRef                    s6       1
//   g_VerticalShadowMapSampler s7       1
//   g_GISampler                s10      1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 2, -1, -2, 3
    def c1, 0.298900008, 0.586600006, 0.114399999, 1024
    def c2, 500, 5, 0.583607316, 1
    def c3, 0.25, 4, 0, 0
    def c4, -1, 1, 0, 0.5
    def c5, 0.763941944, 1, -1, 0
    def c6, 0, 1, 2, 3
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
    dcl_2d s3
    dcl_2d s4
    dcl_2d s5
    dcl_2d s6
    dcl_2d s7
    dcl_2d s10
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
    mad_pp r1.y, r0.x, c0.z, c0.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c6
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c6.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c6.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v4.z, c6.x
    add r1.y, r1.x, -v4.w
    cmp r1.z, r1.y, c6.x, r1.x
    mov r1.xyw, v4
    texldp_pp r1, r1, s13
    max r1.y, v5.z, c6.x
    add r1.z, r1.y, -v5.w
    cmp r3.z, r1.z, c6.x, r1.y
    mov r3.xyw, v5
    texldp_pp r3, r3, s7
    min_pp r2.y, r3.x, r1.x
    lrp_pp r1.x, v6.z, c6.y, r2.y
    rcp r1.y, v4.w
    mul r1.yz, r1.y, v4.xxyw
    mad r1.yz, r1, c0.x, c0.y
    abs_sat r1.yz, r1
    add_sat r1.yz, r1, -c65.x
    mul r1.yz, r1, c65.y
    max r2.y, r1.y, r1.z
    lrp_pp r3.x, r2.y, c6.y, r1.x
    texld_pp r1, v0.zwzw, s10
    mul r1.w, r3.x, r1.w
    frc r2.yz, c27.xxyw
    cmp r3.xy, -r2.yzzw, c6.x, c6.y
    add r2.yz, -r2, c27.xxyw
    cmp r3.xy, c27, r2.x, r3
    add r2.yz, r2, r3.xxyw
    add r3, r2.y, -c6
    add r4, r2.z, -c6
    cmp r2.yz, -r3_abs.x, v0.xxyw, c6.x
    cmp r2.yz, -r3_abs.y, v0.xzww, r2
    cmp r2.yz, -r3_abs.z, v1.xxyw, r2
    cmp r2.yz, -r3_abs.w, v1.xzww, r2
    texld_pp r3, r2.yzzw, s3
    mul_pp r3.x, r3.w, r3.x
    mad_pp r2.yz, r3.xxyw, c0.x, c0.y
    dp2add_pp r2.w, r2.yzzw, -r2.yzzw, c6.y
    rsq_pp r2.w, r2.w
    rcp_pp r2.w, r2.w
    nrm_pp r3, v8.xyzx
    mul_pp r5, r2.z, r3.wyzw
    nrm_pp r6, v7.xyzx
    mad_pp r5, r2.y, r6.wyzw, r5
    nrm_pp r7, v3.xyzx
    mad_pp r5, r2.w, r7.wyzw, r5
    dp3_pp r2.y, r5.wyzw, -c10
    mul r8.xyz, r2.y, c36
    mul_pp r8.xyz, r1.w, r8
    cmp_pp r2.yzw, r2.y, r8.xxyz, c6.x
    dp3_pp r8.x, r5.wyzw, -r0.yzww
    mul_pp r8.yzw, c58.w, c58.xxyz
    mul_pp r8.yzw, r8.x, r8
    cmp_pp r8.xyz, r8.x, r8.yzww, c6.x
    mad_pp r2.yzw, r0.x, r8.xxyz, r2
    mul_pp r8.xyz, r1, r1
    dp3_pp r8.x, r8, c1
    mad_pp r1.xyz, r1, r1, -r8.x
    mad_sat_pp r1.xyz, r1, c71.w, r8.x
    mul_pp r1.xyz, r1, c70
    mad_pp r1.xyz, r1, c17, r2.yzww
    mul_pp r1.xyz, r1, c16
    frc r2.y, c26.x
    cmp r2.z, -r2.y, c6.x, c6.y
    add r2.y, -r2.y, c26.x
    cmp r2.x, c26.x, r2.x, r2.z
    add r2.x, r2.x, r2.y
    add r2, r2.x, -c6
    cmp r8.xy, -r2_abs.x, v0, c6.x
    cmp r2.xy, -r2_abs.y, v0.zwzw, r8
    cmp r2.xy, -r2_abs.z, v1, r2
    cmp r2.xy, -r2_abs.w, v1.zwzw, r2
    texld_pp r2, r2, s0
    mul_pp r8.xyz, r1, r2
    mul_pp r8.w, r2.w, c16.w
    mul_pp r2, r8, v9
    add_pp r8, c22.xyzx, -v2.xyzx
    dp3_pp r1.x, r8.yzww, r8.yzww
    rsq_pp r1.x, r1.x
    mad_pp r0.yzw, r8.xxyz, r1.x, -r0
    nrm_pp r9.xyz, r0.yzww
    dp3_sat_pp r0.y, r9, r5
    mov_pp r9.xy, c2
    mul_pp r0.zw, r9.xyxy, c20.xyyz
    max_pp r1.y, r0.z, c6.y
    min r0.z, r1.y, c1.w
    pow r1.y, r0.y, r0.z
    mul_pp r9.xyz, c59.w, c59
    mul_pp r9.xyz, r0.w, r9
    mul_pp r10.xyz, r0.w, c37
    mul_pp r9.xyz, r1.y, r9
    mul_pp r0.xyw, r0.x, r9.xyzz
    mad_pp r9.xyz, r8, r1.x, -c10
    mul_pp r8, r1.x, r8
    nrm_pp r1.xyz, r9
    dp3_sat_pp r1.x, r1, r5
    pow r9.x, r1.x, r0.z
    mul_pp r1.xyz, r9.x, r10
    mad_pp r0.xyz, r1, r1.w, r0.xyww
    mul_pp r0.xyz, r0, c18
    mad_pp r0.xyz, r0, v3.w, r2
    cmp r1.xy, -r4_abs.x, v0, c6.x
    cmp r1.xy, -r4_abs.y, v0.zwzw, r1
    cmp r1.xy, -r4_abs.z, v1, r1
    cmp r1.xy, -r4_abs.w, v1.zwzw, r1
    texld_pp r4, r1, s4
    mul_pp r4.x, r4.w, r4.x
    mad_pp r1.xy, r4, c0.x, c0.y
    mul_pp r3, r3, r1.y
    mad_pp r3, r1.x, r6, r3
    dp2add_pp r0.w, r1, -r1, c6.y
    rsq_pp r0.w, r0.w
    rcp_pp r0.w, r0.w
    mad r3, r0.w, r7, r3
    dp3_pp r0.w, r8.yzww, r3.yzww
    mad_pp r1.x, r0.w, -r0.w, c6.y
    mad_pp r1.x, r1.x, -c2.z, c2.w
    rsq_pp r1.x, r1.x
    rcp_pp r1.x, r1.x
    mad r0.w, r0.w, c5.x, -r1.x
    mul_pp r4, r8.wyzw, c5.x
    mad r3, r3, r0.w, -r4
    mad r4, r3.wyzw, c4.xxyz, c4.zzzw
    mul r6, r3, c5.yzzw
    cmp_pp r3, r3.z, r4, r6
    add_pp r0.w, r3.z, c6.y
    rcp r0.w, r0.w
    mad_pp r1.xy, r3.yxzw, r0.w, c6.y
    mad_pp r3.x, r1.y, c3.x, r3.w
    mul_pp r3.y, r1.x, c4.w
    texld_pp r3, r3, s6
    mul r1.xyz, r3, c63.x
    mad_pp r1.xyz, r1, r3.w, r3
    mul r0.w, c64.z, c64.x
    mov r3.xz, c64
    mad r3.x, r3.x, -r3.z, r3.z
    mad_pp r0.w, r1.w, r3.x, r0.w
    dp3_pp r1.w, r8.yzww, r5.yzww
    add_pp r1.w, r1.w, r1.w
    mad r3, r1.w, r5, -r8
    mad r4, r3.wyzw, c4.xxyz, c4.zzzw
    mul r5, r3, c5.yzzw
    cmp_pp r3, r3.z, r4, r5
    add_pp r1.w, r3.z, c6.y
    rcp r1.w, r1.w
    mad_pp r3.xy, r3.yxzw, r1.w, c6.y
    mad_pp r4.x, r3.y, c3.x, r3.w
    mul_pp r4.y, r3.x, c4.w
    texld_pp r3, r4, s5
    mul r4.xyz, r3, c63.x
    mad_pp r3.xyz, r4, r3.w, r3
    mad_pp r3.xyz, r3, r0.w, -r1
    mov_sat_pp r0.w, v3.w
    mad_pp r1.xyz, r0.w, r3, r1
    add_pp r2.xyz, r0, r1
    mul_pp r0, r2, c89
    min_pp r1, r0, c3.y
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 201 instruction slots used (8 texture, 193 arithmetic)
