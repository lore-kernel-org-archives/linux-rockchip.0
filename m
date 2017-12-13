From: Enric Balletbo Serra <eballetbo-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] phy: rockchip-typec: Try to turn the PHY on several times
Date: Wed, 13 Dec 2017 13:41:35 +0100
Message-ID: <CAFqH_52coxz73waki18JicDsndG9bzEw6Zbq6TCOST0J3N+NXQ@mail.gmail.com>
References: <20171211214553.118337-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20171211214553.118337-1-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Kishon Vijay Abraham I <kishon-l0cyMroinI0@public.gmane.org>, balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, Brian Norris <briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Guenter Roeck <groeck-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Matthias Kaehlcke <mka-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Chris Zhong <zyw-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, william wu <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

2017-12-11 22:45 GMT+01:00 Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>:
> Bind / unbind stress testing of the USB controller on rk3399 found
> that we'd often end up with lots of failures that looked like this:
>
>   phy phy-ff800000.phy.9: phy poweron failed --> -110
>   dwc3 fe900000.dwc3: failed to initialize core
>   dwc3: probe of fe900000.dwc3 failed with error -110
>
> Those errors were sometimes seen at bootup too, in which case USB
> peripherals wouldn't work until unplugged and re-plugged in.
>
> I spent some time trying to figure out why the PHY was failing to
> power on but I wasn't able to.  Possibly this has to do with the fact
> that the PHY docs say that the USB controller "needs to be held in
> reset to hold pipe power state in P2 before initializing the Type C
> PHY" but that doesn't appear to be easy to do with the dwc3 driver
> today.  Messing around with the ordering of the reset vs. the PHY
> initialization in the dwc3 driver didn't seem to fix things.
>
> I did, however, find that if I simply retry the power on it seems to
> have a good chance of working.  So let's add some retries.  I ran a
> pretty tight bind/unbind loop overnight.  When I did so, I found that
> I need to retry between 1% and 2% of the time.  Overnight I found only
> a small handful of times where I needed 2 retries.  I never found a
> case where I needed 3 retries.
>
> I'm completely aware of the fact that this is quite an ugly hack and I
> wish I didn't have to resort to it, but I have no other real idea how
> to make this hardware reliable.  If Rockchip in the future can come up
> with a solution we can always revert this hack.  Until then, let's at
> least have something that works.
>
> This patch is tested atop Enric's latest dwc3 patch series ending at:
>   https://patchwork.kernel.org/patch/10095527/
> ...but it could be applied independently of that series without any
> bad effects.
>
> For some more details on this bug, you can refer to:
>   https://bugs.chromium.org/p/chromium/issues/detail?id=783464
>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
>
>  drivers/phy/rockchip/phy-rockchip-typec.c | 24 ++++++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
> index ee85fa0ca4b0..5c2157156ce1 100644
> --- a/drivers/phy/rockchip/phy-rockchip-typec.c
> +++ b/drivers/phy/rockchip/phy-rockchip-typec.c
> @@ -349,6 +349,8 @@
>  #define MODE_DFP_USB                   BIT(1)
>  #define MODE_DFP_DP                    BIT(2)
>
> +#define POWER_ON_TRIES                 5
> +

I did the test of increase the number of tries to 100 because
unfortunately, even with this patch applied, I can see the problem on
my kevin with current mainline.

[  244.309094] rockchip-typec-phy ff800000.phy: Turn on failed after 100 loops

That's an extra debug print ^

[  244.317019] phy phy-ff800000.phy.8: phy poweron failed --> -110
[  244.323824] dwc3 fe900000.dwc3: failed to initialize core
[  244.330057] dwc3: probe of fe900000.dwc3 failed with error -110

So I'm wondering if there is something else that I need to apply to
really fix this as you didn't reproduce the issue doing lots of tests
and I can reproduce the issue very easily.

>  struct usb3phy_reg {
>         u32 offset;
>         u32 enable_bit;
> @@ -818,9 +820,8 @@ static int tcphy_get_mode(struct rockchip_typec_phy *tcphy)
>         return mode;
>  }
>
> -static int rockchip_usb3_phy_power_on(struct phy *phy)
> +static int _rockchip_usb3_phy_power_on(struct rockchip_typec_phy *tcphy)
>  {
> -       struct rockchip_typec_phy *tcphy = phy_get_drvdata(phy);
>         struct rockchip_usb3phy_port_cfg *cfg = &tcphy->port_cfgs;
>         const struct usb3phy_reg *reg = &cfg->pipe_status;
>         int timeout, new_mode, ret = 0;
> @@ -867,6 +868,25 @@ static int rockchip_usb3_phy_power_on(struct phy *phy)
>         return ret;
>  }
>
> +static int rockchip_usb3_phy_power_on(struct phy *phy)
> +{
> +       struct rockchip_typec_phy *tcphy = phy_get_drvdata(phy);
> +       int ret;
> +       int tries;
> +
> +       for (tries = 0; tries < POWER_ON_TRIES; tries++) {
> +               ret = _rockchip_usb3_phy_power_on(tcphy);
> +               if (!ret)
> +                       break;
> +       }
> +
> +       if (tries && !ret)
> +               dev_info(tcphy->dev, "Needed %d loops to turn on\n", tries);
> +

It's curious that in my case I never see this message, or it works or
it fails after 100 retries. I'll do more longer tests and continue
investigating a little bit.

Regards,
 Enric
> +       return ret;
> +}
> +
> +
>  static int rockchip_usb3_phy_power_off(struct phy *phy)
>  {
>         struct rockchip_typec_phy *tcphy = phy_get_drvdata(phy);
> --
> 2.15.1.424.g9478a66081-goog
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-usb" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
