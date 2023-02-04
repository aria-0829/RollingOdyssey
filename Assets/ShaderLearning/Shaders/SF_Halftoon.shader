// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32762,y:32606,varname:node_3138,prsc:2|emission-7027-OUT,olwid-8258-OUT,olcol-2659-OUT;n:type:ShaderForge.SFN_Dot,id:1555,x:31486,y:32721,cmnt:兰伯特暗部为负值,varname:node_1555,prsc:2,dt:0|A-7784-OUT,B-2546-OUT;n:type:ShaderForge.SFN_NormalVector,id:7784,x:31194,y:32623,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:2546,x:31194,y:32792,varname:node_2546,prsc:2;n:type:ShaderForge.SFN_SwitchProperty,id:8258,x:32535,y:33004,ptovrint:False,ptlb:OutLine,ptin:_OutLine,cmnt:描边开关,varname:_OutLine,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2356-OUT,B-4691-OUT;n:type:ShaderForge.SFN_Slider,id:4691,x:32146,y:33075,ptovrint:False,ptlb:OutLineWidth,ptin:_OutLineWidth,varname:_OutLineWidth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.02,max:1;n:type:ShaderForge.SFN_Vector1,id:2356,x:32303,y:32993,varname:node_2356,prsc:2,v1:0;n:type:ShaderForge.SFN_ScreenPos,id:8486,x:31161,y:32189,cmnt:ScreenUV中间为0,varname:node_8486,prsc:2,sctp:1;n:type:ShaderForge.SFN_Multiply,id:4261,x:31417,y:32234,cmnt:可跟随距离缩放,varname:node_4261,prsc:2|A-2097-OUT,B-6390-OUT;n:type:ShaderForge.SFN_Depth,id:107,x:30941,y:31996,cmnt:深度距离摄像机越近越黑,varname:node_107,prsc:2;n:type:ShaderForge.SFN_Slider,id:6390,x:31012,y:32402,ptovrint:False,ptlb:TileSize,ptin:_TileSize,varname:_OutLineWidth_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:60;n:type:ShaderForge.SFN_ComponentMask,id:1752,x:31997,y:32013,cmnt:通道分解查看,varname:node_1752,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8486-UVOUT;n:type:ShaderForge.SFN_Frac,id:5839,x:31594,y:32303,cmnt:取余,varname:node_5839,prsc:2|IN-4261-OUT;n:type:ShaderForge.SFN_RemapRange,id:1372,x:31798,y:32515,varname:node_1372,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-5839-OUT;n:type:ShaderForge.SFN_Length,id:8641,x:31979,y:32515,cmnt:取这个二维向量的长度,varname:node_8641,prsc:2|IN-1372-OUT;n:type:ShaderForge.SFN_RemapRange,id:4549,x:31808,y:32303,varname:node_4549,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-5839-OUT;n:type:ShaderForge.SFN_Length,id:219,x:31979,y:32321,cmnt:取这个二维向量的长度,varname:node_219,prsc:2|IN-4549-OUT;n:type:ShaderForge.SFN_Multiply,id:2097,x:31161,y:31996,cmnt:乘深度之后Tex大小会随摄像机远近变化,varname:node_2097,prsc:2|A-8486-UVOUT,B-107-OUT;n:type:ShaderForge.SFN_Multiply,id:2110,x:31417,y:32402,cmnt:纯屏幕空间,varname:node_2110,prsc:2|A-8486-UVOUT,B-6390-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:5684,x:31486,y:32914,cmnt:投影,varname:node_5684,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6954,x:31727,y:32808,cmnt:可接受其他物体的投影,varname:node_6954,prsc:2|A-1555-OUT,B-5684-OUT;n:type:ShaderForge.SFN_RemapRange,id:6330,x:31965,y:32790,cmnt:有负值power之后可以让亮部的黑色圆变小,varname:node_6330,prsc:2,frmn:1,frmx:0,tomn:-0.5,tomx:2|IN-6954-OUT;n:type:ShaderForge.SFN_Power,id:3369,x:32234,y:32625,cmnt:Power的值越大就会让黑色的圆越大,varname:node_3369,prsc:2|VAL-219-OUT,EXP-6330-OUT;n:type:ShaderForge.SFN_Round,id:7027,x:32530,y:32622,cmnt:非白即黑,varname:node_7027,prsc:2|IN-3369-OUT;n:type:ShaderForge.SFN_Vector4,id:2659,x:32535,y:33161,cmnt:用黑色作描边,varname:node_2659,prsc:2,v1:0,v2:0,v3:0,v4:1;proporder:6390-8258-4691;pass:END;sub:END;*/

Shader "Shader Forge/Halftoon" {
    Properties {
        _TileSize ("TileSize", Range(1, 60)) = 1
        [MaterialToggle] _OutLine ("OutLine", Float ) = 0
        _OutLineWidth ("OutLineWidth", Range(0, 1)) = 0.02
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
                float _OutLine_var = lerp( 0.0, _OutLineWidth_var, UNITY_ACCESS_INSTANCED_PROP( Props, _OutLine ) ); // 描边开关
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_OutLine_var,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                return fixed4(float4(0,0,0,1).rgb,0);
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _TileSize)
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
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
////// Emissive:
                float _TileSize_var = UNITY_ACCESS_INSTANCED_PROP( Props, _TileSize );
                float2 node_5839 = frac(((float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg*partZ)*_TileSize_var)); // 取余
                float node_7027 = round(pow(length((node_5839*1.0+-0.5)),((dot(i.normalDir,lightDirection)*attenuation)*-2.5+2.0))); // 非白即黑
                float3 emissive = float3(node_7027,node_7027,node_7027);
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _TileSize)
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
                float4 projPos : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
