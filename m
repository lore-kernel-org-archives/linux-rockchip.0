Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 799C8C47DD9
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 15:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ms0qq8XY1QHAvvDytQ0tCa98udwAOAKu5XLKivun2Gk=; b=DVcye+bc0fKDxt
	lNsIXAHHab5ve9Hnd7MDBwglEVzfhqcJpitdUJlSMGWqycHsFr/S0u4lMB+r69qXme3VHFtbDW3r+
	/fPBpwiRW20+wvtjF+CPMzEU2talXRoax3N31LY0GEnns8LnOiLrY/flqqtQcTThZ2HehOTRjgYrQ
	zohmZSmjaYHz/wSyrk20Bj2HL4vix1SNZWxtInncWGRHa4Tdi6j55Jdv6fmficb3yInMiEZCD5VLx
	WQfhPy2PRc3s3/gcTh/pJJK4vP+BQ9PABT+nGwdOjCkBfv4Bkk0l5wIzoEwDRkaCT0KUWi8bhan2x
	TDoyD75Jue2mnREjkwaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRw4a-00Cfv8-2T;
	Mon, 22 Jan 2024 15:18:52 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRw4X-00Cfso-0E;
	Mon, 22 Jan 2024 15:18:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id ED74DCE1F9C;
	Mon, 22 Jan 2024 15:18:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51399C433F1;
	Mon, 22 Jan 2024 15:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705936725;
	bh=x+GME/pW0ImcoiooljvRQB6lneboPqvjWFzQHvwQ8zc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OW0Zb1TDTha7/SVNPz3m7H0iLy2wI9rlc87hO3gx4n/KPkPYDPi650MsWhIUvk5lJ
	 X3RAVBfQaXD2fqr8NsfQfaE0mEt+pUsB0Hbu4kMnWTNcDJVMBCZs0/Dn19qzuyxQpy
	 eimiEEXF4aAaPhmdmiXUIGhrQ3c8PrX5MhLVXuHSFXwYvz9L4KxewNZ0JkGGhc85HI
	 +ck0c8319Nyn0Xhbs52ESdgCj85oo3rlArEumgaeTPZ0JFR/ywoEQ0pZXUoAFs+jNh
	 dggdlSQWgJvYeCtf6gFkJyg3mSlRPb31rYGXhUOCPd14tNGpZz34BDfPQWu72H+4Cf
	 UFdBwzKAEZcFA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Michael Tretter <m.tretter@pengutronix.de>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Sasha Levin <sashal@kernel.org>,
	jacob-chen@iotwrt.com,
	ezequiel@vanguardiasur.com.ar,
	mchehab@kernel.org,
	heiko@sntech.de,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH AUTOSEL 4.19 10/23] media: rockchip: rga: fix swizzling for RGB formats
Date: Mon, 22 Jan 2024 10:17:50 -0500
Message-ID: <20240122151823.997644-10-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240122151823.997644-1-sashal@kernel.org>
References: <20240122151823.997644-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 4.19.305
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_071849_453713_404BB53F 
X-CRM114-Status: GOOD (  15.50  )
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

From: Michael Tretter <m.tretter@pengutronix.de>

[ Upstream commit 9e7dc39260edac180c206bb6149595a40eabae3e ]

When using 32 bit RGB formats, the RGA on the rk3568 produces wrong
colors as the wrong color channels are read or written.  The reason is
that the format description for the channel swizzeling is wrong and the
wrong bits are configured. For example, when converting ARGB32 to NV12,
the alpha channel is used as blue channel.. This doesn't happen if the
color format is the same on both sides.

Fix the color_swap settings of the formats to correctly handle 32 bit
RGB formats.

For RGA_COLOR_FMT_XBGR8888, the RGA_COLOR_ALPHA_SWAP bit doesn't have an
effect. Thus, it isn't possible to handle the V4L2_PIX_FMT_XRGB32. Thus,
it is removed from the list of supported formats.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/rockchip/rga/rga.c | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 86a76f35a9a1..03bf575fd31a 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -195,25 +195,16 @@ static int rga_setup_ctrls(struct rga_ctx *ctx)
 static struct rga_fmt formats[] = {
 	{
 		.fourcc = V4L2_PIX_FMT_ARGB32,
-		.color_swap = RGA_COLOR_RB_SWAP,
+		.color_swap = RGA_COLOR_ALPHA_SWAP,
 		.hw_format = RGA_COLOR_FMT_ABGR8888,
 		.depth = 32,
 		.uv_factor = 1,
 		.y_div = 1,
 		.x_div = 1,
 	},
-	{
-		.fourcc = V4L2_PIX_FMT_XRGB32,
-		.color_swap = RGA_COLOR_RB_SWAP,
-		.hw_format = RGA_COLOR_FMT_XBGR8888,
-		.depth = 32,
-		.uv_factor = 1,
-		.y_div = 1,
-		.x_div = 1,
-	},
 	{
 		.fourcc = V4L2_PIX_FMT_ABGR32,
-		.color_swap = RGA_COLOR_ALPHA_SWAP,
+		.color_swap = RGA_COLOR_RB_SWAP,
 		.hw_format = RGA_COLOR_FMT_ABGR8888,
 		.depth = 32,
 		.uv_factor = 1,
@@ -222,7 +213,7 @@ static struct rga_fmt formats[] = {
 	},
 	{
 		.fourcc = V4L2_PIX_FMT_XBGR32,
-		.color_swap = RGA_COLOR_ALPHA_SWAP,
+		.color_swap = RGA_COLOR_RB_SWAP,
 		.hw_format = RGA_COLOR_FMT_XBGR8888,
 		.depth = 32,
 		.uv_factor = 1,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
