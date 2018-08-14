From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: usb typec not doing handling in-kernel
Date: Tue, 14 Aug 2018 15:58:31 +0200
Message-ID: <5292837.COQWy9rWzJ@phil>
References: <3762490.crBoikqiXD@phil>
 <20180813133637.GA25757@kuha.fi.intel.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180813133637.GA25757-FZxXFokcWpatqXYlAKuG4QC/G2K4zDHf@public.gmane.org>
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
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Heikki,

Am Montag, 13. August 2018, 15:36:37 CEST schrieb Heikki Krogerus:
> On Mon, Aug 13, 2018 at 12:36:55PM +0200, Heiko Stuebner wrote:
> > I'm currently trying to wrap my head around the new typec subsystem and
> > also how to do it correctly on Rockchip rk3399 devices.
> > 
> > The issue (and Guenter might know quite a bit about that) is that on
> > ChromeOS devices the embedded controller hides the whole tcpm/vdm
> > logic from the operating system and just provides a custom interface to
> > query things like cable state, display-port hotplug status and so on.
> > 
> > So right now the rk3399-typec-phy uses that extcon-based interface to
> > get all status changes but that of course leaves out all systems directly
> > talking to a fusb302. I did a small drawing to showcase that:
> > 
> > -------------    ------------------
> > | typec-phy |----| extcon-cros-ec |\
> > -------------    ------------------ \
> >      |        \                      \
> > -------------  \ ------------------   \ -----------
> > |  cdn-dp   |   \|     ?????      |-----| fusb302 |
> > -------------    ------------------     -----------
> > 
> > So to bring everything on the same page, I guess the cros-ec extcon
> > (drivers/extcon/extcon-usbc-cros-ec.c) should somehow use the typec
> > functions instead of implementing an extcon?
> 
> I don't think the two necessary exclude each other. You can continue
> to register the extcon device and use it for communication with the
> phy driver, and also register your Type-C port(s), partners, and
> optionally the port and partner alternate modes. I guess Guenter has
> patches for that already?

The issue is less with the working ChromeOS devices :-) .

What I'm trying to fit in there are all the other boards directly talking
to a fusb302 via i2c and needing to do all these negotiations.

So the rockchip typec phy would need to handle both cases. In the Rockchip
vendor kernel they bolted the extcon export onto their fusb302 driver
but I don't think that is really future proof ;-) .

Hence the easiest way would probably be to have everything use the newer
typec APIs and not try to make the Rockchip typec-phy handle both cases.


And looking at Guenters mail, it seems like he had the same idea as well
in the past, so I'll hope for his archeology-skills :-) .


> It looks to me like that phy driver could just register a Type-C
> switch for the orientation, and mux for the mode. Those seem to be the
> only details the driver needs from extcon-usbc-cros-ec.

Looks like it - I'm still trying to find my way through the typec subsystem
though.

> > But from reading into the typec code, it somehow looks like the
> > typec framework expects to be in control of things like altmode
> > negotiations, or am I misreading something?
> 
> The alternate mode drivers will assume they are in control of the
> negotiation with the partner, but note that you will not always need
> them. The rest of the code in the framework doesn't expect to be in
> control of the communication.
> 
> If the EC (or some other microcontroller) firmware is taking care of
> the actual entering and configuring of the alternate modes, the port
> driver (so extcon-usbc-cros-ec in your case) will need to "emulate"
> the VDM communication if the alt mode drivers need to be used, and
> that means they need to do so with every supported alternate mode
> separately.
> 
> Of course if the details that for example the DisplayPort alt mode
> driver supplies to the user space is not relevant on your system, and
> there is no requirement to allow the user to be able to reconfigure
> the DisplayPort alt mode (note: you will also be unable to exit the
> mode from sysfs in this case), you can still register the partner alt
> mode device and simply allow the binding to the driver fail, or don't
> register the partner alt modes with the USB Type-C framework at all.

As said above, I'm mainly trying to make the typec framework usable
for all the rk3399 boards using the "standard" setup of talking directly
to the fusb302 but of course want to pull the cros-ec special case along,
to not create to much overhead anywhere.

Thankfully it is really only the DisplayPort Alt Mode that is supported
on the rk3399.

While the extcon driver doesn't seem to use it right now, looking through
the ec-commands shows that muxes, roles etc seem configurable from the
host side.


> I've prepared patches for the ucsi driver that add displayport alt
> mode support to it. UCSI is just a standardised firmware interface for
> USB Type-C conncetors, so the situation is exactly the same as with
> extcon-usbc-cros-ec. I was planning to send the patches out for review
> after next -rc1, but I guess I could send a RFC already. With UCSI we
> do have a requirement to allow the user to reconfigure the DisplayPort
> alternate mode if needed.

That might be helpful. But you don't really have to hurry that much.
-rc1 isn't that far away and I do have enough individual projects to
keep me busy ;-) .

Especially also as the device_connection stuff does seem to still
miss graph-parsing [0] to connect my dt-stuff together, there
is no really hurry.


Thanks
Heiko

[0] https://patchwork.kernel.org/patch/10418263/
