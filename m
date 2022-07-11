Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EC8FC43334
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 12:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fx3iM5Khz88vWWNFLNDHTXfa3DsrY9Dlql7j+992dq4=; b=yj6eCteMPco6lB
	UWfLmlxZWjPsRDlnRA1UcCGjB8BDKLeIC5YXLco8VMKS0236x3CVn86YzPa0tqnIxaTHOHRusXpFP
	DjFgdoiV2En97RedaAnu+j5zKy1bVV2PB1Tl8WFqhn3LUGylH35NihyAr+6D2s8f5vx4NPitUacQg
	VKRBwfB3Tm6xppIcxqx53A9msHz5Bx/8vYiVsDtmxwIR6EazpLqMLHZatSG0j4gnoQ6DbQ05FLvxT
	M2hiAo1JUxKkNPB9dp8ab2R0ZI6tYs5tXz76GLcOq9x6E4aSTCcih3z7wAqndFKZgW8qhr4Z8IfAq
	1YzsNCuRnEUx2A60qoBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsxX-001f0T-0i; Mon, 11 Jul 2022 12:56:19 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAsl3-001Y4J-Bk
	for linux-rockchip@lists.infradead.org; Mon, 11 Jul 2022 12:43:27 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1F29618D7;
	Mon, 11 Jul 2022 14:43:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657543402;
	bh=b8MY2+DX2B5i2pNTVl6o3TEjHsD5MN1FKb1HY/KQTVc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GZ14HcQBoN33P8cTmITh949OJvMek4fkNMZOistFm+6sdzK27UHtmAvUwksff50R3
	 kFF8BHIlg+AUp/Jh/8zsSaYjcTJc4UgDV29sRwI2ZzrXJVSGHsD17l5M1tAQJJM30M
	 9cloe2FK+M9VnYHYE6lF+4hSBnhUiZVGz3xUlxc4=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v3 05/46] media: rkisp1: Enable compilation on ARCH_MXC
Date: Mon, 11 Jul 2022 15:42:07 +0300
Message-Id: <20220711124248.2683-6-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
References: <20220711124248.2683-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_054325_604996_24EBE7C2 
X-CRM114-Status: UNSURE (   9.56  )
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

The ISP used by the Rockchip RK3399 is also found in the NXP i.MX8MP.
Enable compilation of the driver for the MXC architecture in addition to
ARCH_ROCKCHIP.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/Kconfig b/drivers/media/platform/rockchip/rkisp1/Kconfig
index dabd7e42c193..731c9acbf6ef 100644
--- a/drivers/media/platform/rockchip/rkisp1/Kconfig
+++ b/drivers/media/platform/rockchip/rkisp1/Kconfig
@@ -3,7 +3,7 @@ config VIDEO_ROCKCHIP_ISP1
 	tristate "Rockchip Image Signal Processing v1 Unit driver"
 	depends on V4L_PLATFORM_DRIVERS
 	depends on VIDEO_DEV && OF
-	depends on ARCH_ROCKCHIP || COMPILE_TEST
+	depends on ARCH_ROCKCHIP || ARCH_MXC || COMPILE_TEST
 	select MEDIA_CONTROLLER
 	select VIDEO_V4L2_SUBDEV_API
 	select VIDEOBUF2_DMA_CONTIG
-- 
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
