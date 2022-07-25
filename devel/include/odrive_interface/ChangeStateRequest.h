// Generated by gencpp from file odrive_interface/ChangeStateRequest.msg
// DO NOT EDIT!


#ifndef ODRIVE_INTERFACE_MESSAGE_CHANGESTATEREQUEST_H
#define ODRIVE_INTERFACE_MESSAGE_CHANGESTATEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace odrive_interface
{
template <class ContainerAllocator>
struct ChangeStateRequest_
{
  typedef ChangeStateRequest_<ContainerAllocator> Type;

  ChangeStateRequest_()
    : axis(0)
    , requestedState(0)
    , isCalibration(false)  {
    }
  ChangeStateRequest_(const ContainerAllocator& _alloc)
    : axis(0)
    , requestedState(0)
    , isCalibration(false)  {
  (void)_alloc;
    }



   typedef uint8_t _axis_type;
  _axis_type axis;

   typedef uint8_t _requestedState_type;
  _requestedState_type requestedState;

   typedef uint8_t _isCalibration_type;
  _isCalibration_type isCalibration;





  typedef boost::shared_ptr< ::odrive_interface::ChangeStateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::odrive_interface::ChangeStateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ChangeStateRequest_

typedef ::odrive_interface::ChangeStateRequest_<std::allocator<void> > ChangeStateRequest;

typedef boost::shared_ptr< ::odrive_interface::ChangeStateRequest > ChangeStateRequestPtr;
typedef boost::shared_ptr< ::odrive_interface::ChangeStateRequest const> ChangeStateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::odrive_interface::ChangeStateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::odrive_interface::ChangeStateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::odrive_interface::ChangeStateRequest_<ContainerAllocator1> & lhs, const ::odrive_interface::ChangeStateRequest_<ContainerAllocator2> & rhs)
{
  return lhs.axis == rhs.axis &&
    lhs.requestedState == rhs.requestedState &&
    lhs.isCalibration == rhs.isCalibration;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::odrive_interface::ChangeStateRequest_<ContainerAllocator1> & lhs, const ::odrive_interface::ChangeStateRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace odrive_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::odrive_interface::ChangeStateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::odrive_interface::ChangeStateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::odrive_interface::ChangeStateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::odrive_interface::ChangeStateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::odrive_interface::ChangeStateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::odrive_interface::ChangeStateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::odrive_interface::ChangeStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ef436f707cde8b3cbb6f92c68d8a8e32";
  }

  static const char* value(const ::odrive_interface::ChangeStateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xef436f707cde8b3cULL;
  static const uint64_t static_value2 = 0xbb6f92c68d8a8e32ULL;
};

template<class ContainerAllocator>
struct DataType< ::odrive_interface::ChangeStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "odrive_interface/ChangeStateRequest";
  }

  static const char* value(const ::odrive_interface::ChangeStateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::odrive_interface::ChangeStateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 axis\n"
"uint8 requestedState\n"
"bool isCalibration\n"
;
  }

  static const char* value(const ::odrive_interface::ChangeStateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::odrive_interface::ChangeStateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.axis);
      stream.next(m.requestedState);
      stream.next(m.isCalibration);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChangeStateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::odrive_interface::ChangeStateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::odrive_interface::ChangeStateRequest_<ContainerAllocator>& v)
  {
    s << indent << "axis: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.axis);
    s << indent << "requestedState: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.requestedState);
    s << indent << "isCalibration: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isCalibration);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ODRIVE_INTERFACE_MESSAGE_CHANGESTATEREQUEST_H