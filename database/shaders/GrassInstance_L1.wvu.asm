//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyeDirection;
//   float4 g_InstanceTypes[32];
//   float4 g_LightScatteringFarNearScale;
//   float4 g_LightScattering_ConstG_FogDensity;
//   float4 g_LightScattering_Ray_Mie_Ray2_Mie2;
//   float4 g_Misc;
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   float4 mrgGlobalLight_Direction;
//
//
// Registers:
//
//   Name                                Reg   Size
//   ----------------------------------- ----- ----
//   g_MtxProjection                     c0       4
//   g_MtxView                           c4       4
//   g_InstanceTypes                     c28     32
//   g_EyeDirection                      c179     1
//   mrgGlobalLight_Direction            c183     1
//   g_LightScattering_Ray_Mie_Ray2_Mie2 c197     1
//   g_LightScattering_ConstG_FogDensity c198     1
//   g_LightScatteringFarNearScale       c199     1
//   g_Misc                              c246     1
//

    vs_3_0
    def c8, 0.5, 6.28318548, -3.14159274, 0.00392156886
    def c9, 1, 1.5, 0.300000012, 0.699999988
    def c10, 0.25, 0.100000001, 0.5, 1.44269502
    def c11, 0, 0, 0, 0
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_texcoord3 v4
    dcl_color1 v5
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord1 o2
    dcl_color o3
    mov r0.yz, c10
    mad r0.x, c246.x, r0.y, r0.z
    frc r0.x, r0.x
    mad r0.x, r0.x, c8.y, c8.z
    sincos r1.y, r0.x
    add r0.x, c8.x, v3.x
    frc r0.y, r0.x
    add r0.x, -r0.y, r0.x
    add r0.x, r0.x, r0.x
    mova a0.x, r0.x
    mul r0.xyz, v0, c28[a0.x]
    mad r1.xz, v4.xyyw, c8.x, c8.x
    frc r1.xz, r1
    mad r1.xz, r1, c8.y, c8.z
    sincos r2.xy, r1.x
    sincos r3.xy, r1.z
    mul r1.xzw, r0.yyyz, r2.xyyx
    mad r0.y, r0.z, -r2.y, r1.x
    add r0.z, r1.w, r1.z
    mul r0.zw, r3.xyyx, r0.z
    mad r1.xz, v3.zyww, c8.w, c8.x
    frc r1.xz, r1
    mad r1.xz, r1, c8.y, c8.z
    sincos r4.xy, r1.x
    sincos r5.xy, r1.z
    mul r1.xz, r0.y, r4.xyyw
    mad r0.y, r0.x, -r3.y, r0.w
    mad r0.x, r0.x, r3.x, r0.z
    mad r0.z, r0.y, r4.x, r1.z
    mad r3.y, r0.y, -r4.y, r1.x
    mul r0.yz, r5.xyxw, r0.z
    mad r0.y, r0.x, r5.x, r0.y
    mad r3.z, r0.x, -r5.y, r0.z
    mul r0.x, r2.x, v0.y
    mad r0.z, r2.x, c9.z, c9.w
    mul o3.w, r0.z, v5.w
    mul r0.z, c8.w, v3.y
    mul r0.x, r0.z, r0.x
    mul r0.x, r0.x, c10.x
    mad r3.x, r0.x, r1.y, r0.y
    add r0.xyz, r3, v2
    mul r1, r0.y, c5
    mad r1, r0.x, c4, r1
    mad r0, r0.z, c6, r1
    add r0, r0, c7
    mul r1, r0.y, c1
    mad r1, r0.x, c0, r1
    mad r1, r0.z, c2, r1
    mad o0, r0.w, c3, r1
    add r0.x, -r0.z, -c199.y
    mul_sat r0.x, r0.x, c199.x
    mul r0.x, r0.x, c199.z
    add r0.yz, -c29[a0.x].xxyw, c29[a0.x].xzww
    mad o1.xy, v1, r0.yzzw, c29[a0.x]
    add r0.y, c197.y, c197.x
    mul r0.x, r0.x, -r0.y
    rcp r0.y, r0.y
    mul r0.x, r0.x, c10.w
    exp r0.x, r0.x
    add r0.z, -r0.x, c9.x
    mov o2.x, r0.x
    mov r1.xyz, c183
    dp3 r0.x, -r1, c179
    mad r0.w, c198.z, r0.x, c198.y
    mad r0.x, r0.x, r0.x, c9.x
    pow r1.x, r0_abs.w, c9.y
    rcp r0.w, r1.x
    mul r0.w, r0.w, c198.x
    mul r0.w, r0.w, c197.w
    mad r0.x, c197.z, r0.x, r0.w
    mul r0.x, r0.y, r0.x
    mul r0.x, r0.z, r0.x
    mul o2.y, r0.x, c199.w
    mov o1.zw, c11.x
    mov o2.zw, c11.x
    mov o3.xyz, v5

// approximately 113 instruction slots used
