Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C1C8C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 20:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GfEDsW64pnQCYBFcN1YqHvJBRe/j6ercjz19NUbHsJY=; b=zEII4L3NA1QEgx
	d15hNWGmlP0Rb+zV+2zLBxlHbDQK/YhcaHMjN7k9PsFw4N0dVyjTIgueq0TZTsc5CPqPUhLWF90MF
	WkktX5slcIWzlTadDl2gUPfFvnCwUdYBCn+tPfpnFQgGRK2tQ10x48rtrpFVm+7Mi3wIQ8/S50eDR
	ksWSzlNHz84wgvSeHw45dlu2nMqVtbyhzqZ5eg4WBWaKeZWJmUPtCBHSXSUgR0ZwJHh6V8WVcgxM1
	XIsZe1n3mz9C+CvHq1DX+Bn48LiBlUkG1NFmvIaPzw6Uh3zcsFmwWrHlTN6lhG9N8z7UjwuoXu5Ad
	DS+fUbkwg/HrJ8MxAZ2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLzE-0078S2-SA; Sat, 23 Jul 2022 20:44:32 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLyo-0078EA-Mi
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:44:08 +0000
Received: by mail-pj1-x1033.google.com with SMTP id l14-20020a17090a72ce00b001f20ed3c55dso6912879pjk.5
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=64pgKx4gTKqbvk0tVFVnPPkGf1f8XpMAffnkrXNtI54=;
        b=76D90K8AYk10KKQ+CdlR3fqSeQODGSZuQu0JbTpkpgrwxOWu+6jDeDjYDmjPCwlX7+
         P+JDEJ0PclIx1dd032eniUXnlwnQc514Y2eTFJebPZmt6vvgBkG43q/D1Hv3xU0RfPY2
         Uk3dvddAHWO+YzOWXn6BsTw7yr5J8Q2utJp2TUjIgbnK23epW+Jg3cJZg1jRCvyi6ER6
         c6SObazWgveIa+AH95TLwtuMqdaIzvLxNRl5LhqDxUg81xfp7vz/LBCNJ8zCQ+q8wfe0
         7W+CNQudFsA+6nByIg6XqctPaIhSz4bPihxVBrNUQCvz9CjpnyWl07wCkbKFo8WyewZt
         mkjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=64pgKx4gTKqbvk0tVFVnPPkGf1f8XpMAffnkrXNtI54=;
        b=3SPuBL0Ee0ef4RJQkjoU84df6C/VWP97ZuHqewjSdcN659MLV1wQmSd24oEiyn0AGK
         zzaBY1Jxxyh1O+ID+TXRp8ePZ81jX6jsupbeJ3F3ocoyGz8NiEoIU9EWiq3yxA8g4WRR
         ycZ4RY7XrKPKneJa4UWsjd+vJDGl3WJuuT66fIL9eYxmZtUjIr8karoqI3PYcCOOfrit
         1acI7KX0sBLq94YHV6pgYpQqJpO/hPYCikCeZH8OJYyFOquBj0P5TsVrZG3E19IqcRhp
         OFfJlSsTmpOA6MVHnpGYMgj7dw6SlnnmxEAl2Ioh81RJvr82F19SOdReJcCdlo89u6vE
         qKdA==
X-Gm-Message-State: AJIora8WaWRWdiQ4bPESjO5JZASQ08QwukI5YiP34IegJyyNDNe/BexN
	QKbU+aIh7/qBv8FIL38voDGBUQ==
X-Google-Smtp-Source: AGRyM1u5lxOiYbG6s/cvQC70UHHrVI03aTwlGxwo1J4SZEWvPUeOXRvxB/0xV8cFdchN8INmLvn+aA==
X-Received: by 2002:a17:902:ab16:b0:16d:aa5:9fd with SMTP id ik22-20020a170902ab1600b0016d0aa509fdmr5463531plb.164.1658609046149;
        Sat, 23 Jul 2022 13:44:06 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.44.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:44:05 -0700 (PDT)
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
Subject: [PATCH 03/22] soc: rockchip: power-domain: Add RV1126 power domains
Date: Sun, 24 Jul 2022 02:13:16 +0530
Message-Id: <20220723204335.750095-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134406_765463_D45724F7 
X-CRM114-Status: GOOD (  11.74  )
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
