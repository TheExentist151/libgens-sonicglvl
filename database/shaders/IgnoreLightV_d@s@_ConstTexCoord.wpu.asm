//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   sampler2D g_DepthSampler;
//   float4 g_Diffuse;
//   float4 g_ForceAlphaColor;
//   float4 g_IgnoreLightParam;
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxInvProjection;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_ViewportSize;
//   sampler2D sampDif;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   g_MtxInvProjection                    c4       4
//   g_Diffuse                             c16      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_ViewportSize                        c24      1
//   g_LightScatteringColor                c75      1
//   g_ForceAlphaColor                     c89      1
//   g_IgnoreLightParam                    c150     1
//   sampDif                               s0       1
//   g_DepthSampler                        s12      1
//

    ps_3_0
    def c0, 2, -2, 0.5, -0.5
    def c1, 0.5, 1, 0, -1
    def c2, 4, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.w
    dcl_texcoord5_pp v2.xy
    dcl_color_pp v3.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s12
    add r0.xy, c1.x, vPos
    mul r0.xy, r0, c24.zwzw
    mov r1.yzw, c1
    mad r1, c24.zzww, r1.yzzw, r1.zywz
    mad r0.xy, r0, c0, r1
    add r0.xy, r1.zwzw, r0
    mul r0.zw, r0.y, c5
    mad r0.zw, r0.x, c4, r0
    mad r0.xy, r0, c0.zwzw, c0.z
    texld r1, r0, s12
    mad r0.xy, r1.x, c6.zwzw, r0.zwzw
    add r0.xy, r0, c7.zwzw
    rcp r0.y, r0.y
    mad r0.x, r0.x, -r0.y, -v1.w
    add r0.x, r0.x, -c150.x
    rcp r0.y, c150.y
    mul_sat_pp r0.x, r0.y, r0.x
    texld_pp r1, v0, s0
    mul_pp r0.y, r1.w, c16.w
    mad_pp r1.xyz, c16, r1, v3
    mul_pp r0.x, r0.x, r0.y
    mul_pp r1.w, r0.x, c21.x
    mul_pp r0, r1, c89
    min_pp r1, r0, c2.x
    mul_pp r0.xyz, c75, v2.y
    mad_pp oC0.xyz, r1, v2.x, r0
    mov_pp oC0.w, r1.w

// approximately 27 instruction slots used (2 texture, 25 arithmetic)
