// Generated by gencpp from file tutorial_advanced/addintsResult.msg
// DO NOT EDIT!


#ifndef TUTORIAL_ADVANCED_MESSAGE_ADDINTSRESULT_H
#define TUTORIAL_ADVANCED_MESSAGE_ADDINTSRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace tutorial_advanced
{
template <class ContainerAllocator>
struct addintsResult_
{
  typedef addintsResult_<ContainerAllocator> Type;

  addintsResult_()
    : goal(0)  {
    }
  addintsResult_(const ContainerAllocator& _alloc)
    : goal(0)  {
  (void)_alloc;
    }



   typedef int32_t _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::tutorial_advanced::addintsResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::tutorial_advanced::addintsResult_<ContainerAllocator> const> ConstPtr;

}; // struct addintsResult_

typedef ::tutorial_advanced::addintsResult_<std::allocator<void> > addintsResult;

typedef boost::shared_ptr< ::tutorial_advanced::addintsResult > addintsResultPtr;
typedef boost::shared_ptr< ::tutorial_advanced::addintsResult const> addintsResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::tutorial_advanced::addintsResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::tutorial_advanced::addintsResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace tutorial_advanced

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsMessage': True, 'IsFixedSize': True, 'HasHeader': False}
// {'tutorial_advanced': ['/home/sklir/ZHANGYan/ros_tutorial/devel/share/tutorial_advanced/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsMessage< ::tutorial_advanced::addintsResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::tutorial_advanced::addintsResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tutorial_advanced::addintsResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::tutorial_advanced::addintsResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tutorial_advanced::addintsResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::tutorial_advanced::addintsResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::tutorial_advanced::addintsResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "18df0149936b7aa95588e3862476ebde";
  }

  static const char* value(const ::tutorial_advanced::addintsResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x18df0149936b7aa9ULL;
  static const uint64_t static_value2 = 0x5588e3862476ebdeULL;
};

template<class ContainerAllocator>
struct DataType< ::tutorial_advanced::addintsResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "tutorial_advanced/addintsResult";
  }

  static const char* value(const ::tutorial_advanced::addintsResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::tutorial_advanced::addintsResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
int32 goal\n\
";
  }

  static const char* value(const ::tutorial_advanced::addintsResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::tutorial_advanced::addintsResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct addintsResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::tutorial_advanced::addintsResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::tutorial_advanced::addintsResult_<ContainerAllocator>& v)
  {
    s << indent << "goal: ";
    Printer<int32_t>::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TUTORIAL_ADVANCED_MESSAGE_ADDINTSRESULT_H
