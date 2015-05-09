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
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   float4 g_ViewportSize;
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
//   sampler2D sampDif;
//   samplerCUBE sampEnv;
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
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampPow                               s2       1
//   sampNrm                               s3       1
//   sampEnv                               s5       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 2, -1, 1
    def c1, 0.298900008, 0.586600006, 0.114399999, 0
    def c2, -2, 3, 500, 5
    def c3, 1024, 4, 0, 0
    dcl_texcoord v0
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord5_pp v4.xyz
    dcl_texcoord7 v5.xyz
    dcl_texcoord8 v6.xyz
    dcl_color_pp v7
    dcl vPos.y
    dcl_2d s0
    dcl_2d s2
    dcl_2d s3
    dcl_cube s5
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
    mad_pp r1.y, r0.x, c2.x, c2.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov_pp r1.w, c0.w
    add r0.x, r1.w, -c61.x
    cmp_pp r0.x, r0.x, c0.w, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c0.w
    cmp_pp r1.x, -c61.x, r1.w, r1.x
    mul_pp r0.x, r0.x, r1.x
    nrm_pp r1.xyz, v6
    texld_pp r2, v0, s3
    mul_pp r2.x, r2.w, r2.x
    mad_pp r2.xy, r2, c0.y, c0.z
    mul_pp r1.xyz, r1, r2.y
    nrm_pp r3.xyz, v5
    mad_pp r1.xyz, r2.x, r3, r1
    dp2add_pp r1.w, r2, -r2, c0.w
    rsq_pp r1.w, r1.w
    rcp_pp r1.w, r1.w
    nrm_pp r2.xyz, v2
    mad r1.xyz, r1.w, r2, r1
    add_pp r2.xyz, c22, -v1
    dp3_pp r1.w, r2, r2
    rsq_pp r1.w, r1.w
    mad_pp r3.xyz, r2, r1.w, -r0.yzww
    dp3_pp r0.y, r1, -r0.yzww
    nrm_pp r4.xyz, r3
    dp3_sat_pp r0.z, r4, r1
    texld_pp r3, v0, s2
    mul_pp r3.yz, r3.x, c20
    mul_pp r3.yz, r3, c2.xzww
    max_pp r0.w, r3.y, c0.w
    min r2.w, r0.w, c3.x
    pow r3.y, r0.z, r2.w
    mul_pp r4.xyz, c59.w, c59
    mul_pp r4.xyz, r3.z, r4
    mul_pp r5.xyz, r3.z, c37
    mul_pp r3.yzw, r3.y, r4.xxyz
    mul_pp r3.yzw, r0.x, r3
    rcp r0.z, v3.w
    mul r0.zw, r0.z, v3.xyxy
    mad r0.zw, r0, c0.y, c0.z
    abs_sat r0.zw, r0
    add_sat r0.zw, r0, -c65.x
    mul r0.zw, r0, c65.y
    max r4.x, r0.z, r0.w
    max r0.z, v3.z, c1.w
    add r0.w, r0.z, -v3.w
    cmp r6.z, r0.w, c1.w, r0.z
    mov r6.xyw, v3
    texldp_pp r6, r6, s13
    lrp_pp r0.z, v4.z, c0.w, r6.x
    lrp_pp r5.w, r4.x, c0.w, r0.z
    texld_pp r4, v0.zwzw, s10
    mul r0.z, r4.w, r5.w
    mad_pp r6.xyz, r2, r1.w, -c10
    mul r2.xyz, r1.w, r2
    nrm_pp r7.xyz, r6
    dp3_sat_pp r0.w, r7, r1
    pow r1.w, r0.w, r2.w
    mul_pp r5.xyz, r1.w, r5
    mad_pp r3.yzw, r5.xxyz, r0.z, r3
    dp3 r0.w, -r2, r1
    add r0.w, r0.w, r0.w
    mad_pp r2.xyz, r1, -r0.w, -r2
    dp3_pp r0.w, r1, -c10
    texld_pp r1, r2, s5
    mul r2.xyz, r1, c63.x
    mad_pp r1.xyz, r2, r1.w, r1
    mul_pp r1.xyz, r3.x, r1
    mul r1.w, c64.z, c64.x
    mov r2.xz, c64
    mad r2.x, r2.x, -r2.z, r2.z
    mad_pp r1.w, r0.z, r2.x, r1.w
    mul_pp r1.xyz, r1.w, r1
    mad_pp r1.xyz, r3.yzww, c18, r1
    mul_pp r1.xyz, r1, v2.w
    mul_pp r2.xyz, r4, r4
    dp3_pp r1.w, r2, c1
    mad_pp r2.xyz, r4, r4, -r1.w
    mad_sat_pp r2.xyz, r2, c71.w, r1.w
    mul_pp r2.xyz, r2, c70
    mul_pp r3.xyz, r2, c17
    mul r3.xyz, r3, c70.w
    mad r2.xyz, r2, c17, -r3
    mad_pp r2.xyz, r5.w, r2, r3
    mul r3.xyz, r0.w, c36
    mul_pp r3.xyz, r0.z, r3
    cmp_pp r3.xyz, r0.w, r3, c1.w
    mul_pp r4.xyz, c58.w, c58
    mul_pp r4.xyz, r0.y, r4
    cmp_pp r0.yzw, r0.y, r4.xxyz, c1.w
    mad_pp r0.xyz, r0.x, r0.yzww, r3
    add_pp r0.xyz, r0, r2
    mul_pp r0.xyz, r0, c16
    add r0.w, c0.x, vPos.y
    mov r2.x, c86.x
    mad r0.w, r0.w, c24.w, -r2.x
    mul_sat_pp r0.w, r0.w, c86.y
    texld_pp r2, v0, s0
    add_pp r2.xyz, r2, c0.z
    mul_pp r1.w, r2.w, c16.w
    mul_pp r1.w, r1.w, v7.w
    mul_pp r3.w, r1.w, c21.x
    mad_pp r2.xyz, r2, r0.w, c0.w
    mad_pp r0.xyz, r0, r2, r1
    mul_pp r3.xyz, r0, v7
    mul_pp r0, r3, c89
    min_pp r1, r0, c3.y
    mul_pp r0.xyz, c75, v4.y
    mad_pp oC0.xyz, r1, v4.x, r0
    mov_pp oC0.w, r1.w

// approximately 144 instruction slots used (6 texture, 138 arithmetic)
