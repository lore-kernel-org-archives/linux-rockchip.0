Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7F76EB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jun 2023 14:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zoOWanFLRgQ2WAfvSMxAsveGklglmMAir/ooUEgfJTo=; b=jI1IR4/rfzciz/
	Bjb9qONb1V/WppO3HUK028U8abr/4o7lAlg5N43NEWJF/EkLFOQTG5dx5+lhdzaSa8kYNvKewvjIz
	0qQzphmt1k98SAL32ykkK0AvMGByCGWiSpeJLGwVV1EcvVGVE4zrCcwWZ/64VDGWsrLtQInsqsRnx
	6V4/FRBlgPpCvirPsXCwYSyTY+j8Cbh9nA2V4zRWdLXHe18yDlgIv75luw8leYMfFBSumxkdhB/TT
	kTNIjRsUxtCLaSN8m0h7u+a4nZ3BGw0j2zC+7Fwqv629iKmutF6uhd9biFGn8papcIPQAOr6++GLv
	ivxlHXGy+IwEu7HzFzHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAAlI-000r9G-29;
	Fri, 16 Jun 2023 14:49:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAAlF-000r7y-1n
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jun 2023 14:49:14 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 15F9E63DDE;
	Fri, 16 Jun 2023 14:49:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D60DFC433B8;
	Fri, 16 Jun 2023 14:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686926952;
	bh=1KvFAAQU1+L5HUAtuWrVsUkiPz9t3gmo7pU+oiCZjyw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OvEyonDPGOx33cBftoNfwsXfLTXLECm4bO9XvAdMxPEU2Kqmw34jxyldFM/RXhYwr
	 p4MxRjN5nMMHpNgkqHg2cT6FYzBNZM7slH17qPE2E5Y22W+2WMeABq3pK8aRLN5C5k
	 txfTdDybPsgPL99VlJY5onKGqBvbFVgR/cqL8+8USNDln0lRoSDyXid0y/DJStiU+S
	 qo8Q72TKBKOc1Wuq5fscq53JugILKF22CuRlHAlfABmtImFrNVLOorlkpxjOtptVg8
	 iWHeS6RMDhxn9+VUqbTkPK7aUAASnIuTJPFeh9KEgookx0Z3rCKJqsyW9D1mzHYV3F
	 /ZaKhhaNpQVLw==
From: Arnd Bergmann <arnd@kernel.org>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] media: verisilicon: change confusingly named relaxed register access
Date: Fri, 16 Jun 2023 16:48:48 +0200
Message-Id: <20230616144854.3818934-2-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230616144854.3818934-1-arnd@kernel.org>
References: <20230616144854.3818934-1-arnd@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230616_074913_669289_FCF2F76D 
X-CRM114-Status: GOOD (  16.23  )
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

From: Arnd Bergmann <arnd@arndb.de>

The register abstraction has wrappers around both the normal writel()
and its writel_relaxed() counterpart, but this has led to a lot of users
ending up with the relaxed version.

There is sometimes a need to intentionally pick the relaxed accessor for
performance critical functions, but I noticed that each hantro_reg_write()
call also contains a non-relaxed readl(), which is typically much more
expensive than a writel, so there is little benefit here but an added
risk of missing a serialization against DMA.

To make this behave like other interfaces, use the normal accessor by
default and only provide the relaxed version as an alternative for
performance critical code. hantro_postproc.c is the only place that
used both the relaxed and normal writel, but this does not seem
cricital either, so change it all to the normal ones.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
I did not look whether there is an actual bug here, just noticed this
when I debugged the excessive stack usage.
---
 drivers/media/platform/verisilicon/hantro.h          |  6 +++---
 drivers/media/platform/verisilicon/hantro_postproc.c | 12 ++++++------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
index 6c5e56ce5b351..a481d957fef93 100644
--- a/drivers/media/platform/verisilicon/hantro.h
+++ b/drivers/media/platform/verisilicon/hantro.h
@@ -441,14 +441,14 @@ static __always_inline void hantro_reg_write(struct hantro_dev *vpu,
 				    const struct hantro_reg *reg,
 				    u32 val)
 {
-	vdpu_write_relaxed(vpu, vdpu_read_mask(vpu, reg, val), reg->base);
+	vdpu_write(vpu, vdpu_read_mask(vpu, reg, val), reg->base);
 }
 
-static __always_inline void hantro_reg_write_s(struct hantro_dev *vpu,
+static __always_inline void hantro_reg_write_relaxed(struct hantro_dev *vpu,
 				      const struct hantro_reg *reg,
 				      u32 val)
 {
-	vdpu_write(vpu, vdpu_read_mask(vpu, reg, val), reg->base);
+	vdpu_write_relaxed(vpu, vdpu_read_mask(vpu, reg, val), reg->base);
 }
 
 void *hantro_get_ctrl(struct hantro_ctx *ctx, u32 id);
diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c b/drivers/media/platform/verisilicon/hantro_postproc.c
index c977d64105b18..0224ff68ab3fc 100644
--- a/drivers/media/platform/verisilicon/hantro_postproc.c
+++ b/drivers/media/platform/verisilicon/hantro_postproc.c
@@ -21,11 +21,11 @@
 			 val); \
 }
 
-#define HANTRO_PP_REG_WRITE_S(vpu, reg_name, val) \
+#define HANTRO_PP_REG_WRITE_RELAXED(vpu, reg_name, val) \
 { \
-	hantro_reg_write_s(vpu, \
-			   &hantro_g1_postproc_regs.reg_name, \
-			   val); \
+	hantro_reg_write_relaxed(vpu, \
+				 &hantro_g1_postproc_regs.reg_name, \
+				 val); \
 }
 
 #define VPU_PP_IN_YUYV			0x0
@@ -72,7 +72,7 @@ static void hantro_postproc_g1_enable(struct hantro_ctx *ctx)
 	dma_addr_t dst_dma;
 
 	/* Turn on pipeline mode. Must be done first. */
-	HANTRO_PP_REG_WRITE_S(vpu, pipeline_en, 0x1);
+	HANTRO_PP_REG_WRITE(vpu, pipeline_en, 0x1);
 
 	src_pp_fmt = VPU_PP_IN_NV12;
 
@@ -242,7 +242,7 @@ static void hantro_postproc_g1_disable(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
 
-	HANTRO_PP_REG_WRITE_S(vpu, pipeline_en, 0x0);
+	HANTRO_PP_REG_WRITE(vpu, pipeline_en, 0x0);
 }
 
 static void hantro_postproc_g2_disable(struct hantro_ctx *ctx)
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
