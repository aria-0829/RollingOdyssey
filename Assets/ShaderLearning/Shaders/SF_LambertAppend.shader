// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33056,y:33118,varname:node_3138,prsc:2|emission-4542-RGB,olwid-8258-OUT,olcol-3772-RGB;n:type:ShaderForge.SFN_Dot,id:1555,x:31661,y:32951,varname:node_1555,prsc:2,dt:0|A-7784-OUT,B-2546-OUT;n:type:ShaderForge.SFN_NormalVector,id:7784,x:31384,y:32880,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:2546,x:31384,y:33038,varname:node_2546,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6750,x:31972,y:32960,varname:node_6750,prsc:2|A-1555-OUT,B-869-OUT;n:type:ShaderForge.SFN_Vector1,id:869,x:31807,y:33066,varname:node_869,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:2864,x:32171,y:33043,varname:node_2864,prsc:2|A-6750-OUT,B-869-OUT;n:type:ShaderForge.SFN_Append,id:8379,x:32632,y:33029,cmnt:转为Float2 半兰伯特值作为U任意值做V,varname:node_8379,prsc:2|A-82-OUT,B-4973-OUT;n:type:ShaderForge.SFN_Vector1,id:4973,x:32470,y:33175,varname:node_4973,prsc:2,v1:0;n:type:ShaderForge.SFN_Clamp01,id:82,x:32360,y:33043,varname:node_82,prsc:2|IN-2864-OUT;n:type:ShaderForge.SFN_Tex2d,id:4542,x:32820,y:33092,ptovrint:False,ptlb:RampTex,ptin:_RampTex,cmnt:输入的UV值读取Tex上的颜色信息,varname:node_4542,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8379-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8258,x:32820,y:33346,ptovrint:False,ptlb:OutLine,ptin:_OutLine,varname:node_8258,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2356-OUT,B-4691-OUT;n:type:ShaderForge.SFN_Slider,id:4691,x:32480,y:33428,ptovrint:False,ptlb:OutLineWidth,ptin:_OutLineWidth,varname:node_4691,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.02,max:1;n:type:ShaderForge.SFN_Vector1,id:2356,x:32637,y:33346,varname:node_2356,prsc:2,v1:0;n:type:ShaderForge.SFN_Color,id:3772,x:32820,y:33491,ptovrint:False,ptlb:OutLineColor,ptin:_OutLineColor,varname:node_2649,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:4542-8258-4691-3772;pass:END;sub:END;*/

Shader "Shader Forge/LambertAppend" {
    Properties {
        _RampTex ("RampTex", 2D) = "white" {}
        [MaterialToggle] _OutLine ("OutLine", Float ) = 0
        _OutLineWidth ("OutLineWidth", Range(0, 1)) = 0.02
        _OutLineColor ("OutLineColor", Color) = (0.5,0.5,0.5,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( fixed, _OutLine)
                UNITY_DEFINE_INSTANCED_PROP( float, _OutLineWidth)
                UNITY_DEFINE_INSTANCED_PROP( float4, _OutLineColor)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                float _OutLineWidth_var = UNITY_ACCESS_INSTANCED_PROP( Props, _OutLineWidth );
                float _OutLine_var = lerp( 0.0, _OutLineWidth_var, UNITY_ACCESS_INSTANCED_PROP( Props, _OutLine ) );
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_OutLine_var,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float4 _OutLineColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _OutLineColor );
                return fixed4(_OutLineColor_var.rgb,0);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _RampTex; uniform float4 _RampTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float node_869 = 0.5;
                float2 node_8379 = float2(saturate(((dot(i.normalDir,lightDirection)*node_869)+node_869)),0.0); // 转为Float2 半兰伯特值作为U任意值做V
                float4 _RampTex_var = tex2D(_RampTex,TRANSFORM_TEX(node_8379, _RampTex)); // 输入的UV值读取Tex上的颜色信息
                float3 emissive = _RampTex_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            uniform sampler2D _RampTex; uniform float4 _RampTex_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
