//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float g_BackGroundScale;
//   float4 g_ForceAlphaColor;
//   sampler2D sampDif;
//
//
// Registers:
//
//   Name              Reg   Size
//   ----------------- ----- ----
//   g_BackGroundScale c67      1
//   g_ForceAlphaColor c89      1
//   sampDif           s0       1
//

    ps_3_0
    def c0, 4, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_2d s0
    texld_pp r0, v0, s0
    mul_pp r0.xyz, r0, c67.x
    mul_pp r0, r0, c89
    min_pp oC0, r0, c0.x

// approximately 4 instruction slots used (1 texture, 3 arithmetic)
