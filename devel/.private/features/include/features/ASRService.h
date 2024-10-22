// Generated by gencpp from file features/ASRService.msg
// DO NOT EDIT!


#ifndef FEATURES_MESSAGE_ASRSERVICE_H
#define FEATURES_MESSAGE_ASRSERVICE_H

#include <ros/service_traits.h>


#include <features/ASRServiceRequest.h>
#include <features/ASRServiceResponse.h>


namespace features
{

struct ASRService
{

typedef ASRServiceRequest Request;
typedef ASRServiceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ASRService
} // namespace features


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::features::ASRService > {
  static const char* value()
  {
    return "e84f65894fbd5cd8d89dc52e87b8854a";
  }

  static const char* value(const ::features::ASRService&) { return value(); }
};

template<>
struct DataType< ::features::ASRService > {
  static const char* value()
  {
    return "features/ASRService";
  }

  static const char* value(const ::features::ASRService&) { return value(); }
};


// service_traits::MD5Sum< ::features::ASRServiceRequest> should match
// service_traits::MD5Sum< ::features::ASRService >
template<>
struct MD5Sum< ::features::ASRServiceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::features::ASRService >::value();
  }
  static const char* value(const ::features::ASRServiceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::features::ASRServiceRequest> should match
// service_traits::DataType< ::features::ASRService >
template<>
struct DataType< ::features::ASRServiceRequest>
{
  static const char* value()
  {
    return DataType< ::features::ASRService >::value();
  }
  static const char* value(const ::features::ASRServiceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::features::ASRServiceResponse> should match
// service_traits::MD5Sum< ::features::ASRService >
template<>
struct MD5Sum< ::features::ASRServiceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::features::ASRService >::value();
  }
  static const char* value(const ::features::ASRServiceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::features::ASRServiceResponse> should match
// service_traits::DataType< ::features::ASRService >
template<>
struct DataType< ::features::ASRServiceResponse>
{
  static const char* value()
  {
    return DataType< ::features::ASRService >::value();
  }
  static const char* value(const ::features::ASRServiceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // FEATURES_MESSAGE_ASRSERVICE_H
