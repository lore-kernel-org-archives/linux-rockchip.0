Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAB92C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 20:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xRhH99x3k0IwOg0HVPb84FIkXL77XEElnoImamWSG4=; b=tSjRAEt/IpGQ7a
	mQUudoSUWf4zJ0xQBTt1kq6FE6+Aa7qJ2N51KYVLmvKLP47wOOWEzpLicvxRhlh/BTUrK7wEOzpe7
	LLgxMljImqymD1KUaXHRapIy/UwRvX9Ty3ERjkUgRIQHYhfWkNI/3hvhZ+beT+Ub+Q0dld9TvOdSF
	EMcdJLrsiug5Q0mLpec2LXT90S9wisOxEQxtJFtrCi6LPvrCN2NEGLKWZN06ZNLMMYOSKpiK+T+ap
	E+KqeBke7iZAJ7xEP5pQyjDlb3DXJqSEekQiforG7k/KslBjrKBw4o0qDL0rOB2QHufL2I5T+BZ6b
	6PSMtQHrPmsorh0HvTHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Cwj-00B5OJ-Dx; Tue, 14 Jun 2022 20:15:29 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Byl-00Au2d-6v
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:13:35 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 75B89D96;
	Tue, 14 Jun 2022 21:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234009;
	bh=35br+PBGDYimxknyVI8XqRWDD0b9S/DSRrn5qKiWY6o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=t4myaVjzWPrvYpED+Ffsu43wnK6LlYemIw80A22B2XQ+G0SrlCNWPnJKCukoCcEXt
	 +SGDSUOiHpDwXxySn+gsOsVjWFDEZQtgM6yWWXAe55oCehF9DoH4A2SHeuMm5RA0K1
	 1aUbgZjO07mrRPXBuxeAZ8Kxhwf+A56bpf4kViXQ=
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
Subject: [PATCH 25/55] media: rkisp1: isp: Don't initialize ret to 0 in rkisp1_isp_s_stream()
Date: Wed, 15 Jun 2022 04:10:57 +0900
Message-Id: <20220614191127.3420492-26-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121331_472834_9F436CDF 
X-CRM114-Status: UNSURE (   9.00  )
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

The ret variable doesn't need to be initialized in
rkisp1_isp_s_stream().

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index 3ea0deb6b792..a234cf29ec67 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
@@ -751,7 +751,7 @@ static int rkisp1_isp_s_stream(struct v4l2_subdev *sd, int enable)
 		container_of(sd->v4l2_dev, struct rkisp1_device, v4l2_dev);
 	struct rkisp1_isp *isp = &rkisp1->isp;
 	struct v4l2_subdev *sensor_sd;
-	int ret = 0;
+	int ret;
 
 	if (!enable) {
 		v4l2_subdev_call(rkisp1->active_sensor->sd, video, s_stream,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
