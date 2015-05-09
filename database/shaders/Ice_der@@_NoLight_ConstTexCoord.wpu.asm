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
//   sampEnv                    s5       1
//   sampRef                    s6       1
//   g_VerticalShadowMapSampler s7       1
//   g_GISampler                s10      1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0.298900008, 0.586600006, 0.114399999, 0
    def c1, 500, 5, 1024, 0.763941944
    def c2, 0.25, 4, 0, 0
    def c3, -1, 1, 0, 0.5
    def c4, 0.583607316, 1, -1, 0
    def c5, 1, 2, -1, -3
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_2d s0
    dcl_2d s5
    dcl_2d s6
    dcl_2d s7
    dcl_2d s10
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
    mad_pp r1.y, r0.x, -c5.y, -c5.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r0.x, c5.x
    add r1.z, r0.x, -c61.x
    cmp_pp r1.y, r1.z, c5.x, r1.y
    add r1.z, -c60.z, c60.w
    rcp r1.z, r1.z
    mul_sat r1.x, r1.z, r1.x
    add_pp r1.x, -r1.x, c5.x
    cmp_pp r0.x, -c61.x, r0.x, r1.x
    mul_pp r0.x, r1.y, r0.x
    max r1.x, v3.z, c0.w
    add r1.y, r1.x, -v3.w
    cmp r1.z, r1.y, c0.w, r1.x
    mov r1.xyw, v3
    texldp_pp r1, r1, s13
    max r1.y, v4.z, c0.w
    add r1.z, r1.y, -v4.w
    cmp r2.z, r1.z, c0.w, r1.y
    mov r2.xyw, v4
    texldp_pp r2, r2, s7
    min_pp r3.x, r2.x, r1.x
    lrp_pp r1.x, v5.z, c5.x, r3.x
    rcp r1.y, v3.w
    mul r1.yz, r1.y, v3.xxyw
    mad r1.yz, r1, c5.y, c5.z
    abs_sat r1.yz, r1
    add_sat r1.yz, r1, -c65.x
    mul r1.yz, r1, c65.y
    max r2.x, r1.y, r1.z
    lrp_pp r3.x, r2.x, c5.x, r1.x
    texld_pp r1, v0.zwzw, s10
    mul r1.w, r3.x, r1.w
    nrm r2, v2.xyzx
    dp3_pp r3.x, r2.wyzw, -c10
    mul r3.yzw, r3.x, c36.xxyz
    mul_pp r3.yzw, r1.w, r3
    cmp_pp r3.xyz, r3.x, r3.yzww, c0.w
    mul_pp r4.xyz, c58.w, c58
    dp3_pp r3.w, r2.wyzw, -r0.yzww
    mul_pp r4.xyz, r3.w, r4
    cmp_pp r4.xyz, r3.w, r4, c0.w
    mad_pp r3.xyz, r0.x, r4, r3
    mul_pp r4.xyz, r1, r1
    dp3_pp r3.w, r4, c0
    mad_pp r1.xyz, r1, r1, -r3.w
    mad_sat_pp r1.xyz, r1, c71.w, r3.w
    mul_pp r1.xyz, r1, c70
    mad_pp r1.xyz, r1, c17, r3
    mul_pp r1.xyz, r1, c16
    add_pp r3, c22.xyzx, -v1.xyzx
    dp3_pp r4.x, r3.yzww, r3.yzww
    rsq_pp r4.x, r4.x
    mad_pp r0.yzw, r3.xxyz, r4.x, -r0
    nrm_pp r5.xyz, r0.yzww
    dp3_sat_pp r0.y, r5, r2
    mov_pp r5.xy, c1
    mul_pp r0.zw, r5.xyxy, c20.xyyz
    max_pp r4.y, r0.z, c5.x
    min r0.z, r4.y, c1.z
    pow r4.y, r0.y, r0.z
    mul_pp r5.xyz, c59.w, c59
    mul_pp r5.xyz, r0.w, r5
    mul_pp r6.xyz, r0.w, c37
    mul_pp r4.yzw, r4.y, r5.xxyz
    mul_pp r0.xyw, r0.x, r4.yzzw
    mad_pp r4.yzw, r3.xxyz, r4.x, -c10.xxyz
    mul_pp r3, r3, r4.x
    nrm_pp r5.xyz, r4.yzww
    dp3_sat_pp r4.x, r5, r2
    pow r5.x, r4.x, r0.z
    mul_pp r4.xyz, r5.x, r6
    mad_pp r0.xyz, r4, r1.w, r0.xyww
    mul_pp r0.xyz, r0, c18
    mul_pp r0.xyz, r0, v2.w
    texld_pp r4, v0, s0
    mad_pp r0.xyz, r1, r4, r0
    mul_pp r4.w, r4.w, c16.w
    mul r0.w, c64.z, c64.x
    mov r1.xz, c64
    mad r1.x, r1.x, -r1.z, r1.z
    mad_pp r0.w, r1.w, r1.x, r0.w
    dp3_pp r1.x, r3.yzww, r2.yzww
    mad_pp r1.y, r1.x, -r1.x, c5.x
    mad_pp r1.y, r1.y, -c4.x, c4.y
    rsq_pp r1.y, r1.y
    rcp_pp r1.y, r1.y
    mad r1.y, r1.x, c1.w, -r1.y
    add_pp r1.x, r1.x, r1.x
    mad r5, r1.x, r2, -r3
    mul_pp r3, r3.wyzw, c1.w
    mad r1, r2.wyzw, r1.y, -r3
    mad r2, r1.wyzw, c3.xxyz, c3.zzzw
    mul r3, r1, c4.yzzw
    cmp_pp r1, r1.z, r2, r3
    add_pp r1.z, r1.z, c5.x
    rcp r1.z, r1.z
    mad_pp r1.xy, r1.yxzw, r1.z, c5.x
    mad_pp r2.x, r1.y, c2.x, r1.w
    mul_pp r2.y, r1.x, c3.w
    texld_pp r1, r2, s6
    mul r2.xyz, r1, c63.x
    mad_pp r1.xyz, r2, r1.w, r1
    mad r2, r5.wyzw, c3.xxyz, c3.zzzw
    mul r3, r5, c4.yzzw
    cmp_pp r2, r5.z, r2, r3
    add_pp r1.w, r2.z, c5.x
    rcp r1.w, r1.w
    mad_pp r2.xy, r2.yxzw, r1.w, c5.x
    mad_pp r3.x, r2.y, c2.x, r2.w
    mul_pp r3.y, r2.x, c3.w
    texld_pp r2, r3, s5
    mul r3.xyz, r2, c63.x
    mad_pp r2.xyz, r3, r2.w, r2
    mad_pp r2.xyz, r2, r0.w, -r1
    mov_sat_pp r0.w, v2.w
    mad_pp r1.xyz, r0.w, r2, r1
    add_pp r4.xyz, r0, r1
    mul_pp r0, r4, c89
    min_pp r1, r0, c2.y
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 148 instruction slots used (6 texture, 142 arithmetic)
