# Sometimes our users will try to do: "cd eks; cmake ." That needs to error in a nice way.
if ("${CMAKE_SOURCE_DIR}" STREQUAL "${CMAKE_CURRENT_SOURCE_DIR}")
    message(FATAL_ERROR "cmake has to be used on the root CMakeLists.txt, see the Building ComplianceAsCode section in the Developer Guide!")
endif()

set(PRODUCT "eks")
set(DISA_SRG_TYPE "os")
set(PRODUCT_REMEDIATION_LANGUAGES "kubernetes")

ssg_build_product(${PRODUCT})
