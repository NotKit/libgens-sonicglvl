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
//   float4 g_GI0Scale;
//   float4 g_GI1Scale;
//   sampler2D g_GISampler;
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   float4 g_ViewportSize;
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgLocalLight0_Color;
//   float4 mrgLocalLight0_Position;
//   float4 mrgLocalLight0_Range;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgPlayableParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif;
//   sampler2D sampNrm;
//   sampler2D sampSpe;
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
//   mrgTexcoordIndex                      c26      2
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgLocalLight0_Position               c38      1
//   mrgLocalLight0_Color                  c39      1
//   mrgLocalLight0_Range                  c40      1
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_GI1Scale                            c71      1
//   g_LightScatteringColor                c75      1
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampSpe                               s1       1
//   sampNrm                               s3       1
//   g_GISampler                           s10      1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 2, -1, -3
    def c1, 0.298900008, 0.586600006, 0.114399999, 1024
    def c2, 500, 5, 4, 0
    def c3, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8
    dcl vPos.y
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s10
    dcl_2d s13
    rcp r0.x, v4.w
    mul r0.xy, r0.x, v4
    mad r0.xy, r0, c0.y, c0.z
    abs_sat r0.xy, r0
    add_sat r0.xy, r0, -c65.x
    mul r0.xy, r0, c65.y
    max r1.x, r0.x, r0.y
    max r0.x, v4.z, c3.x
    add r0.y, r0.x, -v4.w
    cmp r0.z, r0.y, c3.x, r0.x
    mov r0.xyw, v4
    texldp_pp r0, r0, s13
    lrp_pp r1.y, v5.z, c3.y, r0.x
    lrp_pp r0.x, r1.x, c3.y, r1.y
    texld_pp r1, v0.zwzw, s10
    mul_pp r0.yzw, r1.xxyz, r1.xxyz
    dp3_pp r0.y, r0.yzww, c1
    mad_pp r1.xyz, r1, r1, -r0.y
    mad_sat_pp r0.yzw, r1.xxyz, c71.w, r0.y
    mul_pp r0.yzw, r0, c70.xxyz
    mul_pp r1.x, r0.x, r1.w
    mul_pp r1.yzw, r0, c17.xxyz
    mul r1.yzw, r1, c70.w
    mad r0.yzw, r0, c17.xxyz, -r1
    mad_pp r0.xyz, r0.x, r0.yzww, r1.yzww
    add r0.w, -c44.z, c44.w
    rcp r0.w, r0.w
    add r1.yzw, -c42.xxyz, v2.xxyz
    dp3 r2.x, r1.yzww, r1.yzww
    rsq r2.x, r2.x
    rcp r2.y, r2.x
    mul_pp r1.yzw, r1, r2.x
    add r2.x, r2.y, -c44.z
    mul_sat r0.w, r0.w, r2.x
    add_pp r0.w, -r0.w, c3.y
    frc r2.x, c27.x
    cmp r2.y, -r2.x, c3.x, c3.y
    add r2.x, -r2.x, c27.x
    mov r3.xy, c3
    cmp r2.y, c27.x, r3.x, r2.y
    add r2.x, r2.y, r2.x
    add r2, r2.x, -c3
    cmp r3.zw, -r2_abs.x, v0.xyxy, c3.x
    cmp r2.xy, -r2_abs.y, v0.zwzw, r3.zwzw
    cmp r2.xy, -r2_abs.z, v1, r2
    cmp r2.xy, -r2_abs.w, v1.zwzw, r2
    texld_pp r2, r2, s3
    mul_pp r2.x, r2.w, r2.x
    mad_pp r2.xy, r2, c0.y, c0.z
    nrm_pp r4.xyz, v7
    mul_pp r4.xyz, r2.y, r4
    nrm_pp r5.xyz, v6
    mad_pp r4.xyz, r2.x, r5, r4
    dp2add_pp r2.x, r2, -r2, c3.y
    rsq_pp r2.x, r2.x
    rcp_pp r2.x, r2.x
    nrm_pp r5.xyz, v3
    mad_pp r2.xyz, r2.x, r5, r4
    dp3_pp r2.w, r2, -r1.yzww
    mul_pp r4.xyz, r2.w, c43
    cmp_pp r4.xyz, r2.w, r4, c3.x
    mul_pp r4.xyz, r0.w, r4
    add r2.w, -c40.z, c40.w
    rcp r2.w, r2.w
    add r5.xyz, -c38, v2
    dp3 r3.z, r5, r5
    rsq r3.z, r3.z
    rcp r3.w, r3.z
    mul_pp r5.xyz, r3.z, r5
    add r3.z, r3.w, -c40.z
    mul_sat r2.w, r2.w, r3.z
    add_pp r2.w, -r2.w, c3.y
    dp3_pp r3.z, r2, -r5
    mul_pp r6.xyz, r3.z, c39
    cmp_pp r6.xyz, r3.z, r6, c3.x
    mad_pp r4.xyz, r2.w, r6, r4
    add r3.z, -c48.z, c48.w
    rcp r3.z, r3.z
    add r6.xyz, -c46, v2
    dp3 r3.w, r6, r6
    rsq r3.w, r3.w
    rcp r4.w, r3.w
    mul_pp r6.xyz, r3.w, r6
    add r3.w, r4.w, -c48.z
    mul_sat r3.z, r3.z, r3.w
    add_pp r3.z, -r3.z, c3.y
    dp3_pp r3.w, r2, -r6
    mul_pp r7.xyz, r3.w, c47
    cmp_pp r7.xyz, r3.w, r7, c3.x
    mad_pp r4.xyz, r3.z, r7, r4
    add r3.w, -c52.z, c52.w
    rcp r3.w, r3.w
    add r7.xyz, -c50, v2
    dp3 r4.w, r7, r7
    rsq r4.w, r4.w
    rcp r5.w, r4.w
    mul_pp r7.xyz, r4.w, r7
    add r4.w, r5.w, -c52.z
    mul_sat r3.w, r3.w, r4.w
    add_pp r3.w, -r3.w, c3.y
    dp3_pp r4.w, r2, -r7
    mul_pp r8.xyz, r4.w, c51
    cmp_pp r8.xyz, r4.w, r8, c3.x
    mad_pp r4.xyz, r3.w, r8, r4
    dp3_pp r4.w, r2, -c10
    mul r8.xyz, r4.w, c36
    mul_pp r8.xyz, r1.x, r8
    cmp_pp r8.xyz, r4.w, r8, c3.x
    add_pp r4.xyz, r4, r8
    add_pp r4.w, -c61.z, c61.y
    rcp_pp r4.w, r4.w
    add r8.xyz, -c22, v2
    dp3 r5.w, r8, r8
    rsq r5.w, r5.w
    mul_pp r8.xyz, r5.w, r8
    rcp r5.w, r5.w
    add r5.w, r5.w, -c60.z
    dp3_pp r6.w, r8, c23
    add_pp r6.w, r6.w, -c61.z
    mul_sat_pp r4.w, r4.w, r6.w
    mad_pp r6.w, r4.w, -c0.y, -c0.w
    mul_pp r4.w, r4.w, r4.w
    mul_pp r4.w, r4.w, r6.w
    pow_sat_pp r6.w, r4.w, c61.w
    add r4.w, r3.y, -c61.x
    cmp_pp r4.w, r4.w, c3.y, r6.w
    add r6.w, -c60.z, c60.w
    rcp r6.w, r6.w
    mul_sat r5.w, r5.w, r6.w
    add_pp r5.w, -r5.w, c3.y
    cmp_pp r3.y, -c61.x, r3.y, r5.w
    mul_pp r3.y, r4.w, r3.y
    dp3_pp r4.w, r2, -r8
    mul_pp r9.xyz, c58.w, c58
    mul_pp r9.xyz, r4.w, r9
    cmp_pp r9.xyz, r4.w, r9, c3.x
    mad_pp r4.xyz, r3.y, r9, r4
    add_pp r0.xyz, r0, r4
    mul_pp r0.xyz, r0, c16
    add_pp r4.xyz, c22, -v2
    dp3_pp r4.w, r4, r4
    rsq_pp r4.w, r4.w
    mad_pp r1.yzw, r4.xxyz, r4.w, -r1
    nrm_pp r9.xyz, r1.yzww
    dp3_sat_pp r1.y, r9, r2
    mov_pp r9.xy, c2
    mul_pp r1.zw, r9.xyxy, c20.xyyz
    max_pp r5.w, r1.z, c3.y
    min r1.z, r5.w, c1.w
    pow r5.w, r1.y, r1.z
    mul_pp r9.xyz, r1.w, c43
    mul_pp r9.xyz, r5.w, r9
    mul_pp r9.xyz, r0.w, r9
    mad_pp r5.xyz, r4, r4.w, -r5
    nrm_pp r10.xyz, r5
    dp3_sat_pp r0.w, r10, r2
    pow r5.x, r0.w, r1.z
    mul_pp r5.yzw, r1.w, c39.xxyz
    mul_pp r5.xyz, r5.x, r5.yzww
    mad_pp r5.xyz, r2.w, r5, r9
    mad_pp r6.xyz, r4, r4.w, -r6
    nrm_pp r9.xyz, r6
    dp3_sat_pp r0.w, r9, r2
    pow r2.w, r0.w, r1.z
    mul_pp r6.xyz, r1.w, c47
    mul_pp r6.xyz, r2.w, r6
    mad_pp r5.xyz, r3.z, r6, r5
    mad_pp r6.xyz, r4, r4.w, -r7
    nrm_pp r7.xyz, r6
    dp3_sat_pp r0.w, r7, r2
    pow r2.w, r0.w, r1.z
    mul_pp r6.xyz, r1.w, c51
    mul_pp r6.xyz, r2.w, r6
    mad_pp r5.xyz, r3.w, r6, r5
    mad_pp r6.xyz, r4, r4.w, -c10
    mad_pp r4.xyz, r4, r4.w, -r8
    nrm_pp r7.xyz, r4
    dp3_sat_pp r0.w, r7, r2
    pow r2.w, r0.w, r1.z
    nrm_pp r4.xyz, r6
    dp3_sat_pp r0.w, r4, r2
    pow r2.x, r0.w, r1.z
    mul_pp r4.xyz, r1.w, c37
    mul_pp r2.xyz, r2.x, r4
    mad_pp r1.xyz, r2, r1.x, r5
    mul_pp r2.xyz, c59.w, c59
    mul_pp r2.xyz, r1.w, r2
    mul_pp r2.xyz, r2.w, r2
    mad_pp r1.xyz, r3.y, r2, r1
    mul_pp r1.xyz, r1, c18
    frc r2.xy, c26.xzzw
    cmp r2.zw, -r2.xyxy, c3.x, c3.y
    add r2.xy, -r2, c26.xzzw
    cmp r2.zw, c26.xyxz, r3.x, r2
    add r2.xy, r2.zwzw, r2
    add r3, r2.y, -c3
    add r2, r2.x, -c3
    cmp r4.xy, -r3_abs.x, v0, c3.x
    cmp r3.xy, -r3_abs.y, v0.zwzw, r4
    cmp r3.xy, -r3_abs.z, v1, r3
    cmp r3.xy, -r3_abs.w, v1.zwzw, r3
    texld_pp r3, r3, s1
    mul_pp r1.xyz, r1, r3
    mul_pp r1.xyz, r1, v3.w
    cmp r3.xy, -r2_abs.x, v0, c3.x
    cmp r2.xy, -r2_abs.y, v0.zwzw, r3
    cmp r2.xy, -r2_abs.z, v1, r2
    cmp r2.xy, -r2_abs.w, v1.zwzw, r2
    texld_pp r2, r2, s0
    mul_pp r0.w, r2.w, c16.w
    mul_pp r0.w, r0.w, v8.w
    mul_pp r3.w, r0.w, c21.x
    add r0.w, c0.x, vPos.y
    mov r4.x, c86.x
    mad r0.w, r0.w, c24.w, -r4.x
    mul_sat_pp r0.w, r0.w, c86.y
    lrp_pp r4.xyz, r0.w, r2, c3.y
    mad_pp r0.xyz, r0, r4, r1
    mul_pp r3.xyz, r0, v8
    mul_pp r0, r3, c89
    min_pp r1, r0, c2.z
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 257 instruction slots used (5 texture, 252 arithmetic)
