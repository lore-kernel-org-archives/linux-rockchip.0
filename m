From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] phy: rockchip-dp: Avoid power leak by leaving the PHY
 power on
Date: Fri, 17 May 2019 16:57:47 -0700
Message-ID: <CAD=FV=VcF688tSArf5gu0sV5oKVgFEvPBxXm7j-5GXXMP_CYRw@mail.gmail.com>
References: <20190507234857.81414-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190507234857.81414-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>, Caesar <wxt@rock-chips.com>
Cc: Lin Huang <hl@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Derek Basehore <dbasehore@chromium.org>, Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>, Guenter Roeck <groeck@chromium.org>, LKML <linux-kernel@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Kishon Vijay Abraham I <kishon@ti.com>, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

Elaine and Caesar,

On Tue, May 7, 2019 at 4:50 PM Douglas Anderson <dianders@chromium.org> wrote:
>
> While testing a newer kernel on rk3288-based Chromebooks I found that
> the power draw in suspend was higher on newer kernels compared to the
> downstream Chrome OS 3.14 kernel.  Specifically the power of an
> rk3288-veyron-jerry board that I tested (as measured by the smart
> battery) was ~16 mA on Chrome OS 3.14 and ~21 mA on a newer kernel.
>
> I tracked the regression down to the fact that the "DP PHY" driver
> didn't exist in our downstream 3.14.  We relied on the eDP driver to
> turn on the clock and relied on the fact that the power for the PHY
> was default turned on.
>
> Specifically the thing that caused the power regression was turning
> the eDP PHY _off_.  Presumably there is some sort of power leak in the
> system and when we turn the PHY off something is leaching power from
> something else and causing excessive power draw.
>
> Doing a search through device trees shows that this PHY is only ever
> used on rk3288.  Presumably this power leak is present on all
> rk3288-SoCs running upstream Linux so let's just whack the driver to
> make sure we never turn off power.  We'll still leave the parts that
> turn _on_ the power and grab the clock, though.
>
> NOTES:
> A) If someone can identify what this power leak is and fix it in some
>    other way we can revert this patch.
> B) If someone can show that their particular board doesn't have this
>    power leak (maybe they have rails hooked up differently?) we can
>    perhaps add a device tree property indicating that for some boards
>    it's OK to turn this rail off.  I don't want to add this property
>    until I know of a board that needs it.
>
> Fixes: fd968973de95 ("phy: Add driver for rockchip Display Port PHY")
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> As far as I know Yakir (the original author) is no longer at Rockchip.
> I've added a few other Rockchip people and hopefully one of them can
> help direct even if they're not directly responsible.
>
>  drivers/phy/rockchip/phy-rockchip-dp.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)

Can you help direct this to the right person?  ...or should we just
land it and assume it's fine?

-Doug
