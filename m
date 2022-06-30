Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D108CCA48B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Jul 2022 00:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ExFm3S11fdmYmVBBdsmR0k2wErXsfLgg2mKczk2GWGI=; b=0jXdMMa1rlK2Tx
	dgXrkUBVYNvrIsQoHrZ/Jw5znD1/Ly2/SOnNXih3mPgpYV779QAl1oakSX72wo/a1OAB8WbD1Ot1R
	B/s8ToGQhWbBJKpjLHh1Te4plpgCnm6nUzn0yRo8MYpS0B3XtQtrNJNtg3hVXikLPT82YeDoX1Izy
	XIi+QOJ4Tfc8aF0Zsb1MSIYFGlKv0SuuRBXq95om/QEM/NxeZC1XOt3iPFHRc9rpgfgTErGBDo748
	9bcO3OJzuS0xeitmZ1mM0CpVd9tJ+UM+/lpS9k3k0XmFwkXNqrN8hAvAws4h5/+Kz1S/T8aTv62j1
	t8ygDOcrFL2xyHzIulAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o74KJ-0028Qk-8I; Fri, 01 Jul 2022 00:16:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73GO-0020J2-55
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:06 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 0C86E29B6;
	Fri,  1 Jul 2022 01:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630474;
	bh=F1QdLeUW3yWAWI1I2P154ju8330xmx2JjEaoxO7nkoA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bmTz7knFdPUPSWRdH52wRNn1QjSeOF8x3Mu8y3rPilQ7f8chaWSdXYT7voB8V7Hyd
	 L81Ci7zu5NdQngBT8WLbSkEpCXv88v7eiH97kW6kOPSn0gkgeAxtksVyKHIIA+ibFa
	 A36FLd+DRQbOjisR2vc2m47T7QOrrYtv/NrfUmTU=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 26/55] media: rkisp1: isp: Don't initialize ret to 0 in rkisp1_isp_s_stream()
Date: Fri,  1 Jul 2022 02:06:44 +0300
Message-Id: <20220630230713.10580-27-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160756_431008_38E9591B 
X-CRM114-Status: UNSURE (   9.54  )
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

The ret variable doesn't need to be initialized in
rkisp1_isp_s_stream().

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
index da895f6aa3fa..faf80197edbf 100644
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
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
