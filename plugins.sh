#!/bin/sh

console=/home/tony/www/piwik_stable_3.0.1/console

enable="Provider UsersManager Actions Referrers DevicesDetection Widgetize VisitTime UserCountry \
        VisitsSummary  Bandwidth UserCountry QoS"
disable="UserLanguage UserId CustomPiwikJs CoreUpdate DevicePlugins Overlay Transitions Events MediaAnalytics \ 
        VisitorInterest VisitFrequency DBStats Marketplace ScheduledReports SEO ExampleAPI ExampleRssWidget \
        Feedback MobileMessaging MobileAppMeasurable Heartbeat ProfessionalServices \
        ExamplePlugin Goals Ecommerce CustomVariables Resolution Contents"

for p in $enable;do $console plugin:activate $p ;done
for p in $disable;do $console plugin:deactivate $p ;done

