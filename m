Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D185BC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 17:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=We5w0qP+8Dr8FSMSgyMHuuY7OAJVrmJsNefwgTlusso=; b=zPXZWxlWN4K4X9
	X7D/8WATTwe8iCn/9aEVMwo6UHphUZdwqzpIl7Fk6X+qQ9HkiMCTTQUL3w4AA0N6XFrh/bAcBUjlb
	wFwogW8f3c6kMSgcTdBvaVQhEW1lZJu8/0rrnRKLdy6AR3cARDhy7pOzN/ob5dJa0HeR1FTs8YckM
	Q8SOLv1apj8s3l8fDJpvbGrlen25TxXmNP89/EZbOrw+uSU9eo/2plBlJlLk16XlvnXHtfeFs8itJ
	Q4YjSKjbM3S7U3hdCKfrJvh7hTZEGl69/8VUUShc/aH5jn2VWR6Fh20rnO1LfTGkflCIRVi0bSXUZ
	febDHYVLzoun8cavpjZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhwwX-001iEO-HK; Fri, 22 Apr 2022 17:19:41 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhwmu-001dVZ-K8; Fri, 22 Apr 2022 17:09:52 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 7EDB21F46AE5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650647378;
 bh=BNm8fSCsJTHHYCpckzkG7AS/ZwcjvTDrXydyRbeHoWY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NOaEeQIMI/jD5YA/zxsm2ukp1NjMQ+v7oM6HPwu/JoHwadMUi2Hlgwtqfn/UYWSCf
 jO/29N8N6jwqUzaHVhe3tib79f1mNGv07H12uxfLM39E30i7uhiFvNSqRvc106xEER
 LKnciE/iEok4mIN5r50/jvjobfv4mGpGzSkMk011YwG8s/iHziDBZY81V3FNVJDrQQ
 0BM5JdfyKsbPgwh0VJDBrXIVhIGt2sg3SnDzr61UEhchHLX0uamMx33XFWrALjPJNo
 AFWBGF/QO7Vqczsxzjn5lovh/8tPLNW6kv26GTDaKbixnpksoqljPYmtxMfpqwHrP7
 Dbr19fgZfG/8Q==
Received: by jupiter.universe (Postfix, from userid 1000)
 id DDECA480C1A; Fri, 22 Apr 2022 19:09:32 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@lists.collabora.co.uk,
 Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: [PATCHv1 12/19] pinctrl/rockchip: add error handling for pull/drive
 register getters
Date: Fri, 22 Apr 2022 19:09:13 +0200
Message-Id: <20220422170920.401914-13-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220422170920.401914-1-sebastian.reichel@collabora.com>
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_100945_157505_FE58666F 
X-CRM114-Status: GOOD (  13.24  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add error handling for the pull and driver register getters in preparation
for RK3588 support.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 168 ++++++++++++++++++-----------
 drivers/pinctrl/pinctrl-rockchip.h |   4 +-
 2 files changed, 109 insertions(+), 63 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index a1b598b86aa9..012cd2f0d85b 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -986,9 +986,9 @@ static int rockchip_set_mux(struct rockchip_pin_bank *bank, int pin, int mux)
 #define PX30_PULL_PINS_PER_REG		8
 #define PX30_PULL_BANK_STRIDE		16
 
-static void px30_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
-				       int pin_num, struct regmap **regmap,
-				       int *reg, u8 *bit)
+static int px30_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+				      int pin_num, struct regmap **regmap,
+				      int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1008,6 +1008,8 @@ static void px30_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 	*reg += ((pin_num / PX30_PULL_PINS_PER_REG) * 4);
 	*bit = (pin_num % PX30_PULL_PINS_PER_REG);
 	*bit *= PX30_PULL_BITS_PER_PIN;
+
+	return 0;
 }
 
 #define PX30_DRV_PMU_OFFSET		0x20
@@ -1016,9 +1018,9 @@ static void px30_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 #define PX30_DRV_PINS_PER_REG		8
 #define PX30_DRV_BANK_STRIDE		16
 
-static void px30_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
-				      int pin_num, struct regmap **regmap,
-				      int *reg, u8 *bit)
+static int px30_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
+				     int pin_num, struct regmap **regmap,
+				     int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1038,6 +1040,8 @@ static void px30_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 	*reg += ((pin_num / PX30_DRV_PINS_PER_REG) * 4);
 	*bit = (pin_num % PX30_DRV_PINS_PER_REG);
 	*bit *= PX30_DRV_BITS_PER_PIN;
+
+	return 0;
 }
 
 #define PX30_SCHMITT_PMU_OFFSET			0x38
