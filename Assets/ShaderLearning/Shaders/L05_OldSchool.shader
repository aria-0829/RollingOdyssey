Shader "AP01/L05_OldSchool" {                             //Shader路径名            
    Properties {                                          //材质面板参数
        _MainCol ("颜色", color) = (1.0, 1.0, 1.0, 1.0)
        _SpecularPow ("高光次幂", range(1, 90)) = 30                                        
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
            // 输入参数
            // uniform  共享于vert,frag
            // attibute 仅用于vert
            // varying  用于vert,frag传数据
            uniform float3 _MainCol;     // RGB够了 float3
            uniform float _SpecularPow;  // 标量 float

            //输入结构
            struct VertexInput {                        
                float4 vertex : POSITION;               //将模型顶点信息输入进来
                float3 normal : NORMAL;                 //将模型法线信息输入进来
            };

            //输出结构
            struct VertexOutput {                       
                float4 posCS : SV_POSITION;             //从模型顶点信息换算得到的顶点屏幕位置
                float4 posWS : TEXCOORD0;               // 世界空间顶点位置(像素shader需要vDir,计算vDir需要posWS)
                float3 nDirWS : TEXCOORD1;              //从模型法线信息换算得到的世界空间法线信息
            };

            //输入结构>>>顶点Shader>>>输出结构
            VertexOutput vert (VertexInput v) {         
                VertexOutput o = (VertexOutput)0;                       //新建一个输出结构
                o.posCS = UnityObjectToClipPos( v.vertex );               //变换顶点位置 OS>CS
                o.posWS = mul(unity_ObjectToWorld, v.vertex);           //变换顶点位置 OS>WS
                o.nDirWS = UnityObjectToWorldNormal(v.normal);          //变换法线方向 OS>WS
                return o;                                               //将输出结构输出
            }

            //输出结构>>>像素Shader
            float4 frag(VertexOutput i) : COLOR {       
                //这里的i是ShaderForge默认的名字，理论上可以随意起名。像素Shader输出只能是四维，float4或者half4
                float3 nDir = normalize(i.nDirWS);                      //获取nDir
                float3 lDir = normalize(_WorldSpaceLightPos0.xyz);      //获取lDir，normalize是归一化大小无现实意义的向量
                //_WorldSpaceLightPos0 参数，统一表示Unity里的主光源信息(xyzw)，w内含光源类型(是方向光还是点光)，如果是方向光则xyz内含方向信息，如果是点光源则xyz内含位置信息
                float3 vDir = normalize(_WorldSpaceCameraPos.xyz - i.posWS.xyz);
                float3 hDir = normalize(vDir + lDir);
                float nDotl = dot(nDir,lDir);                           //法线方向点乘光方向
                float ndoth = dot(nDir, hDir);
                //两个向量点乘的几何意义为一个向量在另一个向量上的投影长度，图形学表现为两向量方向相同时结果为1（白色），方向相反时结果为-1（黑色），垂直时结果为0（黑色）
                //所以两个向量点乘的结果就是一维向量（标量）
                float lambert = max(0.0,nDotl);                         //nDotl跟0取最大值，截断所有负值变成0
                float blinnPhong = pow(max(0.0, ndoth), _SpecularPow);
                float3 finalRGB = _MainCol * lambert + blinnPhong;
                return float4(finalRGB, 1.0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
}
