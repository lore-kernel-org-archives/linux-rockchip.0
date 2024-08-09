Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C388C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Aug 2024 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVh3KGWbHYtOCUh3CB7g3Bd9ypHi/oF2gWHVypyqzo8=; b=wmquCzCu6RtWW5
	ObkVGlL57DGF6zGa6nJcxkg1bz8kwUWeuEag02CkYS/GZ3SdWuoXvoyMqYFtOepyUBNEjBGn604iw
	HmJ7MHn0sQk9UCKJX9ra9S3v37MFbtuwllfsFAYs4tlfL6v2AyKJ+AFWddGZX3N/Acs8xyAsEsU12
	zsoB6708ixKuuhoEXjk9puzSahTh9gyPrr6jsmf1CZApmHby5CJex+xTMDlrSs1ph4eqgDnu0bqRy
	5j+p0UnsJx133OO4FVdl8CnIQRTYDm53KbSQRSnEwBnGCm7f8oRTQ68WIDDeNkmtEDDsJCm7AaHeJ
	JEZC7xnblEZtnFuywYGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scPCQ-0000000BGQF-49Og;
	Fri, 09 Aug 2024 12:58:30 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scPCM-0000000BGOY-3JlQ;
	Fri, 09 Aug 2024 12:58:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1723208297; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=d417bd6DIN2FFSG6FZquvHBfJ7o0uQ1cjE1id4i61djT9MPy9RgUIZNcnZ2CTnc/lE2VdCos6T1X0BPWzjHae6Qdh41/+YYNYr/tmjFQ774skSd1KpInem1J4eDB7O1LUOfDqbNf4KunlZmKUuxn/nOeYP1gTtx2nEPuQyYTEMY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1723208297; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ZAm373FW8SSRcdPW3Co+g9V2mPAp48MIYJ8wFwNFSmk=; 
	b=lHXjPoEwNnV06DNN+83HwvM6bV39HKePFD3BVX1wh4jtwmdt9dnqIVfszoGhvf5jUGdOQMnR1yVNHEPafF3Y0NEl3sC/s1t7x+EdiKeCU4+Dt9cSxg5Z3xvAccsdNsdqLxmD1qW0g7bpsnUoSuZJp2uT0Ua6xtReoq9yysz9Hw0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1723208297;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=ZAm373FW8SSRcdPW3Co+g9V2mPAp48MIYJ8wFwNFSmk=;
	b=cuNkd5rkQtvgRNMhWmbtTBxQQPLd7WEMentl+aBrDV8MCnd+HxIUFz2hdKIGZMFh
	UHfX4U9SuZNCU8Pp2GeFV5aSddhFLARxEqFkXvFjlqnnjKvEXWVOgG8v3MfNWLekVXX
	YZplKve9sojFnKUVSU2N3OXG5hOhCn98zoysmwoY=
Received: by mx.zohomail.com with SMTPS id 1723208296397381.82442922141547;
	Fri, 9 Aug 2024 05:58:16 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Jagan Teki <jagan@edgeble.ai>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v3 2/2] pmdomain: rockchip: Add support for rk3576 SoC
Date: Fri,  9 Aug 2024 08:58:05 -0400
Message-ID: <20240809125925.4295-3-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240809125925.4295-1-detlev.casanova@collabora.com>
References: <20240809125925.4295-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_055826_907591_F3E2AD91 
X-CRM114-Status: GOOD (  14.32  )
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

From: Finley Xiao <finley.xiao@rock-chips.com>

Add configuration for RK3576 SoC and list the power domains.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
[rebase, reword, squash]
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 66 +++++++++++++++++++++++++-
 1 file changed, 64 insertions(+), 2 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 9b76b62869d0d..466c0aab72060 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -33,6 +33,7 @@
 #include <dt-bindings/power/rk3368-power.h>
 #include <dt-bindings/power/rk3399-power.h>
 #include <dt-bindings/power/rk3568-power.h>
