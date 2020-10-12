Return-Path: <SRS0=hzxT=DT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A444C433E7
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:07:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 683DF206CA
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:07:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="tY1UptxE"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 683DF206CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hbfJsQKH7Jg2io2vPb8L9nUT2lrmL1kzEW1SckDRIJQ=; b=tY1UptxE91lLwm/LP1q25exBC
	gof0/w/kc+FyiWBqbF/yZMFZiUf/RPxk3TQATf5n+RaCOoWI8muoxVN0qjKh3vq8x14W0TelyELFk
	oXxJGsvrdk+5chKAgNcXy77cIFGadKvGf/vjUUcVkUuc44+OSDMBIhtcQqADetnKsmY0mc2+0z1qY
	7t/n2gJtcSYSNkS9SniXqv76CXhC2Rb2rwHIpjSieylzNZ4Mayp4HMh+nO3bHrP0IJUY+/PGQ5HAp
	vjRLDBhIbw6LW0slhQWtrkcVIz9DkukYLe5sSZBOWbxYS/Hdlb2TOAPM2FFmR1qDQLuHD1WnGIOD8
	apn5VqmCQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kS52d-0004tq-OZ; Mon, 12 Oct 2020 21:07:36 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS4uM-0000wL-4P
 for linux-rockchip@lists.infradead.org; Mon, 12 Oct 2020 20:59:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 046F91F44C3A
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 07/18] regmap: mmio: add config option to allow relaxed MMIO
 accesses
