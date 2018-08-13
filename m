From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: usb typec not doing handling in-kernel
Date: Mon, 13 Aug 2018 12:36:55 +0200
Message-ID: <3762490.crBoikqiXD@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heikki Krogerus <heikki.krogerus-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

I'm currently trying to wrap my head around the new typec subsystem and
also how to do it correctly on Rockchip rk3399 devices.

The issue (and Guenter might know quite a bit about that) is that on
ChromeOS devices the embedded controller hides the whole tcpm/vdm
logic from the operating system and just provides a custom interface to
query things like cable state, display-port hotplug status and so on.

So right now the rk3399-typec-phy uses that extcon-based interface to
get all status changes but that of course leaves out all systems directly
talking to a fusb302. I did a small drawing to showcase that:

-------------    ------------------
| typec-phy |----| extcon-cros-ec |\
-------------    ------------------ \
     |        \                      \
-------------  \ ------------------   \ -----------
|  cdn-dp   |   \|     ?????      |-----| fusb302 |
-------------    ------------------     -----------

So to bring everything on the same page, I guess the cros-ec extcon
(drivers/extcon/extcon-usbc-cros-ec.c) should somehow use the typec
functions instead of implementing an extcon? But from reading into the
typec code, it somehow looks like the typec framework expects to be in
control of things like altmode negotiations, or am I misreading something?


Thanks
Heiko
