//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   sampler2D g_FramebufferSampler;
//   float4 g_GI0Scale;
//   float4 g_LightScatteringColor;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float2 mrgFresnelParam;
//   float2 mrgGlassRefractionParam;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampEnv;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   g_ViewportSize                        c24      1
//   mrgTexcoordIndex                      c26      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgFresnelParam                       c62      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   g_MtxView                             c90      3
//   mrgGlassRefractionParam               c150     1
//   sampDif                               s0       1
//   sampEnv                               s1       1
//   g_VerticalShadowMapSampler            s7       1
//   g_FramebufferSampler                  s11      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 1, 0, -1
    def c1, 2, -2, -1, 3
    def c2, 500, 5, 1024, -0.707106769
    def c3, 0, 1, 2, 3
    def c4, 0.5, -0.5, 4, 0
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3 v3.xyz
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl vPos.xy
    dcl_2d s0
    dcl_2d s1
    dcl_2d s7
    dcl_2d s11
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v2.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c1.y, c1.w
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r2.xy, c3
    add r0.x, r2.y, -c61.x
    cmp_pp r0.x, r0.x, c3.y, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c3.y
    cmp_pp r1.x, -c61.x, r2.y, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v4.z, c3.x
    add r1.y, r1.x, -v4.w
    cmp r1.z, r1.y, c3.x, r1.x
    mov r1.xyw, v4
    texldp_pp r1, r1, s13
    max r1.y, v5.z, c3.x
    add r1.z, r1.y, -v5.w
    cmp r3.z, r1.z, c3.x, r1.y
    mov r3.xyw, v5
    texldp_pp r3, r3, s7
    min_pp r2.z, r3.x, r1.x
    lrp_pp r1.x, v6.z, c3.y, r3.x
    lrp_pp r1.y, v6.z, c3.y, r2.z
    rcp r1.z, v4.w
    mul r1.zw, r1.z, v4.xyxy
    mad r1.zw, r1, c1.x, c1.z
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.z, r1.z, r1.w
    lrp_pp r3.x, r2.z, c3.y, r1.y
    lrp_pp r3.y, r2.z, c3.y, r1.x
    mul r1.x, r3.x, c77.w
    nrm_pp r4.xyz, v3
    dp3_pp r1.y, r4, -c10
    mul r3.xzw, r1.y, c36.xyyz
    mul_pp r3.xzw, r1.x, r3
    cmp_pp r1.yzw, r1.y, r3.xxzw, c3.x
    mul_pp r3.xzw, c58.w, c58.xyyz
    dp3_pp r2.z, r4, -r0.yzww
    mul_pp r3.xzw, r2.z, r3
    cmp_pp r3.xzw, r2.z, r3, c3.x
    mad_pp r1.yzw, r0.x, r3.xxzw, r1
    mov r5.xyz, c79
    add r3.xzw, -r5.xyyz, c80.xyyz
    mad_pp r5.xyz, r4, c0.x, c0.x
    mad r3.xzw, r5.y, r3, c79.xyyz
    mul_pp r6.xyz, r4, r4
    mul r3.xzw, r3, r6.y
    mov r7.xyz, c77
    add r7.xyz, -r7, c78
    mad r5.xyw, r5.x, r7.xyzz, c77.xyzz
    mad_pp r3.xzw, r6.x, r5.xyyw, r3
    mov r7.xyz, c81
    add r5.xyw, -r7.xyzz, c82.xyzz
    mad r5.xyz, r5.z, r5.xyww, c81
    mad_pp r3.xzw, r6.z, r5.xyyz, r3
    mul_pp r5.xyz, r3.xzww, c17
    mul r5.xyz, r5, c70.w
    mad r3.xzw, r3, c17.xyyz, -r5.xyyz
    mad_pp r3.xyz, r3.y, r3.xzww, r5
    add_pp r1.yzw, r1, r3.xxyz
    mul_pp r1.yzw, r1, c16.xxyz
    frc r2.z, c26.x
    cmp r2.w, -r2.z, c3.x, c3.y
    add r2.z, -r2.z, c26.x
    cmp r2.x, c26.x, r2.x, r2.w
    add r2.x, r2.x, r2.z
    add r3, r2.x, -c3
    cmp r2.xz, -r3_abs.x, v0.xyyw, c3.x
    cmp r2.xz, -r3_abs.y, v0.zyww, r2
    cmp r2.xz, -r3_abs.z, v1.xyyw, r2
    cmp r2.xz, -r3_abs.w, v1.zyww, r2
    texld_pp r3, r2.xzzw, s0
    add r2.xz, c0.x, vPos.xyyw
    mul r2.xz, r2, c24.zyww
    mov r5.yzw, c0
    mad r5, c24.zzww, r5.yzzw, r5.zywz
    mad r2.xz, r2, c1.xyyw, r5.xyyw
    add_pp r2.xz, r5.zyww, r2
    mul r2.w, c150.x, c150.x
    mul r5, r4.y, c91
    mad r5, r4.x, c90, r5
    mad r5, r4.z, c92, r5
    mad r4.w, r5.z, -r5.z, c3.y
    mad r2.w, r2.w, -r4.w, c3.y
    cmp r4.w, r2.w, c3.y, c3.x
    mul r2.w, r2.w, r4.w
    mul r4.w, r4.w, c150.x
    rsq r2.w, r2.w
    rcp r2.w, r2.w
    mad r2.w, r4.w, -r5.z, r2.w
    mul_pp r6.xy, r5, r2.w
    mad_pp r2.xz, r6.xyyw, c2.w, r2
    mad r2.xz, r2, c4.xyyw, c4.x
    texld_pp r6, r2.xzzw, s11
    mad r1.yzw, r1, r3.xxyz, -r6.xxyz
    mul_pp r2.x, r3.w, c16.w
    mad_pp r2.z, c16.w, -r3.w, r2.y
    mad_pp r1.yzw, r2.x, r1, r6.xxyz
    add_pp r3.xyz, c22, -v2
    dp3_pp r2.x, r3, r3
    rsq_pp r2.x, r2.x
    mad_pp r0.yzw, r3.xxyz, r2.x, -r0
    nrm_pp r6.xyz, r0.yzww
    dp3_sat_pp r0.y, r6, r4
    mov_pp r6.xy, c2
    mul_pp r0.zw, r6.xyxy, c20.xyyz
    max_pp r2.w, r0.z, c3.y
    min r0.z, r2.w, c2.z
    pow r2.w, r0.y, r0.z
    mul_pp r6.xyz, c59.w, c59
    mul_pp r6.xyz, r0.w, r6
    mul_pp r7.xyz, r0.w, c37
    mul_pp r6.xyz, r2.w, r6
    mul_pp r0.xyw, r0.x, r6.xyzz
    mad_pp r6.xyz, r3, r2.x, -c10
    mul_pp r3.xyz, r2.x, r3
    dp3_sat_pp r2.x, r4, r3
    add_pp r2.x, -r2.x, c3.y
    nrm_pp r3.xyz, r6
    dp3_sat_pp r2.w, r3, r4
    pow r3.x, r2.w, r0.z
    mul_pp r3.xyz, r3.x, r7
    mad_pp r0.xyz, r3, r1.x, r0.xyww
    dp4 r0.w, r5, r5
    rsq r0.w, r0.w
    mul r3.xy, r0.w, r5
    mad_pp r3.xy, r3, c4, c4.x
    texld_pp r3, r3, s1
    mul r4.xyz, r3, c63.x
    mad_pp r3.xyz, r4, r3.w, r3
    mul_pp r3.xyz, r2.z, r3
    mul r0.w, c64.z, c64.x
    mov r4.xz, c64
    mad r2.z, r4.x, -r4.z, r4.z
    mad_pp r0.w, r1.x, r2.z, r0.w
    mul_pp r3.xyz, r0.w, r3
    mad_pp r0.xyz, r0, c18, r3
    mul_pp r0.w, r2.x, r2.x
    mul_pp r0.w, r0.w, r0.w
    mul_pp r0.w, r2.x, r0.w
    lrp_pp r1.x, r0.w, r2.y, c62.x
    mul_pp r0.w, r1.x, c62.y
    mad_pp r0.xyz, r0, r0.w, r1.yzww
    mul_pp r0.xyz, r0, c89
    mov_pp r1.w, c89.w
    mul_pp r0.w, r1.w, c21.x
    min_pp r1, r0, c4.z
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 178 instruction slots used (5 texture, 173 arithmetic)
