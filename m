Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6952C19F2A
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 17:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azCk4ho01eMUn6MCIMcBffcgfLgBCpCj5Qi9a7w1t3A=; b=qjSzRO5I9GWk3K
	4/ksy6jrp5ErFTueK4xKaYtOWo6B1fJD/h16mWg7a4dHCl7K/RfqXhWGyemoIIowbRyBgVMapPd5F
	ohaAK/AojtKPyfzF9mE8gEah7BWiGrZ9e6NPeXcjWW+ezEI936dWa0JSUgX2eZGfsez1IBKCKpx5Q
	QJ40de1ikEass5prt6B+43sBeF+WTxnXGkFIaDvvG5/OGkVolfCspRtEYwnFiBuBv97K7QU5dnc+f
	YkD2Cbk4c5C5TJYuGeQ9UpvFpBNlxGk8t1NtnQLCFrKaXwIhIAHqEpUN4eg08h4FBMv+MnKycN97s
	WHVMMs+F9r+GXUlFe2QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID46-00Eesu-6i; Sun, 31 Jul 2022 17:49:22 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID2d-00Ee4E-GH
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:47:53 +0000
Received: by mail-pg1-x52b.google.com with SMTP id f65so7801446pgc.12
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Jul 2022 10:47:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=q7vWi4mlIn/BmbczTttlIzlGAwuHH2auenHoK8SAs7Y=;
        b=GR3zSsncgMnPJ2406LkUhYS6kYW0bSwIKoVr9YHAan2vmtz7tfijIS7p30s9vmkj6Q
         4KEswdKzsVNiSHJZHXjWKffS4rdER06qtVBwfOfQn20+5OFC6qgSwWMON8uoSrOFpINK
         CK7IZy5XLcuixWTGliMGOauXcT5DIGK/09fffpipkhR/8QeSo1nl1ElLXPMDbsCIWL4l
         2yvHJxeQ+aWf45eDWSOm53JW/DMHMyYKbzXEP8YmzVM62gCKzcwfTHUcUhUpzA8dUnoe
         i/kkb9tP8ZsjPTLkGxoBMuOvLyeNUhHxuF/CJ9vl0Ir+o83MijMrca5YkIsCqA8Q1Ffa
         ufyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=q7vWi4mlIn/BmbczTttlIzlGAwuHH2auenHoK8SAs7Y=;
        b=1FAgCpCqz56NkyQis0U48MQHnyJ+m2vMXU6U/6Otzd1z6KiXBh8j5hYeSFhpxP7rgb
         o+B4oJK946nO2r8JZWBn1zDLAm3XbK7SGv0gzKqRfjk3kwR+WL8rFq8Siiddg2EC290m
         wi/X9U/vRQ8yXwctWrDCjnnUQV13n7EwgAlddqmiRTSrJGayn34sOyh7K+tQA/ore2aQ
         gq8nxXoQ2rolc3jcZsOD6/ojb0pfKXkKfWUwMpdtYHpkqNPZBbbfaZE8xbKK5UHFyr7Z
         TpTEt8BFP+DCy3l9pz0AznO+kdAiviGjR6nZXxhWCvpOos2kQCP772MA54IR6HCYYjXz
         0smA==
X-Gm-Message-State: AJIora/JGf2ZFCgeez7BJbhvHYMqnt/BU4rHUTHN3LxAWXyBwXH79gSI
	SziJ1AELktIKzNkogn7x2IKLcA==
X-Google-Smtp-Source: AGRyM1s3DSS2R4x3T2yOQQOsfwugfrpo6GYuWtahEmBq1vorIM+iU+QlWy6KGH3OuKWnNTQxnHT7PA==
X-Received: by 2002:a63:fc41:0:b0:41b:4714:ac78 with SMTP id r1-20020a63fc41000000b0041b4714ac78mr10630911pgk.319.1659289669889;
        Sun, 31 Jul 2022 10:47:49 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:47:49 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v2 03/20] soc: rockchip: power-domain: Add RV1126 power domains
