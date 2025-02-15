Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59A8DC021A6
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Feb 2025 23:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p2m6kFSHEY9pGtXboF+KTyWV9cQbdw7pYPRRuBmvkds=; b=CONkH5Fo0NM0PF
	2ZCzZ1cQ2RGGOikPW0YUVNEIFfNtakQo/4duC7WXEw4YBMsiqsX+jKSQrzF54VreU7WSHyb0X1szE
	mU5aIlri28YKl9Xp7yj6nOOy6aJ9ucoJI64G/qIT1s+b0W8NvpbfKVX0yT9m2zSpJTehxVT9PUvld
	rP+2LT9mG55bgbpFnCp5W+GUkO5+3EtTRSdCuwmLf3MMGaD61Bh2bitY4JbAep+Fxc7li1zFJaOBz
	jcSItdgbKla4CVpwb0kuykWUF021Qz5X6kNnqJD8mYc+xSMApsEhjB6qUazJmz+M4VO/92jlGosFT
	lUbvMLi23lVv+oNRSePg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjRzy-00000000vaR-1MF4;
	Sat, 15 Feb 2025 23:55:02 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjRzw-00000000vYU-02b1
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Feb 2025 23:55:01 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739663686; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Xzszj1H9esnDOxaT7RtmpY0fJVWJpM5duJudkMNLr/EM/Gvcr7/ap1lVv1FaKPkyZorODjnLtgSKBS9kiKCU20DOobjw+fWwEOuGIOmfWy1GYFz8rPJ9hnxBGeQRk1iFPLTIFkK/6d5XsoAXZb0Zfr3HjMPaw9VBIoQzamK+2Fs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739663686; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Rg2lRKuMuur32yytc+cosmJNyARibhGFTS7jn14DKBw=; 
	b=nmiwRwC7ZD1Cce/YzEICyeDQsKgaLEvDElqUe5K8D7ItqvlxNc6r94VnMFOhtK5MCx5fGYfOO+FJjwKjbzEhYh+e16t699jYb3Z6ER+myIek2drT/gLhLClhDYkABnhbNTeCgzuyt+OzfmOMQFCm169fe6UUy33MEf5w2la9F7g=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739663686;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=Rg2lRKuMuur32yytc+cosmJNyARibhGFTS7jn14DKBw=;
	b=cq7SsNZhdvFjqITiwXM1Cdr4UQXV6/7+PB+Fp1MYCrtgzXMd9SWQf/5Za4l2E/Dw
	aXZMn5wlRkB4emkpx13kWzoKs3izrL5j6J9KJm+5X0VHFwYuVkSaHScl/tno3/7hzBr
	ciQxiJt5MyjKWkgu9OWRWm1anOv279+Vfm66Lmto=
Received: by mx.zohomail.com with SMTPS id 1739663684002695.9780529795356;
	Sat, 15 Feb 2025 15:54:44 -0800 (PST)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Marc Zyngier <maz@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	XiaoDong Huang <derrick.huang@rock-chips.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Robin Murphy <robin.murphy@arm.com>,
	kernel@collabora.com
Subject: [PATCH v1 1/4] irqchip/gic-v3: Add Rockchip 3568002 erratum workaround
Date: Sun, 16 Feb 2025 02:54:28 +0300
Message-ID: <20250215235431.143138-2-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250215235431.143138-1-dmitry.osipenko@collabora.com>
References: <20250215235431.143138-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250215_155500_095988_B62DEF77 
X-CRM114-Status: GOOD (  13.31  )
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

Rockchip RK3566/RK3568 GIC600 integration has DDR addressing
limited to first 4GB of DRAM. Rockchip assigned Erratum ID #3568002
for this issue. Add driver quirk for this Rockchip GIC Erratum.

