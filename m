Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03339C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 13:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHZ5f+fUUVNEJZM3gonoS/rsoBSs6dTXw4VF2XoHKwM=; b=ud+eoYqMiehHUG
	j1bNOPQW5osrARueKmNNl0X1GAaydFtnAYjYrN6iomyj5tI9L7Gg6JepClcdnQTwzax+NapXVcuTT
	CGAX6WkR3TnRLwJN2uQsl4yhaxrHeyVGcohcT67JuxvFSCvWtuUHDH0j4F1BGu9+gIDQJwA06uelr
	c5t83EB+L6tHMvBr4MLciB4zMag8auiiv0JdxBIIkn8Y5xYjoCtxDhx8vWhs8DFU2/LjDDbT3YuX6
	xPYJAu8bQhRlVy5V3JqO4oX4cXEMmezHncqzx0hGgXIlsX51GpARr9E26IGim5iLTdyS4KbrG7kdF
	gijUmze6+MuCVEEPmX3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njKv4-00ETd5-D4; Tue, 26 Apr 2022 13:07:54 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njKm0-00EPG0-Iv
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 12:58:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id F359F1F43999
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650977911;
 bh=mlmVguJcq18q2C5FsZYpROZPrzKGkqiR80YOa10U0rQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=R4DhZD/ZO/ZdN80EgBWl3CS/bbfNmq0mGNkaXtVKCew0b+SnrGkmV0GdkFy2zQZzj
 /J1QimWglAQnyxDyECg5tgducpujBvM7Jgn9I+pVNQ17xK0KLQKLq1NyZ2LjHJZizs
 0IxLhE91L+gsPFTfB4BrsOoanpy/oB9V+TZ76QqbIX2qZ2FeSc3Hikz3TUBtukHukW
 gGactiPcwUwSMCxq6Fg2Ryr+iijk6a/spxFCBeAF9sv0CLB+igDPaGCO+51/9V0shg
 NIOuXwDbLBdLSIN6xt60BecfrAGk4xZHH0HggzrLiGP4//WTfbNVeNSYTmRwhrpE0b
 GDecRSL1kCfpQ==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: nicolas@ndufresne.ca, Jonas Karlman <jonas@kwiboo.se>,
 linux-media@vger.kernel.org,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 18/24] media: rkvdec: Ensure decoded resolution fit coded
 resolution
Date: Tue, 26 Apr 2022 08:57:44 -0400
Message-Id: <20220426125751.108293-19-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220426125751.108293-1-nicolas.dufresne@collabora.com>
References: <20220426125751.108293-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_055832_978977_DB0C3BC2 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
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

Ensure decoded CAPTURE buffer resolution is larger or equal to the coded
OUTPUT buffer resolution.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index e3d44d5b35f3..2bc4b1a40989 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -257,6 +257,8 @@ static int rkvdec_try_capture_fmt(struct file *file, void *priv,
 		pix_mp->pixelformat = coded_desc->decoded_fmts[0];
 
 	/* Always apply the frmsize constraint of the coded end. */
+	pix_mp->width = max(pix_mp->width, ctx->coded_fmt.fmt.pix_mp.width);
+	pix_mp->height = max(pix_mp->height, ctx->coded_fmt.fmt.pix_mp.height);
 	v4l2_apply_frmsize_constraints(&pix_mp->width,
 				       &pix_mp->height,
 				       &coded_desc->frmsize);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
