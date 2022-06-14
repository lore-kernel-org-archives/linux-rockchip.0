Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB2F2C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEATXHZMyWa0BfYCUNcXq2qGeSf7v4+D9rQnjHirr3c=; b=deltmQzDx+e0tx
	G5jvzuFffvpsrbh1tlMipO93/3LGbNYzb0aKHfTGCwJMJMSq8cBb22QfsfuMQautp0bQzxxRKKkZk
	91y0cVWyT6NliRzuhhEoPYasIpL3NaGOPc4BxSvPXoalExUwsGAknrR7Q6KxXDbVgUVRfQw2Qrgjj
	HKlQIAz6J2a9Uj8OraSI3a1espxbBvJEa3uQEI6UMDDmxOzdbFXl5qGpOvG5YbOvCVldZMzTiqkLm
	0H3XjMy5lL3Dw/+MNbqTI/rIQQDuc/41YCIr8MKBkdcQGeVxxo6UgFXo6UM9YNj4zwlb2inT1sFjW
	+/H7GZCLRQmoII3Tli9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1ByX-00Atjs-VD; Tue, 14 Jun 2022 19:13:17 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Bxm-00AtSv-HN
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:12:32 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A92509E5;
	Tue, 14 Jun 2022 21:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655233949;
	bh=kS4iBC6vAv+3oQJU2XUDDkNuo7oUHbBdOv75NuIxKAY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=vAuu+aNPHbyxzD9hyWJtPI0zoWH58cU49DaufbtQEivPS5VDcgSkze53UNO6uwEjj
	 c3oVVNcw/jIWR3O74ksQpTHapu9tnQWI1u9Slro75aGb668lYuY7ULUpVxshVVBBiI
	 Bed4YSIfmEPSIQ/A3KrOjpO0AfNcB2V7fBzpiChA=
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
Subject: [PATCH 10/55] media: rkisp1: cap: Print debug message on failed link validation
Date: Wed, 15 Jun 2022 04:10:42 +0900
Message-Id: <20220614191127.3420492-11-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121230_805512_24341A20 
X-CRM114-Status: UNSURE (   7.22  )
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

When a link validation failure occurs, print a debug message to help
diagnosing the cause.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 .../media/platform/rockchip/rkisp1/rkisp1-capture.c    | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
index 94819e6c23e2..94a0d787a312 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
@@ -1294,8 +1294,16 @@ static int rkisp1_capture_link_validate(struct media_link *link)
 
 	if (sd_fmt.format.height != cap->pix.fmt.height ||
 	    sd_fmt.format.width != cap->pix.fmt.width ||
-	    sd_fmt.format.code != fmt->mbus)
+	    sd_fmt.format.code != fmt->mbus) {
+		dev_dbg(cap->rkisp1->dev,
+			"link '%s':%u -> '%s':%u not valid: 0x%04x/%ux%u != 0x%04x/%ux%u",
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
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
