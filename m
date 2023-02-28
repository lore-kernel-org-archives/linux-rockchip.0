Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D3EEC64EC7
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Feb 2023 11:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CY0mr3hYyc1bWFPg3FNm72pCWU3T+Hmsf77lgvcpHMU=; b=FPZe0X8o/6OXRr
	H0GNP1OxLuDdbTKR6+oel8oWSYTjiZw5LRlFbjDn3ST7eSnIL/okKjUwgytD65/Ur+F4MpEBbo+ne
	0xUh7xTQ53GAQNHC3IefSyyAou1Sr0efaJt1/vqrauQxUF02OPNufRUePUIBb/ADpoMKtMc2+UCqA
	Q3p0almspCLgugDHp5sG3GTPJ6oYqanVxB+bMe97DrilGZvWWPGlC9+iXpNuYkVrmC99IKYDGC3z0
	DpczFEcDRHfWEoIQnT+3W5aNioBcXuo+QgLS+qi2THEEZTbdmaSqBj5j5WozDiKOAJxPZSet9cysy
	PtvRXjMVs3WgySyQDsig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWy4o-00Cwx1-PV; Tue, 28 Feb 2023 11:23:22 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pWy4j-00Cwtf-CS
	for linux-rockchip@lists.infradead.org; Tue, 28 Feb 2023 11:23:20 +0000
Received: by mail-wr1-x432.google.com with SMTP id q16so9355067wrw.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Feb 2023 03:23:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677583396;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QZORbJEC0KXh3smLya7JMCOQlYUfz0b2RxRCc6FiOfI=;
        b=OUmVNKtMZy71Xb4OafKHzvY+yBTEGHp3AaOzBwqcRrPW48VcxfRdVgL/WocBCGzJtz
         ZxQZ89JaSnLN4vzAPy4oXSbV76UCAWq6MwnoYU7Xt98ccVgnXFSSB+W8eFo/4JBWRun4
         5RTjaXDyWYx9fcEt65xJdSBDso413BDd9UoqgSnXfJqQV++pALJj6fvkD3QeTsDehRms
         xiheHBWgBHZoxcKhGn/kKC96ggbS29KumVuYitYyqx+cegoPvxUnZ6incz5Zupgh8gqH
         in0/1P9bBUTVbg22Iima50actI1DwZsTKDD52gNVPfI6FvyQJtk1R/YCL6cRpq106uRr
         QfFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677583396;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QZORbJEC0KXh3smLya7JMCOQlYUfz0b2RxRCc6FiOfI=;
        b=arhv1GAZV+rkXPwLfKqK0gyj8m6A0lwO/33hD14VguzZ7Kq+13IJbAbXLxDAiHImr0
         jLB5+lpdTaZDCE6Q1QfQDPCIDjz8OcqlGE20AjlM03nU6a3khEWIbGQluJYeWcCXaKUO
         UO3vkYGAOCeOMGKyxiQ56CC9nuqzqBD5O5GYcg6FPBkOPbS5VoefBxGMpRimhlVNzwAl
         25LgOML8aA9eZoTORQVWsAdI13MN9nPWDoAnl1bz21Pl25ZRmtUrnT7O7BmFIOqrM5u0
         hT91QfdecmjVeaXhH1w7Px8zrVzl9i5izObyormoqjpfDicBbJCKbavrca3rVb8LzwBL
         IY0Q==
X-Gm-Message-State: AO0yUKXuVe+dC9ZRuqEaHyGrMetJBscNqA8BA5wkzYAyQLkVXE3lAcHf
	vPjcAIX53RGMfys+8qOd3XmM/A==
