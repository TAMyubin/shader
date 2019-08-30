﻿Shader"Shader编程/13.渲染对象背面v2"
{
	Properties{
		_Color("主颜色",Color) = (1,1,1,0)
		_SpecColor("高光颜色",Color) = (1,1,1,1)
		_Emission("光泽颜色",Color) = (0,0,0,0)
		_Shiniess("光泽度",Range(0.01,1)) = 0.7
		_MainTex("主纹理",2D) = "white"{}
	}
	SubShader{
	//---------------------------【通道一】------------------------------
		//		说明：绘制对象的前面部分,使用简单的白色材质，并应用主纹理
		//----------------------------------------------------------------------
		Pass{
		//1.设置顶点光照
		Material{
		Diffuse[_Color]
		Ambient[_Color]
		Shininess[_Shiniess]
		Specular[_SpecColor]
		Emission[_Emission]
		}
		//2.开启光照
		Lighting On
		//3.将顶点颜色混合上纹理
		SetTexture[_MainTex]{Combine Primary * Texture}
		}
			//--------------------------【通道二】-------------------------------
		//		说明：采用亮蓝色来渲染背面
		//----------------------------------------------------------------------
		Pass{
			Color(0,0,1,1)
			Cull Front
		}
	}
}