Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2F7FEE0AE0
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 13:07:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YLPdH1JbDy4VmDozLAZfD6Ws8ywfVkd1cZajz6Dnmpg=; b=G+q+/2/jhIxh0f
	kb4wNwjZf2J32txy8y2D9HBaHmuvAwChiWswuNazP5TCQe3+p3Ty+EzHXA00iDuiY+qLPr4VfjNkt
	iAcnUOr3ljRVZbL56YJhdE0cZL7XYlZMQTjVAIvF5T7wZ3vCLDv9Bx4kuKlupS40vb5IzM7Ind1W9
	1tqu2iQbQlOdn1BFnP6VZD1yjW/VGPn7cUqR5GsHp7svnKXzV29K/VQr54T81UP2J1ysXOxTmAPc+
	qeMonJm4S2iTFV+OAdIxKxwbZ63Vh7hffIcIofWN5mX+O0h1LONJBEPKEkF/dJGx8jwn05q7jFhLQ
	a9X5SwFUYIVVsKO9TpFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voi1c-0000000CSTT-2m1K;
	Sat, 07 Feb 2026 13:07:00 +0000
Received: from mail-yx1-xb129.google.com ([2607:f8b0:4864:20::b129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voi1a-0000000CSSK-1JAD
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Feb 2026 13:06:59 +0000
Received: by mail-yx1-xb129.google.com with SMTP id 956f58d0204a3-64a28af2f4cso2300600d50.1
        for <linux-rockchip@lists.infradead.org>; Sat, 07 Feb 2026 05:06:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770469617; x=1771074417; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rHjIXZUa5dDIO94dk7U7Rh8yW4cGtzCrjj1MjQ3dPr4=;
        b=nDxMtJ7ajHoJGDT3a6DJpnCm1uZDjL1abbciEQ1vWjD7YBpyOYYL1GSAe1YiVStvK+
         DqYEfxQ6LXMZgQQmhioi3iwv0C2TtVFZe5lGsIINcgf+6D7GkVvIHH7ZHhbx40LUechM
         kaNlA2STQKcLfYxA1b4vuYnLirIAsoDuenDMkRNMiKJzluWzqKm9tJ4nrHm7MuQUZmZ8
         SLIr4yQX9pfjTmCJAkIhl/NgN0s4I5ACaIkync+5OSTFpCcUmK/Zq71fVUMXDNMBYzjT
         AtvS0cVRT689prLLbH6xKaHp4OlB8rAOm58govXIx5QRKm9kVq6IrfsLYdmnzHN3xAT8
         Igow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770469617; x=1771074417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rHjIXZUa5dDIO94dk7U7Rh8yW4cGtzCrjj1MjQ3dPr4=;
        b=KPpyPcPL88nWy35KTuw09IWoBqQcnNXRh9yTbxe5InGwsLD6Tz3V3p/KkCMLfvlXf+
         bghzxDVoGtLvz18VHY5IWSTBYQIXHMm/6GgrtHrmms8aUOqpLQlfV3yw9nuPCwf03xuf
         QAW+ESZwlc+/c7kKPsHYPEn8ykumAVHr+t4qp5aY87AmrTJWE6v0+iI8qpd8504E5NH2
         tw39OptQhA7zV3FOpwOQ5Q6pT/YWwkZOB9I5pgb17AXNm0Gjh33zJ6HPwOiNk63Let6w
         Ff8A2KXXdoVkGfavyn9zvUafLZbZ5a3ugNG1GlGOlO0qRVljlVRztWDRhsWah9t7o1v2
         Nvog==
X-Forwarded-Encrypted: i=1; AJvYcCXmT0IE+o6+OIGD2flIPdPg/knaxMR8HeOkHqxFC8O3+vHxIhKOM3VIwSIGZzvtH5eoSfLVJ993hbrXFzHE7w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxkztqcGngcx6VRuQa3oqdBi/S6uvSkTX1MRdby/G7nMExmY88o
	HzXMuEUcA3nkMb+OsNVFcH7xIRIwTMy+1WIfSykVuTz/z3fyHuTFdPm0
X-Gm-Gg: AZuq6aL3ruiYHZaxKgN2QFAaUIQlEqtclwReIBhqBS0Lr6BBNQtzB2V+dYBXgJXcrn+
	JlX+3yFFrVjA2fNYhiUyaK0+Qje1YLnsU27MtzAvnW7+yFi9iu9PHMBs8RWBXXBqeiiJ5AMItp2
	ItwHVwemhXXBhmSdUqWoL6ih1Glg0PUz2hXbkn1NO9UHyxNlz9KGeohFa5iH3G8YSJVG1B9AIyX
	NGyDj3kLj2iCHJ1JYxjO8c5ZXpqQGzFZxo4pbu5EEcftNYQAsuGeR4HeItdcMJHp4jqFz5h4G4k
	Wp+OkHdbJSTnaH7h8/Ve/eUvIZlZWlalS2tP8BsXjwbUYvRaeGRLYc76Src5ETVMip1oJoVcBIo
	Vqag+QHPH2M3ZqNwEdRg84Yb6/rQMAU5B2xP9/laDmrTB7m98jQSTnqCDAVTXR3w5D6Dh75wMrJ
	pZRe0Iv3Wj5/rOp/+cd85sGomV
X-Received: by 2002:a05:690e:144a:b0:649:ef5b:aeaf with SMTP id 956f58d0204a3-649ef5bbc11mr6283624d50.25.1770469616826;
        Sat, 07 Feb 2026 05:06:56 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b1ab:5cb0:a2f8:764b])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-649f248c511sm4991572d50.8.2026.02.07.05.06.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 05:06:56 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: linusw@kernel.org
