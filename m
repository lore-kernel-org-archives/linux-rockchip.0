Return-Path: <SRS0=qd64=OM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECE83C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 10:13:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C2DEC61178
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 10:13:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C2DEC61178
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOmmuzwNse6eNQwqqhVDxbhwk1qOqT7r3i32WZL03cg=; b=fZsik/4F9VFXHh
	AewBMBXb0QTiXycIRHicz/VaxKUBkcrlJpmOqox2WMNmXCsiJZJkbtm7MUy8MOOSjwrl34urrGJY4
	xaMeK4AKTuHvSCPgIN5Ne6sCWT45pMC8hZhReFlFr3N8KYOYRAMaKFeLMvuhpIPY20nqNsQlPMqb9
	NEODR7NEvUWIkKtlkfDqEgFG9UEhXUTaKAHKfNRCaxNChQyvn377gT3pdnpgF/SW2XGYvcJCjVUjz
	EPT4zAeZC/JS+cecxUBsGuGiWuH+ROEvW1qymTDI7ccZ50tV53n5rXrs72dHjlfc3I1t7EdoNByJK
	XDuly3aqXn+zy5pxRWzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSzFj-007hmg-ND; Wed, 22 Sep 2021 10:13:23 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSzER-007hAn-Mc; Wed, 22 Sep 2021 10:12:05 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: andrzej.p) with ESMTPSA id E57C81F437EA
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
To: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Cc: Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Fabio Estevam <festevam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Heiko Stuebner <heiko@sntech.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v5 04/10] hantro: Add quirk for NV12/NV12_4L4 capture format
Date: Wed, 22 Sep 2021 12:11:40 +0200
Message-Id: <20210922101146.13762-5-andrzej.p@collabora.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210922101146.13762-1-andrzej.p@collabora.com>
References: <20210922101146.13762-1-andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_031203_922869_558CF36A 
X-CRM114-Status: GOOD (  18.70  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Ezequiel Garcia <ezequiel@collabora.com>

The G2 core decoder engine produces NV12_4L4 format,
which is a simple NV12 4x4 tiled format. The driver currently
hides this format by always enabling the post-processor engine,
and therefore offering NV12 directly.

This is done without using the logic in hantro_postproc.c
and therefore makes it difficult to add VP9 cleanly.

Since fixing this is not easy, add a small quirk to force
NV12 if HEVC was configured, but otherwise declare NV12_4L4
as the pixel format in imx8mq_vpu_g2_variant.dec_fmts.

This will be used by the VP9 decoder which will be added soon.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
---
 drivers/staging/media/hantro/hantro_v4l2.c  | 14 ++++++++++++++
 drivers/staging/media/hantro/imx8m_vpu_hw.c |  2 +-
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_v4l2.c b/drivers/staging/media/hantro/hantro_v4l2.c
index bcb0bdff4a9a..d1f060c55fed 100644
--- a/drivers/staging/media/hantro/hantro_v4l2.c
+++ b/drivers/staging/media/hantro/hantro_v4l2.c
@@ -150,6 +150,20 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 	unsigned int num_fmts, i, j = 0;
 	bool skip_mode_none;
 
+	/*
+	 * The HEVC decoder on the G2 core needs a little quirk to offer NV12
+	 * only on the capture side. Once the post-processor logic is used,
+	 * we will be able to expose NV12_4L4 and NV12 as the other cases,
+	 * and therefore remove this quirk.
+	 */
+	if (capture && ctx->vpu_src_fmt->fourcc == V4L2_PIX_FMT_HEVC_SLICE) {
+		if (f->index == 0) {
+			f->pixelformat = V4L2_PIX_FMT_NV12;
+			return 0;
+		}
+		return -EINVAL;
+	}
+
 	/*
 	 * When dealing with an encoder:
 	 *  - on the capture side we want to filter out all MODE_NONE formats.
diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index 02e61438220a..a40b161e5956 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -134,7 +134,7 @@ static const struct hantro_fmt imx8m_vpu_dec_fmts[] = {
 
 static const struct hantro_fmt imx8m_vpu_g2_dec_fmts[] = {
 	{
-		.fourcc = V4L2_PIX_FMT_NV12,
+		.fourcc = V4L2_PIX_FMT_NV12_4L4,
 		.codec_mode = HANTRO_MODE_NONE,
 	},
 	{
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
