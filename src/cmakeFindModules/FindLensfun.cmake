MESSAGE(STATUS "Looking for Lensfun.")

FIND_PATH(LENSFUN_INCLUDE_DIR lensfun/lensfun.h
  HINTS
  $ENV{LENSFUN_ROOT}/include
  ${LENSFUN_ROOT}/include
  PATH_SUFFIXES
  lensfun
)

IF(LENSFUN_INCLUDE_DIR)
  MESSAGE(STATUS "Lensfun headers found in ${LENSFUN_INCLUDE_DIR}")
ELSE(LENSFUN_INCLUDE_DIR)
  MESSAGE(STATUS "Lensfun NOT FOUND")
ENDIF (LENSFUN_INCLUDE_DIR)

SET(LENSFUN_LIBRARY_DIR $ENV{LENSFUN_ROOT}/lib)

FIND_LIBRARY(LENSFUN_LIBRARY  liblensfun.so PATHS ${LENSFUN_LIBRARY_DIR})

SET(LENSFUN_LIBRARIES ${LENSFUN_LIBRARY})

INCLUDE(FindPackageHandleStandardArgs)

FIND_PACKAGE_HANDLE_STANDARD_ARGS(Lensfun DEFAULT_MSG LENSFUN_LIBRARIES LENSFUN_LIBRARY_DIR LENSFUN_INCLUDE_DIR)
