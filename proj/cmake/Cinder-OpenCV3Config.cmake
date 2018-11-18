if( NOT TARGET Cinder-OpenCV3 )
	get_filename_component( OPENCV_ROOT_PATH "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE )

	list( APPEND Cinder-OpenCV3_INCLUDES
		${OPENCV_ROOT_PATH}/include
	)

	find_package( OpenCV REQUIRED )
	include_directories( ${OpenCV_INCLUDE_DIRS} )
	target_link_libraries( ${ARG_APP_NAME} ${OpenCV_LIBRARIES} )

endif()
