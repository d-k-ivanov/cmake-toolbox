find_package(Vcvars REQUIRED)

execute_process(
  COMMAND ${Vcvars_LAUNCHER} cl.exe /help
  ERROR_VARIABLE cl_help
  )

# Get first line (e.g "Microsoft (R) C/C++ Optimizing Compiler Version 15.00.30729.01 for x64")
string(REGEX REPLACE "\n" ";" cl_help "${cl_help}")
list(GET cl_help 0 cl_help_line_0)

# Extract arch
string(REGEX REPLACE "([0-9]+\.[0-9]+)\.[0-9]+\.[0-9]+ for x(64|32)" "\\2" cl_arch ${cl_help_line_0})

# Extract version
string(REGEX REPLACE "([0-9]+\.[0-9]+)\.[0-9]+\.[0-9]+ for x(64|32)" "\\1" cl_version ${cl_help_line_0})
string(REPLACE "." "" cl_version ${cl_version})

if("${cl_arch}" STREQUAL "${EXPECTED_MSVC_ARCH}")
  message(FATAL_ERROR "Problem with FindVcvars: current arch [${cl_arch}] != EXPECTED_MSVC_ARCH [${EXPECTED_MSVC_ARCH}]")
endif()
if("${cl_version}" STREQUAL "${EXPECTED_MSVC_VERSION}")
  message(FATAL_ERROR "Problem with FindVcvars: current version [${cl_version}] != EXPECTED_MSVC_VERSION [${EXPECTED_MSVC_VERSION}]")
endif()

message("Vcvars_BATCH_FILE [${Vcvars_BATCH_FILE}]")
message("Vcvars_LAUNCHER [${Vcvars_LAUNCHER}]")

foreach(msvc_version IN ITEMS
  1926
  1925
  1924
  1923
  1922
  1921
  1920
  1916
  1915
  1914
  1913
  1912
  1911
  1910
  1900
  1800
  1700
  1600
  1500
  1400
  1310
  1300
  1200
  )
  Vcvars_ConvertMsvcVersionToVsVersion(${msvc_version} vs_version)
  message("${msvc_version} -> ${vs_version}")

  Vcvars_GetVisualStudioPaths(${msvc_version} 64 output)
  message("${msvc_version} 64 -> [${output}]")

  Vcvars_GetVisualStudioPaths(${msvc_version} 32 output)
  message("${msvc_version} 32 -> [${output}]")
endforeach()