Cc: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	jonas@kwiboo.se,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2 2/2] pinctrl: rockchip: Add RV1103B pinctrl support
Date: Sat,  7 Feb 2026 10:06:42 -0300
Message-Id: <20260207130642.2833312-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260207130642.2833312-1-festevam@gmail.com>
References: <20260207130642.2833312-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_050658_378086_8E35BDB1 
X-CRM114-Status: GOOD (  21.65  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

From: Fabio Estevam <festevam@nabladev.com>

Add pinctrl support for the RV1103B.

Based on the 5.10 Rockchip vendor kernel driver.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
 - None.
 
 drivers/pinctrl/pinctrl-rockchip.c | 313 ++++++++++++++++++++++++++++-
 drivers/pinctrl/pinctrl-rockchip.h |   1 +
 2 files changed, 313 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 2fc67aeafdb3..092ce4cac9cf 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -467,6 +467,22 @@ static const struct pinctrl_ops rockchip_pctrl_ops = {
  * Hardware access
  */
 
+static struct rockchip_mux_recalced_data rv1103b_mux_recalced_data[] = {
+	{
+		.num = 1,
+		.pin = 6,
+		.reg = 0x10024,
+		.bit = 8,
+		.mask = 0xf
+	}, {
+		.num = 1,
+		.pin = 7,
+		.reg = 0x10024,
+		.bit = 12,
+		.mask = 0xf
+	},
+};
+
 static struct rockchip_mux_recalced_data rv1108_mux_recalced_data[] = {
 	{
 		.num = 1,
@@ -1172,6 +1188,9 @@ static int rockchip_get_mux(struct rockchip_pin_bank *bank, int pin)
 	else
 		regmap = info->regmap_base;
 
+	if (ctrl->type == RV1103B && bank->bank_num == 2 && pin >= 12)
+		return 0;
+
 	if (ctrl->type == RK3506) {
 		if (bank->bank_num == 1)
 			regmap = info->regmap_ioc1;
@@ -1298,6 +1317,9 @@ static int rockchip_set_mux(struct rockchip_pin_bank *bank, int pin, int mux)
 	else
 		regmap = info->regmap_base;
 
+	if (ctrl->type == RV1103B && bank->bank_num == 2 && pin >= 12)
+		return 0;
+
 	if (ctrl->type == RK3506) {
 		if (bank->bank_num == 1)
 			regmap = info->regmap_ioc1;
@@ -1495,6 +1517,214 @@ static int px30_calc_schmitt_reg_and_bit(struct rockchip_pin_bank *bank,
 	return 0;
 }
 
+#define RV1103B_DRV_BITS_PER_PIN		8
+#define RV1103B_DRV_PINS_PER_REG		2
+#define RV1103B_DRV_GPIO0_A_OFFSET		0x40100
+#define RV1103B_DRV_GPIO0_B_OFFSET		0x50110
+#define RV1103B_DRV_GPIO1_A01_OFFSET		0x140
+#define RV1103B_DRV_GPIO1_A67_OFFSET		0x1014C
+#define RV1103B_DRV_GPIO2_OFFSET		0x30180
+#define RV1103B_DRV_GPIO2_SARADC_OFFSET		0x3080C
+
+static int rv1103b_calc_drv_reg_and_bit(struct rockchip_pin_bank *bank,
+				       int pin_num, struct regmap **regmap,
+				       int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+	int ret = 0;
+
+	*regmap = info->regmap_base;
+	switch (bank->bank_num) {
+	case 0:
+		if (pin_num < 7)
+			*reg = RV1103B_DRV_GPIO0_A_OFFSET;
+		else if (pin_num > 7 && pin_num < 14)
+			*reg = RV1103B_DRV_GPIO0_B_OFFSET - 0x10;
+		else
+			ret = -EINVAL;
+		break;
+
+	case 1:
+		if (pin_num < 6)
+			*reg = RV1103B_DRV_GPIO1_A01_OFFSET;
+		else if (pin_num >= 6 && pin_num < 23)
+			*reg = RV1103B_DRV_GPIO1_A67_OFFSET - 0xc;
+		else if (pin_num >= 24 && pin_num < 30)
+			*reg = RV1103B_DRV_GPIO1_A67_OFFSET - 0xc;
+		else
+			ret = -EINVAL;
+		break;
+
+	case 2:
+		if (pin_num < 12) {
+			*reg = RV1103B_DRV_GPIO2_OFFSET;
+		} else if (pin_num >= 16) {
+			ret = -EINVAL;
+		} else {
+			*reg = RV1103B_DRV_GPIO2_SARADC_OFFSET;
+			*bit = 10;
+
+			return 0;
+		}
+		break;
+
+	default:
+		ret = -EINVAL;
+		break;
+	}
+
+	if (ret) {
+		dev_err(info->dev, "unsupported bank_num %d pin_num %d\n", bank->bank_num, pin_num);
+
+		return ret;
+	}
+
+	*reg += ((pin_num / RV1103B_DRV_PINS_PER_REG) * 4);
+	*bit = pin_num % RV1103B_DRV_PINS_PER_REG;
+	*bit *= RV1103B_DRV_BITS_PER_PIN;
+
+	return 0;
+}
+
+#define RV1103B_PULL_BITS_PER_PIN		2
+#define RV1103B_PULL_PINS_PER_REG		8
+#define RV1103B_PULL_GPIO0_A_OFFSET		0x40200
+#define RV1103B_PULL_GPIO0_B_OFFSET		0x50204
+#define RV1103B_PULL_GPIO1_A01_OFFSET		0x210
+#define RV1103B_PULL_GPIO1_A67_OFFSET		0x10210
+#define RV1103B_PULL_GPIO2_OFFSET		0x30220
+#define RV1103B_PULL_GPIO2_SARADC_OFFSET	0x3080C
+
+static int rv1103b_calc_pull_reg_and_bit(struct rockchip_pin_bank *bank,
+					int pin_num, struct regmap **regmap,
+					int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+	int ret = 0;
+
+	*regmap = info->regmap_base;
+	switch (bank->bank_num) {
+	case 0:
+		if (pin_num < 7)
+			*reg = RV1103B_PULL_GPIO0_A_OFFSET;
+		else if (pin_num > 7 && pin_num < 14)
+			*reg = RV1103B_PULL_GPIO0_B_OFFSET - 0x4;
+		else
+			ret = -EINVAL;
+		break;
+
+	case 1:
+		if (pin_num < 6)
+			*reg = RV1103B_PULL_GPIO1_A01_OFFSET;
+		else if (pin_num >= 6 && pin_num < 23)
+			*reg = RV1103B_PULL_GPIO1_A67_OFFSET;
+		else if (pin_num >= 24 && pin_num < 30)
+			*reg = RV1103B_PULL_GPIO1_A67_OFFSET;
+		else
+			ret = -EINVAL;
+		break;
+
+	case 2:
+		if (pin_num < 12) {
+			*reg = RV1103B_PULL_GPIO2_OFFSET;
+		} else if (pin_num >= 16) {
+			ret = -EINVAL;
+		} else {
+			*reg = RV1103B_PULL_GPIO2_SARADC_OFFSET;
+			*bit = 13;
+
+			return 0;
+		}
+		break;
+
+	default:
+		ret = -EINVAL;
+		break;
+	}
+
+	if (ret) {
+		dev_err(info->dev, "unsupported bank_num %d pin_num %d\n", bank->bank_num, pin_num);
+
+		return ret;
+	}
+
+	*reg += ((pin_num / RV1103B_PULL_PINS_PER_REG) * 4);
+	*bit = pin_num % RV1103B_PULL_PINS_PER_REG;
+	*bit *= RV1103B_PULL_BITS_PER_PIN;
+
+	return 0;
+}
+
+#define RV1103B_SMT_BITS_PER_PIN		1
+#define RV1103B_SMT_PINS_PER_REG		8
+#define RV1103B_SMT_GPIO0_A_OFFSET		0x40400
+#define RV1103B_SMT_GPIO0_B_OFFSET		0x50404
+#define RV1103B_SMT_GPIO1_A01_OFFSET		0x410
+#define RV1103B_SMT_GPIO1_A67_OFFSET		0x10410
+#define RV1103B_SMT_GPIO2_OFFSET		0x30420
+#define RV1103B_SMT_GPIO2_SARADC_OFFSET		0x3080C
+
+static int rv1103b_calc_schmitt_reg_and_bit(struct rockchip_pin_bank *bank,
+					   int pin_num,
+					   struct regmap **regmap,
+					   int *reg, u8 *bit)
+{
+	struct rockchip_pinctrl *info = bank->drvdata;
+	int ret = 0;
+
+	*regmap = info->regmap_base;
+	switch (bank->bank_num) {
+	case 0:
+		if (pin_num < 7)
+			*reg = RV1103B_SMT_GPIO0_A_OFFSET;
+		else if (pin_num > 7 && pin_num < 14)
+			*reg = RV1103B_SMT_GPIO0_B_OFFSET - 0x4;
+		else
+			ret = -EINVAL;
+		break;
+
+	case 1:
+		if (pin_num < 6)
+			*reg = RV1103B_SMT_GPIO1_A01_OFFSET;
+		else if (pin_num >= 6 && pin_num < 23)
+			*reg = RV1103B_SMT_GPIO1_A67_OFFSET;
+		else if (pin_num >= 24 && pin_num < 30)
+			*reg = RV1103B_SMT_GPIO1_A67_OFFSET;
+		else
+			ret = -EINVAL;
+		break;
+
+	case 2:
+		if (pin_num < 12) {
+			*reg = RV1103B_SMT_GPIO2_OFFSET;
+		} else if (pin_num >= 16) {
+			ret = -EINVAL;
+		} else {
+			*reg = RV1103B_SMT_GPIO2_SARADC_OFFSET;
+			*bit = 8;
+
+			return 0;
+		}
+		break;
+
+	default:
+		ret = -EINVAL;
+		break;
+	}
+
+	if (ret) {
+		dev_err(info->dev, "unsupported bank_num %d pin_num %d\n", bank->bank_num, pin_num);
+
+		return ret;
+	}
+
+	*reg += ((pin_num / RV1103B_SMT_PINS_PER_REG) * 4);
+	*bit = pin_num % RV1103B_SMT_PINS_PER_REG;
+	*bit *= RV1103B_SMT_BITS_PER_PIN;
+
+	return 0;
+}
+
 #define RV1108_PULL_PMU_OFFSET		0x10
 #define RV1108_PULL_OFFSET		0x110
 #define RV1108_PULL_PINS_PER_REG	8
@@ -2982,6 +3212,9 @@ static int rockchip_get_drive_perpin(struct rockchip_pin_bank *bank,
 	u8 bit;
 	int drv_type = bank->drv[pin_num / 8].drv_type;
 
+	if (ctrl->type == RV1103B && pin_num >= 12)
+		drv_type = DRV_TYPE_IO_LEVEL_2_BIT;
+
 	ret = ctrl->drv_calc_reg(bank, pin_num, &regmap, &reg, &bit);
 	if (ret)
 		return ret;
@@ -3043,6 +3276,11 @@ static int rockchip_get_drive_perpin(struct rockchip_pin_bank *bank,
 	if (ret)
 		return ret;
 
+	if (ctrl->type == RV1103B && bank->bank_num == 2 && pin_num >= 12) {
+		data = data >> 10;
+		return data & 0x3;
+	}
+
 	data >>= bit;
 	data &= (1 << rmask_bits) - 1;
 
@@ -3071,7 +3309,8 @@ static int rockchip_set_drive_perpin(struct rockchip_pin_bank *bank,
 		rmask_bits = RK3588_DRV_BITS_PER_PIN;
 		ret = strength;
 		goto config;
-	} else if (ctrl->type == RK3506 ||
+	} else if (ctrl->type == RV1103B ||
+		   ctrl->type == RK3506 ||
 		   ctrl->type == RK3528 ||
 		   ctrl->type == RK3562 ||
 		   ctrl->type == RK3568) {
@@ -3182,6 +3421,12 @@ static int rockchip_set_drive_perpin(struct rockchip_pin_bank *bank,
 			ret = strength;
 		}
 	}
+
+	if (ctrl->type == RV1103B && bank->bank_num == 2 && pin_num >= 12) {
+		rmask_bits = 2;
+		ret = strength;
+	}
+
 	/* enable the write to the equivalent lower bits */
 	data = ((1 << rmask_bits) - 1) << (bit + 16);
 	rmask = data | (data >> 16);
@@ -3236,6 +3481,7 @@ static int rockchip_get_pull(struct rockchip_pin_bank *bank, int pin_num)
 				? PIN_CONFIG_BIAS_PULL_PIN_DEFAULT
 				: PIN_CONFIG_BIAS_DISABLE;
 	case PX30:
+	case RV1103B:
 	case RV1108:
 	case RK3188:
 	case RK3288:
@@ -3251,6 +3497,9 @@ static int rockchip_get_pull(struct rockchip_pin_bank *bank, int pin_num)
 		pull_type = bank->pull_type[pin_num / 8];
 		data >>= bit;
 		data &= (1 << RK3188_PULL_BITS_PER_PIN) - 1;
+
+		if (ctrl->type == RV1103B && bank->bank_num == 2 && pin_num >= 12)
+			pull_type = 1;
 		/*
 		 * In the TRM, pull-up being 1 for everything except the GPIO0_D3-D6,
 		 * where that pull up value becomes 3.
@@ -3297,6 +3546,7 @@ static int rockchip_set_pull(struct rockchip_pin_bank *bank,
 		ret = regmap_write(regmap, reg, data);
 		break;
 	case PX30:
+	case RV1103B:
 	case RV1108:
 	case RV1126:
 	case RK3188:
@@ -3312,6 +3562,8 @@ static int rockchip_set_pull(struct rockchip_pin_bank *bank,
 	case RK3576:
 	case RK3588:
 		pull_type = bank->pull_type[pin_num / 8];
+		if (ctrl->type == RV1103B && bank->bank_num == 2 && pin_num >= 12)
+			pull_type = 1;
 		ret = -EINVAL;
 		for (i = 0; i < ARRAY_SIZE(rockchip_pull_list[pull_type]);
 			i++) {
@@ -3417,6 +3669,11 @@ static int rockchip_get_schmitt(struct rockchip_pin_bank *bank, int pin_num)
 	if (ret)
 		return ret;
 
+	if (ctrl->type == RV1103B && bank->bank_num == 2 && pin_num >= 12) {
+		data >>= 8;
+		return data & 0x3;
+	}
+
 	data >>= bit;
 	switch (ctrl->type) {
 	case RK3562:
@@ -3473,6 +3730,12 @@ static int rockchip_set_schmitt(struct rockchip_pin_bank *bank,
 		}
 	}
 
+	if (ctrl->type == RV1103B && bank->bank_num == 2 && pin_num >= 12) {
+		data = 0x3 << (bit + 16);
+		rmask = data | (data >> 16);
+		data |= ((enable ? 0x3 : 0) << bit);
+	}
+
 	return regmap_update_bits(regmap, reg, rmask, data);
 }
 
@@ -3579,6 +3842,7 @@ static bool rockchip_pinconf_pull_valid(struct rockchip_pin_ctrl *ctrl,
 	case RK3066B:
 		return pull ? false : true;
 	case PX30:
+	case RV1103B:
 	case RV1108:
 	case RV1126:
 	case RK3188:
@@ -4319,6 +4583,51 @@ static struct rockchip_pin_ctrl px30_pin_ctrl = {
 		.schmitt_calc_reg	= px30_calc_schmitt_reg_and_bit,
 };
 
+static struct rockchip_pin_bank rv1103b_pin_banks[] = {
+	PIN_BANK_IOMUX_FLAGS_OFFSET_DRV_FLAGS(0, 32, "gpio0",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x40000, 0x50008, 0x50010, 0x50018,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT),
+	PIN_BANK_IOMUX_FLAGS_OFFSET_DRV_FLAGS(1, 32, "gpio1",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x20, 0x10028, 0x10030, 0x10038,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT),
+	PIN_BANK_IOMUX_FLAGS_OFFSET_DRV_FLAGS(2, 32, "gpio2",
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    IOMUX_WIDTH_4BIT,
+				    0x30040, 0x30048, 0x30050, 0x30058,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT,
+				    DRV_TYPE_IO_LEVEL_8_BIT),
+};
+
+static struct rockchip_pin_ctrl rv1103b_pin_ctrl __maybe_unused = {
+	.pin_banks		= rv1103b_pin_banks,
+	.nr_banks		= ARRAY_SIZE(rv1103b_pin_banks),
+	.label			= "RV1103B-GPIO",
+	.type			= RV1103B,
+	.iomux_recalced		= rv1103b_mux_recalced_data,
+	.niomux_recalced	= ARRAY_SIZE(rv1103b_mux_recalced_data),
+	.pull_calc_reg		= rv1103b_calc_pull_reg_and_bit,
+	.drv_calc_reg		= rv1103b_calc_drv_reg_and_bit,
+	.schmitt_calc_reg	= rv1103b_calc_schmitt_reg_and_bit,
+};
+
 static struct rockchip_pin_bank rv1108_pin_banks[] = {
 	PIN_BANK_IOMUX_FLAGS(0, 32, "gpio0", IOMUX_SOURCE_PMU,
 					     IOMUX_SOURCE_PMU,
@@ -4955,6 +5264,8 @@ static struct rockchip_pin_ctrl rk3588_pin_ctrl = {
 static const struct of_device_id rockchip_pinctrl_dt_match[] = {
 	{ .compatible = "rockchip,px30-pinctrl",
 		.data = &px30_pin_ctrl },
+	{ .compatible = "rockchip,rv1103b-pinctrl",
+		.data = &rv1103b_pin_ctrl },
 	{ .compatible = "rockchip,rv1108-pinctrl",
 		.data = &rv1108_pin_ctrl },
 	{ .compatible = "rockchip,rv1126-pinctrl",
diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
index 4f4aff42a80a..bb0e803e3b8a 100644
--- a/drivers/pinctrl/pinctrl-rockchip.h
+++ b/drivers/pinctrl/pinctrl-rockchip.h
@@ -185,6 +185,7 @@
 
 enum rockchip_pinctrl_type {
 	PX30,
+	RV1103B,
 	RV1108,
 	RV1126,
 	RK2928,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
