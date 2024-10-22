// Generated by gencpp from file features/WakeUp.msg
// DO NOT EDIT!


#ifndef FEATURES_MESSAGE_WAKEUP_H
#define FEATURES_MESSAGE_WAKEUP_H

#include <ros/service_traits.h>


#include <features/WakeUpRequest.h>
#include <features/WakeUpResponse.h>


namespace features
{

struct WakeUp
{

typedef WakeUpRequest Request;
typedef WakeUpResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct WakeUp
} // namespace features


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::features::WakeUp > {
  static const char* value()
  {
    return "92dac20d0566a4f591e3ecd6dcd3458b";
  }

  static const char* value(const ::features::WakeUp&) { return value(); }
};

template<>
struct DataType< ::features::WakeUp > {
  static const char* value()
  {
    return "features/WakeUp";
  }

  static const char* value(const ::features::WakeUp&) { return value(); }
};


// service_traits::MD5Sum< ::features::WakeUpRequest> should match
// service_traits::MD5Sum< ::features::WakeUp >
template<>
struct MD5Sum< ::features::WakeUpRequest>
{
  static const char* value()
  {
    return MD5Sum< ::features::WakeUp >::value();
  }
  static const char* value(const ::features::WakeUpRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::features::WakeUpRequest> should match
// service_traits::DataType< ::features::WakeUp >
template<>
struct DataType< ::features::WakeUpRequest>
{
  static const char* value()
  {
    return DataType< ::features::WakeUp >::value();
  }
  static const char* value(const ::features::WakeUpRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::features::WakeUpResponse> should match
// service_traits::MD5Sum< ::features::WakeUp >
template<>
struct MD5Sum< ::features::WakeUpResponse>
{
  static const char* value()
  {
    return MD5Sum< ::features::WakeUp >::value();
  }
  static const char* value(const ::features::WakeUpResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::features::WakeUpResponse> should match
// service_traits::DataType< ::features::WakeUp >
template<>
struct DataType< ::features::WakeUpResponse>
{
  static const char* value()
  {
    return DataType< ::features::WakeUp >::value();
  }
  static const char* value(const ::features::WakeUpResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FEATURES_MESSAGE_WAKEUP_H
