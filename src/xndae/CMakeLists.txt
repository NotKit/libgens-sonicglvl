cmake_minimum_required(VERSION 2.8.4)
project(xndae)

if (CMAKE_BUILD_TYPE STREQUAL "")
  # CMake defaults to leaving CMAKE_BUILD_TYPE empty. This screws up
  # differentiation between debug and release builds.
  set(CMAKE_BUILD_TYPE "RelWithDebInfo" CACHE STRING "Choose the type of build, options are: None (CMAKE_CXX_FLAGS or CMAKE_C_FLAGS used) Debug Release RelWithDebInfo MinSizeRel." FORCE)
endif()

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake-modules")

if(MSVC)
else()
    find_package(PkgConfig REQUIRED)
    pkg_search_module(ALLEGRO REQUIRED allegro-5.0)
    pkg_search_module(ALLEGRO_IMAGE REQUIRED allegro_image-5.0)
endif()    

include_directories(
    "."
    "../LibGens"
    "../LibS06"
    "../LibGens-externals"
    "../LibGens-externals/tristripper"
)

file(
    GLOB_RECURSE
    LIBGENS_EXTERNALS_FILES
    "../LibGens-externals/*.cpp"
    "../LibGens-externals/*.h"
)

add_library(LibGens STATIC
#     "../LibGens/Animation.cpp"
#     "../LibGens/Animation.h"
#     "../LibGens/AnimationSet.cpp"
#     "../LibGens/AnimationSet.h"
#     "../LibGens/AR.cpp"
#     "../LibGens/AR.h"
#     "../LibGens/ArchiveTree.cpp"
#     "../LibGens/ArchiveTree.h"
#     "../LibGens/Bitmap.cpp"
#     "../LibGens/Bitmap.h"
#     "../LibGens/BIXF.cpp"
#     "../LibGens/BIXF.h"
#     "../LibGens/Bone.cpp"
#     "../LibGens/Bone.h"
     "../LibGens/Endian.cpp"
     "../LibGens/Endian.h"
     "../LibGens/Error.cpp"
     "../LibGens/Error.h"
     "../LibGens/File.cpp"
     "../LibGens/File.h"
#     "../LibGens/Ghost.cpp"
#     "../LibGens/Ghost.h"
#     "../LibGens/GhostNode.cpp"
#     "../LibGens/GhostNode.h"
#     "../LibGens/GITextureGroup.cpp"
#     "../LibGens/GITextureGroup.h"
#     "../LibGens/Havok.cpp"
#     "../LibGens/Havok.h"
#     "../LibGens/HavokAnimationCache.cpp"
#     "../LibGens/HavokAnimationCache.h"
#     "../LibGens/HavokEnviroment.cpp"
#     "../LibGens/HavokEnviroment.h"
#     "../LibGens/HavokPhysicsCache.cpp"
#     "../LibGens/HavokPhysicsCache.h"
#     "../LibGens/HavokPropertyDatabase.cpp"
#     "../LibGens/HavokPropertyDatabase.h"
#     "../LibGens/HavokSkeletonCache.cpp"
#     "../LibGens/HavokSkeletonCache.h"
#     "../LibGens/InstanceMTI.cpp"
#     "../LibGens/InstanceMTI.h"
#     "../LibGens/Keyframe.cpp"
#     "../LibGens/Keyframe.h"
#     "../LibGens/KeyframeSet.cpp"
#     "../LibGens/KeyframeSet.h"
#     "../LibGens/Level.cpp"
#     "../LibGens/Level.h"
     "../LibGens/LibGens.cpp"
     "../LibGens/LibGens.h"
#     "../LibGens/Light.cpp"
#     "../LibGens/Light.h"
#     "../LibGens/LightField.cpp"
#     "../LibGens/LightField.h"
#     "../LibGens/Material.cpp"
#     "../LibGens/Material.h"
#     "../LibGens/MaterialLibrary.cpp"
#     "../LibGens/MaterialLibrary.h"
     "../LibGens/MathGens.cpp"
     "../LibGens/MathGens.h"
#     "../LibGens/Mesh.cpp"
#     "../LibGens/Mesh.h"
#     "../LibGens/Model.cpp"
#     "../LibGens/Model.h"
#     "../LibGens/ModelLibrary.cpp"
#     "../LibGens/ModelLibrary.h"
#     "../LibGens/Object.cpp"
#     "../LibGens/Object.h"
#     "../LibGens/ObjectCategory.cpp"
#     "../LibGens/ObjectCategory.h"
#     "../LibGens/ObjectElement.cpp"
#     "../LibGens/ObjectElement.h"
#     "../LibGens/ObjectExtra.cpp"
#     "../LibGens/ObjectExtra.h"
#     "../LibGens/ObjectLibrary.cpp"
#     "../LibGens/ObjectLibrary.h"
#     "../LibGens/ObjectProduction.cpp"
#     "../LibGens/ObjectProduction.h"
#     "../LibGens/ObjectSet.cpp"
#     "../LibGens/ObjectSet.h"
#     "../LibGens/PAC.cpp"
#     "../LibGens/PAC.h"
#     "../LibGens/Parameter.cpp"
#     "../LibGens/Parameter.h"
#     "../LibGens/Path.cpp"
#     "../LibGens/Path.h"
#     "../LibGens/Shader.cpp"
#     "../LibGens/Shader.h"
#     "../LibGens/StringTable.cpp"
#     "../LibGens/StringTable.h"
#     "../LibGens/Submesh.cpp"
#     "../LibGens/Submesh.h"
#     "../LibGens/Terrain.cpp"
#     "../LibGens/Terrain.h"
#     "../LibGens/TerrainBlock.cpp"
#     "../LibGens/TerrainBlock.h"
#     "../LibGens/TerrainGroup.cpp"
#     "../LibGens/TerrainGroup.h"
#     "../LibGens/TerrainInstance.cpp"
#     "../LibGens/TerrainInstance.h"
#     "../LibGens/Texture.cpp"
#     "../LibGens/Texture.h"
#     "../LibGens/UVAnimation.cpp"
#     "../LibGens/UVAnimation.h"
#     "../LibGens/UVAnimationLibrary.cpp"
#     "../LibGens/UVAnimationLibrary.h"
#     "../LibGens/UVAnimationSet.cpp"
#     "../LibGens/UVAnimationSet.h"
#     "../LibGens/Vertex.cpp"
#     "../LibGens/Vertex.h"
#     "../LibGens/VertexFormat.cpp"
#     "../LibGens/VertexFormat.h"
#     "../LibGens/VRMap.cpp"
#     "../LibGens/VRMap.h"
    ${LIBGENS_EXTERNALS_FILES}
)

