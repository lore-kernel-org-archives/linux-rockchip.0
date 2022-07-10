Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A04F6C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jul 2022 21:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UO6ILEPEXAcBo+1yr26RV8hmSaZ4LL0UEcHzhnmi0Z8=; b=A1M+QJv4qHcfKO
	LnPiZvGnXwikL429G5YWMhNrzpz+6j1lLH+FxbZ0wDcm/1u9hscvJ95HT+6gRzcObeO7+nXWiYSGs
	KG9T5Za1zlLBpvYBmxuuLeYwbDiwKwKWR2slkRF4FGNxEhWTOmaewTvt34004xQp49TvfKnmdHFtG
	0M7isZf2MuhOGbQM1clXjAeCtRA3oZadq0tfJh4yHmW2E+qaabM8P/2gfpdS/6EL6Phqh10i9IdWy
	uLVc0plhU3Ka/dXqJfMPajEf0IrvBWyg+e0R9wX9uyO/jwIfsU/cab9VTZuPOXgI4P8BmCK9CCaUF
	m+wwqSH2da+WAT3xMBxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAeQ8-00Do8J-8X; Sun, 10 Jul 2022 21:24:52 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAePx-00Do5v-H5
	for linux-rockchip@lists.infradead.org; Sun, 10 Jul 2022 21:24:43 +0000
Received: by mail-wm1-x32c.google.com with SMTP id ay25so2063547wmb.1
        for <linux-rockchip@lists.infradead.org>; Sun, 10 Jul 2022 14:24:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linexp-org.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HjRFmpGybbr7CcVNDUXcigDJ5VrNfuY+c1EB/6AHNWI=;
        b=OxjhRHGwv3JxchWDTPUu1T+zywciRVphtTvXEmU6mUP2Q9Of5MXMuHJY5jKgJ6vOj5
         0FkeqDfjT/IT/xDaqYBzID/YeazVI30mFF4P5pEUJxCKFt1lqN5GhLAyfDCgXZZJaV2K
         dDfhBRDUjsb+PsEVfJszUYZM3197zydiypebSIPcqBt4cUhP+JV+xuPrRncSvDMKWF2/
         p/dTWys6Fe4NJQKArT17uycj3ES1nZJi8EO6o2/Jg5QJMl33K1QqSOkETVJK6m6IT0GL
         PtBaI7T9ekSbYG++sokQO3C4N5hDmtfflXY+DWamHH+PQP+iaua08bc9WYB0yvJY8Tec
         OFKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HjRFmpGybbr7CcVNDUXcigDJ5VrNfuY+c1EB/6AHNWI=;
        b=NChT9n7iP8DOoP59mi8paDmAKHhsxuaUsVebVxSOqdbei/P/LZ5G2bMExdk3Fg0Fp9
         EGgzhB3k1KGXWD13KYy+xYFjsXQlnKdcPxSDxg0CPcKFzV/JskNWGHBFDy8W7hrNPKcI
         nXh1gBgP+0+rJ3Hve9Oo3kL4/i1kulnG7+U1ohWOoIwu5hNc3xn4r6s4kgI0FLaz4YIz
         lADJWXnSnocty1K151sM9LS2+5fxNhhT0bgRcd03sSNk+nX80rsB433/CF9Qht3yTjdF
         ZVvgP774pncEQfndexUSvOUn7ks5698CxXK8N+Ae7RG1vNhuzesBsjaIUdONREDfQ0AV
         Aq0A==
X-Gm-Message-State: AJIora8YALcaXOO/8xSb1uAouLMlHjTRNIlqUaepdejUcKpOF3f5JNGN
	TOVwbdBWFlXTo7HiM3Po7Tmc4w==
X-Google-Smtp-Source: AGRyM1usBJbr5Lkiq7/hO35XDewZS0GFLE3KDQw4iUzv5twxxD1w/8r2ebUW/ye7FMkxIGG534Tm/Q==
X-Received: by 2002:a05:600c:1c93:b0:3a0:579e:9f44 with SMTP id k19-20020a05600c1c9300b003a0579e9f44mr12373763wms.82.1657488278918;
        Sun, 10 Jul 2022 14:24:38 -0700 (PDT)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:c7c0:6823:f3ce:2447])
        by smtp.gmail.com with ESMTPSA id m19-20020a05600c3b1300b003a2dd0d21f0sm7142759wms.13.2022.07.10.14.24.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jul 2022 14:24:38 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linexp.org>
To: daniel.lezcano@linaro.org,
	rafael@kernel.org
Cc: rui.zhang@intel.com,
	khilman@baylibre.com,
	abailon@baylibre.com,
	amitk@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH v1 03/33] thermal/drivers/rockchip: Switch to new of API
Date: Sun, 10 Jul 2022 23:23:53 +0200
Message-Id: <20220710212423.681301-4-daniel.lezcano@linexp.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220710212423.681301-1-daniel.lezcano@linexp.org>
References: <20220710212423.681301-1-daniel.lezcano@linexp.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220710_142441_797966_C03F5462 
X-CRM114-Status: GOOD (  12.25  )
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
initialization to a simpler approach.

Use this new API.

Signed-off-by: Daniel Lezcano <daniel.lezcano@linexp.org>
---
 drivers/thermal/rockchip_thermal.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index dc3a9c276a09..ea3abfb8e6c8 100644
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
+static struct thermal_zone_device_ops rockchip_of_thermal_ops = {
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
