Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 254D5CF2594
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 10:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IEWO28FQhF2TaA9Qkgcag6t5AmpSmXwMzmjmzNxe8gE=; b=TQ6Iys3EEjKdfW
	eGPjKWoMZ3gTnvkuHdq0Wq3Gf1zca/3d+Rpw+AihvUfbVQQ90eiUiUz/V6bbpd8u4Y2Ws9SGh+rDp
	9XXXx8I3OLX8bDCuCVQCY3vWrBN7SpsVRJhOIlnJERAIW+p5qtKd3QUMW/yuLc1/7l142cUlczxQH
	44euKPCAZxQHSrSrkHhw3yO/qEBscA5GiXc663T3tP15LlrPDxgbL9Z1jAYe1AvLVFqRHvqvUu5CA
	fHUTbl1s3OaI9M4Hx3bj+drlGQyCrIpGyrvTCHUypOwVrJvDTPkr6la547xIeptXFuFmmJJYgVBZq
	h0+kN1sQ0ExGZaHIpeXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Iel-00000004ke9-1tmt;
	Mon, 14 Oct 2024 10:50:31 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0IYL-00000004jDL-2VF3;
	Mon, 14 Oct 2024 10:43:56 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728902630;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OJI6FD5j4PqYdR+2XIK8jcifYw4g5S3Dr/YL2YwHxD4=;
	b=Mr8Ee5t8sx6kRSTgiFM3BtvBUTDxC51GCurWp9W93+pKAq6KG8nzlm6mPhUa5OrV1rCtG6
	dpk2BMbXgu0JcWi2nyAl5QiZQABzH1qYoMtSHGsBz31dPHf64j8UjJwYzNAMm6E6ERkkpF
	nlEd+WWCv5ts0rz3umF1Mwxx666/PYHMW6hKSpBTJq5ALfmAOA+cVJkIFTpp8hY2vI1uG2
	X2yeNohSwe59Qltilf2REvwAogWNnjWa9abaw5D22K6AsHmvuiwGmzw/oMVlvJidsHyMwe
	PCyRibFpVeFlIJLUGPEIUNJtveg0eD28vF2sDCGyhoIm7YJPuZUIlCuK6gBRFQ==
To: lgirdwood@gmail.com,
	broonie@kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH 3/3] regulator: rk808: Restrict DVS GPIOs to the RK808 variant only
Date: Mon, 14 Oct 2024 12:43:41 +0200
Message-Id: <9a415c59699e76fc7b88a2552520a4ca2538f44e.1728902488.git.dsimic@manjaro.org>
In-Reply-To: <cover.1728902488.git.dsimic@manjaro.org>
References: <cover.1728902488.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_034354_837601_7FED04AF 
X-CRM114-Status: GOOD (  18.58  )
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

The rk808-regulator driver supports multiple PMIC variants from the Rockckip
RK80x and RK81x series, but the DVS GPIOs are supported on the RK808 variant
only, according to the DT bindings [1][2][3][4][5][6] and the datasheets for
the supported PMIC variants. [7][8][9][10][11][12]

Thus, change the probe path so the "dvs-gpios" property is checked for and
its value possibly used only when the handled PMIC variant is RK808.  There's
no point in doing that on the other PMIC variants, because they don't support
the DVS GPIOs, and it goes against the DT bindings to allow a possible out-
of-place "dvs-gpios" property to actually be handled in the driver.

This eliminates the following messages, emitted when the "dvs-gpios" property
isn't found in the DT, from the kernel log on boards that actually don't use
the RK808 variant, which may have provided a source of confusion:

  rk808-regulator rk808-regulator.2.auto: there is no dvs0 gpio
  rk808-regulator rk808-regulator.2.auto: there is no dvs1 gpio

Furthermore, demote these kernel messages to debug messages, because they are
useful during the board bringup phase only.  Emitting them afterwards, on the
boards that use the RK808 variant, but actually don't use the DVS0/1 GPIOs,
clutters the kernel log a bit, while they provide no value and may actually
cause false impression that some PMIC-related issues are present.

[1] Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
[2] Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
[3] Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
[4] Documentation/devicetree/bindings/mfd/rockchip,rk816.yaml
[5] Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
[6] Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
[7] https://rockchip.fr/RK805%20datasheet%20V1.2.pdf
[8] https://wmsc.lcsc.com/wmsc/upload/file/pdf/v2/lcsc/2401261533_Rockchip-RK806-1_C5156483.pdf
[9] https://rockchip.fr/RK808%20datasheet%20V1.4.pdf
[10] https://rockchip.fr/RK816%20datasheet%20V1.3.pdf
[11] https://rockchip.fr/RK817%20datasheet%20V1.01.pdf
[12] https://rockchip.fr/RK818%20datasheet%20V1.0.pdf

Fixes: 11375293530b ("regulator: rk808: Add regulator driver for RK818")
Reported-by: Diederik de Haas <didi.debian@cknow.org>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 drivers/regulator/rk808-regulator.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index f241bb538e27..76f9a426450d 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -1849,7 +1849,7 @@ static int rk808_regulator_dt_parse_pdata(struct device *dev, struct regmap *map
 		}
 
 		if (!pdata->dvs_gpio[i]) {
-			dev_info(dev, "there is no dvs%d gpio\n", i);
+			dev_dbg(dev, "there is no dvs%d gpio\n", i);
 			continue;
 		}
 
@@ -1884,22 +1884,21 @@ static int rk808_regulator_probe(struct platform_device *pdev)
 	if (!pdata)
 		return -ENOMEM;
 
-	ret = rk808_regulator_dt_parse_pdata(&pdev->dev, regmap, pdata);
-	if (ret < 0)
-		return ret;
-
-	platform_set_drvdata(pdev, pdata);
-
 	switch (rk808->variant) {
 	case RK805_ID:
 		regulators = rk805_reg;
 		nregulators = RK805_NUM_REGULATORS;
 		break;
 	case RK806_ID:
 		regulators = rk806_reg;
 		nregulators = ARRAY_SIZE(rk806_reg);
 		break;
 	case RK808_ID:
+		/* DVS0/1 GPIOs are supported on the RK808 only */
+		ret = rk808_regulator_dt_parse_pdata(&pdev->dev, regmap, pdata);
+		if (ret < 0)
+			return ret;
+
 		regulators = rk808_reg;
 		nregulators = RK808_NUM_REGULATORS;
 		break;
@@ -1924,6 +1923,8 @@ static int rk808_regulator_probe(struct platform_device *pdev)
 				     "unsupported RK8xx ID %lu\n", rk808->variant);
 	}
 
+	platform_set_drvdata(pdev, pdata);
+
 	config.dev = &pdev->dev;
 	config.driver_data = pdata;
 	config.regmap = regmap;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
