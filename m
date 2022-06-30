Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8476DC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jun 2022 23:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zdr3Wde7d/+OtAVn72FqY4nTpjfM51hj9dN5d/zC8dw=; b=KVEAMiDF2ITLdY
	tVbkOihvWpkMr2nXOQthEbWRC5OC9dqfK/DiLcJlyzJCdF73j7joyO/1B1zPc+jxeTBt34WB9Tysm
	6vL8zFMmWhWUSfMoe10YpeGj+a7bJ3goENvn8mXKinvyN9KIpj6qMUAe4zV1e1P7kIz6LS/dUoUUu
	AaBrJcUT0eSLLL3ukB0QifnojprucYDsJWq68mF+iRU0cnQgAb/cXNK2iHD06fPauzYESjLdMzJhW
	rlzxdlmvIqXv/LU4/xDl96NuxN3AKXD2lz243bAwYgafV0PrX2TLxPga+O/S6UwyPiyKkeUnraH7N
	F1NxIjQM+6WiJ4g2PcvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73H5-0020v7-Ee; Thu, 30 Jun 2022 23:08:39 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o73Gh-0020az-PW
	for linux-rockchip@lists.infradead.org; Thu, 30 Jun 2022 23:08:27 +0000
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 04BC82ACE;
	Fri,  1 Jul 2022 01:08:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1656630493;
	bh=UCceLZYD8ofcpOSIak6uETi3QwUVvkPtpJ4L0350kEs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=K6JQOtVCJsRzLDTtRIxTge24EJdhuinY/aghOzaYNHay0tw1NTNnGDS+PqRJ1ErT0
	 ylQuGpRF3PyiYvVsrlvkGCI1G2HUzYqbAXfErUR/Tdn6RQaozvvSgcUDBGpfNh9Pxh
	 pzDgUYV8q8tX2IAzobJHfc9Vzz78zweRVrQXirQ0=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Paul Elder <paul.elder@ideasonboard.com>
Subject: [PATCH v2 55/55] media: rkisp1: Fix RSZ_CTRL bits for i.MX8MP
Date: Fri,  1 Jul 2022 02:07:13 +0300
Message-Id: <20220630230713.10580-56-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220630_160816_024053_0D64D610 
X-CRM114-Status: GOOD (  10.73  )
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

From: Paul Elder <paul.elder@ideasonboard.com>

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
Regards,

Laurent Pinchart


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
