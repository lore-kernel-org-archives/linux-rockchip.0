Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4E2FC05027
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Feb 2023 10:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2UCn6ai7D7FR9SReQviewYlhkRXdM8sMfflhclYr3x0=; b=M+YkGYiSrvhbYJ
	/7fPjRjEsM/ia+Sk83EGfVvji3NbG0c6ao2WzRk5BtTgx84iRCOJW1SZFlO/wNOaplmytYebmW5jo
	7WsiaS6scSSaZwdzWS5vwxY0AP6F1MWmKOhBgzRq037Rx/IDw5bMVv4Z0OyqbxvpsXJrpg5lL2cI9
	ZnAdMrmCHdzEhg5YJVywrE4mrLeiGAiT0mkyPfBQGgcCrAGZqoE6DTO4xAncQImfEmHAoCqA7sZ1C
	MWrQxHXfQN2nAyw1m9QGYVfAVt+Vl9GYfo16M5WZU12S8j1EeusgRL8UjJmcZRGP3itaoGF4HdsYt
	ieSsPbd1hzd4oN9mfGKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU3la-003jC3-28; Mon, 20 Feb 2023 10:51:30 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU3jD-003i29-Os; Mon, 20 Feb 2023 10:49:05 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:d30c:b155:96fb:dcc])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B5CEE6602142;
	Mon, 20 Feb 2023 10:48:59 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1676890140;
	bh=SxFS3sgxVfXOtyOQNwLjMDuu7K/g1eyIum+Nn/+YN6I=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Z8il/20VIKq6sJsWP5TMNUgVLnXgtrZetPbZoe0LpXmDIBGOuXk1dVfgwHrQ5JvhX
	 p01Uk7bpBhcy4RWEwXoCYGJjsuKG8IYVBpbAuBhCoFHQAtMWE1HRxDhA5DJHmpzwdt
	 YgmzvCnPEWUWPYWhDx8PB+8ZsL/IlUJPfe1Od8z5t7Z95pknu1MdvTa8lP2Kqmnjee
	 pYt1FnRgo8ZV9WR5hDROXpTs0LQ6FwVuj09Q95sEnTJuZyGgxZ9fMFA+9orZBCv0Xi
	 +3tnSn1QAzhUalkmPbpaxIRuWe3Rwu/GJFJMIQL0GtjHcFUtKn5290gvgENv5uXufX
	 a+pJSqGVKt1Gg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.co.uk,
	robert.mader@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
Subject: [PATCH v9 5/6] media: verisilicon: HEVC: Only propose 10 bits compatible pixels formats
Date: Mon, 20 Feb 2023 11:48:48 +0100
Message-Id: <20230220104849.398203-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
References: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_024903_980308_9F315F75 
X-CRM114-Status: GOOD (  12.37  )
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

When decoding a 10bits bitstreams HEVC driver should only expose
10bits pixel formats.
To fulfill this requirement it is needed to call hantro_reset_raw_fmt()
when bit depth change and to correctly set match_depth in pixel formats
enumeration.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
version 9:
- Fix brackets

 drivers/media/platform/verisilicon/hantro_drv.c   | 12 +++++++++---
 drivers/media/platform/verisilicon/imx8m_vpu_hw.c |  2 ++
 2 files changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
index c237253803f4..7d452f1afaae 100644
--- a/drivers/media/platform/verisilicon/hantro_drv.c
+++ b/drivers/media/platform/verisilicon/hantro_drv.c
@@ -325,9 +325,15 @@ static int hantro_hevc_s_ctrl(struct v4l2_ctrl *ctrl)
 			   struct hantro_ctx, ctrl_handler);
 
 	switch (ctrl->id) {
-	case V4L2_CID_STATELESS_HEVC_SPS:
-		ctx->bit_depth = ctrl->p_new.p_hevc_sps->bit_depth_luma_minus8 + 8;
-		break;
+	case V4L2_CID_STATELESS_HEVC_SPS: {
+		const struct v4l2_ctrl_hevc_sps *sps = ctrl->p_new.p_hevc_sps;
+		int bit_depth = sps->bit_depth_luma_minus8 + 8;
+
+		if (ctx->bit_depth == bit_depth)
+			return 0;
+
+		return hantro_reset_raw_fmt(ctx, bit_depth);
+	}
 	default:
 		return -EINVAL;
 	}
diff --git a/drivers/media/platform/verisilicon/imx8m_vpu_hw.c b/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
index b390228fd3b4..f850d8bddef6 100644
--- a/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
+++ b/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
@@ -152,6 +152,7 @@ static const struct hantro_fmt imx8m_vpu_g2_postproc_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_NV12,
 		.codec_mode = HANTRO_MODE_NONE,
+		.match_depth = true,
 		.postprocessed = true,
 		.frmsize = {
 			.min_width = FMT_MIN_WIDTH,
@@ -165,6 +166,7 @@ static const struct hantro_fmt imx8m_vpu_g2_postproc_fmts[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_P010,
 		.codec_mode = HANTRO_MODE_NONE,
+		.match_depth = true,
 		.postprocessed = true,
 		.frmsize = {
 			.min_width = FMT_MIN_WIDTH,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
