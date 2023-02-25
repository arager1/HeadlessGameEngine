
SET(LIBNAME DummyGame)

SET(SOURCES EngineOnlyMode/DummyGame.hpp EngineOnlyMode/DummyGame.cpp)

ADD_LIBRARY(${LIBNAME} ${SOURCES})

TARGET_INCLUDE_DIRECTORIES(${LIBNAME} PUBLIC ${PROJECT_SOURCE_DIR}/Source/Engine/Core)
TARGET_LINK_LIBRARIES(${LIBNAME} IGame)