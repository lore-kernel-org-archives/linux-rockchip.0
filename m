From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v2] regulator: pwm: Fix regulator ramp delay for continuous
 mode
Date: Wed,  6 Jul 2016 11:42:01 -0700
Message-ID: <1467830521-15300-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: boris.brezillon-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, ldewangan-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org, lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The original commit adding support for continuous voltage mode didn't
handle the regulator ramp delay properly.  It treated the delay as a
fixed delay in uS despite the property being defined as uV / uS.  Let's
adjust it.  Luckily there appear to be no users of this ramp delay for
PWM regulators (as per grepping through device trees in linuxnext).

Note also that the upper bound of usleep_range probably shouldn't be a
full 1 ms longer than the lower bound since I've seen plenty of hardware
with a ramp rate of ~5000 uS / uV and for small jumps the total delays
are in the tens of uS.  1000 is way too much.  We'll try to be dynamic
and use 10%.

NOTE: This commit doesn't add support for regulator-enable-ramp-delay.
That could be done in a future patch when someone has a user of that
featre.

Though this patch is shows as "fixing" a bug, there are no actual known
users of continuous mode PWM regulator w/ ramp delay in mainline and so
this likely won't have any effect on anyone unless they are working
out-of-tree with private patches.  For anyone in this state, it is
highly encouraged to also pick Boris Brezillon's WIP patches to get
yourself a reliable and glitch-free regulator.

Fixes: 4773be185a0f ("regulator: pwm-regulator: Add support for continuous-voltage")
Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
Note: I don't have a board that works against mainline and can use the
PWM regulator in continuous mode without Boris's patches.  That means
that this patch has only been compile tested.  The previous version of
the patches (atop Boris's changes) was tested more thoroughly.  YMMV.

Changes in v2:
- No longer atop Boris PWM regulator fixes (Mark).
- Don't delay if the regulator is not enabled (Boris).

 drivers/regulator/pwm-regulator.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/regulator/pwm-regulator.c b/drivers/regulator/pwm-regulator.c
index ab3cc0235843..75d9f9b1ad62 100644
--- a/drivers/regulator/pwm-regulator.c
+++ b/drivers/regulator/pwm-regulator.c
@@ -132,6 +132,7 @@ static int pwm_regulator_set_voltage(struct regulator_dev *rdev,
 	unsigned int duty_pulse;
 	u64 req_period;
 	u32 rem;
+	int old_uV = pwm_regulator_get_voltage(rdev);
 	int ret;
 
 	pwm_get_args(drvdata->pwm, &pargs);
@@ -161,8 +162,12 @@ static int pwm_regulator_set_voltage(struct regulator_dev *rdev,
 
 	drvdata->volt_uV = min_uV;
 
-	/* Delay required by PWM regulator to settle to the new voltage */
-	usleep_range(ramp_delay, ramp_delay + 1000);
+	if ((ramp_delay == 0) || !pwm_regulator_is_enabled(rdev))
+		return 0;
+
+	/* Ramp delay is in uV/uS. Adjust to uS and delay */
+	ramp_delay = DIV_ROUND_UP(abs(min_uV - old_uV), ramp_delay);
+	usleep_range(ramp_delay, ramp_delay + DIV_ROUND_UP(ramp_delay, 10));
 
 	return 0;
 }
-- 
2.8.0.rc3.226.g39d4020
