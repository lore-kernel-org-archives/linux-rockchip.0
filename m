Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C915C77B7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Jun 2025 12:33:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jVKhubm6CtMW71D3EVMvamXq2G4sxtNRpgIgPCJsPhc=; b=UDOWQejIeMNawU
	Ebtafe+riI0IP+ig280fzDC9tCqJmFWxCiCKksm+CEEy7tJycKgLVJSuQUcIjYXGjNXbDZbBE4hyN
	DIKRm8AjT6zqnqHzq5fkciso/uhOa2s4Q5lV+D6JAtKeWWIalq5URZOPCCcRHdXgVUueaGdL18twB
	YB0rg4fD4nPLp3RgAjlJQbQ2stE7+1MKHIuzjyz69nQSVBWXsnIpmFVWsF/JglbrpqgoWbNcUxheH
	2939m0K4wZ/vpMIiUZ9p+V6OcEyIDw6zETjjrLRV1EBOJxAXsfglZxCyXcVNfNPSQizoq11v4McrH
	j7/Z5wtM5weCghJgK6LA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU2px-00000005aye-3ym9;
	Tue, 24 Jun 2025 12:33:17 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uU2mX-00000005aBg-0NPu
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Jun 2025 12:29:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1750768182;
	bh=8WAPJMaT3RPf5H8MPe+6Y+/A6cCV8GHnSu9zGp/405I=;
	h=From:To:Cc:Subject:Date:From;
	b=qctFoLm4S1HCsLWt+Nk4SlF4ZMzxRq0J4jEg964rH2UaOfmjM/0VmQirKWRj4WuOA
	 huRpTjdECUX+l4o6iHyG+0OXYZdHwNFKJeAC9xD1euHK0orJ+VHKk7U9zyiNBRlyP6
	 UXzKdJq0WKtLNzcwNbqErR5o+SFtReDu6R1IJApUmYTVEX/7HR+2/8bQtBOz2tPw0n
	 qu0DDoTIg5SOKyEUIW9+BQYniSd7/4R8Xo0qfqkk0SNe0cvt2/9Hgw8tAM7tN37r/c
	 nPFyHNW2XQzDOoFPN6rFJZTy8Cs4pmbkWcl3L79XmsL0tUCiGxoK669wiYhG1P3kiI
	 aJiy31f9T0lmw==
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:ed49:23ab:f92:d8a4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8B6F517E0FDB;
	Tue, 24 Jun 2025 14:29:42 +0200 (CEST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: nicolas.dufresne@collabora.com,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	hverkuil@xs4all.nl
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH] media: verisilicon: Export only needed pixels formats.
Date: Tue, 24 Jun 2025 14:29:38 +0200
Message-ID: <20250624122938.62004-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_052945_279114_4B41B2AC 
X-CRM114-Status: GOOD (  11.86  )
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

When enumerating the pixels formats check if the context
request to only export post-processed pixels formats.
The exception is when V4L2_FMTDESC_FLAG_ENUM_ALL is set, we
need to export all pixels formats.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Fixes: bcd4f091cf1e ("media: verisilicon: Use V4L2_FMTDESC_FLAG_ENUM_ALL flag")
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index 7c3515cf7d64..7869faf921f4 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -222,6 +222,7 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 	unsigned int num_fmts, i, j = 0;
 	bool skip_mode_none, enum_all_formats;
 	u32 index = f->index & ~V4L2_FMTDESC_FLAG_ENUM_ALL;
+	bool need_postproc = ctx->need_postproc;
 
 	/*
 	 * If the V4L2_FMTDESC_FLAG_ENUM_ALL flag is set, we want to enumerate all
@@ -230,6 +231,9 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 	enum_all_formats = !!(f->index & V4L2_FMTDESC_FLAG_ENUM_ALL);
 	f->index = index;
 
+	if (enum_all_formats)
+		need_postproc = HANTRO_AUTO_POSTPROC;
+
 	/*
 	 * When dealing with an encoder:
 	 *  - on the capture side we want to filter out all MODE_NONE formats.
@@ -242,7 +246,7 @@ static int vidioc_enum_fmt(struct file *file, void *priv,
 	 */
 	skip_mode_none = capture == ctx->is_encoder;
 
-	formats = hantro_get_formats(ctx, &num_fmts, HANTRO_AUTO_POSTPROC);
+	formats = hantro_get_formats(ctx, &num_fmts, need_postproc);
 	for (i = 0; i < num_fmts; i++) {
 		bool mode_none = formats[i].codec_mode == HANTRO_MODE_NONE;
 		fmt = &formats[i];
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
