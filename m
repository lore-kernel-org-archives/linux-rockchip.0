From: Douglas Anderson <dianders@chromium.org>
Subject: [PATCH] regulator: pwm: Fix regulator ramp delay for continuous mode
Date: Mon, 27 Jun 2016 21:53:11 -0700
Message-ID: <1467089591-7631-1-git-send-email-dianders@chromium.org>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Brown <broonie@kernel.org>
Cc: boris.brezillon@free-electrons.com, lee.jones@linaro.org, briannorris@chromium.org, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Douglas Anderson <dianders@chromium.org>, lgirdwood@gmail.com, linux-kernel@vger.kernel.org
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
and use 10%

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---
Note that this patch is atop Boris's recent PWM regulator fixes.  If
desired it wouldn't be too hard to write it atop the old code, though
quite honestly anyone using a PWM regulator should probably be using his
new code.

 drivers/regulator/pwm-regulator.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/regulator/pwm-regulator.c b/drivers/regulator/pwm-regulator.c
index fa1c74c77bb0..de94d19f6e1f 100644
--- a/drivers/regulator/pwm-regulator.c
+++ b/drivers/regulator/pwm-regulator.c
@@ -188,6 +188,7 @@ static int pwm_regulator_set_voltage(struct regulator_dev *rdev,
 	struct pwm_state pstate;
 	unsigned int diff_duty;
 	unsigned int dutycycle;
+	int old_uV = pwm_regulator_get_voltage(rdev);
 	int ret;
 
 	pwm_init_state(drvdata->pwm, &pstate);
@@ -219,8 +220,12 @@ static int pwm_regulator_set_voltage(struct regulator_dev *rdev,
 		return ret;
 	}
 
-	/* Delay required by PWM regulator to settle to the new voltage */
-	usleep_range(ramp_delay, ramp_delay + 1000);
+	if (ramp_delay == 0)
+		return 0;
+
+	/* Ramp delay is in uV/uS. Adjust to uS and delay */
+	ramp_delay = DIV_ROUND_UP(abs(req_min_uV - old_uV), ramp_delay);
+	usleep_range(ramp_delay, ramp_delay + DIV_ROUND_UP(ramp_delay, 10));
 
 	return 0;
 }
-- 
2.8.0.rc3.226.g39d4020
