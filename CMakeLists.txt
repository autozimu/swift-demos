cmake_minimum_required(VERSION 3.5)
project(source_layout_sample)

add_custom_target(sample
        COMMAND swift build
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR})
