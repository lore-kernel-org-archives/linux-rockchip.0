Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66D0DC61DA4
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Feb 2023 14:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QdhS7pC9J48p+C9L9PzOPVjLM9RfZpFJi2A4FA9VXCw=; b=vriOufHQTgZX71
	3cCM1NtXqv5Xmk/nMb4ZqvBuFRySYvzyJ3XoVm7n06eTu9z9F/aSPD+6/MjHKBazyysMXSq56PmUw
	jKC//LPj1gQJFpCfmCrsF/VMOKh+fmuMIcC+1MTBgLyU/cqQj8w4ooyZQNRQxr+SdkO48gPXezf6t
	QtzW9JpySrZSGzENp4YvAacqre+B3LegyCFMcX1mKOgnjRbThFHqOfml8HCoKeIwW4SzBc3SXfnxa
	tP1/k7+vCVfum88+pdYbd047n46xLGIzeSXhLnvI2FaVQp86p8u3y2BvDbchkx3tRPnT3E/aQDBjD
	ZgHLqFtwfhsiZ9CsPS5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTkpU-001gFT-DY; Sun, 19 Feb 2023 14:38:16 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTkp5-001g6s-BR
	for linux-rockchip@lists.infradead.org; Sun, 19 Feb 2023 14:37:56 +0000
Received: by mail-wr1-x42d.google.com with SMTP id bx23so441272wrb.10
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Feb 2023 06:37:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZBM2HLbB7Qo2vrqksOEYa7EgLUWtFIg5RRT002O5Ssg=;
        b=TO7rXVsQB/BoHeThuen3HLeXQHw8uFprFnlev4VHb9WQJdr9MqzXViD/0rYqylC0Rw
         s4Ydh1MYUjdBbReo7dllBAVqGlJZs1MOUyqgYFUR82QQh2MqtzFJ2TrMBke6DUHh9N43
         //zRkHnXreU8VL/l61BRD6YxnihTJkWYBuKUbH15OL3y/osv3jhrCdtcfW7No3rMYa74
         UJp7T9khNs0QYhw5CTYiMG+FC/QUeHsyFYPsEOZUrF2icAL9EBcs+4U5+zHKI+yH032S
         ZsP0ZYFeAc6VjzNRrXXx9Wecy8cx7RCTtycaDNLD8snjHeNR4jbYY1Pcvg6Ude5C/Wys
         kY3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZBM2HLbB7Qo2vrqksOEYa7EgLUWtFIg5RRT002O5Ssg=;
        b=ov2oDdZOm4pPtMWmdufhOHQTbPfN9oWN03+pp5S/i0yqkCV6/9hhDwWnR0AydXhv3T
         ooRkiR2m32/V8AigasVL0MdVFAA06csDuI19KYyQqiANa66rqPqZWnBzyOk4Iqq2XIeZ
         cnKg+KauZewKeC9uozlFAM4GM8GP+DsZ0rbI1ovpiZCAm6pH18CAPbQniPcF3qJtFrsn
         9p+yEVmw+i/Ci5FPRINCFo6FhUlwH+A/zDQrDA589BqzpVSAWZb3pIA1Y/2+vsNJ9r7p
         p/CN9tiwoOxjdC+1HhK4oW0d6yNF1i9lDoDdsPSaW29ys40EPBbtq3Flt+F/JeRV+qxs
         KEAA==
X-Gm-Message-State: AO0yUKXKF0oagTfxo24sO1rUO1Lo0JAywXvmE/wkgK2zIu7wFFuRCeS9
	D5MIyH78UySy7X/ggZHV+VgG1Q==
X-Google-Smtp-Source: AK7set96jPynxhIQdIbJZonMo9LO2io3qFPWwv72HTl60NTbFsEOHnGT0e8IIoi5ybFAdP9jLCZpaw==
X-Received: by 2002:a05:6000:98c:b0:2c5:5ee9:6b27 with SMTP id by12-20020a056000098c00b002c55ee96b27mr136802wrb.13.1676817470123;
        Sun, 19 Feb 2023 06:37:50 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:6f43:b92:7670:463])
        by smtp.gmail.com with ESMTPSA id a18-20020adfe5d2000000b002be505ab59asm86176wrn.97.2023.02.19.06.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Feb 2023 06:37:49 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: rafael@kernel.org,
	daniel.lezcano@linaro.org
Cc: linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
	Heiko Stuebner <heiko@sntech.de>,
	Stefan Wahren <stefan.wahren@i2se.com>,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	ye xingchen <ye.xingchen@zte.com.cn>,
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE),
	linux-renesas-soc@vger.kernel.org (open list:RENESAS R-CAR THERMAL DRIVERS),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v1 04/17] thermal/hwmon: Do not set no_hwmon before calling thermal_add_hwmon_sysfs()
