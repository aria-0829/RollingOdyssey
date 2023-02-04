// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32832,y:32747,varname:node_3138,prsc:2|emission-2851-OUT,olwid-8258-OUT,olcol-3772-RGB;n:type:ShaderForge.SFN_Dot,id:1555,x:31828,y:33041,cmnt:兰伯特暗部为负值,varname:node_1555,prsc:2,dt:0|A-7784-OUT,B-2546-OUT;n:type:ShaderForge.SFN_NormalVector,id:7784,x:31401,y:33006,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:2546,x:31401,y:33175,varname:node_2546,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:4542,x:31826,y:32722,ptovrint:False,ptlb:ScreenTex,ptin:_ScreenTex,varname:_TexRamp,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4261-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8258,x:32475,y:33394,ptovrint:False,ptlb:OutLine,ptin:_OutLine,cmnt:描边开关,varname:_OutLine,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2356-OUT,B-4691-OUT;n:type:ShaderForge.SFN_Slider,id:4691,x:32086,y:33465,ptovrint:False,ptlb:OutLineWidth,ptin:_OutLineWidth,varname:_OutLineWidth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.02,max:1;n:type:ShaderForge.SFN_Vector1,id:2356,x:32243,y:33383,varname:node_2356,prsc:2,v1:0;n:type:ShaderForge.SFN_Color,id:3772,x:32475,y:33539,ptovrint:False,ptlb:OutLineColor,ptin:_OutLineColor,varname:_OutLineColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:673,x:32277,y:32613,cmnt:给黑白赋色,varname:node_673,prsc:2|A-3222-RGB,B-44-RGB,T-7588-OUT;n:type:ShaderForge.SFN_ScreenPos,id:8486,x:31401,y:32564,cmnt:ScreenUV,varname:node_8486,prsc:2,sctp:1;n:type:ShaderForge.SFN_Multiply,id:4261,x:31616,y:32677,cmnt:乘深度之后Tex大小会随摄像机远近变化,varname:node_4261,prsc:2|A-8486-UVOUT,B-107-OUT;n:type:ShaderForge.SFN_Depth,id:107,x:31401,y:32820,cmnt:深度距离摄像机越近越黑,varname:node_107,prsc:2;n:type:ShaderForge.SFN_Step,id:7588,x:32021,y:32872,cmnt:A小于等于B则输出1否则输出0,varname:node_7588,prsc:2|A-4542-RGB,B-1555-OUT;n:type:ShaderForge.SFN_Multiply,id:3813,x:32295,y:33017,varname:node_3813,prsc:2|A-9041-OUT,B-6802-RGB;n:type:ShaderForge.SFN_Color,id:6802,x:32021,y:33240,ptovrint:False,ptlb:AddColor,ptin:_AddColor,varname:_FresnelColor_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:3222,x:32018,y:32427,ptovrint:False,ptlb:DarkColor,ptin:_DarkColor,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Color,id:44,x:32018,y:32594,ptovrint:False,ptlb:BrightColor,ptin:_BrightColor,varname:_Color_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_RemapRange,id:9041,x:32021,y:33033,cmnt:半兰伯特,varname:node_9041,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-1555-OUT;n:type:ShaderForge.SFN_Add,id:2851,x:32565,y:32794,varname:node_2851,prsc:2|A-673-OUT,B-3813-OUT;proporder:4542-44-3222-6802-8258-3772-4691;pass:END;sub:END;*/

Shader "Shader Forge/ScreenCartoon" {
    Properties {
        _ScreenTex ("ScreenTex", 2D) = "white" {}
        _BrightColor ("BrightColor", Color) = (1,1,1,1)
        _DarkColor ("DarkColor", Color) = (1,1,1,1)
        _AddColor ("AddColor", Color) = (1,1,1,1)
        [MaterialToggle] _OutLine ("OutLine", Float ) = 0
        _OutLineColor ("OutLineColor", Color) = (0.5,0.5,0.5,1)
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
                float _OutLine_var = lerp( 0.0, _OutLineWidth_var, UNITY_ACCESS_INSTANCED_PROP( Props, _OutLine ) ); // 描边开关
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _ScreenTex; uniform float4 _ScreenTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _AddColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _DarkColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _BrightColor)
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
////// Emissive:
                float4 _DarkColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DarkColor );
                float4 _BrightColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _BrightColor );
                float2 node_4261 = (float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg*partZ); // 乘深度之后Tex大小会随摄像机远近变化
                float4 _ScreenTex_var = tex2D(_ScreenTex,TRANSFORM_TEX(node_4261, _ScreenTex));
                float node_1555 = dot(i.normalDir,lightDirection); // 兰伯特暗部为负值
                float4 _AddColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _AddColor );
                float3 emissive = (lerp(_DarkColor_var.rgb,_BrightColor_var.rgb,step(_ScreenTex_var.rgb,node_1555))+((node_1555*0.5+0.5)*_AddColor_var.rgb));
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
            uniform sampler2D _ScreenTex; uniform float4 _ScreenTex_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _AddColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _DarkColor)
                UNITY_DEFINE_INSTANCED_PROP( float4, _BrightColor)
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
                float3 finalColor = 0;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
