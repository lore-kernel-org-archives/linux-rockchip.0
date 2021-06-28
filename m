Return-Path: <SRS0=Ln7Z=LW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82C3EC49361
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 12:55:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 32BC461A0F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Jun 2021 12:55:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 32BC461A0F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rFl4VOktmBByB4w8+fUcOHSwHP8YNrbw8YpbkjH3rjU=; b=OFiQ+sRROJmg+o
	S9cT8ZWgpOWFRPZ78cqjPIx3IbkscA0dVj+HxTPEdq0a0fh80jomD99dli4O2HWHPZvFk41VUXmQL
	988H2bJaQ63ECo0zX5srwPK4tpAG77LT/iIsJUY/aZrDRYoY62+nw7foUZbXHXWp61tqkaBYAT5eB
	L7h1DOCbYj0JiI4sA6eUd3dJtmInOo97sqM2ZG1bNaiQGtMVfigfSuZwq8qG7JFItPuAKQVFJq+UF
	zNlXHCFa4sRKjK/4vkorbVUh5Kg0xPkCJzoyH6ZAbaXd2Cvk7HqJvrG/MAXr2qZMWDlsC1UKZB8ik
	NSS0iArCbmbyC2J91zYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxqmz-0084Z2-1s; Mon, 28 Jun 2021 12:55:01 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxqmu-0084Ui-Cx
 for linux-rockchip@lists.infradead.org; Mon, 28 Jun 2021 12:55:00 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 293061F423D5
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>,
 Heiko Stuebner <heiko@sntech.de>, Alex Bee <knaerzche@gmail.com>,
 maccraft123mc@gmail.com, Chris Healy <cphealy@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com
Subject: [PATCH v2 07/10] media: hantro: Enable H.264 on Rockchip VDPU2
Date: Mon, 28 Jun 2021 09:54:07 -0300
Message-Id: <20210628125410.9228-8-ezequiel@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210628125410.9228-1-ezequiel@collabora.com>
References: <20210628125410.9228-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_055456_632276_C5473C99 
X-CRM114-Status: GOOD (  10.36  )
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

Given H.264 support for VDPU2 was just added, let's enable it.
For now, this is only enabled on platform that don't have
an RKVDEC core, such as RK3328.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Tested-by: Alex Bee <knaerzche@gmail.com>
---
 .../staging/media/hantro/rockchip_vpu_hw.c    | 26 ++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/rockchip_vpu_hw.c b/drivers/staging/media/hantro/rockchip_vpu_hw.c
index 3ccc16413f42..e4e3b5e7689b 100644
--- a/drivers/staging/media/hantro/rockchip_vpu_hw.c
+++ b/drivers/staging/media/hantro/rockchip_vpu_hw.c
@@ -162,6 +162,19 @@ static const struct hantro_fmt rk3399_vpu_dec_fmts[] = {
 		.fourcc = V4L2_PIX_FMT_NV12,
 		.codec_mode = HANTRO_MODE_NONE,
 	},
+	{
+		.fourcc = V4L2_PIX_FMT_H264_SLICE,
+		.codec_mode = HANTRO_MODE_H264_DEC,
+		.max_depth = 2,
+		.frmsize = {
+			.min_width = 48,
+			.max_width = 1920,
+			.step_width = MB_DIM,
+			.min_height = 48,
+			.max_height = 1088,
+			.step_height = MB_DIM,
+		},
+	},
 	{
 		.fourcc = V4L2_PIX_FMT_MPEG2_SLICE,
 		.codec_mode = HANTRO_MODE_MPEG2_DEC,
@@ -388,6 +401,12 @@ static const struct hantro_codec_ops rk3399_vpu_codec_ops[] = {
 		.init = hantro_jpeg_enc_init,
 		.exit = hantro_jpeg_enc_exit,
 	},
+	[HANTRO_MODE_H264_DEC] = {
+		.run = rockchip_vpu2_h264_dec_run,
+		.reset = rockchip_vpu2_dec_reset,
+		.init = hantro_h264_dec_init,
+		.exit = hantro_h264_dec_exit,
+	},
 	[HANTRO_MODE_MPEG2_DEC] = {
 		.run = rockchip_vpu2_mpeg2_dec_run,
 		.reset = rockchip_vpu2_dec_reset,
@@ -433,6 +452,8 @@ static const char * const rockchip_vpu_clk_names[] = {
 	"aclk", "hclk"
 };
 
+/* VDPU1/VEPU1 */
+
 const struct hantro_variant rk3036_vpu_variant = {
 	.dec_offset = 0x400,
 	.dec_fmts = rk3066_vpu_dec_fmts,
@@ -495,11 +516,14 @@ const struct hantro_variant rk3288_vpu_variant = {
 	.num_clocks = ARRAY_SIZE(rockchip_vpu_clk_names)
 };
 
+/* VDPU2/VEPU2 */
+
 const struct hantro_variant rk3328_vpu_variant = {
 	.dec_offset = 0x400,
 	.dec_fmts = rk3399_vpu_dec_fmts,
 	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
-	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER,
+	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER |
+		 HANTRO_H264_DECODER,
 	.codec_ops = rk3399_vpu_codec_ops,
 	.irqs = rockchip_vdpu2_irqs,
 	.num_irqs = ARRAY_SIZE(rockchip_vdpu2_irqs),
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
