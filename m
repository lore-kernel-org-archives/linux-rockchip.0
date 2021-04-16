Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97675C433ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:44:27 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0CC616115B
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:44:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0CC616115B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mx/4LHco03/tzFts0HVXPoJZpEON3gMKE0iI/jmm5BI=; b=D4iD18BaZ3KrrphrAbxy8NZktz
	R7uB+Kw64A0upPpcdwbceiabB/ttAfghDktT7CDZdY595TUZ/m4dtdMqrgFQw5WCmf9fj16okbW5w
	lGC6aXzHnJEgR9HyZpZTPwboncFK8C1CiS4whCzVbBqgzIzO08LWQMjLeVeazPxeJ2hSGXN8aJlbU
	+Y1ZR/K27Xo3HoMUr4BlS5p4FTh1don8lXqJGIE9f9y1xwnjKUNwov7BilbwNFxWxUxKKM/V8V5U6
	9jLESlWBGyyH7cOGixOd9Cx3aib0Vi8f2zvmmlPQlIGS7AeOplq3WpsbS3SfUR9MiY4lm66bpqZtb
	CyA2Tz8Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXK5M-001Prc-Jy; Fri, 16 Apr 2021 08:44:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJX4-001HjK-9b; Fri, 16 Apr 2021 08:09:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/8ue3C3/vuHzsBzvGcphBwhbaDZVSjtTH0PvrnAwtIQ=; b=lSEpCbuX0mG85J10pPy6NLtgl1
 lf6tDG0NLh9lcbI3dt5gxNlZSpOwlOw/0uQdNqrYwnrqD/3Lbh4glCbedgryKzYPn/bQSi9zDeagV
 VU0dbwIquEI1R6Nk/m/VTBpIhz17F+UfsTu8zo8EgmhVd5GrAgqUTUUedOE37ZBkUN4N9gOpYDx5y
 CXrW+F36Iz508ubDg4HjO1/mTr9tZmyULHRaOlcyBON1yxj8ZALXaoZg5UCgayRQxVhBgpGNFZYbM
 nGeoUnXGzkbGFDLH0WdE4SeDJeEU3Iq6bdDZNLPurBSEMOm5FdgkpFh4dY46OpfwYnAlaEpMUavvB
 nwcip/8A==;
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJX1-009B4d-Ov; Fri, 16 Apr 2021 08:08:53 +0000
Received: by mail-ej1-x62c.google.com with SMTP id r12so40860597ejr.5;
 Fri, 16 Apr 2021 01:08:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/8ue3C3/vuHzsBzvGcphBwhbaDZVSjtTH0PvrnAwtIQ=;
 b=GJxNTmKCDg7Z923XplEfpvDRQSeRcE3jGB9BGTMk3H0R3ozQa6JIQtaSbC52d/VxFp
 5p6V9SyCrg4w0utuHtDRsUOn5I4VXrGPrrvNuzeLA3t+yj0obMMQ11aiJNWy7Lmt+QF2
 9Y0lHdolqDF4Zag/DBme2LJUnzxTJHLxkVRBP9u1bW23vss9A0dQi3eXoxtlyqE2g2rv
 Qid55Sf9EgMsDCM+8u8MBwrs0AUnha4EXZmkKbYUmeg2ICWHA46bx204EPqR2By0v/z8
 Yuhg5ZDbTeOCfod+hsG2Akt0lai3XFpAQPW1HY7ayIJApJ49mZUnXL3ua5fQMGM9f6Dj
 hOuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/8ue3C3/vuHzsBzvGcphBwhbaDZVSjtTH0PvrnAwtIQ=;
 b=VT/fkFDreUugJlZjzdj9E/RQVEMjIwsaK6YlBXaA3okdDSyVVb56DsgHoTSC1hlnJj
 gdQVYQ4vdfaUlAevKK/x+7oc5ayKfbgxhBZiV23KwHMygE7Nd4cEXcNcj6K34qi3TMZ3
 wvKLrZZi/vfA2opoLlwJydC/O2Tn216JRsIS2dck3n/A8zDjioB179JRMcOgeDjietlw
 OWJWzJEGdDeTzm0Kygyh07IqoCYk42H2yh++0lWsNvcSTPHQJGryDzCbp/vG/xtoPdME
 RwQ/9k9twUgZbnap5/aTandwdwreGvH29tTc8hRdkcrQHkQOC9cUaC2idpO6zG3+ShAo
 /oPw==
X-Gm-Message-State: AOAM532hilBfp5klPxZUIqQ2zfsrACZf089ZL04ElO/FVZ1wvotuHf41
 pFlIWRx54LhPbsJePnDL/p8=
