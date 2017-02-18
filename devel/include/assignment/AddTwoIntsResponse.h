// Generated by gencpp from file assignment/AddTwoIntsResponse.msg
// DO NOT EDIT!


#ifndef ASSIGNMENT_MESSAGE_ADDTWOINTSRESPONSE_H
#define ASSIGNMENT_MESSAGE_ADDTWOINTSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace assignment
{
template <class ContainerAllocator>
struct AddTwoIntsResponse_
{
  typedef AddTwoIntsResponse_<ContainerAllocator> Type;

  AddTwoIntsResponse_()
    : sum(0)
    , time(0.0)  {
    }
  AddTwoIntsResponse_(const ContainerAllocator& _alloc)
    : sum(0)
    , time(0.0)  {
  (void)_alloc;
    }



   typedef int64_t _sum_type;
  _sum_type sum;

   typedef double _time_type;
  _time_type time;




  typedef boost::shared_ptr< ::assignment::AddTwoIntsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::assignment::AddTwoIntsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct AddTwoIntsResponse_

typedef ::assignment::AddTwoIntsResponse_<std::allocator<void> > AddTwoIntsResponse;

typedef boost::shared_ptr< ::assignment::AddTwoIntsResponse > AddTwoIntsResponsePtr;
typedef boost::shared_ptr< ::assignment::AddTwoIntsResponse const> AddTwoIntsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::assignment::AddTwoIntsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::assignment::AddTwoIntsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace assignment

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'assignment': ['/home/raghunath/catkin_ws/src/assignment/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::assignment::AddTwoIntsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::assignment::AddTwoIntsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assignment::AddTwoIntsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::assignment::AddTwoIntsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment::AddTwoIntsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::assignment::AddTwoIntsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::assignment::AddTwoIntsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f94c039fa857a4596a4abfc9a95f79f1";
  }

  static const char* value(const ::assignment::AddTwoIntsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf94c039fa857a459ULL;
  static const uint64_t static_value2 = 0x6a4abfc9a95f79f1ULL;
};

template<class ContainerAllocator>
struct DataType< ::assignment::AddTwoIntsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "assignment/AddTwoIntsResponse";
  }

  static const char* value(const ::assignment::AddTwoIntsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::assignment::AddTwoIntsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 sum\n\
float64 time\n\
\n\
";
  }

  static const char* value(const ::assignment::AddTwoIntsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::assignment::AddTwoIntsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sum);
      stream.next(m.time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct AddTwoIntsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::assignment::AddTwoIntsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::assignment::AddTwoIntsResponse_<ContainerAllocator>& v)
  {
    s << indent << "sum: ";
    Printer<int64_t>::stream(s, indent + "  ", v.sum);
    s << indent << "time: ";
    Printer<double>::stream(s, indent + "  ", v.time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ASSIGNMENT_MESSAGE_ADDTWOINTSRESPONSE_H
