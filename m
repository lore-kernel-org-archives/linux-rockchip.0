Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57F55C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Apr 2022 20:45:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHZ5f+fUUVNEJZM3gonoS/rsoBSs6dTXw4VF2XoHKwM=; b=Q9u/AUTDRLo6FW
	k2tzYZQuFVwBqf2yx/jqNVK6pxtth5NXYMO9+Ms1Qr9H+1/IcxWKyWdUpkdWIbJn/5/meXLSJspmO
	RT+FQ7d32Y1GgRBv7IlmcbFrnHYd+ZnWvXzZh4CEvogM0aQWBYL9b3M3m/lkk5GjCgYtWza/4pDF3
	LHMAgFOoTyIQNhXBaCgW+P2f4wnOkKvoKpzEOMc5y9WInPhLx9wQ5o5XJ1NpeRIjhoEAEm/d/n9ER
	XHeAPa9zBkCIiZTjyfBRK9/eDA2dvkq01yOXOMmgD89ZHhgCfY8sEi2hcaUXJOMcEbB0NT/1MeINS
	uZ1FveLq/DmVIDVJcVZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbq3F-002dLa-GW; Tue, 05 Apr 2022 20:45:21 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbq37-002dBO-JR
 for linux-rockchip@lists.infradead.org; Tue, 05 Apr 2022 20:45:15 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: nicolas) with ESMTPSA id 44DB71F448AC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1649191512;
 bh=mlmVguJcq18q2C5FsZYpROZPrzKGkqiR80YOa10U0rQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cuG1CSJZKgn64YomMpEzZ8tvvSWpKLfGOmMVqaMxRdcSC280sF3qjfiRtm8SZfnsc
 oDIyMMunNmiYNk+GRcGtaiwuUk/jTZkO1ErSmKQnvA66wdhT2cCvOV9HSD+J2RHWBt
 TSLnRP2fwVjaK5Zt/5P4WDqJAxX1USTkyI88cGP5cXewlSGKUBzpuiyPnpFbJgr6H5
 e505TFfynD0h6YBztLgGCQB64ot1b+E28/yzdzHGH28aAbxMa7eZXAz6oTErCH1vH4
 vnOEjZk5+e2J++7gbnEU4t841y1GAZfwoTAxZvv4ImcRoq8U+WGYt2OaOf8fMPziZQ
 ar0q8v8A2R/DA==
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: [PATCH v3 18/24] media: rkvdec: Ensure decoded resolution fit coded
 resolution
Date: Tue,  5 Apr 2022 16:44:19 -0400
Message-Id: <20220405204426.259074-19-nicolas.dufresne@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220405204426.259074-1-nicolas.dufresne@collabora.com>
References: <20220405204426.259074-1-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_134513_860909_D347AF14 
X-CRM114-Status: UNSURE (   8.25  )
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
