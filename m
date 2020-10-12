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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4CEB5C433E7
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:07:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C1804206CA
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:07:28 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="XEXmeUgC"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C1804206CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zaP27Q0Xybl1e7EPTyVQ6dk+R1bm2pqpSXcrJBmyyDE=; b=XEXmeUgC4mhKPPDHiirNIwaFM
	LWM/es/ihZy4M72vJuCnt14v2TtnjNidOLlRBvZtWdTPITmyasg1cAX8JYEViOm+ex1DEZ1wNBTVe
	sARnDk/fcEfiFPQAdeGlAhS9ulc644FsBXIdqxTGjkm3fDSQRbjWshPDM2Dk7dzqVeyPg/mYBSpC+
	RaQSYznB3Wo9rWOtrJU9SvCziK9rzKiERkqA8f4p6buORyaXqn28gIrMAe/SrP6Or5UyrL948Ad+Q
	L6VaUftAj3q4AvBNtY9oHM2rQq7x9DT5GhNvknEZo2I8nvPTGaH9UBqUsKcbWXUg6hB76LEukIct1
	mAnnSs1Ww==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kS52N-0004lx-5K; Mon, 12 Oct 2020 21:07:19 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS4uG-0000sk-Lt
 for linux-rockchip@lists.infradead.org; Mon, 12 Oct 2020 20:59:32 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 6294E1F44C2A
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 01/18] media: hantro: document all int reg bits up to vc8000
Date: Mon, 12 Oct 2020 23:59:40 +0300
Message-Id: <20201012205957.889185-2-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012205957.889185-1-adrian.ratiu@collabora.com>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201012_165857_108489_B88A00E0 
X-CRM114-Status: GOOD (  11.95  )
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

These do not all strictly belong to the g1 core and even the majority
of previously documented bits were not used (yet) by the driver irq
handlers, but it's still very useful to have an overview of all IRQs,
especially since starting with core versions vc8000 and later the irq
bits previously used by G1 and G2 have been merged at the same address.

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/staging/media/hantro/hantro_g1_regs.h | 39 +++++++++++++------
 1 file changed, 28 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g1_regs.h b/drivers/staging/media/hantro/hantro_g1_regs.h
index c1756e3d5391..80ff297f6f68 100644
--- a/drivers/staging/media/hantro/hantro_g1_regs.h
+++ b/drivers/staging/media/hantro/hantro_g1_regs.h
@@ -13,17 +13,34 @@
 
 /* Decoder registers. */
 #define G1_REG_INTERRUPT				0x004
-#define     G1_REG_INTERRUPT_DEC_PIC_INF		BIT(24)
-#define     G1_REG_INTERRUPT_DEC_TIMEOUT		BIT(18)
-#define     G1_REG_INTERRUPT_DEC_SLICE_INT		BIT(17)
-#define     G1_REG_INTERRUPT_DEC_ERROR_INT		BIT(16)
-#define     G1_REG_INTERRUPT_DEC_ASO_INT		BIT(15)
-#define     G1_REG_INTERRUPT_DEC_BUFFER_INT		BIT(14)
-#define     G1_REG_INTERRUPT_DEC_BUS_INT		BIT(13)
-#define     G1_REG_INTERRUPT_DEC_RDY_INT		BIT(12)
-#define     G1_REG_INTERRUPT_DEC_IRQ			BIT(8)
-#define     G1_REG_INTERRUPT_DEC_IRQ_DIS		BIT(4)
-#define     G1_REG_INTERRUPT_DEC_E			BIT(0)
+/* Interrupt bits. Some are present in:
+ *    - all core versions (">= g1")
+ *    - g1, missing in g2, but added back starting with vc8000d ("not in g2")
+ *    - vc8000d and later (">= vc8000d")
+ */
+#define     G1_REG_INTERRUPT_DEC_PIC_INF		BIT(24) /* not in g2 */
+#define     G1_REG_INTERRUPT_DEC_TILE_INT		BIT(23) /* >= vc8000d */
+#define     G1_REG_INTERRUPT_DEC_LINE_CNT_INT		BIT(22) /* >= vc8000d */
+#define     G1_REG_INTERRUPT_DEC_EXT_TIMEOUT_INT	BIT(21) /* >= vc8000d */
+#define     G1_REG_INTERRUPT_DEC_NO_SLICE_INT		BIT(20) /* >= vc8000d */
+#define     G1_REG_INTERRUPT_DEC_LAST_SLICE_INT		BIT(19) /* >= vc8000d */
+#define     G1_REG_INTERRUPT_DEC_TIMEOUT		BIT(18) /* >= g1 */
+#define     G1_REG_INTERRUPT_DEC_SLICE_INT		BIT(17) /* not in g2 */
+#define     G1_REG_INTERRUPT_DEC_ERROR_INT		BIT(16) /* >= g1 */
+#define     G1_REG_INTERRUPT_DEC_ASO_INT		BIT(15) /* not in g2 */
+#define     G1_REG_INTERRUPT_DEC_BUFFER_INT		BIT(14) /* >= g1 */
+#define     G1_REG_INTERRUPT_DEC_BUS_INT		BIT(13) /* >= g1 */
+#define     G1_REG_INTERRUPT_DEC_RDY_INT		BIT(12) /* >= g1 */
+#define     G1_REG_INTERRUPT_DEC_ABORT_INT		BIT(11) /* >= g2 */
+#define     G1_REG_INTERRUPT_DEC_IRQ			BIT(8) /* >= g1 */
+#define     G1_REG_INTERRUPT_DEC_TILE_INT_E		BIT(7) /* >= vc8000d */
+#define     G1_REG_INTERRUPT_DEC_SELF_RESET_DIS		BIT(6) /* >= vc8000d */
+#define     G1_REG_INTERRUPT_DEC_ABORT_E		BIT(5) /* >= vc8000d */
+#define     G1_REG_INTERRUPT_DEC_IRQ_DIS		BIT(4) /* >= g1 */
+#define     G1_REG_INTERRUPT_DEC_TIMEOUT_SOURCE		BIT(3) /* >= vc8000d */
+#define     G1_REG_INTERRUPT_DEC_BUS_INT_DIS		BIT(2) /* >= vc8000d */
+#define     G1_REG_INTERRUPT_DEC_STRM_CORRUPTED		BIT(1) /* >= vc8000d */
+#define     G1_REG_INTERRUPT_DEC_E			BIT(0) /* >= g1 */
 #define G1_REG_CONFIG					0x008
 #define     G1_REG_CONFIG_DEC_AXI_RD_ID(x)		(((x) & 0xff) << 24)
 #define     G1_REG_CONFIG_DEC_TIMEOUT_E			BIT(23)
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
