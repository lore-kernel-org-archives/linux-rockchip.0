Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82241C6FA83
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 15:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xygQS/Rd4LSuITitIE7o4i4/C5SHy+UF5FAkdvSEEgo=; b=OwstIhN/btfSCa
	eobsdBaC1N/IKZflxD/7J0YVurCXyn/jr1uP5eJoY4klQ0JWVDzxOU0ZopqEjmsHW7rH8/+WUL4Fo
	E/iuuvTk0FZmAh97Vm96ChEpQt/gdE1E2SYyyZh9i+q5pxREbPZ6xqM4uVaWantGw/MiDl27tHhnP
	Jsw8aqgQywCjgskddfLfhfQfqeJJ0H/YK3qT5ZEmde/CcdduXxzdqp1zn65HiFbi/Im1CtDGU3CpW
	Ca6PIQeOGuFHduzYrczmTG0PDAhxRALA5WAVGshDNNxZ/KMcTH52vjVu5dxaN3+3tu1mKnmgE2FJO
	B1GwvY23U8+dzs+3MIEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVaZX-00Eq8I-4R; Tue, 06 Sep 2022 15:33:07 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVZin-00ENd9-42; Tue, 06 Sep 2022 14:38:39 +0000
Received: from jupiter.universe (dyndsl-037-138-186-136.ewe-ip-backbone.de [37.138.186.136])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C33A56601F55;
	Tue,  6 Sep 2022 15:38:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662475111;
	bh=BnWCfHciNwgQUIlj8MBmGmdaaAFtrMV3OH8dVFxqO+w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=n26qCyF5ydqSe/vWQx1TV0jTIbpx2s5fSOm6tu+eKkdMx+mPR9bgNHYKuvBH4ik0a
	 qhzAUXZ21D9nhe/O3xg2VWkvD1BEVbWcvh9FD0ERMiy1vmqT5nWH43dQRs394F+kpa
	 NY+n7FX4DvuR5mCW1v9V67L+s1X+APx02UnRILy0mqtgMUlud0R9Crxu4syUJQBubU
	 eswuQfqilj7MLnzVJCstB/jCJk3Wgg7mvIxsjLsg6lbhx1fJhO4X/xQJp8BtGuQVYz
	 C3mH7L1fi1m3Tmoy/WZ7xeDQ/4kjck2UCmJ4CsYNFEqGICGZq3fEPUqO3vSt8DISVr
	 no9TVfuhl/w4Q==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 4705A48044C; Tue,  6 Sep 2022 16:38:27 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Finley Xiao <finley.xiao@rock-chips.com>,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCHv3 6/6] soc: rockchip: power-domain: add power domain support for rk3588
Date: Tue,  6 Sep 2022 16:38:25 +0200
Message-Id: <20220906143825.199089-7-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906143825.199089-1-sebastian.reichel@collabora.com>
References: <20220906143825.199089-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_073837_583182_D49A0F09 
X-CRM114-Status: GOOD (  18.88  )
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

This driver is modified to support RK3588 SoCs.

Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
[port of downstream code incl. merging in fixes]
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/soc/rockchip/pm_domains.c | 91 +++++++++++++++++++++++++++++--
 1 file changed, 87 insertions(+), 4 deletions(-)

diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_domains.c
index a59aa3b89a72..dff96cf4a66b 100644
--- a/drivers/soc/rockchip/pm_domains.c
+++ b/drivers/soc/rockchip/pm_domains.c
@@ -30,6 +30,7 @@
 #include <dt-bindings/power/rk3368-power.h>
 #include <dt-bindings/power/rk3399-power.h>
 #include <dt-bindings/power/rk3568-power.h>
