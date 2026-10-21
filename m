Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A618660A4AD7
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 16:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HQak9TFN;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=KJT4o6Ax
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxKIY5/zBt4hU1DCqjCvDu4Jo76zQhIOuA5LJfHXTTw=; b=HQak9TFN3OveKj
	Bvx6vjKB1K9nH6E8jZb4rwXieQHjvhxDU2cVSSl1Zg5n97j1ueybC7dExh0rQfNaQ+3dOY4evl+kD
	xGXP0Nr3ppzwyZ9Mrhs8QtyEfdLmva89pNiRQ1blpWNqNswrBrX2D3wCjuERMu+fTFKD8w7xQKhwK
	bbP7H4eQ2yPZk5IwoetSooxJkvQlS287J2SLM/MdvYLRIKD7bW0H3DcALx0Awmg8bTTQRcAK9kLOt
	XeLEdesuNME3zF+sgJ2A7EfMf+Zwv7JtiCqicw3BAildgoOesTv1aOTLh66x3Eo100dp0FV1Zmua5
	/lGPfaDjd4fBG9PDBv9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvw-0000000CMuw-0pAx;
	Wed, 21 Oct 2026 16:12:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYve-0000000CMV7-200W;
	Wed, 21 Oct 2026 16:12:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CF2DD60229;
	Wed, 21 Oct 2026 16:12:37 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1792599157;
	b=vl14+V/lBjnu/57Nlmh0N10da6GttfmQ7JlWkHxFzqjCIeamW5GrJmp7YfbmDU3fCM2/
	 QEeth1aSM4TElbu97YUKUiEyBEv6MYwsXxpcw6+Wwc0OOKtdude9PTLBZpWxFLK98NM8/
	 QM+Ba9KZbPyRyWPXqCN9hjqmbYyGw+W3+ErKzIMCL/Waotk10D7zggexpWQtdfOFSd+yf
	 tWbBBNPwAliz7+MADWlyI2bM/ZWOVj0C6eyxxfp0/0AILbPiex3YHIHxggpeNsNQiGarW
	 K/XNWduPxNf29+/YhCs9JAWwQQndR0eKJt6k2TsaZ9lqQKyRvj5Ge0LlU2q04HIUJFg==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1792599157;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=uNM5fvzcim4ZCEPBURzh6gBfA7084rQSSnlNpf1UpIQ=;
	b=xuRmg3t9Oc0SbLWhWXJRTOepKqXuHSppq2+QIbETt3MkxUPm47WLamWSHrstfnM4R7BB
	 6jtkpGIXloU7PefAD2tGbW14MTwvGwodWz844IGGKeHZggXuhmLSZiQlOiTXxn/khQX80
	 NsKzpLLlSAipCEM8X9jb4fe68I5lkBaSOikDSQPlSC93S0QqcFV0uyB36JFaV1x/zFPOg
	 8q6h35FxLWYBrrAj2AQl0hMYcOddNy40aN44bUJkblZcpt8csdQ0cfNmrg4RC7BICKDvB
	 JHHUsxEujAe51oVxjhv4/disYuifuJ+dYAPMhGPOnzVWuDLaqC74TV7eQ7fPszGOgrw==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id E0BAD1F01575;
	Wed, 21 Oct 2026 16:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792599157;
	bh=uNM5fvzcim4ZCEPBURzh6gBfA7084rQSSnlNpf1UpIQ=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=KJT4o6Ax+gDz2iXNVGDuQs1U3umUxFQn9v5FvI7VILjTv5GoFrJL09ssPn3zl9DRY
	 1dWJQduZ8KIFq1Ng4zN2gA9BqLgnqTJVjyS93tldjQuR9Ijcl7fGlDKFNbzLykaw/i
	 4QoZMqU/Oh5x7fjbZbBGkAwDOVOPferYWJ8qFtTYfgdYowmWynR95MYjD5jXopTYdD
	 t2NiQ79CRzhqWI6Laln5ECdn0SObmv1D9m+Xgo9tHjyf/C9v0tktPZUA1edZrXE/Ms
	 eQFc9sA9aAoF04l323F+4Hc4X2AbHHVbbbBtC0tIgkhi09tUnnaCJDFBDSayKUC5MO
	 KLMX4ctkm9hkQ==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 531A3433C5;
	Wed, 21 Oct 2026 16:12:23 +0000 (UTC)
