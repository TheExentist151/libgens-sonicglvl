//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_ScaleSize;
//   float4 g_ViewportSize;
//   float g_Z;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   g_ViewportSize c180     1
//   g_Z            c246     1
//   g_ScaleSize    c247     1
//

    vs_3_0
    def c0, 0.5, -0.5, 1, -2
    def c1, 1, 0, 0, 0
    dcl_position v0
    dcl_color v1
    dcl_texcoord v2
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord1 o2.xy
    add r0.xy, c0.x, v0
    frc r0.zw, r0.xyxy
    add r0.xy, -r0.zwzw, r0
    add r0.xy, r0, c0.y
    mov r1.xy, c247
    mul r0.zw, r1.xyxy, c180
    mul r0.x, r0.z, r0.x
    mad r0.z, r0.y, -r0.w, c0.z
    mad o0.xy, r0.xzzw, -c0.w, -c0.z
    mov r0.xy, c1
    mad o0.zw, c246.x, r0.xyxy, r0.xyyx
    mov o1, v1.wxyz
    mov o2.xy, v2

// approximately 13 instruction slots used
