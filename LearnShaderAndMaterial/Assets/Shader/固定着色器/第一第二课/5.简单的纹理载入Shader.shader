﻿Shader"Shader编程/5.简单的纹理载入Shader"
{
	//属性（变量）
	Properties{
		//纹理
		_MainTex("基本纹理",2D) = "White"{TexGen SphereMap}
	}
	//子着色器
	SubShader{
		//通道
		Pass{
			//设置纹理为属性中选择的纹理
			SetTexture[_MainTex]{combine texture}
		}
	}
		//备胎
		//普通漫反射
		Fallback"Diffuse"
}