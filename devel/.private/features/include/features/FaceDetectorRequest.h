// Generated by gencpp from file features/FaceDetectorRequest.msg
// DO NOT EDIT!


#ifndef FEATURES_MESSAGE_FACEDETECTORREQUEST_H
#define FEATURES_MESSAGE_FACEDETECTORREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace features
{
template <class ContainerAllocator>
struct FaceDetectorRequest_
{
  typedef FaceDetectorRequest_<ContainerAllocator> Type;

  FaceDetectorRequest_()
    {
    }
  FaceDetectorRequest_(const ContainerAllocator& _alloc)
    {
  (void)_alloc;
    }







  typedef boost::shared_ptr< ::features::FaceDetectorRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::features::FaceDetectorRequest_<ContainerAllocator> const> ConstPtr;

}; // struct FaceDetectorRequest_

typedef ::features::FaceDetectorRequest_<std::allocator<void> > FaceDetectorRequest;

typedef boost::shared_ptr< ::features::FaceDetectorRequest > FaceDetectorRequestPtr;
typedef boost::shared_ptr< ::features::FaceDetectorRequest const> FaceDetectorRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::features::FaceDetectorRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::features::FaceDetectorRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


} // namespace features

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::features::FaceDetectorRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::features::FaceDetectorRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::features::FaceDetectorRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::features::FaceDetectorRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::features::FaceDetectorRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::features::FaceDetectorRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::features::FaceDetectorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::features::FaceDetectorRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::features::FaceDetectorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "features/FaceDetectorRequest";
  }

  static const char* value(const ::features::FaceDetectorRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::features::FaceDetectorRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
;
  }

  static const char* value(const ::features::FaceDetectorRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::features::FaceDetectorRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FaceDetectorRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::features::FaceDetectorRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::features::FaceDetectorRequest_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // FEATURES_MESSAGE_FACEDETECTORREQUEST_H
