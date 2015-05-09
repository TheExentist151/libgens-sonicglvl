//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_ChaosWaveParamEx;
//   float4 g_ChaosWaveParamY;
//   float4 g_ChaosWaveParamZX;
//   float4 g_EyePosition;
//   float4 g_LightScatteringFarNearScale;
//   float4 g_LightScattering_ConstG_FogDensity;
//   float4 g_LightScattering_Ray_Mie_Ray2_Mie2;
//   row_major float4x4 g_MtxLightViewProjection;
//   row_major float3x4 g_MtxPalette[25];
//   row_major float4x4 g_MtxProjection;
//   row_major float4x4 g_MtxVerticalLightViewProjection;
//   row_major float4x4 g_MtxView;
//   row_major float4x4 g_MtxWorld;
//   float4 g_TimeParam;
//   float4 g_VerticalLightDirection;
//   float4 mrgGlobalLight_Direction;
//   bool mrgHasBone;
//   float4 mrgMorphWeight;
//   float4 mrgTexcoordIndex[4];
//   float4 mrgTexcoordOffset[2];
//   float4 mrgZOffsetRate;
//
//
// Registers:
//
//   Name                                Reg   Size
//   ----------------------------------- ----- ----
//   mrgHasBone                          b0       1
//   g_MtxProjection                     c0       4
//   g_MtxView                           c4       4
//   g_MtxWorld                          c8       4
//   g_MtxLightViewProjection            c24      4
//   g_MtxPalette                        c28     75
//   g_EyePosition                       c178     1
//   mrgGlobalLight_Direction            c183     1
//   mrgTexcoordIndex                    c187     1
//   mrgTexcoordOffset                   c191     2
//   mrgMorphWeight                      c194     1
//   mrgZOffsetRate                      c195     1
//   g_LightScattering_Ray_Mie_Ray2_Mie2 c197     1
//   g_LightScattering_ConstG_FogDensity c198     1
//   g_LightScatteringFarNearScale       c199     1
//   g_MtxVerticalLightViewProjection    c207     4
//   g_VerticalLightDirection            c211     1
//   g_TimeParam                         c212     1
//   g_ChaosWaveParamY                   c246     1
//   g_ChaosWaveParamZX                  c247     1
//   g_ChaosWaveParamEx                  c248     1
//

    vs_3_0
    def c225, 0.0208350997, -0.0851330012, 0.180141002, -0.330299497
    def c226, 0.999866009, -2, 1.57079637, -3.14159274
    def c227, 0.159154937, 0.5, 6.28318548, -3.14159274
    def c228, 3, 1.44269502, 1.5, 0
    def c229, 0.5, -0.5, 0.699999988, 0.300000012
    def c221, 1, 0, 0, 0
    def c222, 0, 1, 0, 0
    def c223, 0, 0, 1, 0
    def c224, 0, 0, 0, 1
    dcl_position v0
    dcl_texcoord v1
    dcl_texcoord1 v2
    dcl_texcoord2 v3
    dcl_texcoord3 v4
    dcl_texcoord4 v5
    dcl_texcoord5 v6
    dcl_texcoord6 v7
    dcl_texcoord7 v8
    dcl_color v9
    dcl_normal v10
    dcl_blendweight v11
    dcl_blendindices v12
    dcl_position o0
    dcl_texcoord o1
    dcl_texcoord2 o2
    dcl_texcoord3 o3
    dcl_texcoord4 o4
    dcl_texcoord6 o5
    dcl_texcoord5 o6
    dcl_color o7
    frc r0.x, c187.x
    slt r0.y, -r0.x, r0.x
    add r0.x, -r0.x, c187.x
    slt r0.z, c187.x, -c187.x
    mad r0.x, r0.z, r0.y, r0.x
    add r0.yz, c191.xxyw, v1.xxyw
    add r1.xy, c191.zwzw, v2
    add r1.zw, c192.xyxy, v3.xyxy
    mova a0.x, r0.x
    mul r0.xy, r0.yzzw, c221[a0.x].x
    mad r0.xy, c221[a0.x].y, r1, r0
    mad r0.xy, c221[a0.x].z, r1.zwzw, r0
    add r0.zw, c192, v4.xyxy
    mad o1.xy, c221[a0.x].w, r0.zwzw, r0
    rcp r0.x, c247.x
    rcp r0.y, c246.x
    mul r1.xyz, c194.y, v6
    mad r1.xyz, c194.x, v5, r1
    mad r1.xyz, c194.z, v7, r1
    mad r1.xyz, c194.w, v8, r1
    add r1.xyz, r1, v0
    max r0.z, r1_abs.x, r1_abs.z
    rcp r0.z, r0.z
    min r0.w, r1_abs.x, r1_abs.z
    mul r0.z, r0.z, r0.w
    mul r0.w, r0.z, r0.z
    mad r1.w, r0.w, c225.x, c225.y
    mad r1.w, r0.w, r1.w, c225.z
    mad r1.w, r0.w, r1.w, c225.w
    mad r0.w, r0.w, r1.w, c226.x
    mul r0.z, r0.w, r0.z
    slt r0.w, r1_abs.x, r1_abs.z
    mad r1.w, r0.z, c226.y, c226.z
    mad r0.z, r1.w, r0.w, r0.z
    slt r0.w, r1.x, -r1.x
    mad r0.z, r0.w, c226.w, r0.z
    min r0.w, r1.x, r1.z
    slt r0.w, r0.w, -r0.w
    max r1.w, r1.x, r1.z
    sge r1.w, r1.w, -r1.w
    mul r0.w, r0.w, r1.w
    add r1.w, r0.z, r0.z
    mad r0.z, r0.w, -r1.w, r0.z
    mad r0.z, r1.y, c248.x, r0.z
    mul r0.x, r0.x, r0.z
    mov r0.w, c247.w
    mad r0.x, c212.x, r0.w, -r0.x
    mad r0.x, r0.x, c227.x, c227.y
    frc r0.x, r0.x
    mad r0.x, r0.x, c227.z, c227.w
    sincos r2.y, r0.x
    slt r0.x, -r2.y, r2.y
    slt r0.z, r2.y, -r2.y
    add r0.x, -r0.z, r0.x
    pow r0.z, r2_abs.y, c247.y
    mul r0.x, r0.z, r0.x
    mul r0.x, r0.x, c247.z
    mul r0.y, r0.y, r1.y
    mov r0.w, c246.w
    mad r0.y, c212.x, r0.w, -r0.y
    mad r0.y, r0.y, c227.x, c227.y
    frc r0.y, r0.y
    mad r0.y, r0.y, c227.z, c227.w
    sincos r2.y, r0.y
    slt r0.y, -r2.y, r2.y
    slt r0.z, r2.y, -r2.y
    add r0.y, -r0.z, r0.y
    pow r0.z, r2_abs.y, c246.y
    mul r0.y, r0.z, r0.y
    mad r0.x, r0.y, c246.z, r0.x
    mul r0.xyz, r0.x, v10
    mad r0.xyz, r0, v9.x, r1
    if b0
      add r1.x, v11.y, v11.x
      add r1.x, r1.x, v11.z
      add r1.x, -r1.x, c221.x
      mul r2, v12, c228.x
      mova a0, r2.yxzw
      mul r3, v11.y, c30[a0.x]
      mad r3, c30[a0.y], v11.x, r3
      mad r3, c30[a0.z], v11.z, r3
      mad r2, c30[a0.w], r1.x, r3
      dp3 r1.y, r2, v10
      mov r0.w, v0.w
      dp4 r1.z, r2, r0
      mul r2, v11.y, c28[a0.x]
      mad r2, c28[a0.y], v11.x, r2
      mad r2, c28[a0.z], v11.z, r2
      mad r2, c28[a0.w], r1.x, r2
      dp3 r1.w, r2, v10
      dp4 r2.x, r2, r0
      mul r3, v11.y, c29[a0.x]
      mad r3, c29[a0.y], v11.x, r3
      mad r3, c29[a0.z], v11.z, r3
      mad r3, c29[a0.w], r1.x, r3
      dp4 r0.y, r3, r0
      dp3 r0.w, r3, v10
      mov r0.x, r2.x
      mov r0.z, r1.z
      mov r1.x, v0.w
    else
      mov r0.w, v10.y
      mov r1.yw, v10.xzzx
      mov r1.x, v0.w
    endif
    mul r2, r0.y, c9
    mad r2, r0.x, c8, r2
    mad r2, r0.z, c10, r2
    mad r2, r1.x, c11, r2
    mov o2.xyz, r2
    mul r0.xyz, r0.w, c9
    mad r0.xyz, r1.w, c8, r0
    mad r0.xyz, r1.y, c10, r0
    nrm r1.xyz, r0
    mov o3.xyz, r1
    add r0.xyz, -r2, c178
    nrm r3.xyz, r0
    dp3_sat r0.x, r1, r3
    add r0.x, -r0.x, c221.x
    mul r0.y, r0.x, r0.x
    mul r0.y, r0.y, r0.y
    mul r0.x, r0.x, r0.y
    mad o3.w, r0.x, c229.z, c229.w
    dp3 r0.x, -c183, r3
    mad r0.y, c198.z, r0.x, c198.y
    pow r3.x, r0_abs.y, c228.z
    rcp r0.y, r3.x
    mul r0.y, r0.y, c198.x
    mul r0.y, r0.y, c197.w
    mad r0.x, r0.x, r0.x, c221.x
    mad r0.x, c197.z, r0.x, r0.y
    add r0.y, c197.y, c197.x
    rcp r0.z, r0.y
    mul r0.x, r0.z, r0.x
    mov r1.w, c221.x
    dp4_sat r0.z, r1, c211
    add o6.z, -r0.z, c221.x
    mul r1, r2.y, c5
    mad r1, r2.x, c4, r1
    mad r1, r2.z, c6, r1
    mad r1, r2.w, c7, r1
    mul r3, r1.y, c1
    mad r3, r1.x, c0, r3
    mad r3, r1.z, c2, r3
    mad r3, r1.w, c3, r3
    mov o0.xyw, r3
    mad o0.z, c195.x, -r3.z, r3.z
    mov o2.w, -r1.z
    add r0.z, -r1.z, -c199.y
    mul_sat r0.z, r0.z, c199.x
    mul r0.z, r0.z, c199.z
    mul r0.y, r0.z, -r0.y
    mul r0.y, r0.y, c228.y
    exp r0.y, r0.y
    mov o6.x, r0.y
    add r0.y, -r0.y, c221.x
    mul r0.x, r0.y, r0.x
    mul o6.y, r0.x, c199.w
    mov o1.zw, c221.w
    mul r0, r2.y, c25
    mad r0, r2.x, c24, r0
    mad r0, r2.z, c26, r0
    add r0, r0, c27
    mov o4.zw, r0
    mul r0.xyz, r0.xyww, c229.xyxw
    add o4.xy, r0.z, r0
    mul r0, r2.y, c208
    mad r0, r2.x, c207, r0
    mad r0, r2.z, c209, r0
    add r0, r0, c210
    mov o5.zw, r0
    mul r0.xyz, r0.xyww, c229.xyxw
    add o5.xy, r0.z, r0
    mov o6.w, c221.w
    mov o7, v9

// approximately 201 instruction slots used
