Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 871E1C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 May 2022 13:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zpZAe/EPI/Bf7W/l5vSDTr65laOZV7pNilvParoZabA=; b=H9p2x/yClVlRj9
	U2aITLzsNsxehlGP01L6TXr36SdmB8Gzuvr2WCeGSH3e7z4p9iGR3AQzeZErluHpy94kGZztTz2Bs
	UtWny2UjOGsxK4LyE5HiqJzoZJIeT+O3vD4DBjZJ4t/daa1rGOWn4ACYFluuiE0utgbAOvBkUt1Ex
	nJFSKxJHNiTZwSBLwj4ZUllCoDg9ut5xLcGZq5HDNHnNWtmvsofmRH8QnnAz9s8ew2AfQDS9pUl8O
	cZJqbfWZO1Ke+UuENkCnSw6yebB1TH38qvoQTJKQCmI9POpbnklgAEo+DRaJ43qI+BDeCQpVxCiBP
	sLZwBlfm8Bx5mZ0tw1Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nlsCn-005xwR-Mx; Tue, 03 May 2022 13:04:41 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nlsCk-005xvC-8N
 for linux-rockchip@lists.infradead.org; Tue, 03 May 2022 13:04:39 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id 6F4981F4430A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651583074;
 bh=hkr05uuJPKXMb5S1cAIIku4fMqp84TgWb1SiORt8AWI=;
 h=From:To:Cc:Subject:Date:From;
 b=m48zmX1FqcMp7Rmqpr8fVbb9KjjIepgPaqdA+qTeJG1JniCd93QZaj+rrVM1AW08B
 8t5p7yV2S1h7D6Lfw0C4uKSDt5ont1dXw71XXyNiO1Z6QRTyo54e/+sdPcRWSvom5W
 fAEz5wylc3kDOz4DVTKe7XIgtRT6Ew2qqAhERaWIbMELnSG3hSzXtZ/fj1OMAZCgj5
 T8e/GGkL8faSvMssJTHvybmsgWjMkUAW/nvl7Yc6TplYxdNblOxigeN7j5klC09ciw
 il1ge3ft0h7Dn2f7gv+G1xkiC4EvkLrH8RpEqxjUl8Vtx/8KNuM3U6y1RmdVNndjhA
 BFD3xaYr1phVA==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org,
 gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 jon@nanocrew.net, aford173@gmail.com, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: hantro: HEVC: Fix reference frames management
Date: Tue,  3 May 2022 15:04:22 +0200
Message-Id: <20220503130422.622682-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220503_060438_599629_4AC0A1B4 
X-CRM114-Status: GOOD (  14.94  )
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

PoC shall be int the range of -2^31 to 2^31 -1
(HEVC spec section 8.3.1 Decoding process for picture order count).
The current way to know if an entry in reference picture array is free
is to test if PoC = UNUSED_REF. Since UNUSED_REF is defined as '-1' that
could lead to decode issue if one PoC also equal '-1'.
That is the case in fluster test SLIST_B_Sony_9.

Change the way unused entries are managed in reference pictures array to
avoid using PoC to detect then.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../staging/media/hantro/hantro_g2_hevc_dec.c |  6 ++---
 drivers/staging/media/hantro/hantro_hevc.c    | 27 +++----------------
 drivers/staging/media/hantro/hantro_hw.h      |  2 +-
 3 files changed, 6 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
index 0a8c01ff2fa7..b7835bbf5e98 100644
--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
@@ -473,8 +473,8 @@ static int set_ref(struct hantro_ctx *ctx)
 
 	set_ref_pic_list(ctx);
 
-	/* We will only keep the references picture that are still used */
-	ctx->hevc_dec.ref_bufs_used = 0;
+	/* We will only keep the references pictures that are still used */
+	hantro_hevc_ref_init(ctx);
 
 	/* Set up addresses of DPB buffers */
 	dpb_longterm_e = 0;