Note, that the 0x0201743b ID is not Rockchip 356x specific and thus
there is an extra of_machine_is_compatible() check. Rockchip 3588 uses
same ID and it is not affected by this errata.

Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 Documentation/arch/arm64/silicon-errata.rst |  2 ++
 arch/arm64/Kconfig                          |  9 ++++++++
 drivers/irqchip/irq-gic-v3-its.c            | 23 ++++++++++++++++++++-
 3 files changed, 33 insertions(+), 1 deletion(-)

diff --git a/Documentation/arch/arm64/silicon-errata.rst b/Documentation/arch/arm64/silicon-errata.rst
index f074f6219f5c..f968c13b46a7 100644
--- a/Documentation/arch/arm64/silicon-errata.rst
+++ b/Documentation/arch/arm64/silicon-errata.rst
@@ -284,6 +284,8 @@ stable kernels.
 +----------------+-----------------+-----------------+-----------------------------+
 | Rockchip       | RK3588          | #3588001        | ROCKCHIP_ERRATUM_3588001    |
 +----------------+-----------------+-----------------+-----------------------------+
+| Rockchip       | RK3568          | #3568002        | ROCKCHIP_ERRATUM_3568002    |
++----------------+-----------------+-----------------+-----------------------------+
 +----------------+-----------------+-----------------+-----------------------------+
 | Fujitsu        | A64FX           | E#010001        | FUJITSU_ERRATUM_010001      |
 +----------------+-----------------+-----------------+-----------------------------+
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index c997b27b7da1..0428ad8f324d 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1302,6 +1302,15 @@ config NVIDIA_CARMEL_CNP_ERRATUM
 
 	  If unsure, say Y.
 
+config ROCKCHIP_ERRATUM_3568002
+	bool "Rockchip 3568002: can not support DDR addresses higher than 4G"
+	default y
+	help
+	  The Rockchip RK3566 and RK3568 GIC600 SoC integrations have DDR
+	  addressing limited to first 4GB.
+
+	  If unsure, say Y.
+
 config ROCKCHIP_ERRATUM_3588001
 	bool "Rockchip 3588001: GIC600 can not support shareability attributes"
 	default y
diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 8c3ec5734f1e..f30ed281882f 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -205,13 +205,15 @@ static DEFINE_IDA(its_vpeid_ida);
 #define gic_data_rdist_rd_base()	(gic_data_rdist()->rd_base)
 #define gic_data_rdist_vlpi_base()	(gic_data_rdist_rd_base() + SZ_128K)
 
+static gfp_t gfp_flags_quirk;
+
 static struct page *its_alloc_pages_node(int node, gfp_t gfp,
 					 unsigned int order)
 {
 	struct page *page;
 	int ret = 0;
 
-	page = alloc_pages_node(node, gfp, order);
+	page = alloc_pages_node(node, gfp | gfp_flags_quirk, order);
 
 	if (!page)
 		return NULL;
@@ -4887,6 +4889,17 @@ static bool __maybe_unused its_enable_quirk_hip09_162100801(void *data)
 	return true;
 }
 
+static bool __maybe_unused its_enable_rk3568002(void *data)
+{
+	if (!of_machine_is_compatible("rockchip,rk3566") &&
+	    !of_machine_is_compatible("rockchip,rk3568"))
+		return false;
+
+	gfp_flags_quirk |= GFP_DMA32;
+
+	return true;
+}
+
 static const struct gic_quirk its_quirks[] = {
 #ifdef CONFIG_CAVIUM_ERRATUM_22375
 	{
@@ -4954,6 +4967,14 @@ static const struct gic_quirk its_quirks[] = {
 		.property = "dma-noncoherent",
 		.init   = its_set_non_coherent,
 	},
+#ifdef CONFIG_ROCKCHIP_ERRATUM_3568002
+	{
+		.desc   = "ITS: Rockchip erratum RK3568002",
+		.iidr   = 0x0201743b,
+		.mask   = 0xffffffff,
+		.init   = its_enable_rk3568002,
+	},
+#endif
 	{
 	}
 };
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
