Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7BB3C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pwHZRVJGfRjCgNR3aiV7H55xiIr035MwHbf5/uXMy1s=; b=VLkUeTPqkINuR5
	6MED05QwdmhCIBjV6HrlUcqMqa8/S+y9JrCv1JpoKo9qL9Kd0n8aDa/vlC0FBHoYPqn9yxdMgrCoc
	TPMb/NXD1Ma7Zui0FTKMJ7aWGi+PiBqGkLd/4dKx7pdmxKFkLnYKfWx/sRy6Sh0oqATm/Atoaux+/
	2ohrmI9epXC60Ha9/bSZinoapGQlK539vmrrDhlj5EsFYUnkopvl3FtiAMdPaXf7gyJtp16RLUjIy
	IJsu3qJU35wXYFbv75buCLQtWdPALY47mQsePrXwfbQJrB9kXKCMxMDaPCFbUcMDneQsxyKNb124Y
	V2NslX2khodiYXCbsOVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BzP-00AuoE-Ib; Tue, 14 Jun 2022 19:14:11 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1BzK-00Auim-Ri
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:14:09 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 068969E5;
	Tue, 14 Jun 2022 21:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234045;
	bh=5TfCdx16tPdAtupupd+gmBosQHk0m9Yd9ndPuGyPEkI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UCrSYj3NIAmr5o9VVjM4d/62ZJybY8xsIOy535cbAB2yGiVhaPbZATsNxPdh9exAf
	 EGcoWTMLSA+svexpD70wTH9F3vYL0/exw1KzitB6ohCz7eHCZQ2fOcZiIMHJ5VPwBu
	 lrX0lmfQAoDDr9EAQVy2Pt8+kysa4GPkU0z4jcJ8=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 34/55] media: rkisp1: isp: Fix whitespace issues
Date: Wed, 15 Jun 2022 04:11:06 +0900
Message-Id: <20220614191127.3420492-35-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121407_083566_64901A47 
X-CRM114-Status: UNSURE (   8.22  )
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

From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Add missing blank lines after variable declaration blocks, and fix
indentation issues.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index bf44f10200f5..86d496855374 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -79,7 +79,8 @@ rkisp1_isp_get_pad_fmt(struct rkisp1_isp *isp,
 {
 	struct v4l2_subdev_state state = {
 		.pads = isp->pad_cfg
-		};
+	};
+
 	if (which == V4L2_SUBDEV_FORMAT_TRY)
 		return v4l2_subdev_get_try_format(&isp->sd, sd_state, pad);
 	else
@@ -93,7 +94,8 @@ rkisp1_isp_get_pad_crop(struct rkisp1_isp *isp,
 {
 	struct v4l2_subdev_state state = {
 		.pads = isp->pad_cfg
-		};
+	};
+
 	if (which == V4L2_SUBDEV_FORMAT_TRY)
 		return v4l2_subdev_get_try_crop(&isp->sd, sd_state, pad);
 	else
@@ -893,8 +895,8 @@ static void rkisp1_isp_queue_event_sof(struct rkisp1_isp *isp)
 	struct v4l2_event event = {
 		.type = V4L2_EVENT_FRAME_SYNC,
 	};
-	event.u.frame_sync.frame_sequence = isp->frame_sequence;
 
+	event.u.frame_sync.frame_sequence = isp->frame_sequence;
 	v4l2_event_queue(isp->sd.devnode, &event);
 }
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
