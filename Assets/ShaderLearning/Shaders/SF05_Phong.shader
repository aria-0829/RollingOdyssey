// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32804,y:32995,varname:node_3138,prsc:2|emission-240-OUT;n:type:ShaderForge.SFN_Dot,id:1555,x:32072,y:33301,cmnt:r dot v,varname:node_1555,prsc:2,dt:0|A-750-OUT,B-5379-OUT;n:type:ShaderForge.SFN_NormalVector,id:7784,x:31671,y:33305,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:2546,x:31445,y:33089,varname:node_2546,prsc:2;n:type:ShaderForge.SFN_Vector1,id:869,x:32078,y:33157,varname:node_869,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:5501,x:31661,y:33146,cmnt:取反是光的方向,varname:node_5501,prsc:2|A-2546-OUT,B-6066-OUT;n:type:ShaderForge.SFN_Vector1,id:6066,x:31445,y:33251,varname:node_6066,prsc:2,v1:-1;n:type:ShaderForge.SFN_Reflect,id:750,x:31892,y:33215,cmnt:rDir,varname:node_750,prsc:2|A-5501-OUT,B-7784-OUT;n:type:ShaderForge.SFN_ViewVector,id:5379,x:31892,y:33385,varname:node_5379,prsc:2;n:type:ShaderForge.SFN_Max,id:9726,x:32348,y:33103,cmnt:截断负值,varname:node_9726,prsc:2|A-1555-OUT,B-869-OUT;n:type:ShaderForge.SFN_Power,id:240,x:32584,y:33103,cmnt:调整高光形态,varname:node_240,prsc:2|VAL-9726-OUT,EXP-9289-OUT;n:type:ShaderForge.SFN_Slider,id:9289,x:32270,y:33332,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:node_9289,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:30;n:type:ShaderForge.SFN_ViewReflectionVector,id:1366,x:31895,y:32851,varname:node_1366,prsc:2;n:type:ShaderForge.SFN_LightVector,id:1323,x:31895,y:33010,varname:node_1323,prsc:2;n:type:ShaderForge.SFN_Dot,id:1001,x:32078,y:32934,cmnt:l dot vf 等价写法,varname:node_1001,prsc:2,dt:0|A-1366-OUT,B-1323-OUT;proporder:9289;pass:END;sub:END;*/

Shader "Shader Forge/Phong" {
    Properties {
        _SpecularPower ("SpecularPower", Range(1, 30)) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularPower)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
////// Emissive:
                float node_1555 = dot(reflect((lightDirection*(-1.0)),i.normalDir),viewDirection); // r dot v
                float node_869 = 0.0;
                float _SpecularPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SpecularPower );
                float node_240 = pow(max(node_1555,node_869),_SpecularPower_var); // 调整高光形态
                float3 emissive = float3(node_240,node_240,node_240);
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _SpecularPower)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                LIGHTING_COORDS(2,3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
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
