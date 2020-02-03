From: Markus Reichl <m.reichl@fivetechno.de>
Subject: [PATCH] regulator: mp8859: add supply entry
Date: Mon,  3 Feb 2020 12:00:33 +0100
Message-ID: <20200203110034.1448-1-m.reichl@fivetechno.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: heiko@sntech.de, Markus Reichl <m.reichl@fivetechno.de>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Add vin_supply to the regulator description to support a nice
regulator tree.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
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
2.24.1
