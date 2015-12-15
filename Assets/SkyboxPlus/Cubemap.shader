Shader "SkyboxPlus/Cubemap"
{
    Properties
    {
        [NoScaleOffset] _Cubemap("-", Cube) = "grey"{}
        _Tint("-", Color) = (.5, .5, .5)

        _Euler("-", Vector) = (0, 0, 0)
        [HideInInspector] _Rotation1("-", Vector) = (1, 0, 0)
        [HideInInspector] _Rotation2("-", Vector) = (0, 1, 0)
        [HideInInspector] _Rotation3("-", Vector) = (0, 0, 1)

        [Gamma] _Exposure("-", Range(0, 8)) = 1
        _Saturation("-", Range(0, 2)) = 1
    }
    CGINCLUDE

    #include "UnityCG.cginc"

    samplerCUBE _Cubemap;
    half4 _Cubemap_HDR;

    half4 _Tint;
    half _Exposure;
    half _Saturation;

    float4 _Rotation1;
    float4 _Rotation2;
    float4 _Rotation3;

    struct appdata_t {
        float4 vertex : POSITION;
    };

    struct v2f {
        float4 vertex : SV_POSITION;
        float3 texcoord : TEXCOORD0;
    };

    v2f vert(appdata_t v)
    {
        v2f o;
        float3x3 m = float3x3(_Rotation1.xyz, _Rotation2.xyz, _Rotation3.xyz);
        float4 vp = float4(mul(m, v.vertex.xyz), v.vertex.w);
        o.vertex = mul(UNITY_MATRIX_MVP, vp);
        o.texcoord = v.vertex.xyz;
        return o;
    }

    fixed4 frag(v2f i) : SV_Target
    {
        half4 tex = texCUBE(_Cubemap, i.texcoord);
        half3 c = DecodeHDR(tex, _Cubemap_HDR);
        c *= _Tint.rgb * unity_ColorSpaceDouble.rgb * _Exposure;
        c = lerp((half3)Luminance(c), c, _Saturation);
        return half4(c, 1);
    }

    ENDCG
    SubShader
    {
        Tags { "Queue"="Background" "RenderType"="Background" "PreviewType"="Skybox" }
        Cull Off ZWrite Off
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            ENDCG
        }
    }
    Fallback Off
    CustomEditor "SkyboxPlus.CubemapMaterialEditor"
}