Date: Mon, 12 Oct 2020 23:59:46 +0300
Message-Id: <20201012205957.889185-8-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012205957.889185-1-adrian.ratiu@collabora.com>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201012_165902_430584_D3639C21 
X-CRM114-Status: GOOD (  15.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Fruehberger Peter <Peter.Fruehberger@de.bosch.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 kuhanh.murugasen.krishnan@intel.com, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On some platforms (eg armv7 due to the CONFIG_ARM_DMA_MEM_BUFFERABLE)
MMIO R/W operations always add memory barriers which can increase load,
decrease battery life or in general reduce performance unnecessarily
on devices which access a lot of configuration registers and where
ordering does not matter (eg. media accelerators like the Verisilicon /
Hantro video decoders).

Drivers used to call the relaxed MMIO variants directly but since they
are now accessing the MMIO registers via regmaps (to compensate for
for different VPU HW reg layouts via regmap fields), there is a need
for a relaxed API / config to preserve their existing behaviour.

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/base/regmap/regmap-mmio.c | 34 +++++++++++++++++++++++++++----
 include/linux/regmap.h            |  5 +++++
 2 files changed, 35 insertions(+), 4 deletions(-)

diff --git a/drivers/base/regmap/regmap-mmio.c b/drivers/base/regmap/regmap-mmio.c
index af967d8f975e..21193ef2a923 100644
--- a/drivers/base/regmap/regmap-mmio.c
+++ b/drivers/base/regmap/regmap-mmio.c
@@ -16,6 +16,7 @@
 struct regmap_mmio_context {
 	void __iomem *regs;
 	unsigned val_bytes;
+	bool relaxed_mmio;
 
 	bool attached_clk;
 	struct clk *clk;
@@ -72,14 +73,20 @@ static void regmap_mmio_write8(struct regmap_mmio_context *ctx,
 				unsigned int reg,
 				unsigned int val)
 {
-	writeb(val, ctx->regs + reg);
+	if (ctx->relaxed_mmio)
+		writeb_relaxed(val, ctx->regs + reg);
+	else
+		writeb(val, ctx->regs + reg);
 }
 
 static void regmap_mmio_write16le(struct regmap_mmio_context *ctx,
 				  unsigned int reg,
 				  unsigned int val)
 {
-	writew(val, ctx->regs + reg);
+	if (ctx->relaxed_mmio)
+		writew_relaxed(val, ctx->regs + reg);
+	else
+		writew(val, ctx->regs + reg);
 }
 
 static void regmap_mmio_write16be(struct regmap_mmio_context *ctx,
@@ -93,7 +100,10 @@ static void regmap_mmio_write32le(struct regmap_mmio_context *ctx,
 				  unsigned int reg,
 				  unsigned int val)
 {
-	writel(val, ctx->regs + reg);
+	if (ctx->relaxed_mmio)
+		writel_relaxed(val, ctx->regs + reg);
+	else
+		writel(val, ctx->regs + reg);
 }
 
 static void regmap_mmio_write32be(struct regmap_mmio_context *ctx,
@@ -108,7 +118,10 @@ static void regmap_mmio_write64le(struct regmap_mmio_context *ctx,
 				  unsigned int reg,
 				  unsigned int val)
 {
-	writeq(val, ctx->regs + reg);
+	if (ctx->relaxed_mmio)
+		writeq_relaxed(val, ctx->regs + reg);
+	else
+		writeq(val, ctx->regs + reg);
 }
 #endif
 
@@ -134,12 +147,18 @@ static int regmap_mmio_write(void *context, unsigned int reg, unsigned int val)
 static unsigned int regmap_mmio_read8(struct regmap_mmio_context *ctx,
 				      unsigned int reg)
 {
+	if (ctx->relaxed_mmio)
+		return readb_relaxed(ctx->regs + reg);
+
 	return readb(ctx->regs + reg);
 }
 
 static unsigned int regmap_mmio_read16le(struct regmap_mmio_context *ctx,
 				         unsigned int reg)
 {
+	if (ctx->relaxed_mmio)
+		return readw_relaxed(ctx->regs + reg);
+
 	return readw(ctx->regs + reg);
 }
 
@@ -152,6 +171,9 @@ static unsigned int regmap_mmio_read16be(struct regmap_mmio_context *ctx,
 static unsigned int regmap_mmio_read32le(struct regmap_mmio_context *ctx,
 				         unsigned int reg)
 {
+	if (ctx->relaxed_mmio)
+		return readl_relaxed(ctx->regs + reg);
+
 	return readl(ctx->regs + reg);
 }
 
@@ -165,6 +187,9 @@ static unsigned int regmap_mmio_read32be(struct regmap_mmio_context *ctx,
 static unsigned int regmap_mmio_read64le(struct regmap_mmio_context *ctx,
 				         unsigned int reg)
 {
+	if (ctx->relaxed_mmio)
+		return readq_relaxed(ctx->regs + reg);
+
 	return readq(ctx->regs + reg);
 }
 #endif
@@ -237,6 +262,7 @@ static struct regmap_mmio_context *regmap_mmio_gen_context(struct device *dev,
 
 	ctx->regs = regs;
 	ctx->val_bytes = config->val_bits / 8;
+	ctx->relaxed_mmio = config->use_relaxed_mmio;
 	ctx->clk = ERR_PTR(-ENODEV);
 
 	switch (regmap_get_val_endian(dev, &regmap_mmio, config)) {
diff --git a/include/linux/regmap.h b/include/linux/regmap.h
index e7834d98207f..126fe700d1d8 100644
--- a/include/linux/regmap.h
+++ b/include/linux/regmap.h
@@ -315,6 +315,10 @@ typedef void (*regmap_unlock)(void *);
  *                   masks are used.
  * @zero_flag_mask: If set, read_flag_mask and write_flag_mask are used even
  *                   if they are both empty.
+ * @use_relaxed_mmio: If set, MMIO R/W operations will not use memory barriers.
+ *                    This can avoid load on devices which don't require strict
+ *                    orderings, but drivers should carefully add any explicit
+ *                    memory barriers when they may require them.
  * @use_single_read: If set, converts the bulk read operation into a series of
  *                   single read operations. This is useful for a device that
  *                   does not support  bulk read.
@@ -388,6 +392,7 @@ struct regmap_config {
 
 	bool use_single_read;
 	bool use_single_write;
+	bool use_relaxed_mmio;
 	bool can_multi_write;
 
 	enum regmap_endian reg_format_endian;
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