add_library(LibS06 STATIC
    #"../LibS06/S06Collision.cpp"
    #"../LibS06/S06Collision.h"
    "../LibS06/S06Common.cpp"
    "../LibS06/S06Common.h"
    "../LibS06/S06DAE.cpp"
    "../LibS06/S06Set.cpp"
    "../LibS06/S06Set.h"
    "../LibS06/S06Text.cpp"
    "../LibS06/S06Text.h"
    "../LibS06/S06XnBones.cpp"
    "../LibS06/S06XnEffect.cpp"
    "../LibS06/S06XnFile.cpp"
    #"../LibS06/S06XnFileFBX.cpp"
    "../LibS06/S06XnFile.h"
    "../LibS06/S06XnMotion.cpp"
    "../LibS06/S06XnObjectBone.cpp"
    "../LibS06/S06XnObject.cpp"
    "../LibS06/S06XnObjectIndex.cpp"
    "../LibS06/S06XnObjectMaterial.cpp"
    "../LibS06/S06XnObjectMesh.cpp"
    "../LibS06/S06XnObjectOldMaterial.cpp"
    "../LibS06/S06XnObjectPolygon.cpp"
    "../LibS06/S06XnObjectVertex.cpp"
    "../LibS06/S06XnObjectVertexResource.cpp"
    "../LibS06/S06XnTexture.cpp"
)

include(PrecompiledHeader)
add_precompiled_header(LibGens ../LibGens/stdafx.h FORCEINCLUDE SOURCE_CXX ../LibGens/stdafx.cpp)

add_executable(xndae
    "main.cpp"
)

set(ALL_LIBS
    ${LibGens}
    ${ALLEGRO_LIBRARIES}
    ${ALLEGRO_IMAGE_LIBRARIES}
    pthread
    LibS06
    LibGens    
)

if(MSVC)
    target_link_libraries(xndae ${ALL_LIBS})
else()
    target_link_libraries(xndae ${ALL_LIBS})
endif()
