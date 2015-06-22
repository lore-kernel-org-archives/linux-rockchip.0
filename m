From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2 1/2] ARM: rockchip: add support holding 24Mhz osc during suspend
Date: Mon, 22 Jun 2015 23:01:24 +0200
Message-ID: <3011002.V7itPuvDk4@diego>
References: <1434880847-29505-1-git-send-email-zyw@rock-chips.com> <1434880847-29505-2-git-send-email-zyw@rock-chips.com> <CAD=FV=Ux+gKJQtr1Qq+ubTNBKNGKTuCGx-3hTAj0j6fAEEJq2A@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=Ux+gKJQtr1Qq+ubTNBKNGKTuCGx-3hTAj0j6fAEEJq2A@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Chris Zhong <zyw@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Sonny Rao <sonnyrao@chromium.org>, Alexandru Stan <amstan@google.com>, Dmitry Torokhov <dtor@google.com>, Russell King <linux@arm.linux.org.uk>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 22. Juni 2015, 13:04:02 schrieb Doug Anderson:
> Chris,
> 
> On Sun, Jun 21, 2015 at 3:00 AM, Chris Zhong <zyw@rock-chips.com> wrote:
> > If we want to wake up system via usb, the 24Mhz osc could not be
> > disabled during suspend, read the usb phy SIDDQ bit to decide whether
> > to switch to 32khz clock-in.
> > 
> > Signed-off-by: Chris Zhong <zyw@rock-chips.com>
> > ---
> > 
> >  arch/arm/mach-rockchip/pm.c | 38 ++++++++++++++++++++++++++++++++++++--
> >  1 file changed, 36 insertions(+), 2 deletions(-)
> 
> As talked about privately, this patch is ugly.  ...but I don't see a
> solution that is less ugly.  This method has the advantages that it is
> "automatic"--the system figures out whether it needs the 24MHz clock
> automatically based on whether the PHYs were left on.  No other
> communication / device tree stuff is needed.

Yep, fully agreed :-) .

As I said before, another possible solution would probably involve checking 
the phy clocks themselfs, but getting these out of the devicetree would make 
this even more ugly.


So I'll let this sit for some more days in case somebody wants to complain 
(middle of the merge window anyway) and apply these two after.


> 
> > +       /* if any usb phy is still on(GRF_SIDDQ==0), that means we need
> > the
> > +        * function of usb wakeup, so do not switch to 32khz, since the
> > usb phy +        * clk does not connect to 32khz osc*/
> 
> This is not _quite_ the block commenting style used in this file.  It
> would be a bit nicer if it matched.
> 
> Other than that:
> 
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> 
> On the chromeos-3.14 kernel (with the WIP dwc2 patches):
> Tested-by: Douglas Anderson <dianders@chromium.org>
