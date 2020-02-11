From: Mark Brown <broonie@kernel.org>
Subject: Applied "regulator: mp8859: add supply entry" to the regulator tree
Date: Tue, 11 Feb 2020 15:51:32 +0000
Message-ID: <applied-20200203110034.1448-1-m.reichl@fivetechno.de>
References: <20200203110034.1448-1-m.reichl@fivetechno.de>
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200203110034.1448-1-m.reichl@fivetechno.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Markus Reichl <m.reichl@fivetechno.de>
Cc: heiko@sntech.de, Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>
List-Id: linux-rockchip.vger.kernel.org

The patch

   regulator: mp8859: add supply entry

has been applied to the regulator tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-5.7

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

From 4d49177f2cd7dce6e669584a5114b073b26a0d0f Mon Sep 17 00:00:00 2001
From: Markus Reichl <m.reichl@fivetechno.de>
Date: Mon, 3 Feb 2020 12:00:33 +0100
Subject: [PATCH] regulator: mp8859: add supply entry

Add vin_supply to the regulator description to support a nice
regulator tree.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Link: https://lore.kernel.org/r/20200203110034.1448-1-m.reichl@fivetechno.de
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/regulator/mp8859.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/regulator/mp8859.c b/drivers/regulator/mp8859.c
index 1d26b506ee5b..6ed987648188 100644
--- a/drivers/regulator/mp8859.c
+++ b/drivers/regulator/mp8859.c
@@ -95,6 +95,7 @@ static const struct regulator_desc mp8859_regulators[] = {
 		.id = 0,
 		.type = REGULATOR_VOLTAGE,
 		.name = "mp8859_dcdc",
+		.supply_name = "vin",
 		.of_match = of_match_ptr("mp8859_dcdc"),
 		.n_voltages = VOL_MAX_IDX + 1,
 		.linear_ranges = mp8859_dcdc_ranges,
-- 
2.20.1
