From: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 3/3] clk: rockchip: Correct the behaviour of restoring cached
 phase
Date: Wed, 21 Mar 2018 10:39:20 +0800
Message-ID: <1521599960-34381-3-git-send-email-shawn.lin@rock-chips.com>
References: <1521599960-34381-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1521599960-34381-1-git-send-email-shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

We can't restore every phase, for instance the invalid phase and
the phase for coming rate which is out of the scope of boards'
ability. And this patch also corrects the error path to return
invalid pointer to clk if clk_notifier_register failed introduced
by the same offending commit.

Fixes: 60cf09e45fbc ("clk: rockchip: Restore the clock phase after the rate was changed")
Reported-by: wlq <wlq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Signed-off-by: Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Tested-by: wlq <wlq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/clk/rockchip/clk-mmc-phase.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/rockchip/clk-mmc-phase.c b/drivers/clk/rockchip/clk-mmc-phase.c
index dc4c227..026a26b 100644
--- a/drivers/clk/rockchip/clk-mmc-phase.c
+++ b/drivers/clk/rockchip/clk-mmc-phase.c
@@ -170,18 +170,30 @@ static int rockchip_mmc_clk_rate_notify(struct notifier_block *nb,
 					unsigned long event, void *data)
 {
 	struct rockchip_mmc_clock *mmc_clock = to_rockchip_mmc_clock(nb);
+	struct clk_notifier_data *ndata = data;
 
 	/*
 	 * rockchip_mmc_clk is mostly used by mmc controllers to sample
 	 * the intput data, which expects the fixed phase after the tuning
 	 * process. However if the clock rate is changed, the phase is stale
 	 * and may break the data sampling. So here we try to restore the phase
-	 * for that case.
+	 * for that case, except that
+	 * (1) cached_phase is invaild since we inevitably cached it when the
+	 * clock provider be reparented from orphan to its real parent in the
+	 * first place. Otherwise we may mess up the initialization of MMC cards
+	 * since we only set the default sample phase and drive phase later on.
+	 * (2) the new coming rate is higher than the older one since mmc driver
+	 * set the max-frequency to match the boards' ability but we can't go
+	 * over the heads of that, otherwise the tests smoke out the issue.
 	 */
+	if (ndata->old_rate <= ndata->new_rate)
+		return NOTIFY_DONE;
+
 	if (event == PRE_RATE_CHANGE)
 		mmc_clock->cached_phase =
 			rockchip_mmc_get_phase(&mmc_clock->hw);
-	else if (event == POST_RATE_CHANGE)
+	else if (mmc_clock->cached_phase != -EINVAL &&
+		 event == POST_RATE_CHANGE)
 		rockchip_mmc_set_phase(&mmc_clock->hw, mmc_clock->cached_phase);
 
 	return NOTIFY_DONE;
@@ -211,8 +223,10 @@ struct clk *rockchip_clk_register_mmc(const char *name,
 	mmc_clock->shift = shift;
 
 	clk = clk_register(NULL, &mmc_clock->hw);
-	if (IS_ERR(clk))
+	if (IS_ERR(clk)) {
+		ret = PTR_ERR(clk);
 		goto err_register;
+	}
 
 	mmc_clock->clk_rate_change_nb.notifier_call =
 				&rockchip_mmc_clk_rate_notify;
@@ -225,5 +239,5 @@ struct clk *rockchip_clk_register_mmc(const char *name,
 	clk_unregister(clk);
 err_register:
 	kfree(mmc_clock);
-	return clk;
+	return ERR_PTR(ret);
 }
-- 
1.9.1
