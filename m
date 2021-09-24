Return-Path: <SRS0=mPt0=OO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A3AC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Sep 2021 13:26:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5760260BD3
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Sep 2021 13:26:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5760260BD3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I6/UAcz+azALBUYfcXIfuPtDRDgh9+Gn5yaYlijSXgk=; b=nHDFHsdONsntSL
	HHhrL0vSo87/l8vPFMjbz8Ll3u96buSSQxczNRHvrloyt1SKB0TVmNV7PCuyvDb+Y9ryO1N3oj4nb
	BCs30aqEY1NbQZHBX+R4Onh5579Lx+Ob73YXOWmY9LhmoA0j6mUsqRPi+YH8EJAea2OSS6SoKhtpv
	f2y/0V18Q3ehfaFeY25qiZ3LYlCyxqKJLY56b3scLBx6aBnC8ujSZObHCKmXaT9qJ1GFhYueNkxVn
	m1jeSxouo8Ni6zQVc/lKhLUEyyp4aj/6UnfExfinDc/jN7ososoXcZqvdxFAE7eSgbCqq8CVrDziN
	MS9o098D+BTj4MSJU7aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mTlDu-00EZfu-Hu; Fri, 24 Sep 2021 13:26:42 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mTlCK-00EYyN-Tf
 for linux-rockchip@lists.infradead.org; Fri, 24 Sep 2021 13:25:06 +0000
Received: from benjamin-XPS-13-9310.. (unknown
 [IPv6:2a01:e0a:4cb:a870:60fa:cb2f:7fe1:65a3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 88A751F44B7C;
 Fri, 24 Sep 2021 14:25:02 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: p.zabel@pengutronix.de,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v2] media: hantro: Auto generate the AXI ID to avoid conflicts
Date: Fri, 24 Sep 2021 15:24:47 +0200
Message-Id: <20210924132447.2288167-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210924_062505_130489_DB20995F 
X-CRM114-Status: GOOD (  15.48  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The AXI ID is an AXI bus configuration for improve bus performance. 
If read and write operations use different ID the operations can be paralleled,
whereas when they have the same ID the operations will be serialized. 
Right now, the write ID is fixed to 0 but we can set it to 0xff to get auto
generated ID to avoid possible conflicts.

This change has no functional changes, but seems reasonable to let the
hardware to autogenerate the ID instead of hardcoding in software.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
changes in version 2:
- Add a macro with comment about the value.
- Make VP8 and H264 codecs use the macro.
- fluster tests on the both codecs show no regressions.
  ./fluster.py run -ts VP8-TEST-VECTORS -d GStreamer-VP8-V4L2SL-Gst1.0
  ./fluster.py run -ts JVT-AVC_V1 -d GStreamer-H.264-V4L2SL-Gst1.0
- The both codec write other bits in the same configuration register
  so the simplest solution is to use the macro in the both cases.

 drivers/staging/media/hantro/hantro_g1_h264_dec.c | 2 +-
 drivers/staging/media/hantro/hantro_g1_regs.h     | 2 ++
 drivers/staging/media/hantro/hantro_g1_vp8_dec.c  | 3 ++-
 3 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
index 236ce24ca00c..f49dbfb8a843 100644
--- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
@@ -29,7 +29,7 @@ static void set_params(struct hantro_ctx *ctx, struct vb2_v4l2_buffer *src_buf)
 	u32 reg;
 
 	/* Decoder control register 0. */
-	reg = G1_REG_DEC_CTRL0_DEC_AXI_WR_ID(0x0);
+	reg = G1_REG_DEC_CTRL0_DEC_AXI_AUTO;
 	if (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)
 		reg |= G1_REG_DEC_CTRL0_SEQ_MBAFF_E;
 	if (sps->profile_idc > 66) {
diff --git a/drivers/staging/media/hantro/hantro_g1_regs.h b/drivers/staging/media/hantro/hantro_g1_regs.h
index c1756e3d5391..c623b3b0be18 100644
--- a/drivers/staging/media/hantro/hantro_g1_regs.h
+++ b/drivers/staging/media/hantro/hantro_g1_regs.h
@@ -68,6 +68,8 @@
 #define     G1_REG_DEC_CTRL0_PICORD_COUNT_E		BIT(9)
 #define     G1_REG_DEC_CTRL0_DEC_AHB_HLOCK_E		BIT(8)
 #define     G1_REG_DEC_CTRL0_DEC_AXI_WR_ID(x)		(((x) & 0xff) << 0)
+/* Setting AXI ID to 0xff to get auto generated ID to avoid possible conflicts */
+#define     G1_REG_DEC_CTRL0_DEC_AXI_AUTO		G1_REG_DEC_CTRL0_DEC_AXI_WR_ID(0xff)
 #define G1_REG_DEC_CTRL1				0x010
 #define     G1_REG_DEC_CTRL1_PIC_MB_WIDTH(x)		(((x) & 0x1ff) << 23)
 #define     G1_REG_DEC_CTRL1_MB_WIDTH_OFF(x)		(((x) & 0xf) << 19)
diff --git a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
index 6180b23e7d94..851eb67f19f5 100644
--- a/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_vp8_dec.c
@@ -463,7 +463,8 @@ int hantro_g1_vp8_dec_run(struct hantro_ctx *ctx)
 	      G1_REG_CONFIG_DEC_MAX_BURST(16);
 	vdpu_write_relaxed(vpu, reg, G1_REG_CONFIG);
 
-	reg = G1_REG_DEC_CTRL0_DEC_MODE(10);
+	reg = G1_REG_DEC_CTRL0_DEC_MODE(10) |
+	      G1_REG_DEC_CTRL0_DEC_AXI_AUTO;
 	if (!V4L2_VP8_FRAME_IS_KEY_FRAME(hdr))
 		reg |= G1_REG_DEC_CTRL0_PIC_INTER_E;
 	if (!(hdr->flags & V4L2_VP8_FRAME_FLAG_MB_NO_SKIP_COEFF))
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
