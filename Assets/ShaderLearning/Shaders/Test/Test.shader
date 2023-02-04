// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:0,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33064,y:32721,varname:node_3138,prsc:2|emission-8195-RGB;n:type:ShaderForge.SFN_Tex2d,id:8195,x:32786,y:32644,ptovrint:False,ptlb:node_8195,ptin:_node_8195,varname:node_8195,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:3768,x:32029,y:32586,varname:node_3768,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:3980,x:32572,y:32672,varname:node_3980,prsc:2|A-3768-U,B-9638-OUT;n:type:ShaderForge.SFN_Slider,id:9213,x:31856,y:32937,ptovrint:False,ptlb:node_9213,ptin:_node_9213,varname:node_9213,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_OneMinus,id:9638,x:32366,y:32708,varname:node_9638,prsc:2|IN-7441-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:3760,x:32572,y:32835,ptovrint:False,ptlb:node_3760,ptin:_node_3760,varname:node_3760,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:59b3ffb4265141d4a982c01bbd185883,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7441,x:32184,y:32747,varname:node_7441,prsc:2|A-3768-U,B-9213-OUT;proporder:9213-3760-8195;pass:END;sub:END;*/

Shader "Shader Forge/Test" {
    Properties {
        _node_9213 ("node_9213", Range(0, 5)) = 1
        _node_3760 ("node_3760", 2D) = "white" {}
        _node_8195 ("node_8195", 2D) = "white" {}
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
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _node_8195; uniform float4 _node_8195_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _node_8195_var = tex2D(_node_8195,TRANSFORM_TEX(i.uv0, _node_8195));
                float3 emissive = _node_8195_var.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
