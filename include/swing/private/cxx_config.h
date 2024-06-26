#ifndef SWING_PRIVATE_CXX_CONFIG_H
#define SWING_PRIVATE_CXX_CONFIG_H

#ifndef SWING_CXX14_CONSTEXPR
  #if __cplusplus >= 201402L
    #define SWING_CXX14_CONSTEXPR constexpr
  #endif
#endif

#ifndef SWING_CXX17_CONSTEXPR
  #if __cplusplus >= 201703L
    #define SWING_CXX17_CONSTEXPR constexpr
  #endif
#endif

#ifndef SWING_CXX20_CONSTEXPR
  #if __cplusplus >= 202002L
    #define SWING_CXX20_CONSTEXPR constexpr
  #endif
#endif

#endif // SWING_PRIVATE_CXX_CONFIG_H
