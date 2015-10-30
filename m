From: "Herrero, Gregory" <gregory.herrero@intel.com>
Subject: Re: [PATCH] usb: dwc2: host: Fix remote wakeup when not in DWC2_L2
Date: Fri, 30 Oct 2015 09:30:24 +0100
Message-ID: <20151030083024.GA9527@herrerog>
References: <1445544303-24202-1-git-send-email-dianders@chromium.org>
 <CAD=FV=ULhGkvxdEbYTwZXqbDx9yAr=tyvENwxEXgUHhQJCKT+A@mail.gmail.com>
 <2B3535C5ECE8B5419E3ECBE30077290901DC3B0E98@US01WEMBX2.internal.synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <2B3535C5ECE8B5419E3ECBE30077290901DC3B0E98@US01WEMBX2.internal.synopsys.com>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>
Cc: Doug Anderson <dianders@chromium.org>, Felipe Balbi <balbi@ti.com>, wulf <wulf@rock-chips.com>, lyz <lyz@rock-chips.com>, Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, "r.baldyga@samsung.com" <r.baldyga@samsung.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Oct 30, 2015 at 03:21:29AM +0000, John Youn wrote:
> On 10/29/2015 9:43 AM, Doug Anderson wrote:
> > John,
> > 
> > On Thu, Oct 22, 2015 at 1:05 PM, Douglas Anderson <dianders@chromium.org> wrote:
> >> In commit 734643dfbdde ("usb: dwc2: host: add flag to reflect bus
> >> state") we changed dwc2_port_suspend() not to set the lx_state
> >> anymore (instead it sets the new bus_suspended variable).  This
> >> introduced a bug where we would fail to detect device insertions if:
> >>
> >> 1. Plug empty hub into dwc2
> >> 2. Plug USB flash drive into the empty hub.
> >> 3. Wait a few seconds
> >> 4. Unplug USB flash drive
> >> 5. Less than 2 seconds after step 4, plug the USB flash drive in again.
> >>
> >> The dwc2_hcd_rem_wakeup() function should have been changed to look at
> >> the new bus_suspended variable.
> >>
> >> Let's fix it.  Since commit b46146d59fda ("usb: dwc2: host: resume root
> >> hub on remote wakeup") talks about needing the root hub resumed if the
> >> bus was suspended, we'll include it in our test.
> >>
> >> It appears that the "port_l1_change" should only be set to 1 if we were
> >> in DWC2_L1 (the driver currently never sets this), so we'll update the
> >> former "else" case based on this test.
> >>
> >> Fixes: 734643dfbdde ("usb: dwc2: host: add flag to reflect bus state")
> >> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> >> ---
> >>  drivers/usb/dwc2/hcd.c | 9 +++++----
> >>  1 file changed, 5 insertions(+), 4 deletions(-)
> > 
> > I know I've sent up a lot of patches recently, but this one in
> > particular would be good to get tested, reviewed, and landed sooner
> > rather than later.  I believe it fixes a recent regression that is
> > probably experienced across all dwc2 users.
> > 
> > Please let me know if you have any questions.
> 
> 
> Acked-by: John Youn <johnyoun@synopsys.com>
> 
> Sorry for the delay. I'll get to the others soon.
> 
> 
> Yousaf, Gregory,
> 
> Care to provide reviewed or tested-bys?
> 

Hi John,

Patch looks good to me.
I tested multiple suspend/resume and connect/disconnect with it.

Tested-by: Gregory Herrero <gregory.herrero@intel.com>

Regards,
Gregory
