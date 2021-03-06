// Generated by gencpp from file test_roslib/Service1.msg
// DO NOT EDIT!


#ifndef TEST_ROSLIB_MESSAGE_SERVICE1_H
#define TEST_ROSLIB_MESSAGE_SERVICE1_H

#include <ros/service_traits.h>


#include <test_roslib/Service1Request.h>
#include <test_roslib/Service1Response.h>


namespace test_roslib
{

struct Service1
{

typedef Service1Request Request;
typedef Service1Response Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Service1
} // namespace test_roslib


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::test_roslib::Service1 > {
  static const char* value()
  {
    return "491e0a0c037dc07b80d48fdfeb4011a1";
  }

  static const char* value(const ::test_roslib::Service1&) { return value(); }
};

template<>
struct DataType< ::test_roslib::Service1 > {
  static const char* value()
  {
    return "test_roslib/Service1";
  }

  static const char* value(const ::test_roslib::Service1&) { return value(); }
};


// service_traits::MD5Sum< ::test_roslib::Service1Request> should match
// service_traits::MD5Sum< ::test_roslib::Service1 >
template<>
struct MD5Sum< ::test_roslib::Service1Request>
{
  static const char* value()
  {
    return MD5Sum< ::test_roslib::Service1 >::value();
  }
  static const char* value(const ::test_roslib::Service1Request&)
  {
    return value();
  }
};

// service_traits::DataType< ::test_roslib::Service1Request> should match
// service_traits::DataType< ::test_roslib::Service1 >
template<>
struct DataType< ::test_roslib::Service1Request>
{
  static const char* value()
  {
    return DataType< ::test_roslib::Service1 >::value();
  }
  static const char* value(const ::test_roslib::Service1Request&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::test_roslib::Service1Response> should match
// service_traits::MD5Sum< ::test_roslib::Service1 >
template<>
struct MD5Sum< ::test_roslib::Service1Response>
{
  static const char* value()
  {
    return MD5Sum< ::test_roslib::Service1 >::value();
  }
  static const char* value(const ::test_roslib::Service1Response&)
  {
    return value();
  }
};

// service_traits::DataType< ::test_roslib::Service1Response> should match
// service_traits::DataType< ::test_roslib::Service1 >
template<>
struct DataType< ::test_roslib::Service1Response>
{
  static const char* value()
  {
    return DataType< ::test_roslib::Service1 >::value();
  }
  static const char* value(const ::test_roslib::Service1Response&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // TEST_ROSLIB_MESSAGE_SERVICE1_H
