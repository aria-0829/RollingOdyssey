Shader "AP01/L03_Lambert" {                             //Shader路径名            
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

            //输入结构
            struct VertexInput {                        
                float4 vertex : POSITION;               //将模型顶点信息输入进来
                float3 normal : NORMAL;                 //将模型法线信息输入进来
            };

            //输出结构
            struct VertexOutput {                       
                float4 pos : SV_POSITION;               //从模型顶点信息换算得到的顶点屏幕位置
                float3 nDirWS : TEXCOORD0;              //从模型法线信息换算得到的世界空间法线信息
            };

            //输入结构>>>顶点Shader>>>输出结构
            VertexOutput vert (VertexInput v) {         
                VertexOutput o = (VertexOutput)0;                       //新建一个输出结构
                o.pos = UnityObjectToClipPos( v.vertex );               //变换顶点信息
                o.nDirWS = UnityObjectToWorldNormal(v.normal);          //变换法线信息
                return o;                                               //将输出结构输出
            }

            //输出结构>>>像素Shader
            float4 frag(VertexOutput i) : COLOR {       
                //这里的i是ShaderForge默认的名字，理论上可以随意起名。像素Shader输出只能是四维，float4或者half4
                float3 nDir = normalize(i.nDirWS);                      //获取nDir
                float3 lDir = normalize(_WorldSpaceLightPos0.xyz);      //获取lDir，normalize是归一化大小无现实意义的向量
                //_WorldSpaceLightPos0 参数，统一表示Unity里的主光源信息(xyzw)，w内含光源类型(是方向光还是点光)，如果是方向光则xyz内含方向信息，如果是点光源则xyz内含位置信息
                float nDotl = dot(nDir,lDir);                           //法线方向点乘光方向
                //两个向量点乘的几何意义为一个向量在另一个向量上的投影长度，图形学表现为两向量方向相同时结果为1（白色），方向相反时结果为-1（黑色），垂直时结果为0（黑色）
                //所以两个向量点乘的结果就是一维向量（标量）
                float lambert = max(0.0,nDotl);                         //nDotl跟0取最大值，截断所有负值变成0
                return lambert;                                         //输出最终颜色
                //return float4(lambert, lambert, lambert, 1.0); 会更规范
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}
