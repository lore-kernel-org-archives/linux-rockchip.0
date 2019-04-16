From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH 2/4] usb: dwc2: optionally assert phy reset when waking up
Date: Tue, 16 Apr 2019 14:54:23 -0700
Message-ID: <CAD=FV=Vy8A2PE+EeYJi7n7O8c2_JuCpvHLiMXL_Ad-kqW208QA@mail.gmail.com>
References: <20190412224149.106971-1-dianders@chromium.org>
 <20190412224149.106971-3-dianders@chromium.org> <20190412235633.GY112750@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190412235633.GY112750@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Matthias Kaehlcke <mka@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, Minas Harutyunyan <hminas@synopsys.com>, Heiko Stuebner <heiko@sntech.de>, Felipe Balbi <felipe.balbi@linux.intel.com>, Alexandru M Stan <amstan@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, linux-usb@vger.kernel.org, Randy Li <ayaka@soulik.info>, Ryan Case <ryandcase@chromium.org>, Julius Werner <jwerner@chromium.org>, Elaine Zhang <zhangqing@rock-chips.com>, Yunzhi Li <lyz@rock-chips.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Fri, Apr 12, 2019 at 4:56 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> > @@ -5271,11 +5282,10 @@ int dwc2_hcd_init(struct dwc2_hsotg *hsotg)
> >               hsotg->hc_ptr_array[i] = channel;
> >       }
> >
> > -     /* Initialize hsotg start work */
> > +     /* Initialize work */
> >       INIT_DELAYED_WORK(&hsotg->start_work, dwc2_hcd_start_func);
> > -
> > -     /* Initialize port reset work */
> >       INIT_DELAYED_WORK(&hsotg->reset_work, dwc2_hcd_reset_func);
> > +     INIT_WORK(&hsotg->phy_reset_work, dwc2_hcd_phy_reset_func);
>
> You also want to make sure that the work is cancelled when the
> controller is stopped/removed. It seems dwc2_hcd_stop() would be a
> suitable place for that.

Good point.  dwc2_hcd_stop() doesn't work though because it's called
with interrupts disabled (because it's holding the hsotg->lock
spinlock).  I put it in dwc2_hcd_free() where there's another similar
cancel.

-Doug
