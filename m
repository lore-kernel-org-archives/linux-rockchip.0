Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BACF5C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:56:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5wgNqFQtdBZy+98ZLv6li9S2k44tqyjZNVMSEo+7Y0=; b=kKIQ/p6Vx4InCt
	8nnIhfgW+8iGayn67yDgsb0+p+1v8LEq9pDI0aLPXQjus9rW6Mz2vkRoNnUGugYDIk6zy88aWL3Ls
	oz8JOpqVb5Sq19J4Ou33YYRO+6cnoyzHZbFXLqX5Se8N7uIQc0SZVCN2WBxvOTPXgx1fO3rUE5HMo
	6BIZ11+Nn8xWwCznFX9+86iOk+PD8EFPJcMO38jSacSO1RsacThCsjVan/YhbrzA8keISAly0O/St
	uUGkMkIoht1/55DWBFYmEtwft1q3Ik5s+oRwfR2W9+tCYCABUi+4kfcpYUFdm3TI/nbKT9Zg9PJSg
	sx/H/BOZr2Wnzvji/64w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsxs-001fMK-Ix; Mon, 11 Jul 2022 12:56:40 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsl6-001Y6Z-Eo
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:30 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 7EBA887F;
	Mon, 11 Jul 2022 14:43:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543406;
	bh=7sbUkkye5+dYoWflQy1cdxxtC9s2TG0e40gp789YWv0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=OV/kOeTpx6t+7CtfjcErIff22f/jAu3dEZ63HDvHr/cYldOQ5HgHemzPERz7ZNesJ
	 5aGPNUfVkpQezW1V/eOLFYgQpUc+Bbyr0oapEBBYLb/VFDypket+rN4Mq5oF9UEFHR
	 HWoeMNQD9ujUcStxeVZa+NLOYGLt/5Csho/be05Y=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 12/46] media: rkisp1: cap: Print debug message on failed link validation
Date: Mon, 11 Jul 2022 15:42:14 +0300
Message-Id: <20220711124248.2683-13-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054328_754114_6DFC4B2F 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
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

When a link validation failure occurs, print a debug message to help
diagnosing the cause.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
Changes since v1:

- Add missing \n
---
 .../media/platform/rockchip/rkisp1/rkisp1-capture.c    | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 94819e6c23e2..fb14c8aa154c 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1294,8 +1294,16 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 
 	if (sd_fmt.format.height != cap->pix.fmt.height ||
 	    sd_fmt.format.width != cap->pix.fmt.width ||
-	    sd_fmt.format.code != fmt->mbus)
+	    sd_fmt.format.code != fmt->mbus) {
+		dev_dbg(cap->rkisp1->dev,
+			"link '%s':%u -> '%s':%u not valid: 0x%04x/%ux%u != 0x%04x/%ux%u\n",
+			link->source->entity->name, link->source->index,
+			link->sink->entity->name, link->sink->index,
+			sd_fmt.format.code, sd_fmt.format.width,
+			sd_fmt.format.height, fmt->mbus, cap->pix.fmt.width,
+			cap->pix.fmt.height);
 		return -EPIPE;
+	}
 
 	return 0;
 }
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
