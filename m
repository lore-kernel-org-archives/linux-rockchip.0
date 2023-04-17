Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 467B7C77B78
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 21:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IJ/7t0wYSZR9hCJUuy3AQp/Ig8A/2+ozD7ghsObMZo0=; b=GuB2Idbg3vx9UB
	27VCjOooeZHjgExTk8a7lRIkh6TpprUkC+fxjXstu3kMsp5KqcHbLOemGFE7ueVCHLWarQQ457v+7
	mRmsM0WKsJzjeE4r7FlhfP5Ka6+8rHk88/4AVfZyCyr9ZJxb6CNQyxkKN5Dz1qvERJvNFhLyV87iT
	pYsG9SMD7bWnk8RGGA3cnSOOPwItvvyEbnCkw6yC1jhIk3lzH47ns/z697o9du3IDlFeaRR2GdqZV
	wG2432JBOGjenEATFkIjAyDdwbwQl21pRrsLlGHz2PkGYr2DpO/0+dkuItDybpXtCg31+INHXQNu/
	mjtRyUIL7zgM7SQEKhLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poWab-0007W9-36;
	Mon, 17 Apr 2023 21:40:45 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poWaX-0007T3-22
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Apr 2023 21:40:43 +0000
Received: from jupiter.universe (dyndsl-091-248-191-155.ewe-ip-backbone.de [91.248.191.155])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id EF2366603236;
	Mon, 17 Apr 2023 22:40:38 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681767639;
	bh=UynN8wwAWCU0QowIo5m3jRjJPnlQ7WEXJDNgTSemnqQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ooOoMWaFWTQJowHowA8rAID5lEq4k5d/D4+FczpMSaf6AQfCKdSSmQ+z3DKGJTHbj
	 tglAqcBknXSCpS6w7BKaWbZ3BGTZAKGtK+rSt6jMkaZ/JJK1mgRUhFV/vLErdFMY4a
	 UnRYCM2mbbPppbo1Fs9orS6pRMIK/3p9JrCNSktEE5jZwx3ur/AmOgDCI+2dmVB/y4
	 uxvi70f9CjuC6JdzAGaeS3wFfQQ+6YLjD2qX9I8A/kvxq73dAM1YDNvokL8zeZ6UtJ
	 EYFBIuj5xUrJIWl2NhXLvYL4KSvj6rFJAXhSC66S1UL5T3/aUyWaaMnjcJzbjnN6uy
	 4mLYHO13CxHFg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 014954807E3; Mon, 17 Apr 2023 23:40:36 +0200 (CEST)
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
Subject: [PATCH v3 1/2] irqchip/gic-v3: Add Rockchip 3588001 errata workaround
Date: Mon, 17 Apr 2023 23:40:34 +0200
Message-Id: <20230417214035.101190-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230417214035.101190-1-sebastian.reichel@collabora.com>
References: <20230417214035.101190-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_144041_925393_915F474D 
X-CRM114-Status: GOOD (  16.79  )
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

Rockchip RK3588/RK3588s GIC600 integration does not support the
sharability feature. Rockchip assigned Errata ID #3588001 for this
issue.

Note, that the 0x0201743b ID is not Rockchip specific and thus
there is an extra of_machine_is_compatible() check.

The flag are named BROKEN_SHAREABILITY to be vendor agnostic,
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
 arch/arm64/Kconfig                     | 10 ++++++++
 drivers/irqchip/irq-gic-v3-its.c       | 35 ++++++++++++++++++++++++++
 3 files changed, 48 insertions(+)

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
index 1023e896d46b..1bc43faef10a 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1150,6 +1150,16 @@ config NVIDIA_CARMEL_CNP_ERRATUM
 
 	  If unsure, say Y.
 
+config ROCKCHIP_ERRATUM_3588001
+	bool "Rockchip 3588001: GIC600 can not support shareability attributes"
+	default y
+	help
+	  The Rockchip RK3588 GIC600 SoC integration does not support ACE/ACE-lite.
+	  This means, that the GIC600 may not use the GIC600 sharability feature
+	  even though it is supported by the IP itself.
+
+	  If unsure, say Y.
+
 config SOCIONEXT_SYNQUACER_PREITS
 	bool "Socionext Synquacer: Workaround for GICv3 pre-ITS"
 	default y
diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 586271b8aa39..5b7aa48dde25 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -42,9 +42,11 @@
 #define ITS_FLAGS_CMDQ_NEEDS_FLUSHING		(1ULL << 0)
 #define ITS_FLAGS_WORKAROUND_CAVIUM_22375	(1ULL << 1)
 #define ITS_FLAGS_WORKAROUND_CAVIUM_23144	(1ULL << 2)
+#define ITS_FLAGS_BROKEN_SHAREABILITY		(1ULL << 3)
 
 #define RDIST_FLAGS_PROPBASE_NEEDS_FLUSHING	(1 << 0)
 #define RDIST_FLAGS_RD_TABLES_PREALLOCATED	(1 << 1)
+#define RDIST_FLAGS_BROKEN_SHAREABILITY		(1 << 2)
 
 #define RD_LOCAL_LPI_ENABLED                    BIT(0)
 #define RD_LOCAL_PENDTABLE_PREALLOCATED         BIT(1)
@@ -2359,6 +2361,9 @@ static int its_setup_baser(struct its_node *its, struct its_baser *baser,
 	its_write_baser(its, baser, val);
 	tmp = baser->val;
 
+	if (its->flags & ITS_FLAGS_BROKEN_SHAREABILITY)
+		tmp &= ~GITS_BASER_SHAREABILITY_MASK;
+
 	if ((val ^ tmp) & GITS_BASER_SHAREABILITY_MASK) {
 		/*
 		 * Shareability didn't stick. Just use
@@ -3096,6 +3101,9 @@ static void its_cpu_init_lpis(void)
 	gicr_write_propbaser(val, rbase + GICR_PROPBASER);
 	tmp = gicr_read_propbaser(rbase + GICR_PROPBASER);
 
+	if (gic_rdists->flags & RDIST_FLAGS_BROKEN_SHAREABILITY)
+		tmp &= ~GICR_PROPBASER_SHAREABILITY_MASK;
+
 	if ((tmp ^ val) & GICR_PROPBASER_SHAREABILITY_MASK) {
 		if (!(tmp & GICR_PROPBASER_SHAREABILITY_MASK)) {
 			/*
@@ -3120,6 +3128,9 @@ static void its_cpu_init_lpis(void)
 	gicr_write_pendbaser(val, rbase + GICR_PENDBASER);
 	tmp = gicr_read_pendbaser(rbase + GICR_PENDBASER);
 
+	if (gic_rdists->flags & RDIST_FLAGS_BROKEN_SHAREABILITY)
+		tmp &= ~GICR_PENDBASER_SHAREABILITY_MASK;
+
 	if (!(tmp & GICR_PENDBASER_SHAREABILITY_MASK)) {
 		/*
 		 * The HW reports non-shareable, we must remove the
@@ -4710,6 +4721,19 @@ static bool __maybe_unused its_enable_quirk_hip07_161600802(void *data)
 	return true;
 }
 
+static bool __maybe_unused its_enable_rk3588001(void *data)
+{
+	struct its_node *its = data;
+
+	if (!of_machine_is_compatible("rockchip,rk3588"))
+		return false;
+
+	its->flags |= ITS_FLAGS_BROKEN_SHAREABILITY;
+	gic_rdists->flags |= RDIST_FLAGS_BROKEN_SHAREABILITY;
+
+	return true;
+}
+
 static const struct gic_quirk its_quirks[] = {
 #ifdef CONFIG_CAVIUM_ERRATUM_22375
 	{
@@ -4755,6 +4779,14 @@ static const struct gic_quirk its_quirks[] = {
 		.mask	= 0xffffffff,
 		.init	= its_enable_quirk_hip07_161600802,
 	},
+#endif
+#ifdef CONFIG_ROCKCHIP_ERRATUM_3588001
+	{
+		.desc   = "ITS: Rockchip erratum RK3588001",
+		.iidr   = 0x0201743b,
+		.mask   = 0xffffffff,
+		.init   = its_enable_rk3588001,
+	},
 #endif
 	{
 	}
@@ -5096,6 +5128,9 @@ static int __init its_probe_one(struct resource *res,
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
