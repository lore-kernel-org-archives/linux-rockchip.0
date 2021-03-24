Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45A55C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 03:24:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D965961878
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 03:24:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D965961878
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q5TscIMZ8ZA5Pmtg+oJ/Zcuiw+nj68JiiGV/M05koq4=; b=jhqE5mm1DSxZ4cnRzWsv8lHEej
	6mVew4sC5rprTAk5FUBZekSS4Vg5cbSvWKKveKn93rtDBtHwEuTbGj2brV7aaGADub9nB3+P95+yV
	f0/OYXVhYIEe6TiQ2ZHxSYp7GOT7DxLxAY8SE4l0nObln9XdyjIj3f3P0rOV0lF7NlnJV3xGAOk5U
	cyCwod8N2yGwnRarICYQ5uyspSSWOQicNofHarPeluKIfLcAh6NMqSJe2YhHkusoo1zjmpBsl+iHF
	H8yl/qZIchEgqYVt2yNpqV3YGdFx1EVRasRo343tKCkYiwU9eUz+J5H6eiLm3eADG+hlKUO681nnI
	ic/O4TVA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOu7m-00GF1G-EY; Wed, 24 Mar 2021 03:24:02 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOu7C-00GErZ-8Z; Wed, 24 Mar 2021 03:23:30 +0000
Received: from localhost (unknown [192.168.167.16])
 by lucky1.263xmail.com (Postfix) with ESMTP id 5AA34B94F4;
 Wed, 24 Mar 2021 11:23:17 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P13109T139929674307328S1616556189578495_; 
 Wed, 24 Mar 2021 11:23:17 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6d2fb10d702c4223b693ada0ad6c1bbb>
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
Subject: [PATCH v3 3/3] soc: rockchip: power-domain: add rk3568 powerdomains
Date: Wed, 24 Mar 2021 11:23:08 +0800
Message-Id: <20210324032308.6309-4-zhangqing@rock-chips.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210324032308.6309-1-zhangqing@rock-chips.com>
References: <20210324032308.6309-1-zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_032328_781531_4BDEC964 
X-CRM114-Status: GOOD (  12.18  )
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
index 54eb6cfc5d5b..a2c19c845cf2 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -27,6 +27,7 @@
 #include <dt-bindings/power/rk3366-power.h>
 #include <dt-bindings/power/rk3368-power.h>
 #include <dt-bindings/power/rk3399-power.h>
+#include <dt-bindings/power/rk3568-power.h>
 
 struct rockchip_domain_info {
 	int pwr_mask;
@@ -131,6 +132,9 @@ struct rockchip_pmu {
 #define DOMAIN_RK3399(pwr, status, req, wakeup)		\
 	DOMAIN(pwr, status, req, req, req, wakeup)
 
+#define DOMAIN_RK3568(pwr, req, wakeup)		\
+	DOMAIN_M(pwr, pwr, req, req, req, wakeup)
+
 static bool rockchip_pmu_domain_is_idle(struct rockchip_pm_domain *pd)
 {
 	struct rockchip_pmu *pmu = pd->pmu;
@@ -841,6 +845,18 @@ static const struct rockchip_domain_info rk3399_pm_domains[] = {
 	[RK3399_PD_SDIOAUDIO]	= DOMAIN_RK3399(BIT(31), BIT(31), BIT(29), true),
 };
 
+static const struct rockchip_domain_info rk3568_pm_domains[] = {
+	[RK3568_PD_NPU]		= DOMAIN_RK3568(BIT(1), BIT(2), false),
+	[RK3568_PD_GPU]		= DOMAIN_RK3568(BIT(0), BIT(1), false),
+	[RK3568_PD_VI]		= DOMAIN_RK3568(BIT(6), BIT(3), false),
+	[RK3568_PD_VO]		= DOMAIN_RK3568(BIT(7),  BIT(4), false),
+	[RK3568_PD_RGA]		= DOMAIN_RK3568(BIT(5),  BIT(5), false),
+	[RK3568_PD_VPU]		= DOMAIN_RK3568(BIT(2), BIT(6), false),
+	[RK3568_PD_RKVDEC]	= DOMAIN_RK3568(BIT(4), BIT(8), false),
+	[RK3568_PD_RKVENC]	= DOMAIN_RK3568(BIT(3), BIT(7), false),
+	[RK3568_PD_PIPE]	= DOMAIN_RK3568(BIT(8), BIT(11), false),
+};
+
 static const struct rockchip_pmu_info px30_pmu = {
 	.pwr_offset = 0x18,
 	.status_offset = 0x20,
@@ -976,6 +992,17 @@ static const struct rockchip_pmu_info rk3399_pmu = {
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
@@ -1021,6 +1048,10 @@ static const struct of_device_id rockchip_pm_domain_dt_match[] = {
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