+#include <dt-bindings/power/rk3588-power.h>
 
 struct rockchip_domain_info {
 	const char *name;
@@ -41,6 +42,9 @@ struct rockchip_domain_info {
 	bool active_wakeup;
 	int pwr_w_mask;
 	int req_w_mask;
+	int repair_status_mask;
+	u32 pwr_offset;
+	u32 req_offset;
 };
 
 struct rockchip_pmu_info {
@@ -49,6 +53,7 @@ struct rockchip_pmu_info {
 	u32 req_offset;
 	u32 idle_offset;
 	u32 ack_offset;
+	u32 repair_status_offset;
 
 	u32 core_pwrcnt_offset;
 	u32 gpu_pwrcnt_offset;
@@ -113,6 +118,22 @@ struct rockchip_pmu {
 	.active_wakeup = wakeup,			\
 }
 
+#define DOMAIN_M_O_R(_name, p_offset, pwr, status, r_status, r_offset, req, idle, ack, wakeup)	\
+{							\
+	.name = _name,					\
+	.pwr_offset = p_offset,				\
+	.pwr_w_mask = (pwr) << 16,			\
+	.pwr_mask = (pwr),				\
+	.status_mask = (status),			\
+	.repair_status_mask = (r_status),		\
+	.req_offset = r_offset,				\
+	.req_w_mask = (req) << 16,			\
+	.req_mask = (req),				\
+	.idle_mask = (idle),				\
+	.ack_mask = (ack),				\
+	.active_wakeup = wakeup,			\
+}
+
 #define DOMAIN_RK3036(_name, req, ack, idle, wakeup)		\
 {							\
 	.name = _name,				\
@@ -244,6 +265,9 @@ void rockchip_pmu_unblock(void)
 }
 EXPORT_SYMBOL_GPL(rockchip_pmu_unblock);
 
+#define DOMAIN_RK3588(name, p_offset, pwr, status, r_status, r_offset, req, idle, wakeup)	\
+	DOMAIN_M_O_R(name, p_offset, pwr, status, r_status, r_offset, req, idle, idle, wakeup)
+
 static bool rockchip_pmu_domain_is_idle(struct rockchip_pm_domain *pd)
 {
 	struct rockchip_pmu *pmu = pd->pmu;
@@ -268,6 +292,7 @@ static int rockchip_pmu_set_idle_request(struct rockchip_pm_domain *pd,
 	const struct rockchip_domain_info *pd_info = pd->info;
 	struct generic_pm_domain *genpd = &pd->genpd;
 	struct rockchip_pmu *pmu = pd->pmu;
+	u32 pd_req_offset = pd_info->req_offset;
 	unsigned int target_ack;
 	unsigned int val;
 	bool is_idle;
@@ -276,11 +301,11 @@ static int rockchip_pmu_set_idle_request(struct rockchip_pm_domain *pd,
 	if (pd_info->req_mask == 0)
 		return 0;
 	else if (pd_info->req_w_mask)
-		regmap_write(pmu->regmap, pmu->info->req_offset,
+		regmap_write(pmu->regmap, pmu->info->req_offset + pd_req_offset,
 			     idle ? (pd_info->req_mask | pd_info->req_w_mask) :
 			     pd_info->req_w_mask);
 	else
-		regmap_update_bits(pmu->regmap, pmu->info->req_offset,
+		regmap_update_bits(pmu->regmap, pmu->info->req_offset + pd_req_offset,
 				   pd_info->req_mask, idle ? -1U : 0);
 
 	wmb();
@@ -363,6 +388,12 @@ static bool rockchip_pmu_domain_is_on(struct rockchip_pm_domain *pd)
 	struct rockchip_pmu *pmu = pd->pmu;
 	unsigned int val;
 
+	if (pd->info->repair_status_mask) {
+		regmap_read(pmu->regmap, pmu->info->repair_status_offset, &val);
+		/* 1'b1: power on, 1'b0: power off */
+		return val & pd->info->repair_status_mask;
+	}
+
 	/* check idle status for idle-only domains */
 	if (pd->info->status_mask == 0)
 		return !rockchip_pmu_domain_is_idle(pd);
@@ -378,16 +409,17 @@ static void rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
 {
 	struct rockchip_pmu *pmu = pd->pmu;
 	struct generic_pm_domain *genpd = &pd->genpd;
+	u32 pd_pwr_offset = pd->info->pwr_offset;
 	bool is_on;
 
 	if (pd->info->pwr_mask == 0)
 		return;
 	else if (pd->info->pwr_w_mask)
-		regmap_write(pmu->regmap, pmu->info->pwr_offset,
+		regmap_write(pmu->regmap, pmu->info->pwr_offset + pd_pwr_offset,
 			     on ? pd->info->pwr_w_mask :
 			     (pd->info->pwr_mask | pd->info->pwr_w_mask));
 	else
-		regmap_update_bits(pmu->regmap, pmu->info->pwr_offset,
+		regmap_update_bits(pmu->regmap, pmu->info->pwr_offset + pd_pwr_offset,
 				   pd->info->pwr_mask, on ? 0 : -1U);
 
 	wmb();
@@ -514,6 +546,9 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 			node, id);
 		return -EINVAL;
 	}
+	/* RK3588 has domains with two parents (RKVDEC0/RKVDEC1) */
+	if (pmu->genpd_data.domains[id])
+		return 0;
 
 	pd_info = &pmu->info->domain_info[id];
 	if (!pd_info) {
@@ -974,6 +1009,38 @@ static const struct rockchip_domain_info rk3568_pm_domains[] = {
 	[RK3568_PD_PIPE]	= DOMAIN_RK3568("pipe", BIT(8), BIT(11), false),
 };
 
+static const struct rockchip_domain_info rk3588_pm_domains[] = {
+	[RK3588_PD_GPU]		= DOMAIN_RK3588("gpu",     0x0, BIT(0),  0,       BIT(1),  0x0, BIT(0),  BIT(0),  false),
+	[RK3588_PD_NPU]		= DOMAIN_RK3588("npu",     0x0, BIT(1),  BIT(1),  0,       0x0, 0,       0,       false),
+	[RK3588_PD_VCODEC]	= DOMAIN_RK3588("vcodec",  0x0, BIT(2),  BIT(2),  0,       0x0, 0,       0,       false),
+	[RK3588_PD_NPUTOP]	= DOMAIN_RK3588("nputop",  0x0, BIT(3),  0,       BIT(2),  0x0, BIT(1),  BIT(1),  false),
+	[RK3588_PD_NPU1]	= DOMAIN_RK3588("npu1",    0x0, BIT(4),  0,       BIT(3),  0x0, BIT(2),  BIT(2),  false),
+	[RK3588_PD_NPU2]	= DOMAIN_RK3588("npu2",    0x0, BIT(5),  0,       BIT(4),  0x0, BIT(3),  BIT(3),  false),
+	[RK3588_PD_VENC0]	= DOMAIN_RK3588("venc0",   0x0, BIT(6),  0,       BIT(5),  0x0, BIT(4),  BIT(4),  false),
+	[RK3588_PD_VENC1]	= DOMAIN_RK3588("venc1",   0x0, BIT(7),  0,       BIT(6),  0x0, BIT(5),  BIT(5),  false),
+	[RK3588_PD_RKVDEC0]	= DOMAIN_RK3588("rkvdec0", 0x0, BIT(8),  0,       BIT(7),  0x0, BIT(6),  BIT(6),  false),
+	[RK3588_PD_RKVDEC1]	= DOMAIN_RK3588("rkvdec1", 0x0, BIT(9),  0,       BIT(8),  0x0, BIT(7),  BIT(7),  false),
+	[RK3588_PD_VDPU]	= DOMAIN_RK3588("vdpu",    0x0, BIT(10), 0,       BIT(9),  0x0, BIT(8),  BIT(8),  false),
+	[RK3588_PD_RGA30]	= DOMAIN_RK3588("rga30",   0x0, BIT(11), 0,       BIT(10), 0x0, 0,       0,       false),
+	[RK3588_PD_AV1]		= DOMAIN_RK3588("av1",     0x0, BIT(12), 0,       BIT(11), 0x0, BIT(9),  BIT(9),  false),
+	[RK3588_PD_VI]		= DOMAIN_RK3588("vi",      0x0, BIT(13), 0,       BIT(12), 0x0, BIT(10), BIT(10), false),
+	[RK3588_PD_FEC]		= DOMAIN_RK3588("fec",     0x0, BIT(14), 0,       BIT(13), 0x0, 0,       0,       false),
+	[RK3588_PD_ISP1]	= DOMAIN_RK3588("isp1",    0x0, BIT(15), 0,       BIT(14), 0x0, BIT(11), BIT(11), false),
+	[RK3588_PD_RGA31]	= DOMAIN_RK3588("rga31",   0x4, BIT(0),  0,       BIT(15), 0x0, BIT(12), BIT(12), false),
+	[RK3588_PD_VOP]		= DOMAIN_RK3588("vop",     0x4, BIT(1),  0,       BIT(16), 0x0, BIT(13) | BIT(14), BIT(13) | BIT(14), false),
+	[RK3588_PD_VO0]		= DOMAIN_RK3588("vo0",     0x4, BIT(2),  0,       BIT(17), 0x0, BIT(15), BIT(15), false),
+	[RK3588_PD_VO1]		= DOMAIN_RK3588("vo1",     0x4, BIT(3),  0,       BIT(18), 0x4, BIT(0),  BIT(16), false),
+	[RK3588_PD_AUDIO]	= DOMAIN_RK3588("audio",   0x4, BIT(4),  0,       BIT(19), 0x4, BIT(1),  BIT(17), false),
+	[RK3588_PD_PHP]		= DOMAIN_RK3588("php",     0x4, BIT(5),  0,       BIT(20), 0x4, BIT(5),  BIT(21), false),
+	[RK3588_PD_GMAC]	= DOMAIN_RK3588("gmac",    0x4, BIT(6),  0,       BIT(21), 0x0, 0,       0,       false),
+	[RK3588_PD_PCIE]	= DOMAIN_RK3588("pcie",    0x4, BIT(7),  0,       BIT(22), 0x0, 0,       0,       true),
+	[RK3588_PD_NVM]		= DOMAIN_RK3588("nvm",     0x4, BIT(8),  BIT(24), 0,       0x4, BIT(2),  BIT(18), false),
+	[RK3588_PD_NVM0]	= DOMAIN_RK3588("nvm0",    0x4, BIT(9),  0,       BIT(23), 0x0, 0,       0,       false),
+	[RK3588_PD_SDIO]	= DOMAIN_RK3588("sdio",    0x4, BIT(10), 0,       BIT(24), 0x4, BIT(3),  BIT(19), false),
+	[RK3588_PD_USB]		= DOMAIN_RK3588("usb",     0x4, BIT(11), 0,       BIT(25), 0x4, BIT(4),  BIT(20), true),
+	[RK3588_PD_SDMMC]	= DOMAIN_RK3588("sdmmc",   0x4, BIT(13), 0,       BIT(26), 0x0, 0,       0,       false),
+};
+
 static const struct rockchip_pmu_info px30_pmu = {
 	.pwr_offset = 0x18,
 	.status_offset = 0x20,
@@ -1120,6 +1187,18 @@ static const struct rockchip_pmu_info rk3568_pmu = {
 	.domain_info = rk3568_pm_domains,
 };
 
+static const struct rockchip_pmu_info rk3588_pmu = {
+	.pwr_offset = 0x14c,
+	.status_offset = 0x180,
+	.req_offset = 0x10c,
+	.idle_offset = 0x120,
+	.ack_offset = 0x118,
+	.repair_status_offset = 0x290,
+
+	.num_domains = ARRAY_SIZE(rk3588_pm_domains),
+	.domain_info = rk3588_pm_domains,
+};
+
 static const struct of_device_id rockchip_pm_domain_dt_match[] = {
 	{
 		.compatible = "rockchip,px30-power-controller",
@@ -1169,6 +1248,10 @@ static const struct of_device_id rockchip_pm_domain_dt_match[] = {
 		.compatible = "rockchip,rk3568-power-controller",
 		.data = (void *)&rk3568_pmu,
 	},
+	{
+		.compatible = "rockchip,rk3588-power-controller",
+		.data = (void *)&rk3588_pmu,
+	},
 	{ /* sentinel */ },
 };
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