X-Google-Smtp-Source: AK7set8nGAJgkg7jQ/NNy9ORVxyqvPxPJ/rta3MVNbCav4uWaPh9eKH6SIPPTSwi5PQBQxM1QbkS5g==
X-Received: by 2002:a5d:5049:0:b0:2cb:5b58:75e with SMTP id h9-20020a5d5049000000b002cb5b58075emr2255214wrt.5.1677583395936;
        Tue, 28 Feb 2023 03:23:15 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:6830:6390:2815:b6a5])
        by smtp.gmail.com with ESMTPSA id z5-20020a5d6545000000b002c5501a5803sm9598130wrv.65.2023.02.28.03.23.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Feb 2023 03:23:15 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: rafael@kernel.org,
	daniel.lezcano@linaro.org
Cc: linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Markus Mayer <mmayer@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Heiko Stuebner <heiko@sntech.de>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Adam Ward <DLG-Adam.Ward.opensource@dm.renesas.com>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v4 06/19] thermal: Remove debug or error messages in get_temp() ops
Date: Tue, 28 Feb 2023 12:22:25 +0100
Message-Id: <20230228112238.2312273-7-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230228112238.2312273-1-daniel.lezcano@linaro.org>
References: <20230228112238.2312273-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_032317_492475_3D14DC27 
X-CRM114-Status: GOOD (  19.52  )
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

Some get_temp() ops implementation are showing an error or a debug
message if the reading of the sensor fails.

The debug message is already displayed from the call site of this
ops. So we can remove it.

On the other side, the error should not be displayed because in
production that can raise tons of messages.

Finally, some drivers are showing a debug message with the
temperature, this is also accessible through the trace from the core
code in the temperature_update() function.

Another benefit is the dev_* messages are accessing the thermal zone
device field from the structure, so we encapsulate even more the code
by preventing these accesses.

Remove those messages.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com> #Armada
Acked-by: Florian Fainelli <f.fainelli@gmail.com> #brcmstb_thermal.c
---
 drivers/thermal/armada_thermal.c           | 10 ++--------
 drivers/thermal/broadcom/brcmstb_thermal.c |  4 +---
 drivers/thermal/dove_thermal.c             |  5 +----
 drivers/thermal/hisi_thermal.c             |  3 ---
 drivers/thermal/imx_sc_thermal.c           |  5 +----
 drivers/thermal/imx_thermal.c              |  4 +---
 drivers/thermal/kirkwood_thermal.c         |  5 +----
 drivers/thermal/max77620_thermal.c         |  4 +---
 drivers/thermal/rockchip_thermal.c         |  3 ---
 drivers/thermal/st/st_thermal.c            |  3 ---
 drivers/thermal/thermal-generic-adc.c      |  5 ++---
 11 files changed, 10 insertions(+), 41 deletions(-)

diff --git a/drivers/thermal/armada_thermal.c b/drivers/thermal/armada_thermal.c
index ebd606861a61..0e8dfa6a7757 100644
--- a/drivers/thermal/armada_thermal.c
+++ b/drivers/thermal/armada_thermal.c
@@ -360,11 +360,8 @@ static int armada_select_channel(struct armada_thermal_priv *priv, int channel)
 	 * we must absolutely wait for the sensor validity bit to ensure we read
 	 * actual data.
 	 */
-	if (armada_wait_sensor_validity(priv)) {
-		dev_err(priv->dev,
-			"Temperature sensor reading not valid\n");
+	if (armada_wait_sensor_validity(priv))
 		return -EIO;
-	}
 
 	return 0;
 }
