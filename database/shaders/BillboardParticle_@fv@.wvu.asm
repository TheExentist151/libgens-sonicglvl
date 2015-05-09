//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   row_major float4x4 g_MtxWorldIT;
//   float4 g_aLightField[6];
//   bool mrgHasBone;
//
//
// Registers:
//
//   Name            Reg   Size
//   --------------- ----- ----
//   mrgHasBone      b0       1
//   g_MtxProjection c0       4
//   g_MtxView       c4       4
//   g_MtxWorld      c8       4
//   g_MtxWorldIT    c12      3
//   g_aLightField   c213     6
//

    vs_3_0
    def c15, -1, 0, 3, -0.100000001
    def c16, 0.5, 0, 0, 0
    dcl_position v0
    dcl_texcoord v1
    dcl_color v2
    dcl_normal v3
    dcl_texcoord1 v4
    dcl_position o0
    dcl_texcoord o1
    dcl_color o2
    dcl_color1 o3.xyz
    nrm r0.xyz, v3
    mul r1.xyz, r0, r0
    mad r0.xyz, r0, c16.x, c16.x
    mov r2.xyz, c213
    add r2.xyz, -r2, c214
    mad r2.xyz, r0.x, r2, c213
    mov r3.xyz, c215
    add r3.xyz, -r3, c216
    mad r0.xyw, r0.y, r3.xyzz, c215.xyzz
    mul r0.xyw, r0, r1.y
    mad r0.xyw, r1.x, r2.xyzz, r0
    mov r2.xyz, c217
    add r1.xyw, -r2.xyzz, c218.xyzz
    mad r1.xyw, r0.z, r1, c217.xyzz
    mad o3.xyz, r1.z, r1.xyww, r0.xyww
    mov o1, v1
    mul r0, c9, v0.y
    mad r0, v0.x, c8, r0
    mad r0, v0.z, c10, r0
    add r0, r0, c11
    if b0
      nrm r1.xyz, v4
      mul r2.xyz, r1.y, c5
      mad r1.xyw, r1.x, c4.xyzz, r2.xyzz
      mad r1.xyz, r1.z, c6, r1.xyww
      mul r2.xyz, r1, v0.w
      mul r3.xyz, r1.yzxw, c15.xyyw
      mad r1.xyz, r1.zxyw, c15.yxyw, -r3
      dp3 r1.w, r1, r1
      rsq r1.w, r1.w
      mul r1.xyz, r1.w, r1
      mad r2.xyz, r1, v4.w, r2
      rcp r1.x, r1.w
      mad_sat r1.x, r1.x, c15.z, c15.w
      mul r1.x, r1.x, v2.w
      mul r3, r0.y, c5
      mad r3, r0.x, c4, r3
      mad r3, r0.z, c6, r3
      mad r3, r0.w, c7, r3
      mov r2.w, c15.y
      add r2, r2, r3
      mov r3.x, c15.y
    else
      mul r4, c13, v4.y
      mad r4, v4.x, c12, r4
      mad r4, v4.z, c14, r4
      add r0, r0, r4
      mul r4, r0.y, c5
      mad r4, r0.x, c4, r4
      mad r4, r0.z, c6, r4
      mad r2, r0.w, c7, r4
      mov r1.x, v2.w
      mov r3.x, v0.w
    endif
    mov r3.y, c15.y
    add r0, r2, r3.yyxy
    mul r3.xy, r0.y, c1.zwzw
    mad r0.xy, r0.x, c0.zwzw, r3
    mad r0.xy, r0.z, c2.zwzw, r0
    mad r0.xy, r0.w, c3.zwzw, r0
    rcp r0.y, r0.y
    mul r0.x, r0.y, r0.x
    mul r0.yzw, r2.y, c1.xxyw
    mad r0.yzw, r2.x, c0.xxyw, r0
    mad r0.yzw, r2.z, c2.xxyw, r0
    mad r0.yzw, r2.w, c3.xxyw, r0
    mov o0.xyw, r0.yzzw
    mul o0.z, r0.w, r0.x
    mov r1.yzw, v2.xxyz
    mov o2, r1.yzwx

// approximately 76 instruction slots used
