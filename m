From: Mark Brown <broonie@kernel.org>
Subject: Applied "regulator: rk808: Fix RK818 LDO2" to the regulator tree
Date: Fri, 24 Mar 2017 19:16:48 +0000
Message-ID: <E1crUhc-0006BX-6C@debutante>
References: <1490197850-35497-1-git-send-email-w.egorov@phytec.de>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1490197850-35497-1-git-send-email-w.egorov@phytec.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Wadim Egorov <w.egorov@phytec.de>
Cc: Mark Brown <broonie@kernel.org>, stable@vger.kernel.org, lgirdwood@gmail.combroonie@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.orglinux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The patch

   regulator: rk808: Fix RK818 LDO2

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

From 75f88115391156b3f0fecbbae76bf870c89bcab8 Mon Sep 17 00:00:00 2001
From: Wadim Egorov <w.egorov@phytec.de>
Date: Wed, 22 Mar 2017 16:50:50 +0100
Subject: [PATCH] regulator: rk808: Fix RK818 LDO2

Set the correct voltage select register for LDO2.

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
Signed-off-by: Mark Brown <broonie@kernel.org>
Cc: stable@vger.kernel.org
---
 drivers/regulator/rk808-regulator.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index 3314bf299a51..dfa8d50a5d74 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -520,7 +520,7 @@ static const struct regulator_desc rk818_reg[] = {
 		RK818_LDO1_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
 		BIT(0), 400),
 	RK8XX_DESC(RK818_ID_LDO2, "LDO_REG2", "vcc6", 1800, 3400, 100,
-		RK818_LDO1_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
+		RK818_LDO2_ON_VSEL_REG, RK818_LDO_VSEL_MASK, RK818_LDO_EN_REG,
 		BIT(1), 400),
 	{
 		.name = "LDO_REG3",
-- 
2.11.0
