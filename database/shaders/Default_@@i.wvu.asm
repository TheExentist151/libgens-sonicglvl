//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_EyePosition;
//   float4 g_LightScatteringFarNearScale;
//   float4 g_LightScattering_ConstG_FogDensity;
//   float4 g_LightScattering_Ray_Mie_Ray2_Mie2;
//   row_major float3x4 g_MtxPalette[25];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxView;
//   float4 g_VerticalLightDirection;
//   float4 mrgGIAtlasParam;
//   float4 mrgGlobalLight_Direction;
//   bool mrgHasBone;
//   float4 mrgTexcoordOffset[2];
//
//
// Registers:
//
//   Name                                Reg   Size
//   ----------------------------------- ----- ----
//   mrgHasBone                          b0       1
//   g_MtxProjection                     c0       4
//   g_MtxView                           c4       4
//   g_MtxPalette                        c28     75
//   g_EyePosition                       c178     1
//   mrgGlobalLight_Direction            c183     1
//   mrgGIAtlasParam                     c186     1
//   mrgTexcoordOffset                   c191     1
//   g_LightScattering_Ray_Mie_Ray2_Mie2 c197     1
//   g_LightScattering_ConstG_FogDensity c198     1
//   g_LightScatteringFarNearScale       c199     1
//   g_VerticalLightDirection            c211     1
//

    vs_3_0
    def c8, 1, 3, 128, 1.44269502
    def c9, 1.5, 0.600000024, 0.400000006, 0
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_color v3
    dcl_normal v4
    dcl_blendweight v5
    dcl_blendindices v6
    dcl_texcoord4 v7
    dcl_texcoord5 v8
    dcl_texcoord6 v9
    dcl_color1 v10
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord1 o2
    dcl_texcoord2 o3
    dcl_texcoord3 o4
    dcl_texcoord5 o5
    dcl_color o6
    if b0
      add r0.x, c8.x, -v5.x
      add r0.x, r0.x, -v5.y
      add r0.x, r0.x, -v5.z
      mul r1, c8.y, v6
      mova a0, r1.yxzw
      mul r2, v5.y, c30[a0.x]
      mad r2, c30[a0.y], v5.x, r2
      mad r2, c30[a0.z], v5.z, r2
      mad r1, c30[a0.w], r0.x, r2
      dp4 r2.z, r1, v0
      dp3 r1.z, r1, v4
      mul r3, v5.y, c28[a0.x]
      mad r3, c28[a0.y], v5.x, r3
      mad r3, c28[a0.z], v5.z, r3
      mad r3, c28[a0.w], r0.x, r3
      dp4 r2.x, r3, v0
      dp3 r1.x, r3, v4
      mul r3, v5.y, c29[a0.x]
      mad r3, c29[a0.y], v5.x, r3
      mad r3, c29[a0.z], v5.z, r3
      mad r0, c29[a0.w], r0.x, r3
      dp4 r2.y, r0, v0
      dp3 r1.y, r0, v4
      mov r2.w, v0.w
    else
      mov r2, v0
      mov r1.xyz, v4
    endif
    mov r0.z, v9.x
    mov r0.xy, v8
    dp3 r0.w, r0, r0
    add r0.w, -r0.w, c8.x
    rsq r0.w, r0.w
    rcp r0.w, r0.w
    add r3.xyz, r0, r0
    mul r0.xyz, r0, r3
    mul r4.xyz, r0.w, r3.zxyw
    mad r5.xyz, v8.xxyw, r3.zyzw, -r4.zxyw
    add r0.xyz, r0.zzyw, r0.yxxw
    add r0.xyz, -r0, c8.x
    mul r0.w, c8.z, v9.y
    mul r0.xyz, r0, r0.w
    mul r5.xyz, r5, r0.w
    mov r6.x, r5.x
    mov r6.z, r0.z
    mad r3.xyz, v8.xyxw, r3.yzzw, r4
    mul r3.xyz, r0.w, r3
    mov r6.y, r3.y
    dp3 r4.z, r1, r6
    mov r6.w, v7.z
    dp4 r6.z, r2, r6
    mov r7.z, r3.z
    mov r7.x, r0.x
    mov r7.y, r5.y
    dp3 r4.x, r1, r7
    mov r5.x, r3.x
    mov r5.y, r0.y
    dp3 r4.y, r1, r5
    mov r7.w, v7.x
    dp4 r6.x, r2, r7
    mov r5.w, v7.y
    dp4 r6.y, r2, r5
    mul r0, r6.y, c5
    mad r0, r6.x, c4, r0
    mad r0, r6.z, c6, r0
    mad r0, r2.w, c7, r0
    mov r6.w, -r0.z
    mov o3, r6
    nrm r1.xyz, r4
    mad r2.zw, v2.xyxy, c186.xyxy, c186
    mov r2.xy, v1
    add o1, r2, c191
    mov o4.xyz, r1
    mul r2, r0.y, c1
    mad r2, r0.x, c0, r2
    mad r2, r0.z, c2, r2
    mad o0, r0.w, c3, r2
    add r0.x, r6.w, -c199.y
    mul_sat r0.x, r0.x, c199.x
    mul r0.x, r0.x, c199.z
    add r0.y, c197.y, c197.x
    mul r0.x, r0.x, -r0.y
    mul r0.x, r0.x, c8.w
    exp r0.x, r0.x
    add r2.xyz, -r6, c178
    nrm r3.xyz, r2
    dp3_sat r0.z, r1, r3
    add r0.w, -r0.z, c8.x
    mov o5.xw, r0
    rcp r0.y, r0.y
    dp3 r0.z, -c183, r3
    mad r2.x, c198.z, r0.z, c198.y
    pow r3.x, r2_abs.x, c9.x
    rcp r2.x, r3.x
    mul r2.x, r2.x, c198.x
    mul r2.x, r2.x, c197.w
    mad r0.z, r0.z, r0.z, c8.x
    mad r0.z, c197.z, r0.z, r2.x
    mul r0.y, r0.y, r0.z
    add r0.x, -r0.x, c8.x
    mul r0.x, r0.x, r0.y
    mul o5.y, r0.x, c199.w
    mov r1.w, c8.x
    dp4_sat r0.x, r1, c211
    add o5.z, -r0.x, c8.x
    mul r0.x, r0.w, r0.w
    mul r0.x, r0.x, r0.x
    mul r0.x, r0.w, r0.x
    mad o4.w, r0.x, c9.y, c9.z
    mov o2, v10
    mov o6, v3

// approximately 120 instruction slots used
