Shader "Mosquito/Texture" {
	Properties {
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
	}
	SubShader {
		
		CGPROGRAM

			#pragma surface surf Lambert // use lambertian lighting model
			sampler2D _MainTex; // input texture

			struct Input {
				float2 uv_MainTex;
			};

			void surf(Input IN, inout SurfaceOutput o) {
				o.Albedo = tex2D(_MainTex, IN.uv_MainTex).rgb;
			}

		ENDCG
	}
	FallBack "Diffuse"
}
