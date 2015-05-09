//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float g_BlurRate;
//   float4 g_ViewportSize;
//   sampler2D sampColor;
//   sampler2D sampVelocityMap;
//   sampler2D sampZBuffer;
//
//
// Registers:
//
//   Name            Reg   Size
//   --------------- ----- ----
//   g_ViewportSize  c24      1
//   g_BlurRate      c150     1
//   sampColor       s0       1
//   sampVelocityMap s1       1
//   sampZBuffer     s2       1
//

    ps_3_0
    def c0, -0.00999999978, 1, 0.00392156886, 0
    def c1, 2, -1, 0.142857149, 0.285714298
    def c2, 0.125, 0, 0, 0
    def c3, 0.428571433, 0.571428597, 0.714285731, 0.857142866
    dcl_texcoord v0.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    texld r0, v0, s0
    texld r1, v0, s1
    dp2add r1.x, r1, c0.yzzw, c0.w
    dp2add r1.y, r1.zwzw, c0.yzzw, c0.w
    mad r1.xy, r1, c1.x, c1.y
    mad r2, r1.xyxy, c1.zzww, v0.xyxy
    texld r3, r2, s0
    texld r4, r2, s2
    texld r5, v0, s2
    add r0.w, r5.x, c0.x
    add r1.z, -r0.w, r4.x
    cmp r3.xyz, r1.z, r3, c0.w
    cmp r1.z, r1.z, c1_abs.x, c1_abs.y
    add r0.xyz, r0, r3
    texld r3, r2.zwzw, s0
    texld r2, r2.zwzw, s2
    add r1.w, -r0.w, r2.x
    cmp r1.w, r1.w, c0.y, c0.w
    mad r0.xyz, r3, r1.w, r0
    add r1.z, r1.w, r1.z
    mad r2, r1.xyxy, c3.xxyy, v0.xyxy
    texld r3, r2, s0
    texld r4, r2, s2
    add r1.w, -r0.w, r4.x
    cmp r1.w, r1.w, c0.y, c0.w
    mad r0.xyz, r3, r1.w, r0
    add r1.z, r1.w, r1.z
    texld r3, r2.zwzw, s0
    texld r2, r2.zwzw, s2
    add r1.w, -r0.w, r2.x
    cmp r1.w, r1.w, c0.y, c0.w
    mad r0.xyz, r3, r1.w, r0
    add r1.z, r1.w, r1.z
    mad r2, r1.xyxy, c3.zzww, v0.xyxy
    texld r3, r2, s0
    texld r4, r2, s2
    add r1.w, -r0.w, r4.x
    cmp r1.w, r1.w, c0.y, c0.w
    mad r0.xyz, r3, r1.w, r0
    add r1.z, r1.w, r1.z
    texld r3, r2.zwzw, s0
    texld r2, r2.zwzw, s2
    add r1.w, -r0.w, r2.x
    cmp r1.w, r1.w, c0.y, c0.w
    mad r0.xyz, r3, r1.w, r0
    add r1.z, r1.w, r1.z
    add r2.xy, r1, v0
    mov r1.w, c0.w
    dp2add r1.x, r1_abs, c24, r1.w
    mul_sat r1.x, r1.x, c2.x
    texld r3, r2, s0
    texld r2, r2, s2
    add r0.w, -r0.w, r2.x
    cmp r0.w, r0.w, c0.y, c0.w
    mad r0.xyz, r3, r0.w, r0
    add r0.w, r0.w, r1.z
    rcp r1.y, r0.w
    add_sat r0.w, r0.w, -c0.y
    mul_pp r0.w, r0.w, c150.x
    mul_pp oC0.w, r1.x, r0.w
    mul_pp oC0.xyz, r0, r1.y

// approximately 64 instruction slots used (17 texture, 47 arithmetic)
