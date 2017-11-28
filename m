From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] phy: rockchip-typec: add pm_runtime_disable in err case
Date: Tue, 28 Nov 2017 14:02:01 -0800
Message-ID: <CAD=FV=Wt6iS7dxwmqiSX2ZB=THoujhXZJ2Tu8s0CZC4jp5_TTQ@mail.gmail.com>
References: <1473356291-19247-1-git-send-email-zyw@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1473356291-19247-1-git-send-email-zyw@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chris Zhong <zyw@rock-chips.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Guenter Roeck <groeck@chromium.org>, wulf <wulf@rock-chips.com>, Brian Norris <briannorris@chromium.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "Kever.Yang" <kever.yang@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Thu, Sep 8, 2016 at 10:38 AM, Chris Zhong <zyw@rock-chips.com> wrote:
> Add pm_runtime_disable in err case to make the pm_runtime_enable/disable
> is invoked balanced.
>
> Signed-off-by: Chris Zhong <zyw@rock-chips.com>
>
> ---
>
>  drivers/phy/phy-rockchip-typec.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/phy/phy-rockchip-typec.c b/drivers/phy/phy-rockchip-typec.c
> index 7cfb0f8..dd257c7 100644
> --- a/drivers/phy/phy-rockchip-typec.c
> +++ b/drivers/phy/phy-rockchip-typec.c
> @@ -977,6 +977,7 @@ static int rockchip_typec_phy_probe(struct platform_device *pdev)
>                 if (IS_ERR(phy)) {
>                         dev_err(dev, "failed to create phy: %s\n",
>                                 child_np->name);
> +                       pm_runtime_disable(dev);
>                         return PTR_ERR(phy);
>                 }
>
> @@ -986,6 +987,7 @@ static int rockchip_typec_phy_probe(struct platform_device *pdev)
>         phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
>         if (IS_ERR(phy_provider)) {
>                 dev_err(dev, "Failed to register phy provider\n");
> +               pm_runtime_disable(dev);
>                 return PTR_ERR(phy_provider);
>         }
>
> --
> 1.9.1

The patch is a little stale, but it still tastes OK to me.  Maybe a
good time to land it?  :-P

Reviewed-by: Douglas Anderson <dianders@chromium.org>

-Doug