@@ -1077,9 +1081,9 @@ static int px30_calc_schmitt_reg_and_bit(struct rockchip_pin_bank *bank,
 #define RV1108_PULL_BITS_PER_PIN	2
 #define RV1108_PULL_BANK_STRIDE		16
 
-static void rv1108_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
-					 int pin_num, struct regmap **regmap,
-					 int *reg, u8 *bit)
+static int rv1108_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+					int pin_num, struct regmap **regmap,
+					int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1098,6 +1102,8 @@ static void rv1108_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 	*reg += ((pin_num / RV1108_PULL_PINS_PER_REG) * 4);
 	*bit = (pin_num % RV1108_PULL_PINS_PER_REG);
 	*bit *= RV1108_PULL_BITS_PER_PIN;
+
+	return 0;
 }
 
 #define RV1108_DRV_PMU_OFFSET		0x20
@@ -1106,9 +1112,9 @@ static void rv1108_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 #define RV1108_DRV_PINS_PER_REG		8
 #define RV1108_DRV_BANK_STRIDE		16
 
-static void rv1108_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
-					int pin_num, struct regmap **regmap,
-					int *reg, u8 *bit)
+static int rv1108_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
+				       int pin_num, struct regmap **regmap,
+				       int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1128,6 +1134,8 @@ static void rv1108_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 	*reg += ((pin_num / RV1108_DRV_PINS_PER_REG) * 4);
 	*bit = pin_num % RV1108_DRV_PINS_PER_REG;
 	*bit *= RV1108_DRV_BITS_PER_PIN;
+
+	return 0;
 }
 
 #define RV1108_SCHMITT_PMU_OFFSET		0x30
@@ -1184,9 +1192,9 @@ static int rk3308_calc_schmitt_reg_and_bit(struct rockchip_pin_bank *bank,
 #define RK2928_PULL_PINS_PER_REG	16
 #define RK2928_PULL_BANK_STRIDE		8
 
-static void rk2928_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
-				    int pin_num, struct regmap **regmap,
-				    int *reg, u8 *bit)
+static int rk2928_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+					int pin_num, struct regmap **regmap,
+					int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1196,13 +1204,15 @@ static void rk2928_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 	*reg += (pin_num / RK2928_PULL_PINS_PER_REG) * 4;
 
 	*bit = pin_num % RK2928_PULL_PINS_PER_REG;
+
+	return 0;
 };
 
 #define RK3128_PULL_OFFSET	0x118
 
-static void rk3128_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
-					 int pin_num, struct regmap **regmap,
-					 int *reg, u8 *bit)
+static int rk3128_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+					int pin_num, struct regmap **regmap,
+					int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1212,6 +1222,8 @@ static void rk3128_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 	*reg += ((pin_num / RK2928_PULL_PINS_PER_REG) * 4);
 
 	*bit = pin_num % RK2928_PULL_PINS_PER_REG;
+
+	return 0;
 }
 
 #define RK3188_PULL_OFFSET		0x164
@@ -1220,9 +1232,9 @@ static void rk3128_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 #define RK3188_PULL_BANK_STRIDE		16
 #define RK3188_PULL_PMU_OFFSET		0x64
 
-static void rk3188_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
-				    int pin_num, struct regmap **regmap,
-				    int *reg, u8 *bit)
+static int rk3188_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+					int pin_num, struct regmap **regmap,
+					int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1252,12 +1264,14 @@ static void rk3188_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 		*bit = 7 - (pin_num % RK3188_PULL_PINS_PER_REG);
 		*bit *= RK3188_PULL_BITS_PER_PIN;
 	}
+
+	return 0;
 }
 
 #define RK3288_PULL_OFFSET		0x140
-static void rk3288_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
-				    int pin_num, struct regmap **regmap,
-				    int *reg, u8 *bit)
+static int rk3288_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+					int pin_num, struct regmap **regmap,
+					int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1281,6 +1295,8 @@ static void rk3288_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 		*bit = (pin_num % RK3188_PULL_PINS_PER_REG);
 		*bit *= RK3188_PULL_BITS_PER_PIN;
 	}
+
+	return 0;
 }
 
 #define RK3288_DRV_PMU_OFFSET		0x70
@@ -1289,9 +1305,9 @@ static void rk3288_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 #define RK3288_DRV_PINS_PER_REG		8
 #define RK3288_DRV_BANK_STRIDE		16
 
-static void rk3288_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
-				    int pin_num, struct regmap **regmap,
-				    int *reg, u8 *bit)
+static int rk3288_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
+				       int pin_num, struct regmap **regmap,
+				       int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1315,13 +1331,15 @@ static void rk3288_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 		*bit = (pin_num % RK3288_DRV_PINS_PER_REG);
 		*bit *= RK3288_DRV_BITS_PER_PIN;
 	}
