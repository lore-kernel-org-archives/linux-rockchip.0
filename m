Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B04FC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:23:32 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0448761155
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:23:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0448761155
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mx/4LHco03/tzFts0HVXPoJZpEON3gMKE0iI/jmm5BI=; b=AtxWsn1Pqh0aGrvw/Svp+jz0Mn
	reYdVr/ey9Dl3O9i6hmUEJaQZjLLAV0fT8XAzLTflKNmKEAuj3fet24gEk/Okcheyl/XiMTlFJlmX
	YEtBwA5X4ptn4zmsTv6yCuSzW0MDBL2q0m+CgeGMQRUfPPGdJuELVah3OYCZjzUn+rSTWukzhgYJQ
	WuYeadsmcQr9xFZLXOpSyhvq1baSnklLcIpaWv3frV7ShesAasBPf5YtHiC0VP7FJR4M+pNYsX+R/
	njQBd7GxttSXRRWqEIImwSjtS1jaxe9O3S/7aQart8dxDOmCfM8ASo9HoyEfZy/ubbyK0MB68CxV9
	P+PJR1bQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWmys-00DqAv-0L; Wed, 14 Apr 2021 21:23:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmuu-00Dooh-Tq; Wed, 14 Apr 2021 21:19:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/8ue3C3/vuHzsBzvGcphBwhbaDZVSjtTH0PvrnAwtIQ=; b=cmDPkIKmrAhwj9Elbtu1sfuwCn
 e/a+t0I3Ej7py2axTU2bAeVov1cOrMqI6kal5Fh+FHPztPeyclLpOyRtprZvGW5kACjeI/E6YqaL4
 dmu5HGtmvXQZ9o60vFbrz0PvylYZT0+qAgZ1dlXOzVaFITghYLYd9X0Az71YAfmGOB5R+j3HP5e5a
 hScQbgOcm73y5OOHzbL2+XOpySH5RaQ06J9VF++wR1f9IdihwzFUYwiMgMQI6iYaaQGFLX4zpiMMx
 y7hw9AIDRCnMNlC3pYe3Fv/HGDzDhtntbudYuEcT5hfq6LUuxKVLHzWVBWn+IAgvoGMuPMCt2sAg5
 ZaVHbGxQ==;
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmus-0086tS-90; Wed, 14 Apr 2021 21:19:19 +0000
Received: by mail-ej1-x62d.google.com with SMTP id e14so33534599ejz.11;
 Wed, 14 Apr 2021 14:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/8ue3C3/vuHzsBzvGcphBwhbaDZVSjtTH0PvrnAwtIQ=;
 b=RAkpedgieo6Ep13Sekr7CIB6n2IGq56zyrXBeiWUrr2oaya8aJkAKWfASE4K5bS00H
 DWRn9AUmEhtk5eME+Qz7CaqMUtTx1Xh7ril0pwoO0rlrCn/hllD4+MR4ZQcSozMhpmzB
 uulq8AT0pEMugzmHuD3KpNnsJFzobZT6ZaqH1iM2E1SFXbYiMbuhjPT8PynnbFtE/0rI
 9CUjU+K6t9b6K9UZsT5nN/HwMEcHVOMk0+/UydcQX3kXBbJzwvbEWuYAY6jIiZ8J+7VQ
 fVNRtaMMS0ZsmeCBbH+C+k83s+kg9EU4nZc6LrfIdzMB2Ty5aGTK2HfuK0mUUPeqwzge
 E1Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/8ue3C3/vuHzsBzvGcphBwhbaDZVSjtTH0PvrnAwtIQ=;
 b=aRRaw5X+pq+TE0GUWJkkLKueIw09f6r/z59kP3ZLNbYuIZDq2/WTENAPCeXOVvozWj
 8cE7QBTxkeeCIjyfZjEu4a3DT+q3U/HA9hOV0OU2/oPgWS1y+96dLSKfKUD2nOIjk09X
 5QWpFJMzFSx2rEZ4Ykc8T7jsKA5VJELeM7O0zS1YSdrC26ZqN5rgDprD7gDoatpbt3xy
 0j6NUoaG5wxvSvGiBf9ZxHYQjidLu1gleywhS/2fMM12+pbPLKtwHS6AwPAGODzFJxfy
 sELXXQ5ObM4ZFkIubMF5JshcyBtkWwED4pHkoyosbkHFu7WAYeArOEbcGHQi/Iei+6g1
 3j2A==
X-Gm-Message-State: AOAM532giaGoAnKHTePas9MQ+E+p+ybIbTUhjfDo5V+2UVUf2JPdq07V
 S38LAtFi5TfIGZtqXWQMtho=
X-Google-Smtp-Source: ABdhPJz2txx79S14UfZsdJsSo99HGS9ws7jO5YHAS05dEXTpL7Ecbzn0sBBXV2TkQI9iZtVZy/sD4w==
X-Received: by 2002:a17:906:b2cf:: with SMTP id
 cf15mr60523ejb.233.1618435157199; 
 Wed, 14 Apr 2021 14:19:17 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v5sm568222edx.87.2021.04.14.14.19.16
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Apr 2021 14:19:16 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 11/11] soc: rockchip: power-domain: add rk3568 powerdomains
Date: Wed, 14 Apr 2021 23:18:56 +0200
Message-Id: <20210414211856.12104-12-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210414211856.12104-1-jbx6244@gmail.com>
References: <20210414211856.12104-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_141918_336697_593ECD84 
X-CRM114-Status: GOOD (  13.14  )
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