@@ -515,8 +515,6 @@ static int set_ref(struct hantro_ctx *ctx)
 	hantro_write_addr(vpu, G2_OUT_CHROMA_ADDR, chroma_addr);
 	hantro_write_addr(vpu, G2_OUT_MV_ADDR, mv_addr);
 
-	hantro_hevc_ref_remove_unused(ctx);
-
 	for (; i < V4L2_HEVC_DPB_ENTRIES_NUM_MAX; i++) {
 		hantro_write_addr(vpu, G2_REF_LUMA_ADDR(i), 0);
 		hantro_write_addr(vpu, G2_REF_CHROMA_ADDR(i), 0);
diff --git a/drivers/staging/media/hantro/hantro_hevc.c b/drivers/staging/media/hantro/hantro_hevc.c
index 7d4b1d72255c..7fdec50dc853 100644
--- a/drivers/staging/media/hantro/hantro_hevc.c
+++ b/drivers/staging/media/hantro/hantro_hevc.c
@@ -25,15 +25,11 @@
 #define MAX_TILE_COLS 20
 #define MAX_TILE_ROWS 22
 
-#define UNUSED_REF	-1
-
-static void hantro_hevc_ref_init(struct hantro_ctx *ctx)
+void hantro_hevc_ref_init(struct hantro_ctx *ctx)
 {
 	struct hantro_hevc_dec_hw_ctx *hevc_dec = &ctx->hevc_dec;
-	int i;
 
-	for (i = 0;  i < NUM_REF_PICTURES; i++)
-		hevc_dec->ref_bufs_poc[i] = UNUSED_REF;
+	hevc_dec->ref_bufs_used = 0;
 }
 
 dma_addr_t hantro_hevc_get_ref_buf(struct hantro_ctx *ctx,
@@ -60,7 +56,7 @@ int hantro_hevc_add_ref_buf(struct hantro_ctx *ctx, int poc, dma_addr_t addr)
 
 	/* Add a new reference buffer */
 	for (i = 0; i < NUM_REF_PICTURES; i++) {
-		if (hevc_dec->ref_bufs_poc[i] == UNUSED_REF) {
+		if (!(hevc_dec->ref_bufs_used & 1 << i)) {
 			hevc_dec->ref_bufs_used |= 1 << i;
 			hevc_dec->ref_bufs_poc[i] = poc;
 			hevc_dec->ref_bufs[i].dma = addr;
@@ -71,23 +67,6 @@ int hantro_hevc_add_ref_buf(struct hantro_ctx *ctx, int poc, dma_addr_t addr)
 	return -EINVAL;
 }
 
-void hantro_hevc_ref_remove_unused(struct hantro_ctx *ctx)
-{
-	struct hantro_hevc_dec_hw_ctx *hevc_dec = &ctx->hevc_dec;
-	int i;
-
-	/* Just tag buffer as unused, do not free them */
-	for (i = 0;  i < NUM_REF_PICTURES; i++) {
-		if (hevc_dec->ref_bufs_poc[i] == UNUSED_REF)
-			continue;
-
-		if (hevc_dec->ref_bufs_used & (1 << i))
-			continue;
-
-		hevc_dec->ref_bufs_poc[i] = UNUSED_REF;
-	}
-}
-
 static int tile_buffer_reallocate(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 9f31cce609d6..5de558386179 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -337,9 +337,9 @@ int hantro_hevc_dec_init(struct hantro_ctx *ctx);
 void hantro_hevc_dec_exit(struct hantro_ctx *ctx);
 int hantro_g2_hevc_dec_run(struct hantro_ctx *ctx);
 int hantro_hevc_dec_prepare_run(struct hantro_ctx *ctx);
+void hantro_hevc_ref_init(struct hantro_ctx *ctx);
 dma_addr_t hantro_hevc_get_ref_buf(struct hantro_ctx *ctx, s32 poc);
 int hantro_hevc_add_ref_buf(struct hantro_ctx *ctx, int poc, dma_addr_t addr);
-void hantro_hevc_ref_remove_unused(struct hantro_ctx *ctx);
 
 static inline unsigned short hantro_vp9_num_sbs(unsigned short dimension)
 {
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
