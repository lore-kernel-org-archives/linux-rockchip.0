Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F18AC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 May 2022 20:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O9IlfpK+tCUs3dKLJrTauZz2rf7XjZK/1fXdNHGy8QI=; b=mEGn4Y4Q7YvUgz
	dfi5qqV5x2MJbRJ5Hs+cAuMaOEcdfqnSQ8i01/2hODCIr4hByOyceB7FIMwGTpIbClmdv3yTcmLgR
	dmxEsJKINIey0+r+onvOpo0t2oa3WJGHxomIkTvvjcfLmuIk5FxMTMxT4++ze6U/7cUsE4YHuKCy9
	TeW5/UejTdAItUhJm2Q5zBRQKKNh8Vw0wUm1SYJmQ0ytH/2/O7GGYuRckqcR2SvrUhpTiAwEcBG+Y
	V3+X6IH9LNCKsMbKpb6V8Dhx7b4FSezz8e7cBls6Dnr08N6hJ1Hzwh39etHdj0iTLm23eH4TDUxAf
	RZOFSA59kH/A1CP7ncVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npc5l-00Ha0J-CS; Fri, 13 May 2022 20:40:53 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npbv5-00HVCE-Hb
 for linux-rockchip@lists.infradead.org; Fri, 13 May 2022 20:29:53 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id B4FE31F46489
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1652473790;
 bh=lIxlnphkLCaVBUiFzEyVrDZH6uoUDfUFIWUVGXdyJKU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VqNNO9dpmcXgsqSoG08E/e4ANf6VIO0SS4tqU/u1KEPXwTpJERV+/ZKV39worJ/Ik
 EhhzeGw9ektnLCaFKZZoVh/ov4dW1HN3Pl/mjsaVhtSZb8u7j0l1YQnXBJmEAuL+YO
 qK96ZpUc1cFJOR2fjrOiqBMi/JuYcjQQ5Mc97EZYhIM5kGujK0nsMRGGAXwnf/8IJa
 Dy5jYKWOlG057qgtsqTConC6avwGnh2A+0nb+gzMwMZczHRgUyQT6MpcVCB3f4Rf46
 YroY+kNaa97PiU91F/GlX/lNJdDVEyQpTpUKwDhXeLuMC3dPe3zDCBwFaMvywATF98
 mCB9fD+/Q2cDQ==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Boris Brezillon <boris.brezillon@collabora.com>
Cc: nicolas@ndufresne.ca, Jonas Karlman <jonas@kwiboo.se>,
 linux-media@vger.kernel.org, Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 10/20] media: rkvdec: h264: Fix bit depth wrap in pps packet
Date: Fri, 13 May 2022 16:29:12 -0400
Message-Id: <20220513202922.13846-11-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.3
In-Reply-To: <20220513202922.13846-1-nicolas.dufresne@collabora.com>
References: <20220513202922.13846-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_132951_813070_B89806C6 
X-CRM114-Status: GOOD (  11.29  )
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

From: Jonas Karlman <jonas@kwiboo.se>

The luma and chroma bit depth fields in the pps packet are 3 bits wide.
8 is wrongly added to the bit depth values written to these 3 bit fields.
Because only the 3 LSB are written, the hardware was configured
correctly.

Correct this by not adding 8 to the luma and chroma bit depth value.

Fixes: cd33c830448ba ("media: rkvdec: Add the rkvdec driver")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
---
 drivers/staging/media/rkvdec/rkvdec-h264.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
index bcde37d72244..8d44a884a52e 100644
--- a/drivers/staging/media/rkvdec/rkvdec-h264.c
+++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
@@ -662,8 +662,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
 	WRITE_PPS(0xff, PROFILE_IDC);
 	WRITE_PPS(1, CONSTRAINT_SET3_FLAG);
 	WRITE_PPS(sps->chroma_format_idc, CHROMA_FORMAT_IDC);
-	WRITE_PPS(sps->bit_depth_luma_minus8 + 8, BIT_DEPTH_LUMA);
-	WRITE_PPS(sps->bit_depth_chroma_minus8 + 8, BIT_DEPTH_CHROMA);
+	WRITE_PPS(sps->bit_depth_luma_minus8, BIT_DEPTH_LUMA);
+	WRITE_PPS(sps->bit_depth_chroma_minus8, BIT_DEPTH_CHROMA);
 	WRITE_PPS(0, QPPRIME_Y_ZERO_TRANSFORM_BYPASS_FLAG);
 	WRITE_PPS(sps->log2_max_frame_num_minus4, LOG2_MAX_FRAME_NUM_MINUS4);
 	WRITE_PPS(sps->max_num_ref_frames, MAX_NUM_REF_FRAMES);
-- 
2.34.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
