// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33662,y:33647,varname:node_3138,prsc:2|emission-5090-OUT;n:type:ShaderForge.SFN_Dot,id:1555,x:31861,y:33094,varname:node_1555,prsc:2,dt:0|A-7784-OUT,B-2546-OUT;n:type:ShaderForge.SFN_NormalVector,id:7784,x:31383,y:33011,prsc:2,pt:False;n:type:ShaderForge.SFN_LightVector,id:2546,x:31383,y:33175,varname:node_2546,prsc:2;n:type:ShaderForge.SFN_Append,id:8379,x:32601,y:33222,varname:node_8379,prsc:2|A-8149-OUT,B-4973-OUT;n:type:ShaderForge.SFN_Vector1,id:4973,x:32435,y:33274,varname:node_4973,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:4542,x:32780,y:33222,ptovrint:False,ptlb:TexRamp,ptin:_TexRamp,varname:_TexRamp,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8379-OUT;n:type:ShaderForge.SFN_Dot,id:4960,x:31866,y:33419,varname:node_4960,prsc:2,dt:0|A-7784-OUT,B-3533-OUT;n:type:ShaderForge.SFN_Vector4Property,id:7959,x:31389,y:33434,ptovrint:False,ptlb:LightShift_1,ptin:_LightShift_1,varname:_LightShift_1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:3533,x:31601,y:33434,varname:node_3533,prsc:2|A-2546-OUT,B-7959-XYZ;n:type:ShaderForge.SFN_If,id:5914,x:32435,y:33435,cmnt:高光范围1,varname:node_5914,prsc:2|A-4960-OUT,B-2240-OUT,GT-6247-OUT,EQ-8369-OUT,LT-8369-OUT;n:type:ShaderForge.SFN_Vector1,id:6247,x:32197,y:33574,varname:node_6247,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:8369,x:32197,y:33646,varname:node_8369,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:2240,x:32040,y:33494,ptovrint:False,ptlb:HightLightSize_1,ptin:_HightLightSize_1,varname:_HightLightSize_1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_Dot,id:4284,x:31873,y:33823,varname:node_4284,prsc:2,dt:0|A-7784-OUT,B-4819-OUT;n:type:ShaderForge.SFN_Vector4Property,id:472,x:31403,y:33855,ptovrint:False,ptlb:LightShift_2,ptin:_LightShift_2,varname:_LightShift_2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Add,id:4819,x:31597,y:33835,varname:node_4819,prsc:2|A-2546-OUT,B-472-XYZ;n:type:ShaderForge.SFN_If,id:8147,x:32440,y:33784,cmnt:高光范围2,varname:node_8147,prsc:2|A-4284-OUT,B-6495-OUT,GT-8333-OUT,EQ-8797-OUT,LT-8797-OUT;n:type:ShaderForge.SFN_Vector1,id:8333,x:32212,y:33924,varname:node_8333,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:8797,x:32212,y:33996,varname:node_8797,prsc:2,v1:0;n:type:ShaderForge.SFN_Slider,id:6495,x:32055,y:33847,ptovrint:False,ptlb:HightLightSize_2,ptin:_HightLightSize_2,varname:_HightLightSize_2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_Clamp01,id:1781,x:32791,y:33717,varname:node_1781,prsc:2|IN-3978-OUT;n:type:ShaderForge.SFN_Lerp,id:673,x:32984,y:33565,cmnt:给高光颜色做遮罩,varname:node_673,prsc:2|A-4542-RGB,B-3750-RGB,T-1781-OUT;n:type:ShaderForge.SFN_Color,id:3750,x:32791,y:33555,ptovrint:False,ptlb:HightLightColor,ptin:_HightLightColor,varname:_HightLightColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Fresnel,id:3109,x:32765,y:34025,varname:node_3109,prsc:2|EXP-2319-OUT;n:type:ShaderForge.SFN_Slider,id:2319,x:32408,y:34050,ptovrint:False,ptlb:FresnelPower,ptin:_FresnelPower,varname:_FresnelPower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:5;n:type:ShaderForge.SFN_Color,id:9825,x:33182,y:33796,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:_FresnelColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Lerp,id:5090,x:33443,y:33747,cmnt:给Fresnel颜色遮罩,varname:node_5090,prsc:2|A-673-OUT,B-9825-RGB,T-8179-OUT;n:type:ShaderForge.SFN_RemapRange,id:8149,x:32215,y:33095,cmnt:半兰伯特,varname:node_8149,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-1555-OUT;n:type:ShaderForge.SFN_Max,id:3978,x:32603,y:33717,cmnt:原理是Blend的Lighten,varname:node_3978,prsc:2|A-5914-OUT,B-8147-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:6686,x:32359,y:34202,varname:node_6686,prsc:2;n:type:ShaderForge.SFN_Lerp,id:2776,x:32961,y:34165,cmnt:世界空间高度做Fresnel遮罩,varname:node_2776,prsc:2|A-4868-OUT,B-3109-OUT,T-6531-OUT;n:type:ShaderForge.SFN_Vector4,id:4868,x:32588,y:34165,varname:node_4868,prsc:2,v1:0,v2:0,v3:0,v4:1;n:type:ShaderForge.SFN_Slider,id:8758,x:32221,y:34371,ptovrint:False,ptlb:FresnelHeightPower,ptin:_FresnelHeightPower,varname:_FresnelPower_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:3;n:type:ShaderForge.SFN_Multiply,id:6531,x:32588,y:34287,varname:node_6531,prsc:2|A-6686-Y,B-8758-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:8179,x:33182,y:34013,ptovrint:False,ptlb:FresnelHeightBlend,ptin:_FresnelHeightBlend,cmnt:Fresnel高度开关,varname:_OutLine_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-3109-OUT,B-2776-OUT;proporder:4542-2240-7959-6495-472-3750-9825-2319-8179-8758;pass:END;sub:END;*/

