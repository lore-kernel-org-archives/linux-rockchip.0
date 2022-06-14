Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26315C43334
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jun 2022 19:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whTASe9VEeCGluiV2fj9DTdH3Szxd08Zb20lIxZRbng=; b=HmZG14HVxXwSIf
	D9+nF5AggoCtk5aFmRWjT7AnYq4wb5LkqL7ArzvqvVi1x+Q6/HWtH6UDl8ThM6VPzZ0Eldie5q+iD
	/BN67Pjv7M0pLyXrzD8Q3BLY4Y2s3wRmY1UXiIcZzVq+WzW5bVFBGC+k+NFojVc5FCVnPx8TMUsc2
	AZs/gun8DWuGCuhUzUFoZgY/CarRM2v7EV5jBFJH/S7IFOqEeqvPM9XcTwUVHupQMOFcu838BS/Wb
	lE4kOtGXirIWCDSV2qnXL4JHHM3m1A8ZeIcaFcVFBJ79EPCIgmw0Jhcwwir60ChzTL/5ggsj8b4sN
	pWV3aaBc2xybISTahiUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1C0n-00Aw04-Fh; Tue, 14 Jun 2022 19:15:37 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1C0k-00Avwm-GZ
	for linux-rockchip@lists.infradead.org; Tue, 14 Jun 2022 19:15:36 +0000
Received: from pyrite.rasen.tech (softbank036240126034.bbtec.net [36.240.126.34])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D1760825;
	Tue, 14 Jun 2022 21:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655234133;
	bh=4FRx9cLD3vaUJ9hfLIwWu8iF+r754iIQFJ+3X5OaMOo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=wjJ8SudfI+ziGWowJWw+jCqHSfQlcx7tHIy9klQcKh1zoQGlFb2arNiApN8/e3xmR
	 9emOqYeN33YBiGrDtTNtR6o0nlJ4cyGP3x7tO5QnN1/rEUMt4I6iVTW+Bea4jbu+FL
	 HbRTeM7GG4Tiv7OIKXSUgkzGUNSAEW0h4bCcNXy4=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	dafna@fastmail.com,
	heiko@sntech.de,
	laurent.pinchart@ideasonboard.com,
	jeanmichel.hautbois@ideasonboard.com,
	jacopo@jmondi.org,
	djrscally@gmail.com,
	helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 55/55] media: rkisp1: Fix RSZ_CTRL bits for i.MX8MP
Date: Wed, 15 Jun 2022 04:11:27 +0900
Message-Id: <20220614191127.3420492-56-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220614_121534_744360_382596D2 
X-CRM114-Status: UNSURE (   9.93  )
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

The ISP that is integrated in the i.MX8MP uses different bits in the
MRSZ_CTRL and SRSZ_CTRL registers for updating the configuration
compared to the on in the RK3399. In addition, it adds a new bit for
enabling crop. Add new definitions for these bits for i.MX8MP devices,
and update where they are set.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h   |  4 ++++
 .../media/platform/rockchip/rkisp1/rkisp1-resizer.c    | 10 ++++++++--
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
index 34f4fe09c88d..24ad2ccec2a3 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
@@ -168,6 +168,10 @@
 #define RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO		BIT(9)
 #define RKISP1_CIF_RSZ_SCALER_FACTOR			BIT(16)
 
+#define RKISP1_CIF_RSZ_CTRL_CROP_ENABLE_IMX		BIT(8)
+#define RKISP1_CIF_RSZ_CTRL_CFG_UPD_IMX			BIT(9)
+#define RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO_IMX		BIT(10)
+
 /* RSZ_CROP_[XY]_DIR */
 #define RKISP1_CIF_RSZ_CROP_XY_DIR(start, end)		((end) << 16 | (start) << 0)
 
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index 08bf3aa8088f..29a31b18a082 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -209,9 +209,15 @@ static void rkisp1_rsz_update_shadow(struct rkisp1_resizer *rsz,
 	u32 ctrl_cfg = rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_CTRL);
 
 	if (when == RKISP1_SHADOW_REGS_ASYNC)
-		ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO;
+		if (rsz->rkisp1->info->isp_ver == IMX8MP_V10)
+			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO_IMX;
+		else
+			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO;
 	else
-		ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD;
+		if (rsz->rkisp1->info->isp_ver == IMX8MP_V10)
+			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_IMX;
+		else
+			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD;
 
 	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_CTRL, ctrl_cfg);
 }
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
