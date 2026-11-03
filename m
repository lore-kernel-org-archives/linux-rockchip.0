Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1B3C606C5BC
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 10:45:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=c0YEFRtO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=a9w1NzNzkF13kgDBqLTK5THwKE1tY1ikHb1IgacZAEo=; b=c0YEFRtOrfbK3Lp4dZSoUR/phQ
	kcXqS7bCIz55C326UEqZf0C5sEUZhLmItxtyjrA3wVZ/xHTFzGFTpkwWu1kQaW26pO5DVCyk/OdNW
	4LpF/8YCCptSr1HFs6UOKg5ilz9SatAh3Z8IDnL/z6VrqN1gjJcpD42Uex39HE6nmUAnmv7KDlq7n
	dAiyao2rtj1l94wW2juSbFvbS8J4y55sHHOF6Hvbhub5gTVxdS1wMSMxNLFrvGrnXj/bfrK575CUU
	y91EUb47uSEY3vAicsGjYbD3FzpKr+0ZJi9OrlPzBsgXYlPEk1rVN2R+gBM/aM2TugcufUk3z1WIk
	Zn29uJzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOC1I-000000023x6-0yGC;
	Tue, 03 Nov 2026 10:45:36 +0000
Received: from pidgin.makrotopia.org ([2a07:2ec0:3002::65])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOC1E-000000023vs-39nS;
	Tue, 03 Nov 2026 10:45:34 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256:X25519MLKEM768)
	 (Exim 4.100.1)
	(envelope-from <daniel@makrotopia.org>)
	id 1xOC18-0000000031h-0D0e;
	Tue, 03 Nov 2026 10:45:26 +0000
Date: Tue, 3 Nov 2026 10:45:23 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: Mehdi Djait <mehdi.djait@linux.intel.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Hans Verkuil <hverkuil+cisco@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/6] media: rockchip: rkcif: mask MIPI interrupts when powered
Message-ID: <24332831989fde000959b3d3037333f511b95ece.1793702189.git.daniel@makrotopia.org>
References: <cover.1793702189.git.daniel@makrotopia.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1793702189.git.daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_024532_791185_B8F79C11 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The MIPI interrupt enable register comes out of every reset with all
27 sources enabled. Of those only the frame end bits are handled, so
the line stays asserted at about a thousand interrupts per second
while the block is powered. The kernel then reports the interrupt as
unhandled and disables it, after which frame completion only happens
from the spurious interrupt poll. The poll can also call the handler
while the block is clock gated.

Clear the enable register and the status bits after the block has been
reset and clocked, and after the reset in runtime suspend. Treat any
status bit that the handler has read and cleared as handled.

Assisted-by: LLM
Signed-off-by: Daniel Golle <daniel@makrotopia.org>
---
 .../rockchip/rkcif/rkcif-capture-mipi.c       | 19 +++++++++++++++++++
 .../rockchip/rkcif/rkcif-capture-mipi.h       |  2 ++
 .../media/platform/rockchip/rkcif/rkcif-dev.c |  3 +++
 3 files changed, 24 insertions(+)

diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
index bc9518f8db507..686b995525b9b 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.c
@@ -810,6 +810,23 @@ static void rkcif_mipi_set_crop(struct rkcif_stream *stream, u16 left, u16 top)
 	rkcif_mipi_stream_write(stream, RKCIF_MIPI_CROP_START, val);
 }
 
+void rkcif_mipi_irq_mask(struct rkcif_device *rkcif)
+{
+	if (!rkcif->match_data->mipi)
+		return;
+
+	for (unsigned int i = 0; i < rkcif->match_data->mipi->mipi_num; i++) {
+		struct rkcif_interface *interface =
+			&rkcif->interfaces[RKCIF_MIPI_BASE + i];
+
+		if (!interface->rkcif)
+			continue;
+
+		rkcif_mipi_write(interface, RKCIF_MIPI_INTEN, 0);
+		rkcif_mipi_write(interface, RKCIF_MIPI_INTSTAT, ~0);
+	}
+}
+
 irqreturn_t rkcif_mipi_isr(int irq, void *ctx)
 {
 	struct device *dev = ctx;
@@ -823,6 +840,8 @@ irqreturn_t rkcif_mipi_isr(int irq, void *ctx)
 
 		intstat = rkcif_mipi_read(interface, RKCIF_MIPI_INTSTAT);
 		rkcif_mipi_write(interface, RKCIF_MIPI_INTSTAT, intstat);
+		if (intstat)
+			ret = IRQ_HANDLED;
 
 		for (unsigned int j = 0; j < interface->streams_num; j++) {
 			struct rkcif_stream *stream = &interface->streams[j];
diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.h b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.h
index 7edaca44f653c..167b43756929b 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.h
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-capture-mipi.h
@@ -21,4 +21,6 @@ void rkcif_mipi_unregister(struct rkcif_device *rkcif);
 
 irqreturn_t rkcif_mipi_isr(int irq, void *ctx);
 
+void rkcif_mipi_irq_mask(struct rkcif_device *rkcif);
+
 #endif
diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-dev.c b/drivers/media/platform/rockchip/rkcif/rkcif-dev.c
index be3a174b9aab0..fbc8ed78d99ea 100644
--- a/drivers/media/platform/rockchip/rkcif/rkcif-dev.c
+++ b/drivers/media/platform/rockchip/rkcif/rkcif-dev.c
@@ -281,6 +281,7 @@ static int rkcif_runtime_suspend(struct device *dev)
 	reset_control_assert(rkcif->reset);
 	udelay(5);
 	reset_control_deassert(rkcif->reset);
+	rkcif_mipi_irq_mask(rkcif);
 
 	clk_bulk_disable_unprepare(rkcif->clks_num, rkcif->clks);
 
@@ -298,6 +299,8 @@ static int rkcif_runtime_resume(struct device *dev)
 		return ret;
 	}
 
+	rkcif_mipi_irq_mask(rkcif);
+
 	return 0;
 }
 
-- 
2.56.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
