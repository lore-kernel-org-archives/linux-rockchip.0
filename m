From: Alexandru M Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: usb typec not doing handling in-kernel
Date: Mon, 13 Aug 2018 13:20:36 -0700
Message-ID: <CAHNYxRy4B2_NKw5a2bP2Oub+RHtecep1sgzJhP=p=BjVeMUCEw@mail.gmail.com>
References: <3762490.crBoikqiXD@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <3762490.crBoikqiXD@phil>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: Heikki Krogerus <heikki.krogerus-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Benson Leung <bleung-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hello everyone,

Enric was looking recently at some of this to get gadget mode working.

I drew this diagram around that time to help explain how things are
hooked up on the rk3399 chromebooks. I hope it might be useful for
this discussion.
https://sites.google.com/a/chromium.org/dev/chromium-os/type-c-on-rk3399-chromebooks

Some things to note (which may or may not be already know in here):
* CC lines on the rk3399 are not connected to anything, we have an external TCPC
* OTG_ID pin not connected to anything
* rk3399 doesn't do much in terms of negotiating type C things or
charging, everything must be handled by the EC (since such things
might happen when the rk3399 is off or asleep). Instead the EC
communicates most of that state via the SPI lines (hence cros-ec
driver).

Alexandru Stan (amstan)

On Mon, Aug 13, 2018 at 3:36 AM, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
>
> Hi,
>
> I'm currently trying to wrap my head around the new typec subsystem and
> also how to do it correctly on Rockchip rk3399 devices.
>
> The issue (and Guenter might know quite a bit about that) is that on
> ChromeOS devices the embedded controller hides the whole tcpm/vdm
> logic from the operating system and just provides a custom interface to
> query things like cable state, display-port hotplug status and so on.
>
> So right now the rk3399-typec-phy uses that extcon-based interface to
> get all status changes but that of course leaves out all systems directly
> talking to a fusb302. I did a small drawing to showcase that:
>
> -------------    ------------------
> | typec-phy |----| extcon-cros-ec |\
> -------------    ------------------ \
>      |        \                      \
> -------------  \ ------------------   \ -----------
> |  cdn-dp   |   \|     ?????      |-----| fusb302 |
> -------------    ------------------     -----------
>
> So to bring everything on the same page, I guess the cros-ec extcon
> (drivers/extcon/extcon-usbc-cros-ec.c) should somehow use the typec
> functions instead of implementing an extcon? But from reading into the
> typec code, it somehow looks like the typec framework expects to be in
> control of things like altmode negotiations, or am I misreading something?
>
>
> Thanks
> Heiko
>
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
