Return-Path: <SRS0=3pYS=JO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 466ECC433B4
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:35:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B5E94611AB
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:35:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B5E94611AB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mx/4LHco03/tzFts0HVXPoJZpEON3gMKE0iI/jmm5BI=; b=MxVwapt3o/lsg9lXTvwETqjZVR
	YGB3q/3Ie7bFoDLwg2ghn/QSsqFlmE2CbM/CLiJ0wkXMuB4twJ7aj6VVCiwMo/l1WeeJYCBWR+DmD
	WCVKsGkxHEaLxln3QiFZlPLeLUzd+c7G/j5KsV/ct2pcuDBTU6C6CaWAPW2Yu86Pzh55OuRtdacjx
	0ZRzFSuzKcSi1qZqY7hEVPTXH58i2cd7hX4a1+s0sNf162Ph+Thqy3nLPStftywG232bSFJQ0cf0j
	MRxs8G56oIbnRoKfFhSPDqBl5sizKUn0HQCoUZeaHcfDUcv3i38Wcdx3IcXV6rUm3qKwi26WWHWk4
	0lsE9O9g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXjEn-005Ald-WB; Sat, 17 Apr 2021 11:35:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9h-0058Qr-29; Sat, 17 Apr 2021 11:30:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/8ue3C3/vuHzsBzvGcphBwhbaDZVSjtTH0PvrnAwtIQ=; b=ZFAVc7i/x0N+B5E5DfukwYfxZq
 KLirEtVVfD5yNnsMpia3qpajZzEBm5aQ7wGSCdqXOCMseQ1mfqd0PAOj61W+rx2asf8rttRnLgCWK
 fBo186++REmwaI+O31JYL/9TpmSWQ+UV9IWUTJ0QfBOQBuAd+X5KaLQXFOdAiz0h0wXilrxNRP8Jc
 yGAYbHRfhpk0r++hjTAOxgilxJHuVQ8BxBxMUioEXlpCmiKJz0or1a0Q+wYzWgk+3oWBoTtXpJ5S1
 32Dq8DtbnmDzWTyR0PCC3O6OdZG0Gmt909u73Xi1R8bYipnC5T3f/eGYuDvu3WXuUXNGZOtxF6b+V
 xxsx1h5Q==;
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9b-00A0FV-Hv; Sat, 17 Apr 2021 11:30:27 +0000
Received: by mail-ej1-x62d.google.com with SMTP id l4so45804084ejc.10;
 Sat, 17 Apr 2021 04:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/8ue3C3/vuHzsBzvGcphBwhbaDZVSjtTH0PvrnAwtIQ=;
 b=hMr4AxpAFNK+6N84CkCy4jW6GMuOTMfblWrRNCpyYV9BFvSaUU651f3LTBm02owzXB
 EqXTL0QopVNGRcXYEklM+n/1uNHCnV2KyFO6gvM7ig6VMA0waIDg2qSDZvFVqTNWyavD
 HqbgIneM1MHpkMLKnnojLdnjNF6hLFQ5yCpBYre48nbuS4nApizXKvFH/9O/6EuDXfOg
 Sb117HUJFcoggVkWQ/hVYUIc1Z/ED9suoUcRYVFEs+sWnNHmuYspPpytk/5DYHgE3SMk
 pJmI/QdT6HGWsWmGo0TRgHrNdK3SqwI9/L9i/T+He+yDxD4rBaC3T7XW5QWss62SZvnz
 R8XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/8ue3C3/vuHzsBzvGcphBwhbaDZVSjtTH0PvrnAwtIQ=;
 b=pTUPn5YSdD7ft+eJZwLJEKPiNDxGl0WQYhjnNT6nZmzeUQpKnxf7/+zQiSdNirlvWR
 xeyrmzO3mOtgadQ/S4Wky0fjC4AVJjeSeqRNt1sV0Jtm4bp2QSBu/sH8cJkPPqCOaF9R
 T495Je+eRNVnoctNq7vlg6pBjJvMVaKKN6U7lTuxVlakD8YuBVZs5CnQ/K6kTfTwBzb3
 AUnCaRTS1sDvFzyc+m4hO8rOt70F/4y9dUJkf+7FXO4Ds7p98DYxm0APP6j7QMMw8ItJ
 wBLlnwHMzR+HBhS1pzp9WIIipybz5LHG96C+T52pllXc/y+/lnaKbPmPPvycAekLHVse
 /kVg==
X-Gm-Message-State: AOAM533m5zIowbA2sFgNI7OSSzPUKakwoF3LRr3OJD8sXKKbMJOA3964
 nMvuBQXTU3Y9GgmzMWPYWuI=
X-Google-Smtp-Source: ABdhPJyNc2Lf5+PGfk6oCE1OJo3pCYalWi5A17T1LC2oyX4ai8KBSx8cDLm3XOOudtglBBfWhOok1A==
X-Received: by 2002:a17:906:d110:: with SMTP id
 b16mr12752555ejz.146.1618659021800; 
 Sat, 17 Apr 2021 04:30:21 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f20sm3022875ejw.36.2021.04.17.04.30.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Apr 2021 04:30:21 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 15/15] soc: rockchip: power-domain: add rk3568 powerdomains
Date: Sat, 17 Apr 2021 13:29:52 +0200
Message-Id: <20210417112952.8516-16-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210417112952.8516-1-jbx6244@gmail.com>
References: <20210417112952.8516-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_043023_613478_B0BE6B81 
X-CRM114-Status: GOOD (  12.87  )
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
