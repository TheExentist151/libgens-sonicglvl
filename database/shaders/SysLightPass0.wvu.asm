//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_ViewportSize;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   g_ViewportSize c180     1
//

    vs_3_0
    def c0, 2, 1, -1, 1.00000001e-010
    def c1, -1, 0, 1, 0
    dcl_position v0
    dcl_blendindices v1
    dcl_texcoord v2
    dcl_texcoord1 v3
    dcl_texcoord2 v4
    dcl_texcoord3 v5
    dcl_texcoord4 v6
    dcl_texcoord5 v7
    dcl_texcoord6 v8
    dcl_texcoord7 v9
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord1 o2
    dcl_texcoord2 o3
    dcl_texcoord3 o4
    dcl_texcoord4 o5.xyz
    dcl_texcoord5 o6.xyz
    dcl_texcoord6 o7.xyz
    dcl_texcoord7 o8.xyz
    dcl_texcoord8 o9
    dcl_texcoord9 o10
    mov r0.xz, c0
    mad r0.xy, c180, -r0.x, v0
    add r0.xy, r0, c0.y
    mad o0.xy, r0, c180.zwzw, r0.z
    mul o5.xyz, v6.w, v6
    mul o6.xyz, v7.w, v7
    mul o7.xyz, v8.w, v8
    mul o8.xyz, v9.w, v9
    mov r0.x, v2.w
    mov r0.y, v3.w
    mov r0.z, v4.w
    mov r0.w, v5.w
    add r1, -r0, v1
    mov o10, r0
    add r0, r1, c0.w
    rcp o9.x, r0.x
    rcp o9.y, r0.y
    rcp o9.z, r0.z
    rcp o9.w, r0.w
    mad o0.zw, v0.z, c1.xyxy, c1.z
    mov o1, v2
    mov o2, v3
    mov o3, v4
    mov o4, v5

// approximately 24 instruction slots used