From: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Date: Thu, 22 Oct 2026 00:11:07 +0800
Subject: [PATCH 10/27] pmdomain: rockchip: Add RK3572 boot peripheral
 domains
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261022-add-board-ok3572-c-v1-10-0b0fd85a31ee@qq.com>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
In-Reply-To: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
To: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, Lee Jones <lee@kernel.org>, 
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>, Ulf Hansson <ulfh@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: Cunhao Lu <1579567540@qq.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 mfd@lists.linux.dev, linux-gpio@vger.kernel.org, netdev@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-i2c@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-mmc@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792599138; l=9125;
 i=1579567540@qq.com; s=20261015; h=from:subject:message-id;
 bh=OcoLzubR+q6LA4Mp8RFJ2dcJWa6HZEI/3F0zWmoWW+Y=;
 b=31DndXn+l9vraEjbkUVK1hHT383BRrksW+mizMDtg7mJ97WqryA318Mlr8GICWwn4BqGXTRsO
 QsCzMX2gm5GBpGf0KSFuezb2rS5FvA6AX4uXHuMboLk7fKU4sye0DUz
X-Developer-Key: i=1579567540@qq.com; a=ed25519;
 pk=sUTWrzlIwT4C7ctjNfVZAzzg0G7QUn2XxRGpYsw4RtM=
X-Endpoint-Received: by B4 Relay for 1579567540@qq.com/20261015 with
 auth_id=1177
X-Original-From: Cunhao Lu <1579567540@qq.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: 1579567540@qq.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Cunhao Lu <1579567540@qq.com>

Add the NVM0, NVM1, PHP, and VOP power domains. Wait for the GRF firewall
before restoring consumers and retry power-on failures without cycling
the domain again.

Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 141 ++++++++++++++++++++++++++++++---
 1 file changed, 131 insertions(+), 10 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index e193f978d5f3..86a6ffd43254 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -39,6 +39,7 @@
 #include <dt-bindings/power/rockchip,rk3528-power.h>
 #include <dt-bindings/power/rockchip,rk3562-power.h>
 #include <dt-bindings/power/rk3568-power.h>
+#include <dt-bindings/power/rockchip,rk3572-power-controller.h>
 #include <dt-bindings/power/rockchip,rk3576-power.h>
 #include <dt-bindings/power/rk3588-power.h>
 
