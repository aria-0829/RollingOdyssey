Shader "AP01/L03_FlatColor" {                          //Shader路径名            
    Properties {                                        //材质面板参数
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
            struct VertexInput {                        //VertexInput   输入【结构】
                float4 vertex : POSITION;
            };
            struct VertexOutput {                       //VertexOutput  输出【结构】
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {         //vert      顶点Shader【函数】
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {       //frag      像素Shader【函数】
                return fixed4(1.0,1.0,1.0,1.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}
