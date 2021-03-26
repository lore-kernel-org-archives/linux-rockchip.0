Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7356C433C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 10:31:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 495F660201
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 10:31:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 495F660201
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=egPyeCcapUUnKd0qHKqZ6DbRz0fx4ykHtjwvflmuO8M=; b=fJx54oQpdvR0Os0kNWwjZoHtWI
	wUQv0G6OfDunyn/+diZQ+I+HuvOwADz+q8Ay3NlhGY8yPj+KZJwFqPyA0lQvcP57AqVjwXn9FwSkn
	njyRikK8qCUfNHCm1ClrKyX3utNZGKmZa7FZaSbuDw0CO3S3LMmmFR+bNE2fYBd1GlcorN9xLckO5
	hHKpDh0AtNNklm2gbDrieFngSbmpUu2UUsCZ9EhPFlb1ELDSVmzU2iIT41w9Gl4dS0Jg6KsRG4Z/Y
	jGHjOcxwOLu679ComHW1dMu26PBHhONZJk6Jv4rqaXMQyN0+1jJd2o3lC4Ix9BOZqp6EHC1o/mfG0
	Wd9+wXMg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPjkQ-003JL2-1P; Fri, 26 Mar 2021 10:31:22 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPjkB-003JFy-OI; Fri, 26 Mar 2021 10:31:10 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 56A30B9F3C;
 Fri, 26 Mar 2021 18:31:04 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P22964T140517909624576S1616754663590081_; 
 Fri, 26 Mar 2021 18:31:05 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <66fb285c9501a88f41efd567fc615ec8>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: robh+dt@kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Elaine Zhang <zhangqing@rock-chips.com>
To: robh+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 cl@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v6 11/11] soc: rockchip: power-domain: add rk3568 powerdomains
Date: Fri, 26 Mar 2021 18:31:02 +0800
Message-Id: <20210326103102.15653-1-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210326102738.14767-1-zhangqing@rock-chips.com>
References: <20210326102738.14767-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_103108_338322_4589F3AD 
X-CRM114-Status: GOOD (  11.43  )
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

Add power-domains found on rk3568 socs.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
---
 drivers/soc/rockchip/pm_domains.c | 31 +++++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index 1d39ad92470a..940504cfb0f1 100644
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
+	[RK3568_PD_NPU]		= DOMAIN_RK3568("npu", BIT(1), BIT(2), false),
+	[RK3568_PD_GPU]		= DOMAIN_RK3568("gpu", BIT(0), BIT(1), false),
+	[RK3568_PD_VI]		= DOMAIN_RK3568("vi", BIT(6), BIT(3), false),
+	[RK3568_PD_VO]		= DOMAIN_RK3568("vo", BIT(7),  BIT(4), false),
+	[RK3568_PD_RGA]		= DOMAIN_RK3568("rga", BIT(5),  BIT(5), false),
+	[RK3568_PD_VPU]		= DOMAIN_RK3568("vpu", BIT(2), BIT(6), false),
+	[RK3568_PD_RKVDEC]	= DOMAIN_RK3568("vdec", BIT(4), BIT(8), false),
+	[RK3568_PD_RKVENC]	= DOMAIN_RK3568("venc", BIT(3), BIT(7), false),
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
2.17.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
