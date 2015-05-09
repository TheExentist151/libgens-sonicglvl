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
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   samplerCUBE sampEnv;
//   sampler2D sampPower0;
//   sampler2D sampPower1;
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
//   g_GI0Scale                 c70      1
//   g_GI1Scale                 c71      1
//   g_LightScatteringColor     c75      1
//   g_ForceAlphaColor          c89      1
//   sampDif0                   s0       1
//   sampDif1                   s1       1
//   sampPower0                 s2       1
//   sampPower1                 s3       1
//   sampEnv                    s5       1
//   g_VerticalShadowMapSampler s7       1
//   g_GISampler                s10      1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 1024
    def c1, 2, -1, -2, 3
    def c2, 500, 5, 4, 0
    def c3, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_color_pp v7.xw
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_cube s5
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
    mad_pp r1.y, r0.x, c1.z, c1.w
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
    mad r1.zw, r1, c1.x, c1.y
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.y, r1.z, r1.w
    lrp_pp r3.x, r2.y, c3.y, r1.y
    lrp_pp r3.y, r2.y, c3.y, r1.x
    texld_pp r1, v0.zwzw, s10
    mul r1.w, r3.x, r1.w
    add r2.y, -c52.z, c52.w
    rcp r2.y, r2.y
    add r3.xzw, -c50.xyyz, v2.xyyz
    dp3 r2.z, r3.xzww, r3.xzww
    rsq r2.z, r2.z
    rcp r2.w, r2.z
    mul_pp r3.xzw, r2.z, r3
    add r2.z, r2.w, -c52.z
    mul_sat r2.y, r2.y, r2.z
    add r2.z, -c48.z, c48.w
    rcp r2.z, r2.z
    add r4.xyz, -c46, v2
    dp3 r2.w, r4, r4
    rsq r2.w, r2.w
    rcp r4.w, r2.w
    mul_pp r4.xyz, r2.w, r4
    add r2.w, r4.w, -c48.z
    mul_sat r2.z, r2.z, r2.w
    add r2.w, -c40.z, c40.w
    rcp r2.w, r2.w
    add r5.xyz, -c38, v2
    dp3 r4.w, r5, r5
    rsq r4.w, r4.w
    rcp r5.w, r4.w
    mul_pp r5.xyz, r4.w, r5
    add r4.w, r5.w, -c40.z
    mul_sat r2.w, r2.w, r4.w
    add_pp r2.yzw, -r2, c3.y
    add r4.w, -c44.z, c44.w
    rcp r4.w, r4.w
    add r6.xyz, -c42, v2
    dp3 r5.w, r6, r6
    rsq r5.w, r5.w
    rcp r6.w, r5.w
    mul_pp r6.xyz, r5.w, r6
    add r5.w, r6.w, -c44.z
    mul_sat r4.w, r4.w, r5.w
    add_pp r4.w, -r4.w, c3.y
    frc r7, c26
    cmp r8, -r7, c3.x, c3.y
    add r7, -r7, c26
    cmp r8, c26, r2.x, r8
    add r7, r7, r8
    add r8, r7.z, -c3
    cmp r9.xy, -r8_abs.x, v0, c3.x
    cmp r8.xy, -r8_abs.y, v0.zwzw, r9
    cmp r8.xy, -r8_abs.z, v1, r8
    cmp r8.xy, -r8_abs.w, v1.zwzw, r8
    texld_pp r8, r8, s2
    add r9, r7.w, -c3
    cmp r7.zw, -r9_abs.x, v0.xyxy, c3.x
    cmp r7.zw, -r9_abs.y, v0, r7
    cmp r7.zw, -r9_abs.z, v1.xyxy, r7
    cmp r7.zw, -r9_abs.w, v1, r7
    texld_pp r9, r7.zwzw, s3
    lrp_pp r2.x, v7.x, r9.x, r8.x
    mul_pp r7.zw, r2.x, c20.xyyz
    mul_pp r7.zw, r7, c2.xyxy
    mul_pp r8.xyz, r7.w, c43
    max_pp r5.w, r7.z, c3.y
    min r6.w, r5.w, c0.w
    add_pp r9.xyz, c22, -v2
    dp3_pp r5.w, r9, r9
    rsq_pp r5.w, r5.w
    mad_pp r10.xyz, r9, r5.w, -r6
    nrm_pp r11.xyz, r10
    nrm r10.xyz, v3
    dp3_sat_pp r7.z, r11, r10
    pow r8.w, r7.z, r6.w
    mul_pp r8.xyz, r8.w, r8
    mul_pp r8.xyz, r4.w, r8
    mul_pp r11.xyz, r7.w, c39
    mad_pp r12.xyz, r9, r5.w, -r5
    dp3_pp r5.x, r10, -r5
    nrm_pp r13.xyz, r12
    dp3_sat_pp r5.y, r13, r10
    pow r7.z, r5.y, r6.w
    mul_pp r11.xyz, r7.z, r11
    mad_pp r8.xyz, r2.w, r11, r8
    mul_pp r11.xyz, r7.w, c47
    mad_pp r12.xyz, r9, r5.w, -r4
    dp3_pp r4.x, r10, -r4
    nrm_pp r13.xyz, r12
    dp3_sat_pp r4.y, r13, r10
    pow r5.y, r4.y, r6.w
    mul_pp r11.xyz, r5.y, r11
    mad_pp r8.xyz, r2.z, r11, r8
    mul_pp r11.xyz, r7.w, c51
    mad_pp r12.xyz, r9, r5.w, -r3.xzww
    dp3_pp r3.x, r10, -r3.xzww
    nrm_pp r13.xyz, r12
    dp3_sat_pp r3.z, r13, r10
    pow r4.y, r3.z, r6.w
    mul_pp r11.xyz, r4.y, r11
    mad_pp r8.xyz, r2.y, r11, r8
    mul_pp r11.xyz, r7.w, c37
    mad_pp r12.xyz, r9, r5.w, -c10
    nrm_pp r13.xyz, r12
    dp3_sat_pp r3.z, r13, r10
    pow r4.y, r3.z, r6.w
    mul_pp r11.xyz, r4.y, r11
    mad_pp r8.xyz, r11, r1.w, r8
    mul_pp r11.xyz, c59.w, c59
    mul_pp r11.xyz, r7.w, r11
    mad_pp r12.xyz, r9, r5.w, -r0.yzww
    dp3_pp r0.y, r10, -r0.yzww
    mul r5.yzw, r5.w, r9.xxyz
    nrm_pp r9.xyz, r12
    dp3_sat_pp r0.z, r9, r10
    pow r3.z, r0.z, r6.w
    mul_pp r9.xyz, r3.z, r11
    mad_pp r8.xyz, r0.x, r9, r8
    dp3 r0.z, -r5.yzww, r10
    add r0.z, r0.z, r0.z
    mad_pp r5.yzw, r10.xxyz, -r0.z, -r5
    texld_pp r9, r5.yzww, s5
    mul r5.yzw, r9.xxyz, c63.x
    mad_pp r5.yzw, r5, r9.w, r9.xxyz
    mul_pp r5.yzw, r2.x, r5
    mul r0.z, c64.z, c64.x
    mov r9.xz, c64
    mad r0.w, r9.x, -r9.z, r9.z
    mad_pp r0.z, r1.w, r0.w, r0.z
    mul_pp r5.yzw, r0.z, r5
    mad_pp r5.yzw, r8.xxyz, c18.xxyz, r5
    mul_pp r5.yzw, r5, v3.w
    dp3_pp r0.z, r10, -r6
    dp3_pp r0.w, r10, -c10
    mul_pp r6.xyz, r0.z, c43
    cmp_pp r6.xyz, r0.z, r6, c3.x
    mul_pp r4.yzw, r4.w, r6.xxyz
    mul_pp r6.xyz, r5.x, c39
    cmp_pp r6.xyz, r5.x, r6, c3.x
    mad_pp r4.yzw, r2.w, r6.xxyz, r4
    mul_pp r6.xyz, r4.x, c47
    cmp_pp r6.xyz, r4.x, r6, c3.x
    mad_pp r2.xzw, r2.z, r6.xyyz, r4.yyzw
    mul_pp r4.xyz, r3.x, c51
    cmp_pp r3.xzw, r3.x, r4.xyyz, c3.x
    mad_pp r2.xyz, r2.y, r3.xzww, r2.xzww
    mul r3.xzw, r0.w, c36.xyyz
    mul_pp r3.xzw, r1.w, r3
    cmp_pp r3.xzw, r0.w, r3, c3.x
    add_pp r2.xyz, r2, r3.xzww
    mul_pp r3.xzw, c58.w, c58.xyyz
    mul_pp r3.xzw, r0.y, r3
    cmp_pp r0.yzw, r0.y, r3.xxzw, c3.x
    mad_pp r0.xyz, r0.x, r0.yzww, r2
    mul_pp r2.xyz, r1, r1
    dp3_pp r0.w, r2, c0
    mad_pp r1.xyz, r1, r1, -r0.w
    mad_sat_pp r1.xyz, r1, c71.w, r0.w
    mul_pp r1.xyz, r1, c70
    mul_pp r2.xyz, r1, c17
    mul r2.xyz, r2, c70.w
    mad r1.xyz, r1, c17, -r2
    mad_pp r1.xyz, r3.y, r1, r2
    add_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, c16
    add r1, r7.x, -c3
    add r2, r7.y, -c3
    cmp r3.xy, -r1_abs.x, v0, c3.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r3
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    cmp r3.xy, -r2_abs.x, v0, c3.x
    cmp r2.xy, -r2_abs.y, v0.zwzw, r3
    cmp r2.xy, -r2_abs.z, v1, r2
    cmp r2.xy, -r2_abs.w, v1.zwzw, r2
    texld_pp r2, r2, s1
    lrp_pp r3, v7.x, r2, r1
    mad_pp r0.xyz, r0, r3, r5.yzww
    mul_pp r1.x, r3.w, c16.w
    mul_pp r0.w, r1.x, v7.w
    mul_pp r0, r0, c89
    min_pp r1, r0, c2.z
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 256 instruction slots used (8 texture, 248 arithmetic)
