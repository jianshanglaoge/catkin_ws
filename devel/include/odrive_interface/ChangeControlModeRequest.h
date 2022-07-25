// Generated by gencpp from file odrive_interface/ChangeControlModeRequest.msg
// DO NOT EDIT!


#ifndef ODRIVE_INTERFACE_MESSAGE_CHANGECONTROLMODEREQUEST_H
#define ODRIVE_INTERFACE_MESSAGE_CHANGECONTROLMODEREQUEST_H


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
struct ChangeControlModeRequest_
{
  typedef ChangeControlModeRequest_<ContainerAllocator> Type;

  ChangeControlModeRequest_()
    : axis(0)
    , requestedControlMode(0)  {
    }
  ChangeControlModeRequest_(const ContainerAllocator& _alloc)
    : axis(0)
    , requestedControlMode(0)  {
  (void)_alloc;
    }



   typedef uint8_t _axis_type;
  _axis_type axis;

   typedef uint8_t _requestedControlMode_type;
  _requestedControlMode_type requestedControlMode;





  typedef boost::shared_ptr< ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ChangeControlModeRequest_

typedef ::odrive_interface::ChangeControlModeRequest_<std::allocator<void> > ChangeControlModeRequest;

typedef boost::shared_ptr< ::odrive_interface::ChangeControlModeRequest > ChangeControlModeRequestPtr;
typedef boost::shared_ptr< ::odrive_interface::ChangeControlModeRequest const> ChangeControlModeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator1> & lhs, const ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.axis == rhs.axis &&
    lhs.requestedControlMode == rhs.requestedControlMode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator1> & lhs, const ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace odrive_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0d18c74f62ac867b2e7ceaf87d88d64a";
  }

  static const char* value(const ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0d18c74f62ac867bULL;
  static const uint64_t static_value2 = 0x2e7ceaf87d88d64aULL;
};

template<class ContainerAllocator>
struct DataType< ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "odrive_interface/ChangeControlModeRequest";
  }

  static const char* value(const ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 axis\n"
"uint8 requestedControlMode\n"
;
  }

  static const char* value(const ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.axis);
      stream.next(m.requestedControlMode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChangeControlModeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::odrive_interface::ChangeControlModeRequest_<ContainerAllocator>& v)
  {
    s << indent << "axis: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.axis);
    s << indent << "requestedControlMode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.requestedControlMode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ODRIVE_INTERFACE_MESSAGE_CHANGECONTROLMODEREQUEST_H
