From: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Applied "regulator: pwm: Fix regulator ramp delay for continuous
 mode" to the regulator tree
Date: Thu, 07 Jul 2016 12:01:21 +0200
Message-ID: <E1bL67V-0000nK-ET@finisterre>
References: <1467830521-15300-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1467830521-15300-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: boris.brezillon-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, briannorris-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, ldewangan-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org, thierry.reding-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, lee.jones-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The patch

   regulator: pwm: Fix regulator ramp delay for continuous mode

has been applied to the regulator tree at

   git://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git 

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From c2588393e6315ab68207323d37d2a73713d6bc81 Mon Sep 17 00:00:00 2001
From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Date: Wed, 6 Jul 2016 11:42:01 -0700
Subject: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous mode

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
Acked-by: Laxman Dewangan <ldewangan-DDmLM1+adcrQT0dZR+AlfA@public.gmane.org>
Signed-off-by: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
---
 drivers/regulator/pwm-regulator.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/regulator/pwm-regulator.c b/drivers/regulator/pwm-regulator.c
index 90f8b7fd0437..666bc3bb52ef 100644
--- a/drivers/regulator/pwm-regulator.c
+++ b/drivers/regulator/pwm-regulator.c
@@ -145,6 +145,7 @@ static int pwm_regulator_set_voltage(struct regulator_dev *rdev,
 	unsigned int duty_pulse;
 	u64 req_period;
 	u32 rem;
+	int old_uV = pwm_regulator_get_voltage(rdev);
 	int ret;
 
 	pwm_get_args(drvdata->pwm, &pargs);
@@ -174,8 +175,12 @@ static int pwm_regulator_set_voltage(struct regulator_dev *rdev,
 
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
2.8.1
