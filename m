Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10F54C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Mar 2022 18:36:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IbR+mOFbQHuh2jxWFRVZaRX0rb/zShExtdUhcf/lOfo=; b=4IIA+H8fpIITjj
	P+lBV+KC1IF25ZGWX3GeyWmKYqEaGXicnnsLpBqnc0fT1O7GFd3BH5XYtnLkVnOkIpyddC2zG5vMp
	VUkISlpzjYJIceKPXpUyLINd/u4yI5sERN2LABBUzqHVSUKrfNWVZ8QvgUC0WjMQTwAI/DpQtUXsm
	yWaecJwpxpICm6SOapIBk3+yt0zFvCTU0FuCL/Xg/5UWBV4dpjjS12q/QB5malvQeFjt+7OT15GJJ
	xYxpSRy3IjSPAB83Fg+MjtyL13cvYZ/8JqK5z1ZsZz5PidQ0DpUtMo9WczLgT6MvZI5lXcpSaHDMB
	boNmpQZh9F3vw7Z8IICA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYBHB-004i6q-Rf; Sat, 26 Mar 2022 18:36:37 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYBH9-004i4a-0X
 for linux-rockchip@lists.infradead.org; Sat, 26 Mar 2022 18:36:36 +0000
Received: from localhost (unknown [IPv6:2a02:3030:b:56bb:4cb:3227:231:99f8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 69D8D1F44FBF;
 Sat, 26 Mar 2022 18:36:33 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648319793;
 bh=0LbIskzUpKi13BEPgM5TnTSCxgDUwO8aXIcFBWj7xRE=;
 h=From:To:Cc:Subject:Date:From;
 b=cAIrxgy2Y+0pcqgObdaDi6S0q5QsLxN6WptKxFirODn0OlleztAfRQL1HWkmOmr2z
 DZIXz3mk/A9w7J+R+EjTBLJ0JVsFkPXg63k1ZpKl0i5kTs6UZHBt9s8b6nMnXU4tRl
 WkVAcejKbsExYRxGpZ9Yw/hpoxEmF54oRyAIBeUQotAT7FX0BoVUUJ+WNHWXNLEInn
 hL08afOr4lkDHh66HfTDYsuOt5QCjWrjfj2eIlJ3ip4jxgZV4Esq2s7Nh7Czzxtmkc
 q+Wk/p20kp8qJEHCRPnQ/yADOOmn+hat2awVsNGESa2lRdVuSsXA53Dzvh81xlWmVn
 sQTeMEKjxXbsA==
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: linux-media@vger.kernel.org
Cc: Sebastian Fricke <sebastian.fricke@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org (open list:HANTRO VPU CODEC DRIVER),
 linux-staging@lists.linux.dev (open list:STAGING SUBSYSTEM),
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] staging: media: hantro: Fix typos
Date: Sat, 26 Mar 2022 19:36:03 +0100
Message-Id: <20220326183603.66797-1-sebastian.fricke@collabora.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220326_113635_207678_6E6E3507 
X-CRM114-Status: GOOD (  12.30  )
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

Fix typos in comments within the Hantro driver.

Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 drivers/staging/media/hantro/hantro_g2_hevc_dec.c | 2 +-
 drivers/staging/media/hantro/hantro_hevc.c        | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
index c524af41baf5..c0645e335fc9 100644
--- a/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
+++ b/drivers/staging/media/hantro/hantro_g2_hevc_dec.c
@@ -406,7 +406,7 @@ static int set_ref(struct hantro_ctx *ctx)
 
 	set_ref_pic_list(ctx);
 
-	/* We will only keep the references picture that are still used */
+	/* We will only keep the reference pictures that are still used */
 	ctx->hevc_dec.ref_bufs_used = 0;
 
 	/* Set up addresses of DPB buffers */
diff --git a/drivers/staging/media/hantro/hantro_hevc.c b/drivers/staging/media/hantro/hantro_hevc.c
index b49a41d7ae91..9c351f7fe6bd 100644
--- a/drivers/staging/media/hantro/hantro_hevc.c
+++ b/drivers/staging/media/hantro/hantro_hevc.c
@@ -59,7 +59,7 @@ dma_addr_t hantro_hevc_get_ref_buf(struct hantro_ctx *ctx,
 	struct hantro_hevc_dec_hw_ctx *hevc_dec = &ctx->hevc_dec;
 	int i;
 
-	/* Find the reference buffer in already know ones */
+	/* Find the reference buffer in already known ones */
 	for (i = 0;  i < NUM_REF_PICTURES; i++) {
 		if (hevc_dec->ref_bufs_poc[i] == poc) {
 			hevc_dec->ref_bufs_used |= 1 << i;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
