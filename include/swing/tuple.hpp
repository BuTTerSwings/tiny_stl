#ifndef SWING_TUPLE_HPP
#define SWING_TUPLE_HPP 1
// enable structured binding
// #define SWING_STRUCTURED_BINDING

#include <cstddef>

#include <swing/private/tuple.hpp>
#include <swing/private/utility.hpp>
#include <swing/type_traits.hpp>

namespace swing
{
  template <>
  class tuple<> { };

  template <typename _Head, typename ..._Tail>
  class tuple<_Head, _Tail...>
  {
  private:
    _Head _M_head;
    tuple<_Tail...> _M_tail;

  public:
    tuple() { }
    tuple(const _Head& __head, const tuple<_Tail...>& __tail)
    : _M_head(__head), _M_tail(__tail) { }

    tuple(const _Head& __head, const _Tail& ...__tail)
    : _M_head(__head), _M_tail(__tail...) { }

    tuple(_Head&& __head, _Tail&& ...__tail)
    : _M_head(move(__head)), _M_tail(move(__tail)...) { }

    tuple(const tuple<_Head,_Tail...>& __t)
    : tuple(__t.get_head(), __t.get_tail()) { }

    template <typename _UHead, typename ..._UTail,
              typename = enable_if_t<sizeof...(_UTail) == sizeof...(_Tail)>>
    tuple(const tuple<_UHead, _UTail...>& __t)
    : tuple(__t.get_head(), __t.get_tail()) { }

    template <typename _UHead, typename ..._UTail,
              typename = enable_if_t<sizeof...(_UTail) == sizeof...(_Tail)>>
    tuple(_UHead&& __uhead, _UTail&& ...__utail)
    : _M_head(forward<_UHead>(__uhead)), _M_tail(forward<_UTail>(__utail)...) { }

    _Head& get_head() { return _M_head; }
    const _Head& get_head() const
    { return _M_head; }

    tuple<_Tail...>& get_tail() { return _M_tail; }

    const tuple<_Tail...>& get_tail() const
    { return _M_tail; }

  };

  namespace detail
  {
    template <std::size_t __index>
    struct __get_helper
    {
      template <typename _Head, typename ..._Tail>
      static constexpr auto __get(const tuple<_Head, _Tail...>& __t)
      { return __get_helper<__index - 1>::template __get(__t.get_tail()); }
    };

    template <>
    struct __get_helper<0>
    {
      template <typename _Head, typename ..._Tail>
      static constexpr const _Head& __get(const tuple<_Head, _Tail...>& __t)
      { return __t.get_head(); }
    };
  }

  template <std::size_t __index, typename ..._Types>
  constexpr auto get(const tuple<_Types...>& __t)
  {
    static_assert(__index < sizeof...(_Types), "tuple index must be in range");
    return detail::__get_helper<__index>::template __get(__t);
  }

  inline bool operator==(const tuple<>&, const tuple<>&)
  { return true; }

  template <typename ..._TElements, typename ..._UElements,
            typename = enable_if_t<sizeof...(_TElements) == sizeof...(_UElements)>>
  bool operator==(const tuple<_TElements...>& __t, const tuple<_UElements...>& __u)
  {
    return __t.get_head() == __u.get_head() &&
           __t.get_tail() == __u.get_tail();
  }

  template <typename ..._TElements, typename ..._UElements,
            typename = enable_if_t<sizeof...(_TElements) == sizeof...(_UElements)>>
  bool operator!=(const tuple<_TElements...>& __t, const tuple<_UElements...>& __u)
  { return !operator==(__t, __u); };

  inline bool operator<(const tuple<>&, const tuple<>&)
  { return true; }

  template <typename ..._TElements, typename ..._UElements,
            typename = enable_if_t<sizeof...(_TElements) == sizeof...(_UElements)>>
  bool operator<(const tuple<_TElements...>& __t, const tuple<_UElements...>& __u)
  {
    return __t.get_head() < __u.get_head() &&
           __t.get_tail() < __u.get_tail();
  }

  inline bool operator>(const tuple<>&, const tuple<>&)
  { return true; }

  template <typename ..._TElements, typename ..._UElements,
            typename = enable_if_t<sizeof...(_TElements) == sizeof...(_UElements)>>
  bool operator>(const tuple<_TElements...>& __t, const tuple<_UElements...>& __u)
  {
    return __t.get_head() > __u.get_head() &&
           __t.get_tail() > __u.get_tail();
  }

  template <typename ..._TElements, typename ..._UElements,
            typename = enable_if_t<sizeof...(_TElements) == sizeof...(_UElements)>>
  bool operator>=(const tuple<_TElements...>& __t, const tuple<_UElements...>& __u)
  { return !operator<(__t, __u); }

  template <typename ..._TElements, typename ..._UElements,
            typename = enable_if_t<sizeof...(_TElements) == sizeof...(_UElements)>>
  bool operator<=(const tuple<_TElements...>& __t, const tuple<_UElements...>& __u)
  { return !operator>(__t, __u); }

  template <typename ..._Types>
  struct tuple_size<swing::tuple<_Types...>>
  : integral_constant<std::size_t, sizeof...(_Types)> { };

  template <std::size_t _Idx, typename ..._Types>
  struct tuple_element<_Idx, swing::tuple<_Types...>>
  {
    static_assert(_Idx < sizeof...(_Types), "tuple index must be in range");
    using type = typename detail::_Nth_type<_Idx, _Types...>::type;
  };

  template <typename ..._UTypes>
  tuple(_UTypes...) -> tuple<_UTypes...>;

} // namespace swing

#ifdef SWING_STRUCTURED_BINDING
#include <bits/utility.h>

namespace std
{
  template <typename ..._Types>
  struct tuple_size<swing::tuple<_Types...>>
  : swing::integral_constant<std::size_t, sizeof...(_Types)> { };

  template <std::size_t _Idx, typename ..._Types>
  struct tuple_element<_Idx, swing::tuple<_Types...>>
  {
    static_assert(_Idx < sizeof...(_Types), "tuple index must be in range");
    using type = typename swing::detail::_Nth_type<_Idx, _Types...>::type;
  };

  // ADL get is provided in namespace swing
} // namespace std
#endif

#endif // SWING_TUPLE_HPP
