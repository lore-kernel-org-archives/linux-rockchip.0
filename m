Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF36DC77B77
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 15:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UfUUjnZ8l3PwkLPT3EtdJpAZwgwthW+Uj6vVVjotXPA=; b=lueqimC7kenOQM
	sytnq26/UwTJ//w+mOkca7NfbfXSRB6hbPgu6CCm9THs+fXobzhbqntpvIWKArTmo+GCgokHLOZDo
	1PrXqoMdpMf8teH2rKax+5KoMZsJMi86TftRVdUIrYLBgSz/K5/d5vLbrhNzFz8vPQtfJzOT6ipkk
	jX2XZAo95itcIpVmQJnhdwjY3Ilua1qJYY+6CvzbW7GHHDnzd7hVz4fXkbLCEpqru9W92U2TDMCak
	VZ5j2bo50JTdVd0TPLJnuKZ2qKeyPTQk+FaCABz9t1x5FLuUCIKSKQuUkrS6QwISsnFLy+RfsBTOD
	T9UqjwRG3t8eFv6RegbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poQLb-00GkU1-0S;
	Mon, 17 Apr 2023 15:00:51 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poQLV-00GkRF-27
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Apr 2023 15:00:49 +0000
Received: from jupiter.universe (dyndsl-091-248-191-155.ewe-ip-backbone.de [91.248.191.155])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 993F0660321F;
	Mon, 17 Apr 2023 16:00:41 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681743641;
	bh=5Obx3QXOcZ96JmiTBTLRpuzd4BHc0ob99Hd73v/VzzI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DsCMSJ4Qh4Jb+nEpZzSvGOXQtCk0q2F9vRdmdH1CF8IomqzWwP817w/a8vrKrqKqt
	 +/SmE6ph3WVax4YsPAd9pyQjFnJB+JrrMH0gGs92v30gp+HvvifN9DkocWVNG9HewC
	 dxCVsEybkAa+CstBBD8fAX0fR4YEURwgfw2D6pmwg0naXbuaJg6wdQy4VcqMq6D96t
	 LVvE420EBgNGDwSuY5+8AzMu26kg1nquURHN8l8Sq3A8mxWE5nFMlRqjq6xStrVuNR
	 ISLJXpUDoL4RqoVf+kCr6KMWTTDFmB6uEs0Qp0jgiXEp5K7Doh/rzsWhBGn6+bBZJ1
	 tOpjNmj4S8yYA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id D9F9D4807E3; Mon, 17 Apr 2023 17:00:38 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Marc Zyngier <maz@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Peng Fan <peng.fan@nxp.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Peter Geis <pgwipeout@gmail.com>,
	XiaoDong Huang <derrick.huang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v2 1/2] irqchip/gic-v3: Add Rockchip 3588001 errata workaround
Date: Mon, 17 Apr 2023 17:00:37 +0200
Message-Id: <20230417150038.51698-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230417150038.51698-1-sebastian.reichel@collabora.com>
References: <20230417150038.51698-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_080045_976604_FE9BFD6C 
X-CRM114-Status: GOOD (  17.92  )
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

Rockchip RK3588/RK3588s GIC600 integration is not cache coherent. Thus
even though the GIC600 itself supports the sharability feature, it may
not be used. Rockchip assigned Errata ID #3588001 for this issue.

The RK3588's GIC600 IP is using ARM's ID in the IIDR register
(0x0201743b), so it cannot be used to apply the quirk. Thus I used the
machine compatible instead.

I named the flag ITS_FLAGS_BROKEN_SHAREABILITY to be vendor agnostic,
since apparently similar integration design errors exist in other
platforms and they can reuse the same flag.

Co-developed-by: XiaoDong Huang <derrick.huang@rock-chips.com>
Signed-off-by: XiaoDong Huang <derrick.huang@rock-chips.com>
Co-developed-by: Kever Yang <kever.yang@rock-chips.com>
Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
Co-developed-by: Lucas Tanure <lucas.tanure@collabora.com>
Signed-off-by: Lucas Tanure <lucas.tanure@collabora.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/arm64/silicon-errata.rst |  3 +++
 arch/arm64/Kconfig                     | 10 ++++++++++
 drivers/irqchip/irq-gic-v3-its.c       | 25 +++++++++++++++++++++++++
 3 files changed, 38 insertions(+)

diff --git a/Documentation/arm64/silicon-errata.rst b/Documentation/arm64/silicon-errata.rst
index ec5f889d7681..46d06ed3e4f4 100644
--- a/Documentation/arm64/silicon-errata.rst
+++ b/Documentation/arm64/silicon-errata.rst
@@ -205,6 +205,9 @@ stable kernels.
 +----------------+-----------------+-----------------+-----------------------------+
 | Qualcomm Tech. | Kryo4xx Gold    | N/A             | ARM64_ERRATUM_1286807       |
 +----------------+-----------------+-----------------+-----------------------------+