Date: Sun, 19 Feb 2023 15:36:44 +0100
Message-Id: <20230219143657.241542-5-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230219143657.241542-1-daniel.lezcano@linaro.org>
References: <20230219143657.241542-1-daniel.lezcano@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230219_063751_722829_89A41A0A 
X-CRM114-Status: GOOD (  11.95  )
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

The thermal->tzp->no_hwmon parameter is only used when calling
thermal_zone_device_register().

Setting it to 'false' before calling thermal_add_hwmon_sysfs() has no
effect.

Remove the call and again prevent the drivers to access the thermal
internals.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 drivers/thermal/broadcom/bcm2711_thermal.c | 1 -
 drivers/thermal/broadcom/bcm2835_thermal.c | 1 -
 drivers/thermal/rcar_gen3_thermal.c        | 1 -
 drivers/thermal/rcar_thermal.c             | 5 -----
 drivers/thermal/rockchip_thermal.c         | 1 -
 drivers/thermal/rzg2l_thermal.c            | 1 -
 6 files changed, 10 deletions(-)

diff --git a/drivers/thermal/broadcom/bcm2711_thermal.c b/drivers/thermal/broadcom/bcm2711_thermal.c
index 18b1a4d9ecc7..0a499435431c 100644
--- a/drivers/thermal/broadcom/bcm2711_thermal.c
+++ b/drivers/thermal/broadcom/bcm2711_thermal.c
@@ -98,7 +98,6 @@ static int bcm2711_thermal_probe(struct platform_device *pdev)
 
 	priv->thermal = thermal;
 
-	thermal->tzp->no_hwmon = false;
 	return thermal_add_hwmon_sysfs(thermal);
 }
 
diff --git a/drivers/thermal/broadcom/bcm2835_thermal.c b/drivers/thermal/broadcom/bcm2835_thermal.c
index de2f573863da..8ed7a80122a0 100644
--- a/drivers/thermal/broadcom/bcm2835_thermal.c
+++ b/drivers/thermal/broadcom/bcm2835_thermal.c
@@ -267,7 +267,6 @@ static int bcm2835_thermal_probe(struct platform_device *pdev)
 	 * Thermal_zone doesn't enable hwmon as default,
 	 * enable it here
 	 */
-	tz->tzp->no_hwmon = false;
 	err = thermal_add_hwmon_sysfs(tz);
 	if (err)
 		goto err_tz;
diff --git a/drivers/thermal/rcar_gen3_thermal.c b/drivers/thermal/rcar_gen3_thermal.c
index 8ad713cb4bf7..4ea9d4bd8e6f 100644
--- a/drivers/thermal/rcar_gen3_thermal.c
+++ b/drivers/thermal/rcar_gen3_thermal.c
@@ -527,7 +527,6 @@ static int rcar_gen3_thermal_probe(struct platform_device *pdev)
 		}
 		tsc->zone = zone;
 
-		tsc->zone->tzp->no_hwmon = false;
 		ret = thermal_add_hwmon_sysfs(tsc->zone);
 		if (ret)
 			goto error_unregister;
diff --git a/drivers/thermal/rcar_thermal.c b/drivers/thermal/rcar_thermal.c
index 538ed6731589..919f0e32d3c5 100644
--- a/drivers/thermal/rcar_thermal.c
+++ b/drivers/thermal/rcar_thermal.c
@@ -509,11 +509,6 @@ static int rcar_thermal_probe(struct platform_device *pdev)
 		}
 
 		if (chip->use_of_thermal) {
-			/*
-			 * thermal_zone doesn't enable hwmon as default,
-			 * but, enable it here to keep compatible
-			 */
-			priv->zone->tzp->no_hwmon = false;
 			ret = thermal_add_hwmon_sysfs(priv->zone);
 			if (ret)
 				goto error_unregister;
diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index bd593ec712ee..3211b70c85b9 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -1451,7 +1451,6 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 
 	for (i = 0; i < thermal->chip->chn_num; i++) {
 		rockchip_thermal_toggle_sensor(&thermal->sensors[i], true);
-		thermal->sensors[i].tzd->tzp->no_hwmon = false;
 		error = thermal_add_hwmon_sysfs(thermal->sensors[i].tzd);
 		if (error)
 			dev_warn(&pdev->dev,
diff --git a/drivers/thermal/rzg2l_thermal.c b/drivers/thermal/rzg2l_thermal.c
index d3ba2a74e42d..a2f21c941cfe 100644
--- a/drivers/thermal/rzg2l_thermal.c
+++ b/drivers/thermal/rzg2l_thermal.c
@@ -216,7 +216,6 @@ static int rzg2l_thermal_probe(struct platform_device *pdev)
 	}
 
 	priv->zone = zone;
-	priv->zone->tzp->no_hwmon = false;
 	ret = thermal_add_hwmon_sysfs(priv->zone);
 	if (ret)
 		goto err;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
