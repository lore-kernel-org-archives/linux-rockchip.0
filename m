Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A098C27C40
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Aug 2023 01:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GAjrXNlGld1y0NPLPsPbllgrKvRLfak7B3Ax7vaWxPs=; b=vTcJK6tngn8Ack
	VG7ICVGdM7oBnx9hZDCJ33Q3yJpLwNUtOuITH/cns+VK+HxqHOV+yKb2m1ndarKPYTkEp9w0HCX3n
	J0G6RqEQ9j/Sxuu9NPJfsHeFbvVF/mTZrW+xqrlFomIeu7DUMgOYNukDZ9C0MXwAzqiFoyThz7Z75
	wN80BmPixzIjXYEwZRnYL/tXNFWeXzPAo8PEgrvX6nSa4177GoM13pE0XwlFXuFEBuHvOpHTXufF6
	8TGpsp7e5KKGA7jn1GbvwSwAk2XoRhGy6t3PyB4r+0BmjebFDRL8LWg98HMnaoyuJ38o+x1yO7iBG
	OSY7y124GEbs/YiN0YIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYzK2-001tQ1-2Q;
	Thu, 24 Aug 2023 01:39:42 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYzJz-001tPU-2a
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Aug 2023 01:39:41 +0000
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 30A838647E;
	Thu, 24 Aug 2023 03:39:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1692841178;
	bh=n+VBQRrBQaxWW+yJwsOPipCZth8juy6ZycPvNLJzwX8=;
	h=From:To:Cc:Subject:Date:From;
	b=cc1rCXw/i2e5/70jFcaM1/SWzg/5hFuBtjY7WMELA1NaLuOAwGO/BH1U4fsv9VypZ
	 fPzi/AGFSw5ztn1GwdMhrmDHUiNlfVDrLRnENPEq+7gNQKNe9T+KfG7k+T2MmNSmyZ
	 VAobhyuvtiR8VG3Pw/VGVuks/w9AHkGGucto9svnsmgoZOxsZQ0we5AYqZcg4HfD6x
	 j8H5Pom7d2v3+rirGp7MmVlsIqG4xQeyAD8MDOkoyziS5hfp3/2hZD7MNjasPqa705
	 YzaEmlWtOmJb4ETgvCQxy4uj6lxGzPwpA2wZR889bak7xBwc65rSPoUt8qzlXixT6e
	 +P4ARjPXtXCVQ==
From: Marek Vasut <marex@denx.de>
To: linux-media@vger.kernel.org
Cc: Marek Vasut <marex@denx.de>,
	Adam Ford <aford173@gmail.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] media: verisilicon: Do not enable G2 postproc downscale if source is narrower than destination
Date: Thu, 24 Aug 2023 03:39:35 +0200
Message-Id: <20230824013935.303132-1-marex@denx.de>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_183940_002009_4FE1F8C0 
X-CRM114-Status: GOOD (  12.74  )
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

In case of encoded input VP9 data width that is not multiple of macroblock
size, which is 16 (e.g. 1080x1920 frames, where 1080 is multiple of 8), the
width is padded to be a multiple of macroblock size (for 1080x1920 frames,
that is 1088x1920).

The hantro_postproc_g2_enable() checks whether the encoded data width is
equal to decoded frame width, and if not, enables down-scale mode. For a
frame where input is 1080x1920 and output is 1088x1920, this is incorrect
as no down-scale happens, the frame is only padded. Enabling the down-scale
mode in this case results in corrupted frames.

Fix this by adjusting the check to test whether encoded data width is
greater than decoded frame width, and only in that case enable the
down-scale mode.

To generate input test data to trigger this bug, use e.g.:
$ gst-launch-1.0 videotestsrc ! video/x-raw,width=272,height=256,format=I420 ! \
                 vp9enc ! matroskamux ! filesink location=/tmp/test.vp9
To trigger the bug upon decoding (note that the NV12 must be forced, as
that assures the output data would pass the G2 postproc):
$ gst-launch-1.0 filesrc location=/tmp/test.vp9 ! matroskademux ! vp9parse ! \
                 v4l2slvp9dec ! video/x-raw,format=NV12 ! videoconvert ! fbdevsink

Fixes: 79c987de8b35 ("media: hantro: Use post processor scaling capacities")
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Adam Ford <aford173@gmail.com>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
---
 drivers/media/platform/verisilicon/hantro_postproc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/hantro_postproc.c b/drivers/media/platform/verisilicon/hantro_postproc.c
index 0224ff68ab3fc..64d6fb852ae9b 100644
--- a/drivers/media/platform/verisilicon/hantro_postproc.c
+++ b/drivers/media/platform/verisilicon/hantro_postproc.c
@@ -107,7 +107,7 @@ static void hantro_postproc_g1_enable(struct hantro_ctx *ctx)
 
 static int down_scale_factor(struct hantro_ctx *ctx)
 {
-	if (ctx->src_fmt.width == ctx->dst_fmt.width)
+	if (ctx->src_fmt.width <= ctx->dst_fmt.width)
 		return 0;
 
 	return DIV_ROUND_CLOSEST(ctx->src_fmt.width, ctx->dst_fmt.width);
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