+
+	return 0;
 }
 
 #define RK3228_PULL_OFFSET		0x100
 
-static void rk3228_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
-				    int pin_num, struct regmap **regmap,
-				    int *reg, u8 *bit)
+static int rk3228_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+					int pin_num, struct regmap **regmap,
+					int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1332,13 +1350,15 @@ static void rk3228_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 
 	*bit = (pin_num % RK3188_PULL_PINS_PER_REG);
 	*bit *= RK3188_PULL_BITS_PER_PIN;
+
+	return 0;
 }
 
 #define RK3228_DRV_GRF_OFFSET		0x200
 
-static void rk3228_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
-				    int pin_num, struct regmap **regmap,
-				    int *reg, u8 *bit)
+static int rk3228_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
+				       int pin_num, struct regmap **regmap,
+				       int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1349,13 +1369,15 @@ static void rk3228_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 
 	*bit = (pin_num % RK3288_DRV_PINS_PER_REG);
 	*bit *= RK3288_DRV_BITS_PER_PIN;
+
+	return 0;
 }
 
 #define RK3308_PULL_OFFSET		0xa0
 
-static void rk3308_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
-				    int pin_num, struct regmap **regmap,
-				    int *reg, u8 *bit)
+static int rk3308_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+					int pin_num, struct regmap **regmap,
+					int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1366,13 +1388,15 @@ static void rk3308_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 
 	*bit = (pin_num % RK3188_PULL_PINS_PER_REG);
 	*bit *= RK3188_PULL_BITS_PER_PIN;
+
+	return 0;
 }
 
 #define RK3308_DRV_GRF_OFFSET		0x100
 
-static void rk3308_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
-				    int pin_num, struct regmap **regmap,
-				    int *reg, u8 *bit)
+static int rk3308_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
+				       int pin_num, struct regmap **regmap,
+				       int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1383,14 +1407,16 @@ static void rk3308_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 
 	*bit = (pin_num % RK3288_DRV_PINS_PER_REG);
 	*bit *= RK3288_DRV_BITS_PER_PIN;
+
+	return 0;
 }
 
 #define RK3368_PULL_GRF_OFFSET		0x100
 #define RK3368_PULL_PMU_OFFSET		0x10
 
-static void rk3368_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
-				    int pin_num, struct regmap **regmap,
-				    int *reg, u8 *bit)
+static int rk3368_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+					int pin_num, struct regmap **regmap,
+					int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1414,14 +1440,16 @@ static void rk3368_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 		*bit = (pin_num % RK3188_PULL_PINS_PER_REG);
 		*bit *= RK3188_PULL_BITS_PER_PIN;
 	}
+
+	return 0;
 }
 
 #define RK3368_DRV_PMU_OFFSET		0x20
 #define RK3368_DRV_GRF_OFFSET		0x200
 
-static void rk3368_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
-				    int pin_num, struct regmap **regmap,
-				    int *reg, u8 *bit)
+static int rk3368_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
+				       int pin_num, struct regmap **regmap,
+				       int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1445,15 +1473,17 @@ static void rk3368_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 		*bit = (pin_num % RK3288_DRV_PINS_PER_REG);
 		*bit *= RK3288_DRV_BITS_PER_PIN;
 	}
+
+	return 0;
 }
 
 #define RK3399_PULL_GRF_OFFSET		0xe040
 #define RK3399_PULL_PMU_OFFSET		0x40
 #define RK3399_DRV_3BITS_PER_PIN	3
 
-static void rk3399_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
-					 int pin_num, struct regmap **regmap,
-					 int *reg, u8 *bit)
+static int rk3399_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+					int pin_num, struct regmap **regmap,
+					int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1479,11 +1509,13 @@ static void rk3399_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 		*bit = (pin_num % RK3188_PULL_PINS_PER_REG);
 		*bit *= RK3188_PULL_BITS_PER_PIN;
 	}
+
+	return 0;
 }
 
-static void rk3399_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
-					int pin_num, struct regmap **regmap,
-					int *reg, u8 *bit)
+static int rk3399_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
+				       int pin_num, struct regmap **regmap,
+				       int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 	int drv_num = (pin_num / 8);
@@ -1500,6 +1532,8 @@ static void rk3399_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 		*bit = (pin_num % 8) * 3;
 	else
 		*bit = (pin_num % 8) * 2;
+
+	return 0;
 }
 
 #define RK3568_PULL_PMU_OFFSET		0x20
@@ -1508,9 +1542,9 @@ static void rk3399_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 #define RK3568_PULL_PINS_PER_REG	8
 #define RK3568_PULL_BANK_STRIDE		0x10
 
