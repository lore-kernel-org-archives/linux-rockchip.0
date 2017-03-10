From: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH 38/41] drm/bridge: analogix_dp: Reorder plat_data->power_off
 to happen sooner
Date: Thu,  9 Mar 2017 23:32:53 -0500
Message-ID: <20170310043305.17216-39-seanpaul@chromium.org>
References: <20170310043305.17216-1-seanpaul@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20170310043305.17216-1-seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org
Cc: Archit Taneja <architt-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, zain wang <wzz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Lin Huang <hl-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Yakir Yang <ykk-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "Kristian H . Kristensen" <hoegsberg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>

The current user of the analogix power_off is "analogix_dp-rockchip".
That driver does this:
- deactivate PSR
- turn off a clock

Both of these things (especially deactive PSR) should be done before
we turn the PHY power off and turn off analog power.  Let's move the
callback up.

Note that without this patch (and with https://patchwork.kernel.org/patch/9553349/
[seanpaul: this patch was not applied, but it seems like the race
can still occur]), I experienced an error in reboot testing where one
thread was at:

  rockchip_drm_psr_deactivate
  rockchip_dp_powerdown
  analogix_dp_bridge_disable
  drm_bridge_disable

...and the other thread was at:

  analogix_dp_send_psr_spd
  analogix_dp_enable_psr
  analogix_dp_psr_set
  psr_flush_handler

The flush handler thread was finding AUX channel errors and eventually
reported "Failed to apply PSR", where I had a kgdb breakpoint. Presumably
the device would have eventually given up and shut down anyway, but it
seems better to fix the order to be more correct.

Cc: Kristian H. Kristensen <hoegsberg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Signed-off-by: Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
 drivers/gpu/drm/bridge/analogix/analogix_dp_core.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 1454075bce9a..a05bc0271188 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1329,12 +1329,13 @@ static void analogix_dp_bridge_disable(struct drm_bridge *bridge)
 	}
 
 	disable_irq(dp->irq);
-	phy_power_off(dp->phy);
-	analogix_dp_set_analog_power_down(dp, POWER_ALL, 1);
 
 	if (dp->plat_data->power_off)
 		dp->plat_data->power_off(dp->plat_data);
 
+	phy_power_off(dp->phy);
+	analogix_dp_set_analog_power_down(dp, POWER_ALL, 1);
+
 	clk_disable_unprepare(dp->clock);
 
 	pm_runtime_put_sync(dp->dev);
-- 
2.12.0.246.ga2ecc84866-goog
