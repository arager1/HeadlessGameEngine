
CMAKE_MINIMUM_REQUIRED(VERSION 3.12 FATAL_ERROR)

SET(CMAKE_DISABLE_SOURCE_CHANGES ON)
SET(CMAKE_DISABLE_IN_SOURCE_BUILD ON)

PROJECT("HeadlessGameEngine" VERSION 1.0 LANGUAGES CXX)

SET(CMAKE_CXX_STANDARD 17)

INCLUDE(CTest)

# INCLUDE(CMake/DownloadGoogleTest.cmake)

IF (ENGINE_ONLY_MODE)
	INCLUDE(CMake/EngineOnlyMode.cmake)
ENDIF()

IF (LOG_FILE)
	INCLUDE(CMake/LoggingEnabled.cmake)
ENDIF()

IF(CMAKE_CXX_COMPILER_ID EQUAL "AppleClang")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra")
ENDIF()
IF(CMAKE_CXX_COMPILER_ID EQUAL "MSVC")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /W4")
ENDIF()

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

ADD_SUBDIRECTORY(Source)
