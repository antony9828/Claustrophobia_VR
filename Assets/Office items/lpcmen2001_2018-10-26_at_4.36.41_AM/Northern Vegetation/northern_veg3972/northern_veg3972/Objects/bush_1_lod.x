xof 0303txt 0032

// DirectX 9.0 file
// Creator: Ultimate Unwrap3D Pro v3.18
// Time: Sun Oct 04 19:32:42 2009

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
       16;
       -0.623687; 0.511525; 0.601704;,
       -0.253653; -0.053244; 0.410485;,
       -0.397854; 0.633244; -0.289433;,
       -0.510683; 0.065132; -0.402864;,
       -0.455180; 0.563610; -0.498841;,
       -0.660823; 0.030295; -0.234867;,
       0.523482; 0.537611; -0.293413;,
       0.369931; 0.004296; -0.409897;,
       -0.408239; 0.606348; 0.224654;,
       -0.556067; 0.017264; 0.157623;,
       0.594002; 0.579464; 0.091313;,
       0.556043; -0.009620; 0.428736;,
       0.482665; 0.591118; 0.176761;,
       0.524623; 0.602525; -0.601704;,
       0.250072; 0.066254; 0.164648;,
       0.660822; -0.031964; -0.495117;;
       8;
       3;0, 1, 2;,
       3;1, 3, 2;,
       3;4, 5, 6;,
       3;5, 7, 6;,
       3;8, 9, 10;,
       3;9, 11, 10;,
       3;12, 13, 14;,
       3;14, 13, 15;;

      MeshNormals {
       16;
       0.797611; 0.579381; -0.167732;,
       0.797611; 0.579381; -0.167732;,
       0.797611; 0.579381; -0.167732;,
       0.797611; 0.579381; -0.167732;,
       0.163886; 0.386125; 0.907772;,
       0.163886; 0.386125; 0.907772;,
       0.163886; 0.386125; 0.907772;,
       0.163886; 0.386125; 0.907772;,
       0.126733; -0.143487; 0.981504;,
       -0.036210; 0.189799; 0.981155;,
       -0.036210; 0.189799; 0.981155;,
       -0.194170; 0.496962; 0.845770;,
       -0.913024; 0.405604; -0.043267;,
       -0.954758; 0.079163; -0.286653;,
       -0.954758; 0.079163; -0.286653;,
       -0.836530; -0.260542; -0.482012;;
       8;
       3;0, 1, 2;,
       3;1, 3, 2;,
       3;4, 5, 6;,
       3;5, 7, 6;,
       3;8, 9, 10;,
       3;9, 11, 10;,
       3;12, 13, 14;,
       3;14, 13, 15;;
      }

      MeshTextureCoords {
       16;
       0.000000; 0.000000;,
       0.000000; 1.000000;,
       1.000000; 0.000000;,
       1.000000; 1.000000;,
       0.000000; 0.000000;,
       0.000000; 1.000000;,
       1.000000; 0.000000;,
       1.000000; 1.000000;,
       0.000000; 0.000000;,
       0.000000; 1.000000;,
       1.000000; 0.000000;,
       1.000000; 1.000000;,
       0.000000; 0.000000;,
       1.000000; 0.000000;,
       0.000000; 1.000000;,
       1.000000; 1.000000;;
      }

      MeshVertexColors {
       16;
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
       15; 1.000000; 1.000000; 1.000000; 1.000000;;
      }

      MeshMaterialList {
       1;
       8;
       0,
       0,
       0,
       0,
       0,
       0,
       0,
       0;

       Material bush_1_DF_tga_Smoothing {
        1.000000; 1.000000; 1.000000; 1.000000;;
        20.000000;
        0.200000; 0.200000; 0.200000;;
        0.000000; 0.000000; 0.000000;;

        TextureFilename {
         "bush_1_DF.tga";
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
       16;
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
       15;
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
