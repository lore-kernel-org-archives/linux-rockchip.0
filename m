Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9491C021BE
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9P2RUGsheEfRaz7vnsuo4VLe25K7STcz+QilqGoSnDE=; b=c6cITXD846EH0f
	iUWmKhIK3c3YY2s4p3UV9kGJA+fKBpQ1nTzyaO/a+y4hrvvGd20l7SJwCwNGlkVTMEdpOUis/FY6A
	PnttFTDsnINFcdBrDQN/2u7k/YskSPnzPxFmuIO0ndIWTkcqxGjP2SZxprIyg7Ex0XTbpNzkHXFVo
	2vEBLeJifcUqK5lWbYp7jc2ycDT3fdh6LrzuwqrtKRY/McqE6CJLyfwVMNJFb3tOSf5V86SESsdY7
	IRUmBwX3FzQksCUbbGX+SCnVBdJlo4tQOCLLEE/W+tMlkuydiyZkdWBPmvx8zAlibPDmvSjXOj8Fj
	DuiGctVA7uhQbbb6H5ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tncor-00000007KKf-04FJ;
	Thu, 27 Feb 2025 12:16:49 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tncMN-00000007EVw-0ShG;
	Thu, 27 Feb 2025 11:47:24 +0000
Received: from ideasonboard.com (unknown [IPv6:2a00:6020:448c:6c00:a3f5:6799:2ce9:5b66])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A210F7F5;
	Thu, 27 Feb 2025 12:45:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1740656753;
	bh=CMGReD0WqsB5uzTiYELuHAlkALxDIGEWwbM9C6aIjt4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nNbVrRRbOHj2qb2EDYltAkOsywSZzX+6+HSimopSAyVCAKq1UeOqYA2PGrgs8aA+A
	 KDZe68m4fBapfK/vtkoUWGxBWkT7a2zk3ypB07klrxY+dvjNUu4sD2KrDdp7uHSQCR
	 YyKSnKl4Suc/pvMMwfWwUrbV8bHm8jTqk+mg8KK4=
From: Stefan Klug <stefan.klug@ideasonboard.com>
To: linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Stefan Klug <stefan.klug@ideasonboard.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] media: rkisp1: Set format defaults based on requested color space
Date: Thu, 27 Feb 2025 12:44:59 +0100
Message-ID: <20250227114558.3097101-2-stefan.klug@ideasonboard.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250227114558.3097101-1-stefan.klug@ideasonboard.com>
References: <20250227114558.3097101-1-stefan.klug@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_034723_286502_F83C671B 
X-CRM114-Status: GOOD (  11.97  )
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

When color space JPEG is requested, the ISP sets the quantization
incorrectly to limited range. To fix that, set the xfer_func, ycbcr_enc
and quantization to the defaults for the requested color space if they
are not specified explicitly. Do this only in case we are converting
from RAW to YUV.

Signed-off-by: Stefan Klug <stefan.klug@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-isp.c   | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index d94917211828..468f5a7d03c7 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -680,10 +680,23 @@ static void rkisp1_isp_set_src_fmt(struct rkisp1_isp *isp,
 		if (sink_info->pixel_enc == V4L2_PIXEL_ENC_BAYER) {
 			if (format->colorspace != V4L2_COLORSPACE_DEFAULT)
 				src_fmt->colorspace = format->colorspace;
-			if (format->xfer_func != V4L2_XFER_FUNC_DEFAULT)
+
+			if (format->xfer_func == V4L2_XFER_FUNC_DEFAULT)
 				src_fmt->xfer_func = format->xfer_func;
+			else
+				src_fmt->xfer_func =
+					V4L2_MAP_XFER_FUNC_DEFAULT(format->colorspace);
+
 			if (format->ycbcr_enc != V4L2_YCBCR_ENC_DEFAULT)
 				src_fmt->ycbcr_enc = format->ycbcr_enc;
+			else
+				src_fmt->ycbcr_enc =
+					V4L2_MAP_YCBCR_ENC_DEFAULT(format->colorspace);
+
+			if (format->quantization == V4L2_QUANTIZATION_DEFAULT)
+				src_fmt->quantization =
+					V4L2_MAP_QUANTIZATION_DEFAULT(false,
+						format->colorspace, format->ycbcr_enc);
 		}
 
 		if (format->quantization != V4L2_QUANTIZATION_DEFAULT)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
