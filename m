From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] phy: rockchip-dp: Avoid power leak by leaving the PHY
 power on
Date: Mon, 3 Jun 2019 08:22:18 -0700
Message-ID: <CAD=FV=Us1WyEqYDqVSuA+QPCDU7ceMEwwaWKtLz9ZNBFD0E7NQ@mail.gmail.com>
References: <20190507234857.81414-1-dianders@chromium.org>
 <79ca5499-6b7d-fe55-2030-283f5cfb1d27@rock-chips.com>
 <82480aa5-ab2e-11c5-8dd5-c395f72fc6e7@ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <82480aa5-ab2e-11c5-8dd5-c395f72fc6e7@ti.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Lin Huang <hl@rock-chips.com>, Derek Basehore <dbasehore@chromium.org>, LKML <linux-kernel@vger.kernel.org>, Huang Jiachai <hjc@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "nickey.yang (nickey.yang@rock-chips.com)" <nickey.yang@rock-chips.com>, Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>, wzz <wzz@rock-chips.com>, Guenter Roeck <groeck@chromium.org>, Caesar Wang <wxt@rock-chips.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

Kishon,

On Mon, Jun 3, 2019 at 4:22 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>
> Hi,
>
> On 20/05/19 1:34 PM, Caesar Wang wrote:
> > Hi Doug,
> >
> > For now,  nobody of rockchip is responsible for this driver.
> > Cc: Nickey, Zain, Hjc
> >
> >
> > On 5/8/19 7:48 AM, Douglas Anderson wrote:
> >> While testing a newer kernel on rk3288-based Chromebooks I found that
> >> the power draw in suspend was higher on newer kernels compared to the
> >> downstream Chrome OS 3.14 kernel.  Specifically the power of an
> >> rk3288-veyron-jerry board that I tested (as measured by the smart
> >> battery) was ~16 mA on Chrome OS 3.14 and ~21 mA on a newer kernel.
> >>
> >> I tracked the regression down to the fact that the "DP PHY" driver
> >> didn't exist in our downstream 3.14.  We relied on the eDP driver to
> >> turn on the clock and relied on the fact that the power for the PHY
> >> was default turned on.
> >>
> >> Specifically the thing that caused the power regression was turning
> >> the eDP PHY _off_.  Presumably there is some sort of power leak in the
> >> system and when we turn the PHY off something is leaching power from
> >> something else and causing excessive power draw.
> >>
> >> Doing a search through device trees shows that this PHY is only ever
> >> used on rk3288.  Presumably this power leak is present on all
> >> rk3288-SoCs running upstream Linux so let's just whack the driver to
> >> make sure we never turn off power.  We'll still leave the parts that
> >> turn _on_ the power and grab the clock, though.
> >>
> >> NOTES:
> >> A) If someone can identify what this power leak is and fix it in some
> >>     other way we can revert this patch.
> >> B) If someone can show that their particular board doesn't have this
> >>     power leak (maybe they have rails hooked up differently?) we can
> >>     perhaps add a device tree property indicating that for some boards
> >>     it's OK to turn this rail off.  I don't want to add this property
> >>     until I know of a board that needs it.
> >>
> >> Fixes: fd968973de95 ("phy: Add driver for rockchip Display Port PHY")
> >> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> >
> >
> > Reviewed-by: Caesar Wang <wxt@rock-chips.com>
> >
> >> ---
> >> As far as I know Yakir (the original author) is no longer at Rockchip.
> >> I've added a few other Rockchip people and hopefully one of them can
> >> help direct even if they're not directly responsible.
> >>
> >>   drivers/phy/rockchip/phy-rockchip-dp.c | 11 +++++++----
> >>   1 file changed, 7 insertions(+), 4 deletions(-)
> >>
> >> diff --git a/drivers/phy/rockchip/phy-rockchip-dp.c
> >> b/drivers/phy/rockchip/phy-rockchip-dp.c
> >> index 8b267a746576..10bbcd69d6f5 100644
> >> --- a/drivers/phy/rockchip/phy-rockchip-dp.c
> >> +++ b/drivers/phy/rockchip/phy-rockchip-dp.c
> >> @@ -35,7 +35,7 @@ struct rockchip_dp_phy {
> >>   static int rockchip_set_phy_state(struct phy *phy, bool enable)
> >>   {
> >>       struct rockchip_dp_phy *dp = phy_get_drvdata(phy);
> >> -    int ret;
> >> +    int ret = 0;
> >>         if (enable) {
> >>           ret = regmap_write(dp->grf, GRF_SOC_CON12,
> >> @@ -50,9 +50,12 @@ static int rockchip_set_phy_state(struct phy *phy, bool
> >> enable)
> >>       } else {
> >>           clk_disable_unprepare(dp->phy_24m);
> >>   -        ret = regmap_write(dp->grf, GRF_SOC_CON12,
> >> -                   GRF_EDP_PHY_SIDDQ_HIWORD_MASK |
> >> -                   GRF_EDP_PHY_SIDDQ_OFF);
> >> +        /*
> >> +         * Intentionally don't turn SIDDQ off when disabling
> >> +         * the PHY.  There is a power leak on rk3288 and
> >> +         * suspend power _increases_ by 5 mA if you turn this
> >> +         * off.
> >> +         */
>
> Can someone in Rockchip try to find the root-cause of the issue? Keeping the
> PHY off shouldn't increase power draw.

It sounded like Chris already answered this, though?  Basically things
aren't hooked up in a way that this line can be turned safely turned
off in rk3288 with the current state of the world.  Chris says that
there's an ordering problem where we've got to turn off PD_VIO
_before_ we turn off SIDDQ.  ...but PD_VIO is a power domain that
contains much more than just eDP.  So if we truly wanted to try to
solve this we'd need to come up with a way to make sure PD_VIO got all
the way off and then turn this off only afterwards.

...and right now on rk3288 it looks like we never actually turn off
PD_VIO while the system is running.

-Doug
