//TODO: Rename this file to something else
#define WHO_SHOWS_ME (1<<0)
#define WHO_SHOWS_WHERE (1<<1)
#define WHO_SHOWS_COORDS (1<<2)
#define WHO_SHOWS_NAME (1<<3)
#define WHO_SHOWS_ROLE (1<<4)
#define WHO_SHOWS_POSE (1<<5)

#define CHECK_PREFS(mob, pref) SSprefbreak.allowed_by_prefs(mob, pref)

#define DEFAULT_WHO_FLAGS (WHO_SHOWS_ME | WHO_SHOWS_NAME | WHO_SHOWS_POSE | WHO_SHOWS_WHERE)

#define WHO_LOCKOUT_NAME (1<<0)
#define WHO_LOCKOUT_ROLE (1<<1)
#define WHO_LOCKOUT_WHERE (1<<2)
#define WHO_LOCKOUT_POSE (1<<3)

#define MAX_STATUS_LEN 86

#define RADIOPREF_HEAR_RADIO_BLURBLES "hear_staticky_chittering"
#define RADIOPREF_HEAR_RADIO_STATIC "hear_staticky_clicks"

#define ADMIN_CHAT_FILTER_DMS "ADMIN_CHAT_FILTER_DMS"
