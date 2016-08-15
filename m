From: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [PATCH] iio: adc: rockchip_saradc: Explicitly disable ADC on
 probe
Date: Mon, 15 Aug 2016 12:52:29 -0700
Message-ID: <20160815195229.GB4400@roeck-us.net>
References: <1469475540-26855-1-git-send-email-linux@roeck-us.net>
 <5796D036.1060101@rock-chips.com>
 <5796D792.4080407@roeck-us.net>
 <8ebf4c53-21e2-0220-1756-beb57af32304@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <8ebf4c53-21e2-0220-1756-beb57af32304-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Sender: linux-iio-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Jonathan Cameron <jic23-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-iio-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Jonathan,

On Mon, Aug 15, 2016 at 07:04:31PM +0100, Jonathan Cameron wrote:
> On 26/07/16 04:22, Guenter Roeck wrote:
> > On 07/25/2016 07:51 PM, Caesar Wang wrote:
> >> Hi Guenter,
> >>
> >> Thanks for fixing it.
> >>
> >> On 2016年07月26日 03:39, Guenter Roeck wrote:
> >>> If the ADC is read for the first time, the caller gets a timeout error,
> >>> and the kernel log shows
> >>>
> >>> read channel() error: -110
> >>>
> >>> The ADC may be enabled on boot, and needs to be explicitly disabled
> >>> for a read sequence to work (otherwise there is no completion interrupt).
> >>> Disaple it explicitly in the probe function.
> >>>
> >>> Fixes: 44d6f2ef94f9 ("iio: adc: add driver for Rockchip saradc")
> >>> Signed-off-by: Guenter Roeck <linux-0h96xk9xTtrk1uMJSBkQmQ@public.gmane.org>
> >>> ---
> >>>   drivers/iio/adc/rockchip_saradc.c | 3 +++
> >>>   1 file changed, 3 insertions(+)
> >>>
> >>> diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
> >>> index f9ad6c2d6821..6aa3271d86b5 100644
> >>> --- a/drivers/iio/adc/rockchip_saradc.c
> >>> +++ b/drivers/iio/adc/rockchip_saradc.c
> >>> @@ -280,6 +280,9 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
> >>>           goto err_pclk;
> >>>       }
> >>> +    /* Make sure ADC is disabled */
> >>> +    writel_relaxed(0, info->regs + SARADC_CTRL);
> >>
> >> I think we should reset the saradc controller.
> >> Since make sure the reset value is 0 and loader-->kernel may even cause harm, as my experience on tsadc. (drivers/thermal/rockchip_thermal.c)
> >>
> >>
> >> e.g.:
> >> /**
> >> * Reset SARADC Controller, reset all saradc registers.
> >> */
> >> static void rockchip_saradc_reset_controller(struct reset_control *reset)
> >> {
> >> reset_control_assert(reset);
> >> usleep_range(10, 20);
> >> reset_control_deassert(reset);
> >> }
> >>
> >> ..probe()
> >> {
> >> ...
> >> rockchip_saradc_reset_controller();
> >> ...
> >> }
> >>
> > 
> > Ok, I'll give it a try.
> > 
> > Guenter
> Could you confirm if this patch is superseded by that
> change or not?

Yes, that is correct. The version using the reset has been applied to
chromeos-4.4 [1] with commit 86aeb7c3f ("FROMLIST: iio: adc: rockchip_saradc:
reset saradc controller before programming it").

Thanks,
Guenter

---
[1] https://chromium.googlesource.com/chromiumos/third_party/kernel
