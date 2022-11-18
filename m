Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 860F1C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Nov 2022 09:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A19hgfx6Q50Q5HHWp89jIOeXa3U6YzSGgxrnoTDcK2M=; b=Uafs090vdue3Uj
	NVHxugQlO8mjXdGGnpzkwd6/KwiYKxMEuIaezRHhA1RoVoJeiPdrmmdzXOgqjeV0XWEkZKf2HwfMM
	uLgkKqFuiiaiuWEBqGiBlauam92W8UE4qJEWY1FhnuIhjckRYqyRKt/0ZV6/VQ8WgkkARIOllaBz0
	0XXM9p189M4BxHE9y7GMDoXFIUfJE5jhulFau2dUcN9A5r7yZwv0xGmR/77sugwmGcA9pqZN7XNgJ
	qbjcy5uAvMnT25tthxqAqK83JTApTKNaVSdJafmmOiAqTsh+ZwtHxHi7ja/dicLsmPgRKwexjcBVJ
	JbyfcahmMQLpWKVygvGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovxvX-003BYa-HH; Fri, 18 Nov 2022 09:44:51 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovxrI-00395Z-9J; Fri, 18 Nov 2022 09:40:29 +0000
Received: from pyrite.tail37cf.ts.net (h175-177-042-159.catv02.itscom.jp [175.177.42.159])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 61CC2AF4;
	Fri, 18 Nov 2022 10:40:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1668764426;
	bh=vlEilDeP7g2oe4aEgGhDQ1m7gktQ5G5WmhU4D0o/ZZQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=XHcMnQwcYOPjqNZBAI4J5h+rOLFK64/beAnKmkc1cjGUVp5x7RjtOabSkYUgsKCEZ
	 0pI7HICfgST8A/JdQbyvt69ijNWxi9I4FGbghQmvUyj++JKL+8ddGLFRo0U2gHbbfR
	 04e6qigu/TtixoBKcTiVU3VDuCqbF480dKK/mXKo=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org
Cc: Paul Elder <paul.elder@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 11/14] media: rkisp1: Fix RSZ_CTRL bits for i.MX8MP
Date: Fri, 18 Nov 2022 18:39:28 +0900
Message-Id: <20221118093931.1284465-12-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221118_014028_515425_A27C9BB8 
X-CRM114-Status: GOOD (  13.24  )
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

The ISP that is integrated in the i.MX8MP supports cropping, which
results in a different RSZ_CTRL register layout compared to the RK3399.
Add new definitions for these bits, and use them when the
RKISP1_FEATURE_RSZ_CROP feature is set.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
---
Changes since v2:

- Condition on RKISP1_FEATURE_RSZ_CROP feature
- Rename bits
- Use the rkisp1_has_feature() macro
---
 drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h   |  5 +++++
 .../media/platform/rockchip/rkisp1/rkisp1-resizer.c    | 10 ++++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
index 3dd1bfec288f..39b2ac58196e 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
@@ -168,6 +168,11 @@
 #define RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO		BIT(9)
 #define RKISP1_CIF_RSZ_SCALER_FACTOR			BIT(16)
 
+/* For resizer instances that support cropping */
+#define RKISP1_CIF_RSZ_CTRL_CROP_ENABLE			BIT(8)
+#define RKISP1_CIF_RSZ_CTRL_CROP_CFG_UPD		BIT(9)
+#define RKISP1_CIF_RSZ_CTRL_CROP_CFG_UPD_AUTO		BIT(10)
+
 /* RSZ_CROP_[XY]_DIR */
 #define RKISP1_CIF_RSZ_CROP_XY_DIR(start, end)		((end) << 16 | (start) << 0)
 
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index cefc3cfb733c..7ff7b608fc3f 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -209,9 +209,15 @@ static void rkisp1_rsz_update_shadow(struct rkisp1_resizer *rsz,
 	u32 ctrl_cfg = rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_CTRL);
 
 	if (when == RKISP1_SHADOW_REGS_ASYNC)
-		ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO;
+		if (rkisp1_has_feature(rsz->rkisp1, RSZ_CROP))
+			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CROP_CFG_UPD_AUTO;
+		else
+			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO;
 	else
-		ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD;
+		if (rkisp1_has_feature(rsz->rkisp1, RSZ_CROP))
+			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CROP_CFG_UPD;
+		else
+			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD;
 
 	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_CTRL, ctrl_cfg);
 }
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
