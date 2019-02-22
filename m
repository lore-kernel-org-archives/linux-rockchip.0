From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: rk3399: Graphical artifacts when running for-next
Date: Fri, 22 Feb 2019 10:38:03 +0100
Message-ID: <2639059.tGzugZzMeT@phil>
References: <69ddf17a-232d-fc1f-f6a7-59dbde220395@collabora.com>
 <cc5be462-6684-f945-bee9-5b583aee6f37@collabora.com>
 <ea326f10-51ea-f673-b3fc-8dcc403249ba@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <ea326f10-51ea-f673-b3fc-8dcc403249ba-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robert Foss <robert.foss-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Tom Cubie <tom-ZvE2cuBqvIQAvxtiuMwx3w@public.gmane.org>, Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 22. Februar 2019, 10:32:53 CET schrieb Robert Foss:
> Hey again,
> 
> I found the issue, and it has been solved by Ezequiel
> before me.

cool that it's working for you now.

> A DDC I2C bus specifier is required for DDC EDID probing to work
> properly.
> 
> https://www.spinics.net/lists/arm-kernel/msg708359.html

That patch is still sitting in my to-review queue, I should be
picking it as fix for 5.1 some time this week.

> Thanks for participating in this goose-chase with me.

You could provide a Tested-by tag for it :-D

Heiko

> 
> 
> Rob.
> 
> On 2/22/19 9:41 AM, Robert Foss wrote:
> > Hey Jonas,
> > 
> > On 2/21/19 9:29 PM, Jonas Karlman wrote:
> >> On 2019-02-21 20:42, Robert Foss wrote:
> >>>
> >>> On 2/21/19 8:15 PM, Ezequiel Garcia wrote:
> >>>> Folks,
> >>>>
> >>>> On Thu, 2019-02-21 at 20:08 +0100, Robert Foss wrote:
> >>>> [..]
> >>>>
> >>>> The clock debugging is obviously good research.
> >>>>
> >>>>>>
> >>>>>> Additionally I've had a look at the libdrm modetest util, and it is reporting
> >>>>>> far fewer modes than what I would expect on my 4k monitor.
> >>>>>>
> >>>> That said, this is also worth looking into.
> >>>> I'm curious, is the EDID the kernel getting OK?
> >>>>
> >>> Given that modetest lists way too few modes, I would think
> >>> there could be some EDID related issues.
> >>
> >> It is more likely the issue is in dw_hdmi_rockchip_mode_valid(), it currently 
> >> filters out
> >> any mode not defined in rockchip_mpll_cfg.
> >> That method needs some changes to allow for 4k modes and fractal refresh rates.
> >> E.g. for RK3328 it should probably check the inno-hdmi-phy clock rates.
> > 
> > 
> > This seemed like a good suggetions, so I disabled the rockchip_mpll_cfg in 
> > dw_hdmi_rockchip_mode_valid(), and ran libdrm/modetest. I now have 5 modes.
> > But no higher resolution ones, only low resolution ones that don't seem
> > 
> > $ modetest
> > [..]
> > trying to open device 'rockchip'...done
> > Encoders:
> > id      crtc    type    possible crtcs  possible clones
> > 44      34      TMDS    0x00000003      0x00000000
> > 
> > Connectors:
> > id      encoder status          name            size (mm)       modes   encoders
> > 45      44      connected       HDMI-A-1        0x0             5       44
> >    modes:
> >          name refresh (Hz) hdisp hss hse htot vdisp vss vse vtot)
> >    1024x768 60 1024 1048 1184 1344 768 771 777 806 65000 flags: [..]
> >    800x600 60 800 840 968 1056 600 601 605 628 40000 flags: [..]
> >    800x600 56 800 824 896 1024 600 601 603 625 36000 flags: [..]
> >    848x480 60 848 864 976 1088 480 486 494 517 33750 flags: [..]
> >    640x480 60 640 656 752 800 480 490 492 525 25175 flags: [...]
> 
