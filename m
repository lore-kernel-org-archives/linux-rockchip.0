Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E63BC04A68
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Jul 2022 21:03:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNDdj38rXOVDG2lf6CQl3kQwcLZJfifazHPeq+hajoA=; b=WjXiSZW6lJkf0Y
	/+CqpZPNsLLDtaPEOMsHtfIcfG04BylO1F0CW632iyBv5AYXjgRi7ES+WqW0PBW2H9dj7puhP/owv
	rtAKk+6kdgvTm2TIxwD/FrAIQ2OLJ8MT89gmWB6o6DyYQBNf1fP0HiT/LaZFZF640G9n02d8NMI0e
	q9Gd5FJHXD6BbWWkGfOYbGZY3nhczm4uz1g7bcrGDneP0nltqHHQ5jAoMgsBj1ZxYBnd/WAbYy1p7
	Pv/WT25gyk9I0GbASDZ8hrRO25eUS6Fu+y03Vq3CmOsqH5/0IfqhREoJGjL8B02k6/C3vzD1+fWQS
	nPOPcSd180PxRPPQ5TFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGoBY-000H3W-QU; Wed, 27 Jul 2022 21:03:16 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oGoBV-000Gzh-8T
	for linux-rockchip@lists.infradead.org; Wed, 27 Jul 2022 21:03:14 +0000
Received: by mail-wr1-x42c.google.com with SMTP id l4so4451358wrm.13
        for <linux-rockchip@lists.infradead.org>; Wed, 27 Jul 2022 14:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linexp-org.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bjRNYXxMr1okCGj2grS3n0YP83rNlXVFleMjal7EwMQ=;
        b=bz/lScjS2r5eiJBmhXqz7XXESXnUSGQTobnQ+AXj6SVXsjgKUvdIxRIRgLWSqVDBRH
         4H7OXypueV2yxW2VXw/wAPlApBRResMD2SlmrqgH9JdE/sb9nrHecPbeFpNwvRymaEXE
         VmGBKnQEhoqMfgPzELArqsWBadqMsXtnZUZ6/pMaQgYew/E9P6ptEiq9byMJ7+oJFNHU
         df4NqORwHPgTsjRv8pZIaehxAqxoMH/J29Q4cuZSfTKHN3NSzajJeh8QqjGX17tgX4Yz
         YN6GELTlN5uB6lItbmYrI+L/hnuulLyGSX0/o7t5KE4iHlGC0U8jzsSdBsz1lfNNcH6/
         URMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bjRNYXxMr1okCGj2grS3n0YP83rNlXVFleMjal7EwMQ=;
        b=y/MJrbPbBVMJzLOfznI2/8OYNlpNfTbX5QY2TiJ9wkSXKQchQuU5y4Wat47yA3gbMK
         /BwzNZZo6MtPaPy7oZzy2sXPIlX6zzxm6tWBDPje8JqLQi3JNlxJ7lm8GpvMjWQlnbPW
         ErxPLJRmfVeRRM86b1qW8duSyGQp5IVM7+nXTbgAbQsjJKUO91zD7dTRxcFB/PdYFe+u
         xsVjJrIRuQvtTgOjWCyfAJnZJqzS3DgAhg2hli+yG8wwqHrcsDPaAK4nDrKzKkTYTMJ7
         LLuOHRzNwp543Og4fbetnITdpA7GGyeVmc03f5VpHFMlpOmaNQKVjyPeA48CrZrk9++I
         NuXQ==
X-Gm-Message-State: AJIora+sfnEg+55oZFIbUrqKirYJrG0AI384DSbXthSOneXfaDRL1W3L
	/5j8Fo/ReKaF90DzARcmGRqxHg==
X-Google-Smtp-Source: AGRyM1vZ2lRLRCtHktVcM48vdHmMcbzE87n3HFKflTsV0i8Ro7ZyuQKlnf4EAcxxZpYg/vhH41BWCg==
X-Received: by 2002:a5d:5986:0:b0:21e:811c:f688 with SMTP id n6-20020a5d5986000000b0021e811cf688mr12538003wri.8.1658955790382;
        Wed, 27 Jul 2022 14:03:10 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:65a8:ebd8:4098:d9d0])
        by smtp.gmail.com with ESMTPSA id h6-20020a05600c350600b003a38606385esm37908wmq.3.2022.07.27.14.03.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jul 2022 14:03:09 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linexp.org>
