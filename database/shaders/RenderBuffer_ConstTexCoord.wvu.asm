//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
    vs_3_0
    def c0, 1, 0, 0, 0
    dcl_position v0
    dcl_texcoord v1
    dcl_position o0
    dcl_texcoord o1
    mad o0, v0.xyzx, c0.xxxy, c0.yyyx
    mul o1, c0.xxyy, v1.xyxx

// approximately 2 instruction slots used