@@ -59,6 +60,9 @@ struct rockchip_domain_info {
 	u32 pwr_offset;
 	u32 mem_offset;
 	u32 req_offset;
+	u32 status_offset;
+	u32 firewall_mask;
+	u32 clk_ungate_offset;
 };
 
 struct rockchip_pmu_info {
@@ -72,6 +76,8 @@ struct rockchip_pmu_info {
 	u32 mem_status_offset;
 	u32 repair_status_offset;
 	u32 clk_ungate_offset;
+	u32 firewall_status_offset;
+	bool chain_status_inverted;
 
 	u32 core_pwrcnt_offset;
 	u32 gpu_pwrcnt_offset;
@@ -101,11 +107,13 @@ struct rockchip_pm_domain {
 	struct clk_bulk_data *clks;
 	struct device_node *node;
 	struct regulator *supply;
+	bool power_on_pending;
 };
 
 struct rockchip_pmu {
 	struct device *dev;
 	struct regmap *regmap;
+	struct regmap *grf;
 	const struct rockchip_pmu_info *info;
 	struct mutex mutex; /* mutex lock for pmu */
 	struct genpd_onecell_data genpd_data;
@@ -373,15 +381,16 @@ static bool rockchip_pmu_domain_is_idle(struct rockchip_pm_domain *pd)
 	const struct rockchip_domain_info *pd_info = pd->info;
 	unsigned int val;
 
-	regmap_read(pmu->regmap, pmu->info->idle_offset, &val);
+	regmap_read(pmu->regmap, pmu->info->idle_offset + pd_info->status_offset, &val);
 	return (val & pd_info->idle_mask) == pd_info->idle_mask;
 }
 
-static unsigned int rockchip_pmu_read_ack(struct rockchip_pmu *pmu)
+static unsigned int rockchip_pmu_read_ack(struct rockchip_pm_domain *pd)
 {
+	struct rockchip_pmu *pmu = pd->pmu;
 	unsigned int val;
 
-	regmap_read(pmu->regmap, pmu->info->ack_offset, &val);
+	regmap_read(pmu->regmap, pmu->info->ack_offset + pd->info->status_offset, &val);
 	return val;
 }
 
@@ -400,7 +409,8 @@ static int rockchip_pmu_ungate_clk(struct rockchip_pm_domain *pd, bool ungate)
 
 	val = ungate ? (pd_info->clk_ungate_mask | clk_ungate_w_mask) :
 			clk_ungate_w_mask;
-	regmap_write(pmu->regmap, pmu->info->clk_ungate_offset, val);
+	regmap_write(pmu->regmap, pmu->info->clk_ungate_offset +
+		     pd_info->clk_ungate_offset, val);
 
 	return 0;
 }
@@ -431,7 +441,7 @@ static int rockchip_pmu_set_idle_request(struct rockchip_pm_domain *pd,
 
 	/* Wait util idle_ack = 1 */
 	target_ack = idle ? pd_info->ack_mask : 0;
-	ret = readx_poll_timeout_atomic(rockchip_pmu_read_ack, pmu, val,
+	ret = readx_poll_timeout_atomic(rockchip_pmu_read_ack, pd, val,
 					(val & pd_info->ack_mask) == target_ack,
 					0, 10000);
 	if (ret) {
@@ -543,6 +553,9 @@ static bool rockchip_pmu_domain_is_chain_on(struct rockchip_pm_domain *pd)
 	regmap_read(pmu->regmap,
 		    pmu->info->chain_status_offset + pd->info->mem_offset, &val);
 
+	if (pmu->info->chain_status_inverted)
+		return !(val & pd->info->mem_status_mask);
+
 	/* 1'b1: power on, 1'b0: power off */
 	return val & pd->info->mem_status_mask;
 }
@@ -644,14 +657,29 @@ static int rockchip_do_pmu_set_power_domain(struct rockchip_pm_domain *pd,
 	return 0;
 }
 
+static int rockchip_pmu_wait_firewall(struct rockchip_pm_domain *pd)
+{
+	struct rockchip_pmu *pmu = pd->pmu;
+	u32 mask = pd->info->firewall_mask;
+	u32 val;
+
+	if (!mask)
+		return 0;
+
+	return regmap_read_poll_timeout(pmu->grf, pmu->info->firewall_status_offset,
+				       val, (val & mask) == mask, 0, 10000);
+}
+
 static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 {
 	struct rockchip_pmu *pmu = pd->pmu;
+	bool is_on;
 	int ret;
 
 	guard(mutex)(&pmu->mutex);
 
-	if (rockchip_pmu_domain_is_on(pd) == power_on)
+	is_on = rockchip_pmu_domain_is_on(pd);
+	if (is_on == power_on && !pd->power_on_pending)
 		return 0;
 
 	ret = clk_bulk_enable(pd->num_clks, pd->clks);
@@ -663,7 +691,8 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 	rockchip_pmu_ungate_clk(pd, true);
 
 	if (!power_on) {
-		rockchip_pmu_save_qos(pd);
+		if (!pd->power_on_pending)
+			rockchip_pmu_save_qos(pd);
 
 		/* if powering down, idle request to NIU first */
 		ret = rockchip_pmu_set_idle_request(pd, true);
@@ -671,18 +700,29 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 			goto out;
 	}
 
-	ret = rockchip_do_pmu_set_power_domain(pd, power_on);
-	if (ret < 0)
-		goto out;
+	/* A failed firewall wait must not restart powered memory on retry. */
+	if (is_on != power_on) {
+		ret = rockchip_do_pmu_set_power_domain(pd, power_on);
+		if (ret < 0)
+			goto out;
+	}
 
 	if (power_on) {
+		if (pd->info->firewall_mask)
+			pd->power_on_pending = true;
+
 		/* if powering up, leave idle mode */
 		ret = rockchip_pmu_set_idle_request(pd, false);
 		if (ret < 0)
 			goto out;
 
+		ret = rockchip_pmu_wait_firewall(pd);
+		if (ret)
+			goto out;
+
 		rockchip_pmu_restore_qos(pd);
 	}
+	pd->power_on_pending = false;
 
 out:
 	rockchip_pmu_ungate_clk(pd, false);
@@ -1064,6 +1104,11 @@ static int rockchip_pm_domain_probe(struct platform_device *pdev)
 	mutex_init(&pmu->mutex);
 
 	pmu->info = pmu_info;
+	if (pmu_info->firewall_status_offset) {
+		pmu->grf = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
+		if (IS_ERR(pmu->grf))
+			return dev_err_probe(dev, PTR_ERR(pmu->grf), "failed to get system GRF\n");
+	}
 
 	pmu->genpd_data.domains = pmu->domains;
 	pmu->genpd_data.num_domains = pmu_info->num_domains;
@@ -1313,6 +1358,62 @@ static const struct rockchip_domain_info rk3568_pm_domains[] = {
 	[RK3568_PD_PIPE]	= DOMAIN_RK3568("pipe", BIT(8), BIT(11), false, false),
 };
 
+static const struct rockchip_domain_info rk3572_pm_domains[] = {
+	[RK3572_PD_NVM1] = {
+		.name = "nvm1",
+		.pwr_mask = BIT(4),
+		.pwr_w_mask = BIT(20),
+		.mem_status_mask = BIT(4),
+		.repair_status_mask = BIT(3),
+		.req_mask = BIT(6),
+		.req_w_mask = BIT(22),
+		.idle_mask = BIT(6),
+		.ack_mask = BIT(6),
+		.clk_ungate_mask = BIT(6),
+	},
+	[RK3572_PD_PHP] = {
+		.name = "php",
+		.pwr_mask = BIT(7),
+		.pwr_w_mask = BIT(23),
+		.mem_status_mask = BIT(7),
+		.repair_status_mask = BIT(5),
+		.req_mask = BIT(9),
+		.req_w_mask = BIT(25),
+		.idle_mask = BIT(9),
+		.ack_mask = BIT(9),
+		.clk_ungate_mask = BIT(9),
+		.firewall_mask = BIT(28),
+	},
+	[RK3572_PD_VOP] = {
+		.name = "vop",
+		.pwr_mask = BIT(12),
+		.pwr_w_mask = BIT(28),
+		.mem_status_mask = BIT(12),
+		.repair_status_mask = BIT(10),
+		.req_mask = BIT(14),
+		.req_w_mask = BIT(30),
+		.idle_mask = BIT(14),
+		.ack_mask = BIT(14),
+		.clk_ungate_mask = BIT(14),
+		.firewall_mask = BIT(23),
+	},
+	[RK3572_PD_NVM0] = {
+		.name = "nvm0",
+		.pwr_mask = BIT(15),
+		.pwr_w_mask = BIT(31),
+		.mem_status_mask = BIT(15),
+		.repair_status_mask = BIT(13),
+		.req_mask = BIT(0),
+		.req_w_mask = BIT(16),
+		.idle_mask = BIT(0),
+		.ack_mask = BIT(0),
+		.clk_ungate_mask = BIT(0),
+		.req_offset = 4,
+		.status_offset = 4,
+		.clk_ungate_offset = 4,
+	},
+};
+
 static const struct rockchip_domain_info rk3576_pm_domains[] = {
 	[RK3576_PD_NPU]		= DOMAIN_RK3576("npu",    0x0, BIT(0),  BIT(0), 0,       0x0, 0,       0,       0,       false),
 	[RK3576_PD_NVM]		= DOMAIN_RK3576("nvm",    0x0, BIT(6),  0,      BIT(6),  0x4, BIT(2),  BIT(18), BIT(2),  false),
@@ -1536,6 +1637,23 @@ static const struct rockchip_pmu_info rk3568_pmu = {
 	.domain_info = rk3568_pm_domains,
 };
 
+static const struct rockchip_pmu_info rk3572_pmu = {
+	.pwr_offset = 0x210,
+	.status_offset = 0x230,
+	.chain_status_offset = 0x250,
+	.chain_status_inverted = true,
+	.mem_status_offset = 0x260,
+	.mem_pwr_offset = 0x300,
+	.req_offset = 0x110,
+	.idle_offset = 0x130,
+	.ack_offset = 0x120,
+	.repair_status_offset = 0x570,
+	.clk_ungate_offset = 0x150,
+	.firewall_status_offset = 0x140,
+	.num_domains = ARRAY_SIZE(rk3572_pm_domains),
+	.domain_info = rk3572_pm_domains,
+};
+
 static const struct rockchip_pmu_info rk3576_pmu = {
 	.pwr_offset = 0x210,
 	.status_offset = 0x230,
@@ -1648,6 +1766,9 @@ static const struct of_device_id rockchip_pm_domain_dt_match[] = {
 		.data = (void *)&rk3568_pmu,
 	},
 	{
+		.compatible = "rockchip,rk3572-power-controller",
+		.data = &rk3572_pmu,
+	}, {
 		.compatible = "rockchip,rk3576-power-controller",
 		.data = (void *)&rk3576_pmu,
 	},

-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