@@ -402,11 +399,8 @@ static int armada_get_temp_legacy(struct thermal_zone_device *thermal,
 	int ret;
 
 	/* Valid check */
-	if (!armada_is_valid(priv)) {
-		dev_err(priv->dev,
-			"Temperature sensor reading not valid\n");
+	if (!armada_is_valid(priv))
 		return -EIO;
-	}
 
 	/* Do the actual reading */
 	ret = armada_read_sensor(priv, temp);
diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
index 60173cc83c46..72d1dbe60b8f 100644
--- a/drivers/thermal/broadcom/brcmstb_thermal.c
+++ b/drivers/thermal/broadcom/brcmstb_thermal.c
@@ -158,10 +158,8 @@ static int brcmstb_get_temp(struct thermal_zone_device *tz, int *temp)
 
 	val = __raw_readl(priv->tmon_base + AVS_TMON_STATUS);
 
-	if (!(val & AVS_TMON_STATUS_valid_msk)) {
-		dev_err(priv->dev, "reading not valid\n");
+	if (!(val & AVS_TMON_STATUS_valid_msk))
 		return -EIO;
-	}
 
 	val = (val & AVS_TMON_STATUS_data_msk) >> AVS_TMON_STATUS_data_shift;
 
diff --git a/drivers/thermal/dove_thermal.c b/drivers/thermal/dove_thermal.c
index 6db1882e8229..9954040d1d2c 100644
--- a/drivers/thermal/dove_thermal.c
+++ b/drivers/thermal/dove_thermal.c
@@ -91,11 +91,8 @@ static int dove_get_temp(struct thermal_zone_device *thermal,
 
 	/* Valid check */
 	reg = readl_relaxed(priv->control + PMU_TEMP_DIOD_CTRL1_REG);
-	if ((reg & PMU_TDC1_TEMP_VALID_MASK) == 0x0) {
-		dev_err(&thermal->device,
-			"Temperature sensor reading not valid\n");
+	if ((reg & PMU_TDC1_TEMP_VALID_MASK) == 0x0)
 		return -EIO;
-	}
 
 	/*
 	 * Calculate temperature. According to Marvell internal
diff --git a/drivers/thermal/hisi_thermal.c b/drivers/thermal/hisi_thermal.c
index f3a374266fa0..0d135b8a5b62 100644
--- a/drivers/thermal/hisi_thermal.c
+++ b/drivers/thermal/hisi_thermal.c
@@ -436,9 +436,6 @@ static int hisi_thermal_get_temp(struct thermal_zone_device *tz, int *temp)
 
 	*temp = data->ops->get_temp(sensor);
 
-	dev_dbg(&data->pdev->dev, "tzd=%p, id=%d, temp=%d, thres=%d\n",
-		sensor->tzd, sensor->id, *temp, sensor->thres_temp);
-
 	return 0;
 }
 
diff --git a/drivers/thermal/imx_sc_thermal.c b/drivers/thermal/imx_sc_thermal.c
index ddde4bdfc94a..2d7a6bd2846b 100644
--- a/drivers/thermal/imx_sc_thermal.c
+++ b/drivers/thermal/imx_sc_thermal.c
@@ -58,11 +58,8 @@ static int imx_sc_thermal_get_temp(struct thermal_zone_device *tz, int *temp)
 	hdr->size = 2;
 
 	ret = imx_scu_call_rpc(thermal_ipc_handle, &msg, true);
-	if (ret) {
-		dev_err(&sensor->tzd->device, "read temp sensor %d failed, ret %d\n",
-			sensor->resource_id, ret);
+	if (ret)
 		return ret;
-	}
 
 	*temp = msg.data.resp.celsius * 1000 + msg.data.resp.tenths * 100;
 
diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
index a22b8086a209..a0b8de269986 100644
--- a/drivers/thermal/imx_thermal.c
+++ b/drivers/thermal/imx_thermal.c
@@ -265,10 +265,8 @@ static int imx_get_temp(struct thermal_zone_device *tz, int *temp)
 
 	regmap_read(map, soc_data->temp_data, &val);
 
-	if ((val & soc_data->temp_valid_mask) == 0) {
-		dev_dbg(&tz->device, "temp measurement never finished\n");
+	if ((val & soc_data->temp_valid_mask) == 0)
 		return -EAGAIN;
-	}
 
 	n_meas = (val & soc_data->temp_value_mask)
 		>> soc_data->temp_value_shift;
diff --git a/drivers/thermal/kirkwood_thermal.c b/drivers/thermal/kirkwood_thermal.c
index 92b3ce426b9d..668747bd86ef 100644
--- a/drivers/thermal/kirkwood_thermal.c
+++ b/drivers/thermal/kirkwood_thermal.c
@@ -33,11 +33,8 @@ static int kirkwood_get_temp(struct thermal_zone_device *thermal,
 
 	/* Valid check */
 	if (!((reg >> KIRKWOOD_THERMAL_VALID_OFFSET) &
-	    KIRKWOOD_THERMAL_VALID_MASK)) {
-		dev_err(&thermal->device,
-			"Temperature sensor reading not valid\n");
+	    KIRKWOOD_THERMAL_VALID_MASK))
 		return -EIO;
-	}
 
 	/*
 	 * Calculate temperature. According to Marvell internal
diff --git a/drivers/thermal/max77620_thermal.c b/drivers/thermal/max77620_thermal.c
index bf1679765f1b..61c7622d9945 100644
--- a/drivers/thermal/max77620_thermal.c
+++ b/drivers/thermal/max77620_thermal.c
@@ -51,10 +51,8 @@ static int max77620_thermal_read_temp(struct thermal_zone_device *tz, int *temp)
 	int ret;
 
 	ret = regmap_read(mtherm->rmap, MAX77620_REG_STATLBT, &val);
-	if (ret < 0) {
-		dev_err(mtherm->dev, "Failed to read STATLBT: %d\n", ret);
+	if (ret < 0)
 		return ret;
-	}
 
 	if (val & MAX77620_IRQ_TJALRM2_MASK)
 		*temp = MAX77620_TJALARM2_TEMP;
diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 8a51eb26e798..71e533df563a 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -1233,9 +1233,6 @@ static int rockchip_thermal_get_temp(struct thermal_zone_device *tz, int *out_te
 
 	retval = tsadc->get_temp(&tsadc->table,
 				 sensor->id, thermal->regs, out_temp);
-	dev_dbg(&thermal->pdev->dev, "sensor %d - temp: %d, retval: %d\n",
-		sensor->id, *out_temp, retval);
-
 	return retval;
 }
 
diff --git a/drivers/thermal/st/st_thermal.c b/drivers/thermal/st/st_thermal.c
index 6ed393218eb8..2d3042098445 100644
--- a/drivers/thermal/st/st_thermal.c
+++ b/drivers/thermal/st/st_thermal.c
@@ -109,7 +109,6 @@ static int st_thermal_calibration(struct st_thermal_sensor *sensor)
 static int st_thermal_get_temp(struct thermal_zone_device *th, int *temperature)
 {
 	struct st_thermal_sensor *sensor = thermal_zone_device_priv(th);
-	struct device *dev = sensor->dev;
 	unsigned int temp;
 	unsigned int overflow;
 	int ret;
@@ -127,8 +126,6 @@ static int st_thermal_get_temp(struct thermal_zone_device *th, int *temperature)
 	temp += sensor->cdata->temp_adjust_val;
 	temp = mcelsius(temp);
 
-	dev_dbg(dev, "temperature: %d\n", temp);
-
 	*temperature = temp;
 
 	return 0;
diff --git a/drivers/thermal/thermal-generic-adc.c b/drivers/thermal/thermal-generic-adc.c
index 2c283e762d81..017b0ce52122 100644
--- a/drivers/thermal/thermal-generic-adc.c
+++ b/drivers/thermal/thermal-generic-adc.c
@@ -59,10 +59,9 @@ static int gadc_thermal_get_temp(struct thermal_zone_device *tz, int *temp)
 	int ret;
 
 	ret = iio_read_channel_processed(gti->channel, &val);
-	if (ret < 0) {
-		dev_err(gti->dev, "IIO channel read failed %d\n", ret);
+	if (ret < 0)
 		return ret;
-	}
+
 	*temp = gadc_thermal_adc_to_temp(gti, val);
 
 	return 0;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
