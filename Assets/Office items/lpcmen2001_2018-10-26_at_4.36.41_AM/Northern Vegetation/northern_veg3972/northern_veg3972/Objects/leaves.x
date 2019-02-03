xof 0303txt 0032

// DirectX 9.0 file
// Creator: Ultimate Unwrap3D Pro v3.18
// Time: Sun Oct 04 19:41:21 2009

// Start of Templates

template VertexDuplicationIndices {
 <b8d65549-d7c9-4995-89cf-53a9a8b031e3>
 DWORD nIndices;
 DWORD nOriginalVertices;
 array DWORD indices[nIndices];
}

template FVFData {
 <b6e70a0e-8ef9-4e83-94ad-ecc8b0c04897>
 DWORD dwFVF;
 DWORD nDWords;
 array DWORD data[nDWords];
}

template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

template XSkinMeshHeader {
 <3CF169CE-FF7C-44ab-93C0-F78F62D172E2>
 WORD nMaxSkinWeightsPerVertex;
 WORD nMaxSkinWeightsPerFace;
 WORD nBones;
}

template SkinWeights {
 <6F0D123B-BAD2-4167-A0D0-80224F25FABB>
 STRING transformNodeName;
 DWORD nWeights;
 array DWORD vertexIndices[nWeights];
 array FLOAT weights[nWeights];
 Matrix4x4 matrixOffset;
}

template AnimTicksPerSecond {
 <9E415A43-7BA6-4a73-8743-B73D47E88476>
 DWORD AnimTicksPerSecond;
}

AnimTicksPerSecond {
 30;
}

