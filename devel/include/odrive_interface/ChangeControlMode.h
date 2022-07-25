// Generated by gencpp from file odrive_interface/ChangeControlMode.msg
// DO NOT EDIT!


#ifndef ODRIVE_INTERFACE_MESSAGE_CHANGECONTROLMODE_H
#define ODRIVE_INTERFACE_MESSAGE_CHANGECONTROLMODE_H

#include <ros/service_traits.h>


#include <odrive_interface/ChangeControlModeRequest.h>
#include <odrive_interface/ChangeControlModeResponse.h>


namespace odrive_interface
{

struct ChangeControlMode
{

typedef ChangeControlModeRequest Request;
typedef ChangeControlModeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ChangeControlMode
} // namespace odrive_interface


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::odrive_interface::ChangeControlMode > {
  static const char* value()
  {
    return "0a2ba8c6fd2d6248f36b6ba23a9c88c0";
  }

  static const char* value(const ::odrive_interface::ChangeControlMode&) { return value(); }
};

template<>
struct DataType< ::odrive_interface::ChangeControlMode > {
  static const char* value()
  {
    return "odrive_interface/ChangeControlMode";
  }

  static const char* value(const ::odrive_interface::ChangeControlMode&) { return value(); }
};


// service_traits::MD5Sum< ::odrive_interface::ChangeControlModeRequest> should match
// service_traits::MD5Sum< ::odrive_interface::ChangeControlMode >
template<>
struct MD5Sum< ::odrive_interface::ChangeControlModeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::odrive_interface::ChangeControlMode >::value();
  }
  static const char* value(const ::odrive_interface::ChangeControlModeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::odrive_interface::ChangeControlModeRequest> should match
// service_traits::DataType< ::odrive_interface::ChangeControlMode >
template<>
struct DataType< ::odrive_interface::ChangeControlModeRequest>
{
  static const char* value()
  {
    return DataType< ::odrive_interface::ChangeControlMode >::value();
  }
  static const char* value(const ::odrive_interface::ChangeControlModeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::odrive_interface::ChangeControlModeResponse> should match
// service_traits::MD5Sum< ::odrive_interface::ChangeControlMode >
template<>
struct MD5Sum< ::odrive_interface::ChangeControlModeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::odrive_interface::ChangeControlMode >::value();
  }
  static const char* value(const ::odrive_interface::ChangeControlModeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::odrive_interface::ChangeControlModeResponse> should match
// service_traits::DataType< ::odrive_interface::ChangeControlMode >
template<>
struct DataType< ::odrive_interface::ChangeControlModeResponse>
{
  static const char* value()
  {
    return DataType< ::odrive_interface::ChangeControlMode >::value();
  }
  static const char* value(const ::odrive_interface::ChangeControlModeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ODRIVE_INTERFACE_MESSAGE_CHANGECONTROLMODE_H