To: daniel.lezcano@linaro.org,
	rafael@kernel.org
Cc: rui.zhang@intel.com,
	linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	khilman@baylibre.com,
	abailon@baylibre.com,
	lukasz.luba@arm.com,
	broonie@kernel.org,
	damien.lemoal@opensource.wdc.com,
	heiko@sntech.de,
	hayashi.kunihiko@socionext.com,
	mhiramat@kernel.org,
	talel@amazon.com,
	thierry.reding@gmail.com,
	digetx@gmail.com,
	jonathanh@nvidia.com,
	anarsoul@gmail.com,
	tiny.windzz@gmail.com,
	baolin.wang7@gmail.com,
	f.fainelli@gmail.com,
	bjorn.andersson@linaro.org,
	mcoquelin.stm32@gmail.com,
	glaroque@baylibre.com,
	miquel.raynal@bootlin.com,
	shawnguo@kernel.org,
	niklas.soderlund@ragnatech.se,
	matthias.bgg@gmail.com,
	j-keerthy@ti.com,
	Amit Kucheria <amitk@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v3 03/32] thermal/drivers/rockchip: Switch to new of API
Date: Wed, 27 Jul 2022 23:02:24 +0200
Message-Id: <20220727210253.3794069-4-daniel.lezcano@linexp.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220727210253.3794069-1-daniel.lezcano@linexp.org>
References: <20220727210253.3794069-1-daniel.lezcano@linexp.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220727_140313_330142_F96188E5 
X-CRM114-Status: GOOD (  13.47  )
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

The thermal OF code has a new API allowing to migrate the OF
initialization to a simpler approach. The ops are no longer device
tree specific and are the generic ones provided by the core code.

Convert the ops to the thermal_zone_device_ops format and use the new
API to register the thermal zone with these generic ops.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linexp.org>
---
 drivers/thermal/rockchip_thermal.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index dc3a9c276a09..819e059cde71 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -1211,9 +1211,9 @@ static irqreturn_t rockchip_thermal_alarm_irq_thread(int irq, void *dev)
 	return IRQ_HANDLED;
 }
 
-static int rockchip_thermal_set_trips(void *_sensor, int low, int high)
+static int rockchip_thermal_set_trips(struct thermal_zone_device *tz, int low, int high)
 {
-	struct rockchip_thermal_sensor *sensor = _sensor;
+	struct rockchip_thermal_sensor *sensor = tz->devdata;
 	struct rockchip_thermal_data *thermal = sensor->thermal;
 	const struct rockchip_tsadc_chip *tsadc = thermal->chip;
 
@@ -1224,9 +1224,9 @@ static int rockchip_thermal_set_trips(void *_sensor, int low, int high)
 				     sensor->id, thermal->regs, high);
 }
 
-static int rockchip_thermal_get_temp(void *_sensor, int *out_temp)
+static int rockchip_thermal_get_temp(struct thermal_zone_device *tz, int *out_temp)
 {
-	struct rockchip_thermal_sensor *sensor = _sensor;
+	struct rockchip_thermal_sensor *sensor = tz->devdata;
 	struct rockchip_thermal_data *thermal = sensor->thermal;
 	const struct rockchip_tsadc_chip *tsadc = sensor->thermal->chip;
 	int retval;
@@ -1239,7 +1239,7 @@ static int rockchip_thermal_get_temp(void *_sensor, int *out_temp)
 	return retval;
 }
 
-static const struct thermal_zone_of_device_ops rockchip_of_thermal_ops = {
+static const struct thermal_zone_device_ops rockchip_of_thermal_ops = {
 	.get_temp = rockchip_thermal_get_temp,
 	.set_trips = rockchip_thermal_set_trips,
 };
@@ -1326,8 +1326,8 @@ rockchip_thermal_register_sensor(struct platform_device *pdev,
 
 	sensor->thermal = thermal;
 	sensor->id = id;
-	sensor->tzd = devm_thermal_zone_of_sensor_register(&pdev->dev, id,
-					sensor, &rockchip_of_thermal_ops);
+	sensor->tzd = devm_thermal_of_zone_register(&pdev->dev, id, sensor,
+						    &rockchip_of_thermal_ops);
 	if (IS_ERR(sensor->tzd)) {
 		error = PTR_ERR(sensor->tzd);
 		dev_err(&pdev->dev, "failed to register sensor %d: %d\n",
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
