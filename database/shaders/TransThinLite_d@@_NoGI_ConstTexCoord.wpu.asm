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
//   float4 g_LightScatteringColor;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   float4 g_TransColorMask;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
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
//   sampler2D sampDif;
//
//
// Registers:
//
//   Name                       Reg   Size
//   -------------------------- ----- ----
//   mrgGlobalLight_Direction   c10      1
//   g_Diffuse                  c16      1
//   g_Ambient                  c17      1
//   g_Specular                 c18      1
//   g_PowerGlossLevel          c20      1
//   g_EyePosition              c22      1
//   g_EyeDirection             c23      1
//   mrgGlobalLight_Diffuse     c36      1
//   mrgGlobalLight_Specular    c37      1
//   mrgLocalLight0_Position    c38      1
//   mrgLocalLight0_Color       c39      1
//   mrgLocalLight0_Range       c40      1
//   mrgLocalLight1_Position    c42      1
//   mrgLocalLight1_Color       c43      1
//   mrgLocalLight1_Range       c44      1
//   mrgLocalLight2_Position    c46      1
//   mrgLocalLight2_Color       c47      1
//   mrgLocalLight2_Range       c48      1
//   mrgLocalLight3_Position    c50      1
//   mrgLocalLight3_Color       c51      1
//   mrgLocalLight3_Range       c52      1
//   mrgEyeLight_Diffuse        c58      1
//   mrgEyeLight_Specular       c59      1
//   mrgEyeLight_Range          c60      1
//   mrgEyeLight_Attribute      c61      1
//   g_ShadowMapParams          c65      1
//   g_GI0Scale                 c70      1
//   g_LightScatteringColor     c75      1
//   g_aLightField              c77      6
//   g_ForceAlphaColor          c89      1
//   g_TransColorMask           c150     1
//   sampDif                    s0       1
//   g_VerticalShadowMapSampler s7       1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 0.5, 0, 1, -2
    def c1, 500, 5, 1024, 4
    def c2, -2, 3, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl vFace
    dcl_2d s0
    dcl_2d s7
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v1.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c2.x, c2.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r1.z, c0.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c0.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c0.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    mul_pp r1.xyz, c58.w, c58
    mul r1.xyz, r0.x, r1
    add r1.w, -c48.z, c48.w
    rcp r1.w, r1.w
    add r2.xyz, -c46, v1
    dp3 r2.w, r2, r2
    rsq r2.w, r2.w
    rcp r3.x, r2.w
    mul_pp r2.xyz, r2.w, r2
    add r2.w, r3.x, -c48.z
    mul_sat r1.w, r1.w, r2.w
    add_pp r1.w, -r1.w, c0.z
    mul r3.xyz, r1.w, c47
    add r1.w, -c44.z, c44.w
    rcp r1.w, r1.w
    add r4.xyz, -c42, v1
    dp3 r2.w, r4, r4
    rsq r2.w, r2.w
    rcp r3.w, r2.w
    mul_pp r4.xyz, r2.w, r4
    add r2.w, r3.w, -c44.z
    mul_sat r1.w, r1.w, r2.w
    add_pp r1.w, -r1.w, c0.z
    mul r5.xyz, r1.w, c43
    max r1.w, v3.z, c0.y
    add r2.w, r1.w, -v3.w
    cmp r6.z, r2.w, c0.y, r1.w
    mov r6.xyw, v3
    texldp_pp r6, r6, s13
    max r1.w, v4.z, c0.y
    add r2.w, r1.w, -v4.w
    cmp r7.z, r2.w, c0.y, r1.w
    mov r7.xyw, v4
    texldp_pp r7, r7, s7
    min_pp r1.w, r7.x, r6.x
    lrp_pp r2.w, v5.z, c0.z, r7.x
    lrp_pp r3.w, v5.z, c0.z, r1.w
    rcp r1.w, v3.w
    mul r6.xy, r1.w, v3
    mad r6.xy, r6, -c0.w, -c0.z
    abs_sat r6.xy, r6
    add_sat r6.xy, r6, -c65.x
    mul r6.xy, r6, c65.y
    max r1.w, r6.x, r6.y
    lrp_pp r4.w, r1.w, c0.z, r3.w
    lrp_pp r3.w, r1.w, c0.z, r2.w
    mul_pp r1.w, r4.w, c77.w
    mul r6.xyz, r1.w, c36
    mul r7.xyz, r1.w, c37
    add r1.w, -c40.z, c40.w
    rcp r1.w, r1.w
    add r8.xyz, -c38, v1
    dp3 r2.w, r8, r8
    rsq r2.w, r2.w
    rcp r4.w, r2.w
    mul_pp r8.xyz, r2.w, r8
    add r2.w, r4.w, -c40.z
    mul_sat r1.w, r1.w, r2.w
    add_pp r1.w, -r1.w, c0.z
    mul r9.xyz, r1.w, c39
    cmp_pp r10.xyz, vFace, v2, -v2
    nrm_pp r11.xyz, r10
    dp3_pp r1.w, r11, -r8
    mov_sat_pp r2.w, r1.w
    mov_sat_pp r1.w, -r1.w
    mul r10.xyz, r1.w, r9
    mul r9.xyz, r2.w, r9
    dp3_pp r1.w, r11, -c10
    mov_sat_pp r2.w, r1.w
    mov_sat_pp r1.w, -r1.w
    mad_pp r10.xyz, r6, r1.w, r10
    mad_pp r6.xyz, r6, r2.w, r9
    mul r7.xyz, r2.w, r7
    dp3_pp r1.w, r11, -r4
    mov_sat_pp r2.w, r1.w
    mov_sat_pp r1.w, -r1.w
    mad_pp r10.xyz, r5, r1.w, r10
    mad_pp r6.xyz, r5, r2.w, r6
    mul r5.xyz, r2.w, r5
    dp3_pp r1.w, r11, -r2
    mov_sat_pp r2.w, r1.w
    mov_sat_pp r1.w, -r1.w
    mad_pp r10.xyz, r3, r1.w, r10
    mad_pp r6.xyz, r3, r2.w, r6
    mul r3.xyz, r2.w, r3
    add r1.w, -c52.z, c52.w
    rcp r1.w, r1.w
    add r12.xyz, -c50, v1
    dp3 r2.w, r12, r12
    rsq r2.w, r2.w
    rcp r4.w, r2.w
    mul_pp r12.xyz, r2.w, r12
    add r2.w, r4.w, -c52.z
    mul_sat r1.w, r1.w, r2.w
    add_pp r1.w, -r1.w, c0.z
    mul r13.xyz, r1.w, c51
    dp3_pp r1.w, r11, -r12
    mov_sat_pp r2.w, r1.w
    mov_sat_pp r1.w, -r1.w
    mad_pp r10.xyz, r13, r1.w, r10
    mad_pp r6.xyz, r13, r2.w, r6
    mul r13.xyz, r2.w, r13
    dp3_pp r1.w, r11, -r0.yzww
    mov_sat_pp r2.w, r1.w
    mov_sat_pp r1.w, -r1.w
    mad_pp r10.xyz, r1, r1.w, r10
    mad_pp r1.xyz, r1, r2.w, r6
    mul_pp r6.xyz, r10, c16
    mov r10.xyz, c79
    add r10.xyz, -r10, c80
    mad_pp r14.xyz, r11, c0.x, c0.x
    mad r10.xyz, r14.y, r10, c79
    mul_pp r15.xyz, r11, r11
    mul r10.xyz, r10, r15.y
    mov r16.xyz, c77
    add r16.xyz, -r16, c78
    mad r14.xyw, r14.x, r16.xyzz, c77.xyzz
    mad_pp r10.xyz, r15.x, r14.xyww, r10
    mov r16.xyz, c81
    add r14.xyw, -r16.xyzz, c82.xyzz
    mad r14.xyz, r14.z, r14.xyww, c81
    mad_pp r10.xyz, r15.z, r14, r10
    mul_pp r14.xyz, r10, c17
    mul r14.xyz, r14, c70.w
    mad r10.xyz, r10, c17, -r14
    mad_pp r10.xyz, r3.w, r10, r14
    mad_pp r1.xyz, r1, c16, r10
    texld_pp r10, v0, s0
    mul_pp r6.xyz, r6, r10
    mul r6.xyz, r6, c150
    mad_pp r1.xyz, r1, r10, r6
    mul_pp r6.w, r10.w, c16.w
    add_pp r10.xyz, c22, -v1
    dp3_pp r1.w, r10, r10
    rsq_pp r1.w, r1.w
    mad_pp r8.xyz, r10, r1.w, -r8
    nrm_pp r14.xyz, r8
    dp3_sat_pp r3.w, r14, r11
    mov_pp r8.xy, c1
    mul_pp r8.xy, r8, c20.yzzw
    max_pp r4.w, r8.x, c0.z
    mul_pp r8.xyz, r8.y, c18
    min r5.w, r4.w, c1.z
    pow_pp r4.w, r3.w, r5.w
    mul r9.xyz, r4.w, r9
    mad_pp r14.xyz, r10, r1.w, -c10
    nrm_pp r15.xyz, r14
    dp3_sat_pp r3.w, r15, r11
    pow_pp r4.w, r3.w, r5.w
    mad_pp r7.xyz, r7, r4.w, r9
    mad_pp r4.xyz, r10, r1.w, -r4
    nrm_pp r9.xyz, r4
    dp3_sat_pp r3.w, r9, r11
    pow_pp r4.x, r3.w, r5.w
    mad_pp r4.xyz, r5, r4.x, r7
    mad_pp r2.xyz, r10, r1.w, -r2
    nrm_pp r5.xyz, r2
    dp3_sat_pp r2.x, r5, r11
    pow_pp r3.w, r2.x, r5.w
    mad_pp r2.xyz, r3, r3.w, r4
    mad_pp r3.xyz, r10, r1.w, -r12
    mad_pp r0.yzw, r10.xxyz, r1.w, -r0
    nrm_pp r4.xyz, r0.yzww
    dp3_sat_pp r0.y, r4, r11
    pow_pp r1.w, r0.y, r5.w
    nrm_pp r4.xyz, r3
    dp3_sat_pp r0.y, r4, r11
    pow_pp r3.x, r0.y, r5.w
    mad_pp r0.yzw, r13.xxyz, r3.x, r2.xxyz
    mul_pp r2.xyz, c59.w, c59
    mul r2.xyz, r0.x, r2
    mul r2.xyz, r2.w, r2
    mad_pp r0.xyz, r2, r1.w, r0.yzww
    mul_pp r0.xyz, r8, r0
    mad_pp r6.xyz, r0, v2.w, r1
    mul_pp r0, r6, c89
    min_pp r1, r0, c1.w
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 232 instruction slots used (3 texture, 229 arithmetic)