-static void rk3568_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
-					 int pin_num, struct regmap **regmap,
-					 int *reg, u8 *bit)
+static int rk3568_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+					int pin_num, struct regmap **regmap,
+					int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1531,6 +1565,8 @@ static void rk3568_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 		*bit = (pin_num % RK3568_PULL_PINS_PER_REG);
 		*bit *= RK3568_PULL_BITS_PER_PIN;
 	}
+
+	return 0;
 }
 
 #define RK3568_DRV_PMU_OFFSET		0x70
@@ -1539,9 +1575,9 @@ static void rk3568_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
 #define RK3568_DRV_PINS_PER_REG		2
 #define RK3568_DRV_BANK_STRIDE		0x40
 
-static void rk3568_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
-					int pin_num, struct regmap **regmap,
-					int *reg, u8 *bit)
+static int rk3568_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
+				       int pin_num, struct regmap **regmap,
+				       int *reg, u8 *bit)
 {
 	struct rockchip_pinctrl *info = bank->drvdata;
 
@@ -1562,6 +1598,8 @@ static void rk3568_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
 		*bit = (pin_num % RK3568_DRV_PINS_PER_REG);
 		*bit *= RK3568_DRV_BITS_PER_PIN;
 	}
+
+	return 0;
 }
 
 static int rockchip_perpin_drv_list[DRV_TYPE_MAX][8] = {
@@ -1584,7 +1622,9 @@ static int rockchip_get_drive_perpin(struct rockchip_pin_bank *bank,
 	u8 bit;
 	int drv_type = bank->drv[pin_num / 8].drv_type;
 
-	ctrl->drv_calc_reg(bank, pin_num, &regmap, &reg, &bit);
+	ret = ctrl->drv_calc_reg(bank, pin_num, &regmap, &reg, &bit);
+	if (ret)
+		return ret;
 
 	switch (drv_type) {
 	case DRV_TYPE_IO_1V8_3V0_AUTO:
@@ -1664,7 +1704,9 @@ static int rockchip_set_drive_perpin(struct rockchip_pin_bank *bank,
 	dev_dbg(dev, "setting drive of GPIO%d-%d to %d\n",
 		bank->bank_num, pin_num, strength);
 
-	ctrl->drv_calc_reg(bank, pin_num, &regmap, &reg, &bit);
+	ret = ctrl->drv_calc_reg(bank, pin_num, &regmap, &reg, &bit);
+	if (ret)
+		return ret;
 	if (ctrl->type == RK3568) {
 		rmask_bits = RK3568_DRV_BITS_PER_PIN;
 		ret = (1 << (strength + 1)) - 1;
@@ -1777,7 +1819,9 @@ static int rockchip_get_pull(struct rockchip_pin_bank *bank, int pin_num)
 	if (ctrl->type == RK3066B)
 		return PIN_CONFIG_BIAS_DISABLE;
 
-	ctrl->pull_calc_reg(bank, pin_num, &regmap, &reg, &bit);
+	ret = ctrl->pull_calc_reg(bank, pin_num, &regmap, &reg, &bit);
+	if (ret)
+		return ret;
 
 	ret = regmap_read(regmap, reg, &data);
 	if (ret)
@@ -1824,7 +1868,9 @@ static int rockchip_set_pull(struct rockchip_pin_bank *bank,
 	if (ctrl->type == RK3066B)
 		return pull ? -EINVAL : 0;
 
-	ctrl->pull_calc_reg(bank, pin_num, &regmap, &reg, &bit);
+	ret = ctrl->pull_calc_reg(bank, pin_num, &regmap, &reg, &bit);
+	if (ret)
+		return ret;
 
 	switch (ctrl->type) {
 	case RK2928:
diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
index 91f10279d084..4992a048acbc 100644
--- a/drivers/pinctrl/pinctrl-rockchip.h
+++ b/drivers/pinctrl/pinctrl-rockchip.h
@@ -230,10 +230,10 @@ struct rockchip_pin_ctrl {
 	struct rockchip_mux_route_data *iomux_routes;
 	u32				niomux_routes;
 
-	void	(*pull_calc_reg)(struct rockchip_pin_bank *bank,
+	int	(*pull_calc_reg)(struct rockchip_pin_bank *bank,
 				    int pin_num, struct regmap **regmap,
 				    int *reg, u8 *bit);
-	void	(*drv_calc_reg)(struct rockchip_pin_bank *bank,
+	int	(*drv_calc_reg)(struct rockchip_pin_bank *bank,
 				    int pin_num, struct regmap **regmap,
 				    int *reg, u8 *bit);
 	int	(*schmitt_calc_reg)(struct rockchip_pin_bank *bank,
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
