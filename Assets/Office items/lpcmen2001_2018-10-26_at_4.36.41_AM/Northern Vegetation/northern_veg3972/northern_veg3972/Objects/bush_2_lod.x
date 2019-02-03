xof 0303txt 0032

// DirectX 9.0 file
// Creator: Ultimate Unwrap3D Pro v3.18
// Time: Sun Oct 04 19:35:28 2009

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
       10;
       1.130270; 1.632744; -0.864162;,
       -0.111851; 2.225309; -0.127610;,
       0.913643; 0.058167; 0.224095;,
       -1.130271; 1.056005; -0.140961;,
       -0.448956; -0.025309; 0.046026;,
       -0.011813; 1.993545; -0.947026;,
       0.393277; 1.811949; 0.214080;,
       0.000693; 0.281365; -1.063920;,
       -0.176304; 0.952353; 1.063919;,
       -0.188712; 0.005750; -0.000706;;
       6;
       3;0, 1, 2;,
       3;1, 3, 2;,
       3;3, 4, 2;,
       3;5, 6, 7;,
       3;6, 8, 7;,
       3;8, 9, 7;;

      MeshNormals {
       10;
       0.600814; 0.396917; 0.693888;,
       0.260716; 0.273624; 0.925828;,
       0.123195; 0.211799; 0.969517;,
       -0.130909; 0.092955; 0.987027;,
       -0.134285; 0.086101; 0.987195;,
       0.945194; 0.029107; -0.325210;,
       0.978484; -0.195222; -0.066771;,
       0.982845; -0.184419; 0.002324;,
       0.944890; -0.281395; 0.167332;,
       0.977941; -0.161631; 0.132315;;
       6;
       3;0, 1, 2;,
       3;1, 3, 2;,
       3;3, 4, 2;,
       3;5, 6, 7;,
       3;6, 8, 7;,
       3;8, 9, 7;;
      }

      MeshTextureCoords {
       10;
       0.033300; 0.140300;,
       0.575200; 0.062900;,
       0.000000; 0.820100;,
       1.000000; 0.597800;,
       0.578700; 1.000000;,
       0.033300; 0.140300;,
       0.575200; 0.062900;,
       0.000000; 0.820100;,
       1.000000; 0.597800;,
       0.480600; 1.000000;;
      }

      MeshVertexColors {
       10;
       0; 1.000000; 1.000000; 1.000000; 1.000000;,
       1; 1.000000; 1.000000; 1.000000; 1.000000;,
       2; 1.000000; 1.000000; 1.000000; 1.000000;,
       3; 1.000000; 1.000000; 1.000000; 1.000000;,
       4; 1.000000; 1.000000; 1.000000; 1.000000;,
       5; 1.000000; 1.000000; 1.000000; 1.000000;,
       6; 1.000000; 1.000000; 1.000000; 1.000000;,
       7; 1.000000; 1.000000; 1.000000; 1.000000;,
       8; 1.000000; 1.000000; 1.000000; 1.000000;,
       9; 1.000000; 1.000000; 1.000000; 1.000000;;
      }

      MeshMaterialList {
       1;
       6;
       0,
       0,
       0,
       0,
       0,
       0;

       Material bush_2_DF_tga_Smoothing {
        1.000000; 1.000000; 1.000000; 1.000000;;
        20.000000;
        0.200000; 0.200000; 0.200000;;
        0.000000; 0.000000; 0.000000;;

        TextureFilename {
         "bush_2_DF.tga";
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
       10;
       0,
       1,
       2,
       3,
       4,
       5,
       6,
       7,
       8,
       9;
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