Date: Sun, 31 Jul 2022 23:17:09 +0530
Message-Id: <20220731174726.72631-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_104751_575198_80053502 
X-CRM114-Status: GOOD (  12.35  )
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

Add power domains support for RV1126 SoC.

Cypto, VO and NPU domains will add it future patches.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 drivers/soc/rockchip/pm_domains.c | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 89795abac951..7b41cd19f013 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -19,6 +19,7 @@
 #include <linux/mfd/syscon.h>
 #include <soc/rockchip/pm_domains.h>
 #include <dt-bindings/power/px30-power.h>
+#include <dt-bindings/power/rv1126-power.h>
 #include <dt-bindings/power/rk3036-power.h>
 #include <dt-bindings/power/rk3066-power.h>
 #include <dt-bindings/power/rk3128-power.h>
@@ -126,6 +127,9 @@ struct rockchip_pmu {
 #define DOMAIN_PX30(name, pwr, status, req, wakeup)		\
 	DOMAIN_M(name, pwr, status, req, (req) << 16, req, wakeup)
 
+#define DOMAIN_RV1126(name, pwr, req, idle, wakeup)		\
+	DOMAIN_M(name, pwr, pwr, req, idle, idle, wakeup)
+
 #define DOMAIN_RK3288(name, pwr, status, req, wakeup)		\
 	DOMAIN(name, pwr, status, req, req, (req) << 16, wakeup)
 
@@ -855,6 +859,16 @@ static const struct rockchip_domain_info px30_pm_domains[] = {
 	[PX30_PD_GPU]		= DOMAIN_PX30("gpu",      BIT(15), BIT(15), BIT(2),  false),
 };
 
+static const struct rockchip_domain_info rv1126_pm_domains[] = {
+	[RV1126_PD_VEPU]	= DOMAIN_RV1126("vepu", BIT(2),  BIT(9),  BIT(9), false),
+	[RV1126_PD_VI]		= DOMAIN_RV1126("vi", BIT(4),  BIT(6),  BIT(6),  false),
+	[RV1126_PD_ISPP]	= DOMAIN_RV1126("ispp", BIT(1), BIT(8), BIT(8),  false),
+	[RV1126_PD_VDPU]	= DOMAIN_RV1126("vdpu", BIT(3), BIT(10), BIT(10), false),
+	[RV1126_PD_NVM]		= DOMAIN_RV1126("nvm", BIT(7), BIT(11), BIT(11),  false),
+	[RV1126_PD_SDIO]	= DOMAIN_RV1126("sdio", BIT(8), BIT(13), BIT(13),  false),
+	[RV1126_PD_USB]		= DOMAIN_RV1126("usb", BIT(9), BIT(15), BIT(15),  false),
+};
+
 static const struct rockchip_domain_info rk3036_pm_domains[] = {
 	[RK3036_PD_MSCH]	= DOMAIN_RK3036("msch", BIT(14), BIT(23), BIT(30), true),
 	[RK3036_PD_CORE]	= DOMAIN_RK3036("core", BIT(13), BIT(17), BIT(24), false),
@@ -1128,6 +1142,17 @@ static const struct rockchip_pmu_info rk3568_pmu = {
 	.domain_info = rk3568_pm_domains,
 };
 
+static const struct rockchip_pmu_info rv1126_pmu = {
+	.pwr_offset = 0x110,
+	.status_offset = 0x108,
+	.req_offset = 0xc0,
+	.idle_offset = 0xd8,
+	.ack_offset = 0xd0,
+
+	.num_domains = ARRAY_SIZE(rv1126_pm_domains),
+	.domain_info = rv1126_pm_domains,
+};
+
 static const struct of_device_id rockchip_pm_domain_dt_match[] = {
 	{
 		.compatible = "rockchip,px30-power-controller",
@@ -1177,6 +1202,10 @@ static const struct of_device_id rockchip_pm_domain_dt_match[] = {
 		.compatible = "rockchip,rk3568-power-controller",
 		.data = (void *)&rk3568_pmu,
 	},
+	{
+		.compatible = "rockchip,rv1126-power-controller",
+		.data = (void *)&rv1126_pmu,
+	},
 	{ /* sentinel */ },
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