X-Google-Smtp-Source: ABdhPJyV8avaJPgdMYyt8BtM3A2JV07Z/b7leScFYvGuVQMMxg1M5anegufoGAcJA1pXwugB//SGOQ==
X-Received: by 2002:a17:907:76c5:: with SMTP id
 kf5mr7033982ejc.526.1618560530253; 
 Fri, 16 Apr 2021 01:08:50 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q16sm4672303edv.61.2021.04.16.01.08.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Apr 2021 01:08:50 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 15/15] soc: rockchip: power-domain: add rk3568 powerdomains
Date: Fri, 16 Apr 2021 10:03:42 +0200
Message-Id: <20210416080342.18614-16-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210416080342.18614-1-jbx6244@gmail.com>
References: <20210416080342.18614-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_010851_833822_0A0A3608 
X-CRM114-Status: GOOD (  13.26  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Elaine Zhang <zhangqing@rock-chips.com>

Add power-domains found on rk3568 socs.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Changed V7:
  Fix alignment
---
 drivers/soc/rockchip/pm_domains.c | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 1d1b06672..0868b7d40 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -27,6 +27,7 @@
 #include <dt-bindings/power/rk3366-power.h>
 #include <dt-bindings/power/rk3368-power.h>
 #include <dt-bindings/power/rk3399-power.h>
+#include <dt-bindings/power/rk3568-power.h>
 
 struct rockchip_domain_info {
 	const char *name;
@@ -135,6 +136,9 @@ struct rockchip_pmu {
 #define DOMAIN_RK3399(name, pwr, status, req, wakeup)		\
 	DOMAIN(name, pwr, status, req, req, req, wakeup)
 
+#define DOMAIN_RK3568(name, pwr, req, wakeup)		\
+	DOMAIN_M(name, pwr, pwr, req, req, req, wakeup)
+
 static bool rockchip_pmu_domain_is_idle(struct rockchip_pm_domain *pd)
 {
 	struct rockchip_pmu *pmu = pd->pmu;
@@ -848,6 +852,18 @@ static const struct rockchip_domain_info rk3399_pm_domains[] = {
 	[RK3399_PD_SDIOAUDIO]	= DOMAIN_RK3399("sdioaudio", BIT(31), BIT(31), BIT(29), true),
 };
 
+static const struct rockchip_domain_info rk3568_pm_domains[] = {
+	[RK3568_PD_NPU]		= DOMAIN_RK3568("npu",  BIT(1), BIT(2),  false),
+	[RK3568_PD_GPU]		= DOMAIN_RK3568("gpu",  BIT(0), BIT(1),  false),
+	[RK3568_PD_VI]		= DOMAIN_RK3568("vi",   BIT(6), BIT(3),  false),
+	[RK3568_PD_VO]		= DOMAIN_RK3568("vo",   BIT(7), BIT(4),  false),
+	[RK3568_PD_RGA]		= DOMAIN_RK3568("rga",  BIT(5), BIT(5),  false),
+	[RK3568_PD_VPU]		= DOMAIN_RK3568("vpu",  BIT(2), BIT(6),  false),
+	[RK3568_PD_RKVDEC]	= DOMAIN_RK3568("vdec", BIT(4), BIT(8),  false),
+	[RK3568_PD_RKVENC]	= DOMAIN_RK3568("venc", BIT(3), BIT(7),  false),
+	[RK3568_PD_PIPE]	= DOMAIN_RK3568("pipe", BIT(8), BIT(11), false),
+};
+
 static const struct rockchip_pmu_info px30_pmu = {
 	.pwr_offset = 0x18,
 	.status_offset = 0x20,
@@ -983,6 +999,17 @@ static const struct rockchip_pmu_info rk3399_pmu = {
 	.domain_info = rk3399_pm_domains,
 };
 
+static const struct rockchip_pmu_info rk3568_pmu = {
+	.pwr_offset = 0xa0,
+	.status_offset = 0x98,
+	.req_offset = 0x50,
+	.idle_offset = 0x68,
+	.ack_offset = 0x60,
+
+	.num_domains = ARRAY_SIZE(rk3568_pm_domains),
+	.domain_info = rk3568_pm_domains,
+};
+
 static const struct of_device_id rockchip_pm_domain_dt_match[] = {
 	{
 		.compatible = "rockchip,px30-power-controller",
@@ -1028,6 +1055,10 @@ static const struct of_device_id rockchip_pm_domain_dt_match[] = {
 		.compatible = "rockchip,rk3399-power-controller",
 		.data = (void *)&rk3399_pmu,
 	},
+	{
+		.compatible = "rockchip,rk3568-power-controller",
+		.data = (void *)&rk3568_pmu,
+	},
 	{ /* sentinel */ },
 };
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