// Start of Frames

   Frame Mesh_Object {
      FrameTransformMatrix {
       1.000000, 0.000000, 0.000000, 0.000000,
       0.000000, 1.000000, 0.000000, 0.000000,
       0.000000, 0.000000, 1.000000, 0.000000,
       0.000000, 0.000000, 0.000000, 1.000000;;
      }

   }

   Frame Body {
      FrameTransformMatrix {
       1.000000, 0.000000, 0.000000, 0.000000,
       0.000000, 1.000000, 0.000000, 0.000000,
       0.000000, 0.000000, 1.000000, 0.000000,
       0.000000, 0.000000, 0.000000, 1.000000;;
      }

      Mesh skinnedMesh {
       18;
       0.303877; -0.012501; -0.122289;,
       0.146790; 0.062946; -0.378164;,
       0.171044; 0.030265; -0.064918;,
       -0.052296; -0.004991; -0.296214;,
       0.303334; -0.004991; 0.378164;,
       0.363688; -0.004991; 0.158871;,
       0.188072; -0.004991; 0.378164;,
       0.175085; 0.053559; 0.005620;,
       -0.033193; 0.016165; -0.099684;,
       0.102338; 0.036120; 0.170554;,
       -0.144488; 0.072501; -0.115079;,
       -0.363688; 0.049220; -0.309302;,
       -0.363688; -0.004991; 0.095319;,
       -0.308231; -0.004991; 0.287168;,
       0.055671; 0.042953; 0.312971;,
       -0.208017; -0.004991; -0.297879;,
       -0.082821; 0.066277; 0.378164;,
       0.271005; -0.004991; -0.378164;;
       16;
       3;0, 1, 2;,
       3;1, 3, 2;,
       3;4, 5, 6;,
       3;5, 7, 6;,
       3;8, 7, 2;,
       3;9, 6, 7;,
       3;10, 11, 12;,
       3;12, 13, 9;,
       3;13, 14, 9;,
       3;8, 12, 9;,
       3;8, 9, 7;,
       3;8, 10, 12;,
       3;10, 15, 11;,
       3;13, 16, 14;,
       3;3, 8, 2;,
       3;0, 17, 1;;

      MeshNormals {
       18;
       0.172284; 0.968499; 0.179801;,
       0.172284; 0.968499; 0.179801;,
       -0.078186; 0.996808; -0.016130;,
       -0.109287; 0.984453; 0.137510;,
       0.245352; 0.967080; 0.067526;,
       0.245352; 0.967080; 0.067526;,
       0.176366; 0.978214; 0.109509;,
       0.039161; 0.999055; -0.018868;,
       -0.007345; 0.999368; 0.034773;,
       -0.074825; 0.996181; 0.045003;,
       0.155658; 0.982863; 0.098748;,
       0.056974; 0.981652; -0.181969;,
       -0.035606; 0.980803; 0.191722;,
       -0.110990; 0.966648; -0.230811;,
       -0.110990; 0.966648; -0.230811;,
       0.321699; 0.826406; -0.462128;,
       -0.080605; 0.871823; -0.483143;,
       0.479541; 0.876786; -0.035872;;
       16;
       3;0, 1, 2;,
       3;1, 3, 2;,
       3;4, 5, 6;,
       3;5, 7, 6;,
       3;8, 7, 2;,
       3;9, 6, 7;,
       3;10, 11, 12;,
       3;12, 13, 9;,
       3;13, 14, 9;,
       3;8, 12, 9;,
       3;8, 9, 7;,
       3;8, 10, 12;,
       3;10, 15, 11;,
       3;13, 16, 14;,
       3;3, 8, 2;,
       3;0, 17, 1;;
      }

      MeshTextureCoords {
       18;
       0.882600; 0.338300;,
       0.674900; 0.000000;,
       0.707000; 0.414200;,
       0.411700; 0.108400;,
       0.881900; 1.000000;,
       0.961700; 0.710100;,
       0.729500; 1.000000;,
       0.712400; 0.507400;,
       0.437000; 0.368200;,
       0.616200; 0.725500;,
       0.289700; 0.347800;,
       0.000000; 0.091000;,
       0.000000; 0.626000;,
       0.073300; 0.879700;,
       0.554500; 0.913800;,
       0.205800; 0.106200;,
       0.371400; 1.000000;,
       0.839200; 0.000000;;
      }

      MeshVertexColors {
       18;
       0; 1.000000; 1.000000; 1.000000; 1.000000;,
       1; 1.000000; 1.000000; 1.000000; 1.000000;,
       2; 1.000000; 1.000000; 1.000000; 1.000000;,
       3; 1.000000; 1.000000; 1.000000; 1.000000;,
       4; 1.000000; 1.000000; 1.000000; 1.000000;,
       5; 1.000000; 1.000000; 1.000000; 1.000000;,
       6; 1.000000; 1.000000; 1.000000; 1.000000;,
       7; 1.000000; 1.000000; 1.000000; 1.000000;,
       8; 1.000000; 1.000000; 1.000000; 1.000000;,
       9; 1.000000; 1.000000; 1.000000; 1.000000;,
       10; 1.000000; 1.000000; 1.000000; 1.000000;,
       11; 1.000000; 1.000000; 1.000000; 1.000000;,
       12; 1.000000; 1.000000; 1.000000; 1.000000;,
       13; 1.000000; 1.000000; 1.000000; 1.000000;,
       14; 1.000000; 1.000000; 1.000000; 1.000000;,
       15; 1.000000; 1.000000; 1.000000; 1.000000;,
       16; 1.000000; 1.000000; 1.000000; 1.000000;,
       17; 1.000000; 1.000000; 1.000000; 1.000000;;
      }

      MeshMaterialList {
       1;
       16;
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0;

       Material leaves_DF_tga_Smoothing {
        1.000000; 1.000000; 1.000000; 1.000000;;
        20.000000;
        0.200000; 0.200000; 0.200000;;
        0.000000; 0.000000; 0.000000;;

        TextureFilename {
         "leaves_DF.tga";
        }
       }

      }

      XSkinMeshHeader {
       1;
       1;
       1;
      }

      SkinWeights {
       "Mesh_Object";
       18;
       0,
       1,
       2,
       3,
       4,
       5,
       6,
       7,
       8,
       9,
       10,
       11,
       12,
       13,
       14,
       15,
       16,
       17;
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000,
       1.000000;
          1.000000, -0.000000, 0.000000, 0.000000,
          -0.000000, 1.000000, -0.000000, 0.000000,
          0.000000, -0.000000, 1.000000, 0.000000,
          -0.000000, -0.000000, -0.000000, 1.000000;;
      }


     }
   }

// Start of Animation

AnimationSet Untitled {
}
