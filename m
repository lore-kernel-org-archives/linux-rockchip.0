Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A546CC25B08
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Aug 2022 22:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNDdj38rXOVDG2lf6CQl3kQwcLZJfifazHPeq+hajoA=; b=4gKNUqYB6FlvFU
	vxqKbYELkcymsdgT1THvk+H/RlbQ8bu0AnccY2jpOTxmW9+Qs9pndmLlrKEwUtN7Kq/oJWfi99cue
	4nyO3GDgzv7aHGHuGvzUi+uLflXfME8eIHQ+IMFUBK4CY0aUBisONKZEqM7EuCIm7yxbj4qPXhcrl
	3GC/pQcEsHCpY784Lnwkq/cXSyi2hNC+/xyJf1W3iTjVzyY9OY9qlIIhhiEIywqroVOXqR/li3QGJ
	BtnmV6Ar8t6qPcaVdOdz+t5hQjfhzgbVqIzxr2YW50vj5xUj0mLscg/AoEC3xnhYYFztdDtwsiVS4
	GYXkB/12vKNo61xYS1NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJjhN-009lIt-Te; Thu, 04 Aug 2022 22:52:13 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJjhA-009lBr-KD
	for linux-rockchip@lists.infradead.org; Thu, 04 Aug 2022 22:52:02 +0000
Received: by mail-wm1-x32f.google.com with SMTP id c187-20020a1c35c4000000b003a30d88fe8eso3171850wma.2
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Aug 2022 15:51:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linexp-org.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=bjRNYXxMr1okCGj2grS3n0YP83rNlXVFleMjal7EwMQ=;
        b=vbw135BzoF5BZ3lqxmC26ZTkmuAengG0jZ8dEp7H8cB9kuSJpS2x+dzQ2BkUsXXb3u
         imvV3FlLlFGpENNBGbg/GP3hIklTyCirTOP6FsbFzXEUsdU2wu3cxP5djpVBE0xBLD9h
         /qnekkn6WjyApUeOaREApf3bwGnrDgkJMpWM7Jsx7+Be3W9DFgxv7Eg2zz83iZU3gnNj
         y49S+b4oloRPYLpTiIZNgfAjSiyULwxb7WkQLQvb9i/DI1tY0YiJpJyL7OQ5sbfOAp3S
         Q+UYIgF/ZkN7RuaEBmjsUQj9xAtbiEtHMswYadwB65Xy7xRTgEViYevk77E4PiYyl+x7
         3n4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=bjRNYXxMr1okCGj2grS3n0YP83rNlXVFleMjal7EwMQ=;
        b=5ZdifPK4NkF064Fdinhl0OQU4MU/f3pmmaZtXWIIgmvdlbrM3FjZuEMzHXANrGz4kM
         KHdjh8FdWT08/EofnFvYEGGto6VSCaY/1tEc1ol9OgNHBX0S/X7wx9Ca4EbB/V1dkOZa
         luz23kG1hXcsnlFr+imoKNPEkrJNJEx5jRp6AyO6qegwNT0VFXXA98FbOK4b7Vj36EJ1
         /LtwtaMhv0jWfBUB1GTeRQjtaOoKp35ZyYyUiJGxfEOpKwkLCtNA6gCA2fRorxa+ayHw
         lS+YoneWtbq2j2iub4f25iqVf/SJIUNRN3S7VNQRGsr8Z+KSguRlhHPc6pnMEquNcR4p
         wihw==
X-Gm-Message-State: ACgBeo37g6nLEKYKrC2nowtOrQgCTYwKB+45B9dUMvT/OxilyEH1IfM5
	8Fh2gKZyJusFzDpFFBpQRcpLYw==
X-Google-Smtp-Source: AA6agR6q28Mx32cRNjSkFW4TaARIl2DEgVd8hO7IIdM/pkDfQQWbHZLtvoX6xXuojEWqNfePhxyO5w==
X-Received: by 2002:a05:600c:2244:b0:3a5:1207:a1aa with SMTP id a4-20020a05600c224400b003a51207a1aamr2777096wmm.176.1659653517197;
        Thu, 04 Aug 2022 15:51:57 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:31aa:ed2c:3f7:19d])
        by smtp.gmail.com with ESMTPSA id a16-20020a056000051000b0021f87e8945asm2495906wrf.12.2022.08.04.15.51.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Aug 2022 15:51:56 -0700 (PDT)
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
Subject: [PATCH v5 03/33] thermal/drivers/rockchip: Switch to new of API
Date: Fri,  5 Aug 2022 00:43:19 +0200
Message-Id: <20220804224349.1926752-4-daniel.lezcano@linexp.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220804224349.1926752-1-daniel.lezcano@linexp.org>
References: <20220804224349.1926752-1-daniel.lezcano@linexp.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220804_155200_762104_97470364 
X-CRM114-Status: GOOD (  13.17  )
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
