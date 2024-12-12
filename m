Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6F83E7717F
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Dec 2024 15:49:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wnKKiKljir4gOQChfBYk4q4jyhJBZjBRHgJ2NPhSW4=; b=t21+ihRm7RDOfb
	550hVHomjVpwNBZsaZ0prx6X4B0LPV7YpvkIXodtcYjrlqIMOtIMx91moH+2QK7UzalaNvHoevcr7
	ZvC4eLSGHJBCfMOhd4BBn8aS3TEnwUNOtkaTTiyyrjZun/QkykWutF/d+XdJBOg6aF6mPcgzQkxFH
	fgfE2PSjUqPulnm8km6SZe0SAz4r2CD3wI+yLB5GSaZwqh4dKqfHafb7aVJjwvg6b6EaDGtw3rky0
	xmxVxbMSocw1tSWOz+jNOUa4nyDhrmIDUZPvBMMKUyB9Bv3ptNRMSgh1PYkZOfBBP26smp2G2+MGB
	UOQzKKghgW4AHYkk9tDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLlRH-00000000onb-2x6X;
	Thu, 12 Dec 2024 15:49:19 +0000
Received: from a7-42.smtp-out.eu-west-1.amazonses.com ([54.240.7.42])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLlLm-00000000nVP-1x78;
	Thu, 12 Dec 2024 15:43:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=bc7lryepznv65m6r2ewkpoafjt4fiq42; d=collabora.com; t=1734018214;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding;
	bh=8Fq/subTP6OO1nFEyLaHcjH8Zxi3BDFslEuxKeQeGq0=;
	b=B/+IYlGnJhURtz3JPDeBTka7Cxs3rRki0gGIaIzudp2gjGEM9QWMJsxHb02Ry4SA
	7LfLRq/T+JQQxuIFE0ezp7dpcua0cZd8ub7LZDHP7uCmoNBvbfmS03Sh6B3D7hh5/DB
	6tjh2c/ggnePRZgzstTrZOmoPowUaRe0XDFWbr07Pwy2w5vtEQC7cIV5ZFm6ZuAYOJB
	vf/kzZ5MYJpha7BJKgjT+CcZABoqQieXrm3uZdYMkxT7Mf8wDv+hcV2IY7Q0iVU9nwP
	dy79eJ/QrbawymfuLNkFlA6obl3ADM1WdWmh89UhIZj/9mG6RMDhplmnIQve/VQQFcs
	cPFlA3LBjg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1734018214;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=8Fq/subTP6OO1nFEyLaHcjH8Zxi3BDFslEuxKeQeGq0=;
	b=Eq3LaYzvFoIM64DX1TWSZJ0EOfs7ITOhb8i6u1H1FTCrK0MniEqjNuaXXRCUXvck
	U1bvve0DQ29Tjwdz+WOX/UMxMrwdOFsSIx60sGGxocqmpeDIR9JfvKqYQd3vwqoxohp
	ny2LCm1PF/FTo48xUgevyLBq5VRc/vf4X3LQewEk=
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
Subject: [PATCH v2 2/2] media: verisilicon: Fix IMX8 native pixels format steps values
Date: Thu, 12 Dec 2024 15:43:34 +0000
Message-ID: <01020193bb8a2955-5c7c8665-b689-44bb-9119-b0e636e20840-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241212154328.84904-1-benjamin.gaignard@collabora.com>
References: <20241212154328.84904-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.12.12-54.240.7.42
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_074338_651505_220EDF3B 
X-CRM114-Status: GOOD (  10.59  )
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

Hantro decoder non post-processed pixels formats steps are different
from post-processed ones.
Fix the steps according to hardware limitation.
Since reference frame pixels format issue has been fix, it is possible
to use V4L2_PIX_FMT_NV15_4L4 rather V4L2_PIX_FMT_P010_4L4 for 10bits
streams.

Fluster VP9 score goes up to 207/305.
HEVC score is still 141/147.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
Version 2:
- rebased on top of media-commiter/next
- Add reviewed-by tags

 drivers/media/platform/verisilicon/imx8m_vpu_hw.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/media/platform/verisilicon/imx8m_vpu_hw.c b/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
index f850d8bddef6..35799da534ed 100644
--- a/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
+++ b/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
@@ -187,23 +187,23 @@ static const struct hantro_fmt imx8m_vpu_g2_dec_fmts[] = {
 		.frmsize = {
 			.min_width = FMT_MIN_WIDTH,
 			.max_width = FMT_UHD_WIDTH,
-			.step_width = TILE_MB_DIM,
+			.step_width = 8,
 			.min_height = FMT_MIN_HEIGHT,
 			.max_height = FMT_UHD_HEIGHT,
-			.step_height = TILE_MB_DIM,
+			.step_height = 32,
 		},
 	},
 	{
-		.fourcc = V4L2_PIX_FMT_P010_4L4,
+		.fourcc = V4L2_PIX_FMT_NV15_4L4,
 		.codec_mode = HANTRO_MODE_NONE,
 		.match_depth = true,
 		.frmsize = {
 			.min_width = FMT_MIN_WIDTH,
 			.max_width = FMT_UHD_WIDTH,
-			.step_width = TILE_MB_DIM,
+			.step_width = 8,
 			.min_height = FMT_MIN_HEIGHT,
 			.max_height = FMT_UHD_HEIGHT,
-			.step_height = TILE_MB_DIM,
+			.step_height = 32,
 		},
 	},
 	{
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