++----------------+-----------------+-----------------+-----------------------------+
+| Rockchip       | RK3588          | #3588001        | ROCKCHIP_ERRATUM_3588001    |
++----------------+-----------------+-----------------+-----------------------------+
 
 +----------------+-----------------+-----------------+-----------------------------+
 | Fujitsu        | A64FX           | E#010001        | FUJITSU_ERRATUM_010001      |
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 1023e896d46b..640619459648 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1150,6 +1150,16 @@ config NVIDIA_CARMEL_CNP_ERRATUM
 
 	  If unsure, say Y.
 
+config ROCKCHIP_ERRATUM_3588001
+	bool "Rockchip 3588001: GIC600 can not support shareable attribute"
+	default y
+	help
+	  The Rockchip RK3588 GIC600 SoC integration does not support ACE/ACE-lite
+	  and thus is not cache coherent. This means, that the GIC600 may not use
+	  the sharability feature even though it is supported by the IP itself.
+
+	  If unsure, say Y.
+
 config SOCIONEXT_SYNQUACER_PREITS
 	bool "Socionext Synquacer: Workaround for GICv3 pre-ITS"
 	default y
diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 586271b8aa39..0701d0b67690 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -42,6 +42,7 @@
 #define ITS_FLAGS_CMDQ_NEEDS_FLUSHING		(1ULL << 0)
 #define ITS_FLAGS_WORKAROUND_CAVIUM_22375	(1ULL << 1)
 #define ITS_FLAGS_WORKAROUND_CAVIUM_23144	(1ULL << 2)
+#define ITS_FLAGS_BROKEN_SHAREABILITY		(1ULL << 3)
 
 #define RDIST_FLAGS_PROPBASE_NEEDS_FLUSHING	(1 << 0)
 #define RDIST_FLAGS_RD_TABLES_PREALLOCATED	(1 << 1)
@@ -2359,6 +2360,13 @@ static int its_setup_baser(struct its_node *its, struct its_baser *baser,
 	its_write_baser(its, baser, val);
 	tmp = baser->val;
 
+	if (its->flags & ITS_FLAGS_BROKEN_SHAREABILITY) {
+		if (tmp & GITS_BASER_SHAREABILITY_MASK)
+			tmp &= ~GITS_BASER_SHAREABILITY_MASK;
+		else
+			gic_flush_dcache_to_poc(base, PAGE_ORDER_TO_SIZE(order));
+	}
+
 	if ((val ^ tmp) & GITS_BASER_SHAREABILITY_MASK) {
 		/*
 		 * Shareability didn't stick. Just use
@@ -3055,6 +3063,7 @@ static u64 its_clear_vpend_valid(void __iomem *vlpi_base, u64 clr, u64 set)
 
 static void its_cpu_init_lpis(void)
 {
+	struct its_node *its = list_first_entry(&its_nodes, struct its_node, entry);
 	void __iomem *rbase = gic_data_rdist_rd_base();
 	struct page *pend_page;
 	phys_addr_t paddr;
@@ -3096,6 +3105,9 @@ static void its_cpu_init_lpis(void)
 	gicr_write_propbaser(val, rbase + GICR_PROPBASER);
 	tmp = gicr_read_propbaser(rbase + GICR_PROPBASER);
 
+	if (its->flags & ITS_FLAGS_BROKEN_SHAREABILITY)
+		tmp &= ~GICR_PROPBASER_SHAREABILITY_MASK;
+
 	if ((tmp ^ val) & GICR_PROPBASER_SHAREABILITY_MASK) {
 		if (!(tmp & GICR_PROPBASER_SHAREABILITY_MASK)) {
 			/*
@@ -3120,6 +3132,9 @@ static void its_cpu_init_lpis(void)
 	gicr_write_pendbaser(val, rbase + GICR_PENDBASER);
 	tmp = gicr_read_pendbaser(rbase + GICR_PENDBASER);
 
+	if (its->flags & ITS_FLAGS_BROKEN_SHAREABILITY)
+		tmp &= ~GICR_PENDBASER_SHAREABILITY_MASK;
+
 	if (!(tmp & GICR_PENDBASER_SHAREABILITY_MASK)) {
 		/*
 		 * The HW reports non-shareable, we must remove the
@@ -4765,6 +4780,13 @@ static void its_enable_quirks(struct its_node *its)
 	u32 iidr = readl_relaxed(its->base + GITS_IIDR);
 
 	gic_enable_quirks(iidr, its_quirks, its);
+
+#ifdef CONFIG_ROCKCHIP_ERRATUM_3588001
+	if (of_machine_is_compatible("rockchip,rk3588")) {
+		its->flags |= ITS_FLAGS_BROKEN_SHAREABILITY;
+		pr_info("GIC: enabling workaround for Rockchip #3588001\n");
+	}
+#endif
 }
 
 static int its_save_disable(void)
@@ -5096,6 +5118,9 @@ static int __init its_probe_one(struct resource *res,
 	gits_write_cbaser(baser, its->base + GITS_CBASER);
 	tmp = gits_read_cbaser(its->base + GITS_CBASER);
 
+	if (its->flags & ITS_FLAGS_BROKEN_SHAREABILITY)
+		tmp &= ~GITS_CBASER_SHAREABILITY_MASK;
+
 	if ((tmp ^ baser) & GITS_CBASER_SHAREABILITY_MASK) {
 		if (!(tmp & GITS_CBASER_SHAREABILITY_MASK)) {
 			/*
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