+#include <dt-bindings/power/rockchip,rk3576-power.h>
 #include <dt-bindings/power/rk3588-power.h>
 
 struct rockchip_domain_info {
@@ -144,9 +145,26 @@ struct rockchip_pmu {
 	.active_wakeup = wakeup,			\
 }
 
-#define DOMAIN_RK3036(_name, req, ack, idle, wakeup)		\
+#define DOMAIN_M_O_R_G(_name, p_offset, pwr, status, r_status, r_offset, req, idle, ack, g_mask, wakeup)	\
 {							\
-	.name = _name,				\
+	.name = _name,					\
+	.pwr_offset = p_offset,				\
+	.pwr_w_mask = (pwr) << 16,			\
+	.pwr_mask = (pwr),				\
+	.status_mask = (status),			\
+	.mem_status_mask = (r_status),			\
+	.repair_status_mask = (r_status),		\
+	.req_offset = r_offset,				\
+	.req_w_mask = (req) << 16,			\
+	.req_mask = (req),				\
+	.idle_mask = (idle),				\
+	.ack_mask = (ack),				\
+	.active_wakeup = wakeup,			\
+}
+
+#define DOMAIN_RK3036(_name, req, ack, idle, wakeup)	\
+{							\
+	.name = _name,					\
 	.req_mask = (req),				\
 	.req_w_mask = (req) << 16,			\
 	.ack_mask = (ack),				\
@@ -175,6 +193,9 @@ struct rockchip_pmu {
 #define DOMAIN_RK3568(name, pwr, req, wakeup)		\
 	DOMAIN_M(name, pwr, pwr, req, req, req, wakeup)
 
+#define DOMAIN_RK3576(name, p_offset, pwr, status, r_status, r_offset, req, idle, g_mask, wakeup)	\
+	DOMAIN_M_O_R_G(name, p_offset, pwr, status, r_status, r_offset, req, idle, idle, g_mask, wakeup)
+
 /*
  * Dynamic Memory Controller may need to coordinate with us -- see
  * rockchip_pmu_block().
@@ -1106,6 +1127,28 @@ static const struct rockchip_domain_info rk3568_pm_domains[] = {
 	[RK3568_PD_PIPE]	= DOMAIN_RK3568("pipe", BIT(8), BIT(11), false),
 };
 
+static const struct rockchip_domain_info rk3576_pm_domains[] = {
+	[RK3576_PD_NPU]		= DOMAIN_RK3576("npu",    0x0, BIT(0),  BIT(0), 0,       0x0, 0,       0,       0,       false),
+	[RK3576_PD_NVM]		= DOMAIN_RK3576("nvm",    0x0, BIT(6),  0,      BIT(6),  0x4, BIT(2),  BIT(18), BIT(2),  false),
+	[RK3576_PD_SDGMAC]	= DOMAIN_RK3576("sdgmac", 0x0, BIT(7),  0,      BIT(7),  0x4, BIT(1),  BIT(17), 0x6,     false),
+	[RK3576_PD_AUDIO]	= DOMAIN_RK3576("audio",  0x0, BIT(8),  0,      BIT(8),  0x4, BIT(0),  BIT(16), BIT(0),  false),
+	[RK3576_PD_PHP]		= DOMAIN_RK3576("php",    0x0, BIT(9),  0,      BIT(9),  0x0, BIT(15), BIT(15), BIT(15), false),
+	[RK3576_PD_SUBPHP]	= DOMAIN_RK3576("subphp", 0x0, BIT(10), 0,      BIT(10), 0x0, 0,       0,       0,       false),
+	[RK3576_PD_VOP]		= DOMAIN_RK3576("vop",    0x0, BIT(11), 0,      BIT(11), 0x0, 0x6000,  0x6000,  0x6000,  false),
+	[RK3576_PD_VO1]		= DOMAIN_RK3576("vo1",    0x0, BIT(14), 0,      BIT(14), 0x0, BIT(12), BIT(12), 0x7000,  false),
+	[RK3576_PD_VO0]		= DOMAIN_RK3576("vo0",    0x0, BIT(15), 0,      BIT(15), 0x0, BIT(11), BIT(11), 0x6800,  false),
+	[RK3576_PD_USB]		= DOMAIN_RK3576("usb",    0x4, BIT(0),  0,      BIT(16), 0x0, BIT(10), BIT(10), 0x6400,  true),
+	[RK3576_PD_VI]		= DOMAIN_RK3576("vi",     0x4, BIT(1),  0,      BIT(17), 0x0, BIT(9),  BIT(9),  BIT(9),  false),
+	[RK3576_PD_VEPU0]	= DOMAIN_RK3576("vepu0",  0x4, BIT(2),  0,      BIT(18), 0x0, BIT(7),  BIT(7),  0x280,   false),
+	[RK3576_PD_VEPU1]	= DOMAIN_RK3576("vepu1",  0x4, BIT(3),  0,      BIT(19), 0x0, BIT(8),  BIT(8),  BIT(8),  false),
+	[RK3576_PD_VDEC]	= DOMAIN_RK3576("vdec",   0x4, BIT(4),  0,      BIT(20), 0x0, BIT(6),  BIT(6),  BIT(6),  false),
+	[RK3576_PD_VPU]		= DOMAIN_RK3576("vpu",    0x4, BIT(5),  0,      BIT(21), 0x0, BIT(5),  BIT(5),  BIT(5),  false),
+	[RK3576_PD_NPUTOP]	= DOMAIN_RK3576("nputop", 0x4, BIT(6),  0,      BIT(22), 0x0, 0x18,    0x18,    0x18,    false),
+	[RK3576_PD_NPU0]	= DOMAIN_RK3576("npu0",   0x4, BIT(7),  0,      BIT(23), 0x0, BIT(1),  BIT(1),  0x1a,    false),
+	[RK3576_PD_NPU1]	= DOMAIN_RK3576("npu1",   0x4, BIT(8),  0,      BIT(24), 0x0, BIT(2),  BIT(2),  0x1c,    false),
+	[RK3576_PD_GPU]		= DOMAIN_RK3576("gpu",    0x4, BIT(9),  0,      BIT(25), 0x0, BIT(0),  BIT(0),  BIT(0),  false),
+};
+
 static const struct rockchip_domain_info rk3588_pm_domains[] = {
 	[RK3588_PD_GPU]		= DOMAIN_RK3588("gpu",     0x0, BIT(0),  0,       0x0, 0,       BIT(1),  0x0, BIT(0),  BIT(0),  false),
 	[RK3588_PD_NPU]		= DOMAIN_RK3588("npu",     0x0, BIT(1),  BIT(1),  0x0, 0,       0,       0x0, 0,       0,       false),
@@ -1284,6 +1327,21 @@ static const struct rockchip_pmu_info rk3568_pmu = {
 	.domain_info = rk3568_pm_domains,
 };
 
+static const struct rockchip_pmu_info rk3576_pmu = {
+	.pwr_offset = 0x210,
+	.status_offset = 0x230,
+	.chain_status_offset = 0x248,
+	.mem_status_offset = 0x250,
+	.mem_pwr_offset = 0x300,
+	.req_offset = 0x110,
+	.idle_offset = 0x128,
+	.ack_offset = 0x120,
+	.repair_status_offset = 0x570,
+
+	.num_domains = ARRAY_SIZE(rk3576_pm_domains),
+	.domain_info = rk3576_pm_domains,
+};
+
 static const struct rockchip_pmu_info rk3588_pmu = {
 	.pwr_offset = 0x14c,
 	.status_offset = 0x180,
@@ -1359,6 +1417,10 @@ static const struct of_device_id rockchip_pm_domain_dt_match[] = {
 		.compatible = "rockchip,rk3568-power-controller",
 		.data = (void *)&rk3568_pmu,
 	},
+	{
+		.compatible = "rockchip,rk3576-power-controller",
+		.data = (void *)&rk3576_pmu,
+	},
 	{
 		.compatible = "rockchip,rk3588-power-controller",
 		.data = (void *)&rk3588_pmu,
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
