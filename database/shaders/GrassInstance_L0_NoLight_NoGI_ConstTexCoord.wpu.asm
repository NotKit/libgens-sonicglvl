//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_ForceAlphaColor;
//   float4 g_LightScatteringColor;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   sampler2D s0;
//
//
// Registers:
//
//   Name                       Reg   Size
//   -------------------------- ----- ----
//   mrgGlobalLight_Diffuse     c36      1
//   g_ShadowMapParams          c65      1
//   g_LightScatteringColor     c75      1
//   g_aLightField              c77      1
//   g_ForceAlphaColor          c89      1
//   s0                         s0       1
//   g_VerticalShadowMapSampler s7       1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, -0.5, 0, 1, -2
    def c1, 4, 0, 0, 0
    dcl_texcoord_centroid v0.xy
    dcl_texcoord3 v1
    dcl_texcoord5 v2
    dcl_texcoord1_pp v3.xyz
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s7
    dcl_2d s13
    texld_pp r0, v0, s0
    add_pp r1, r0.w, c0.x
    texkill r1
    max r1.x, v1.z, c0.y
    add r1.y, r1.x, -v1.w
    cmp r1.z, r1.y, c0.y, r1.x
    mov r1.xyw, v1
    texldp_pp r1, r1, s13
    max r1.y, v2.z, c0.y
    add r1.z, r1.y, -v2.w
    cmp r2.z, r1.z, c0.y, r1.y
    mov r2.xyw, v2
    texldp_pp r2, r2, s7
    min_pp r3.x, r2.x, r1.x
    lrp_pp r1.x, v3.z, c0.z, r3.x
    rcp r1.y, v1.w
    mul r1.yz, r1.y, v1.xxyw
    mad r1.yz, r1, -c0.w, -c0.z
    abs_sat r1.yz, r1
    add_sat r1.yz, r1, -c65.x
    mul r1.yz, r1, c65.y
    max r2.x, r1.y, r1.z
    lrp_pp r3.x, r2.x, c0.z, r1.x
    mul_pp r1.x, r3.x, c77.w
    mul_pp r1.yzw, c36.xxyz, v4.w
    mad_pp r1.xyz, r1.yzww, r1.x, v4
    mul_pp r0.xyz, r0, r1
    mul_pp r0, r0, c89
    min_pp r1, r0, c1.x
    mul_pp r0.xyz, c75, v3.y
    mad_pp oC0.xyz, r1, v3.x, r0
    mov_pp oC0.w, r1.w

// approximately 32 instruction slots used (3 texture, 29 arithmetic)