Shader "Shader Forge/HighlightShift" {
    Properties {
        _TexRamp ("TexRamp", 2D) = "white" {}
        _HightLightSize_1 ("HightLightSize_1", Range(0, 1)) = 0.8
        _LightShift_1 ("LightShift_1", Vector) = (0,0,0,0)
        _HightLightSize_2 ("HightLightSize_2", Range(0, 1)) = 0.8
        _LightShift_2 ("LightShift_2", Vector) = (0,0,0,0)
        _HightLightColor ("HightLightColor", Color) = (1,1,1,1)
        _FresnelColor ("FresnelColor", Color) = (1,1,1,1)
        _FresnelPower ("FresnelPower", Range(1, 5)) = 1
        [MaterialToggle] _FresnelHeightBlend ("FresnelHeightBlend", Float ) = 0
        _FresnelHeightPower ("FresnelHeightPower", Range(1, 3)) = 1
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
            uniform sampler2D _TexRamp; uniform float4 _TexRamp_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightShift_1)
                UNITY_DEFINE_INSTANCED_PROP( float, _HightLightSize_1)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightShift_2)
                UNITY_DEFINE_INSTANCED_PROP( float, _HightLightSize_2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HightLightColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelPower)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelHeightPower)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _FresnelHeightBlend)
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
                float2 node_8379 = float2((dot(i.normalDir,lightDirection)*0.5+0.5),0.0);
                float4 _TexRamp_var = tex2D(_TexRamp,TRANSFORM_TEX(node_8379, _TexRamp));
                float4 _HightLightColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HightLightColor );
                float4 _LightShift_1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightShift_1 );
                float _HightLightSize_1_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HightLightSize_1 );
                float node_5914_if_leA = step(dot(i.normalDir,(lightDirection+_LightShift_1_var.rgb)),_HightLightSize_1_var);
                float node_5914_if_leB = step(_HightLightSize_1_var,dot(i.normalDir,(lightDirection+_LightShift_1_var.rgb)));
                float node_8369 = 0.0;
                float4 _LightShift_2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _LightShift_2 );
                float _HightLightSize_2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _HightLightSize_2 );
                float node_8147_if_leA = step(dot(i.normalDir,(lightDirection+_LightShift_2_var.rgb)),_HightLightSize_2_var);
                float node_8147_if_leB = step(_HightLightSize_2_var,dot(i.normalDir,(lightDirection+_LightShift_2_var.rgb)));
                float node_8797 = 0.0;
                float4 _FresnelColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelColor );
                float _FresnelPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelPower );
                float node_3109 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelPower_var);
                float _FresnelHeightPower_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelHeightPower );
                float4 _FresnelHeightBlend_var = lerp( node_3109, lerp(float4(0,0,0,1),float4(node_3109,node_3109,node_3109,node_3109),(i.posWorld.g*_FresnelHeightPower_var)), UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelHeightBlend ) ); // Fresnel高度开关
                float3 emissive = lerp(float4(lerp(_TexRamp_var.rgb,_HightLightColor_var.rgb,saturate(max(lerp((node_5914_if_leA*node_8369)+(node_5914_if_leB*1.0),node_8369,node_5914_if_leA*node_5914_if_leB),lerp((node_8147_if_leA*node_8797)+(node_8147_if_leB*1.0),node_8797,node_8147_if_leA*node_8147_if_leB)))),0.0),float4(_FresnelColor_var.rgb,0.0),_FresnelHeightBlend_var).rgb;
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
            uniform sampler2D _TexRamp; uniform float4 _TexRamp_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightShift_1)
                UNITY_DEFINE_INSTANCED_PROP( float, _HightLightSize_1)
                UNITY_DEFINE_INSTANCED_PROP( float4, _LightShift_2)
                UNITY_DEFINE_INSTANCED_PROP( float, _HightLightSize_2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _HightLightColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelPower)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelHeightPower)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _FresnelHeightBlend)
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
