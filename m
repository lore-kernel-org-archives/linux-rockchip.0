Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D470C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 09:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6duESdlykxYU7+Dve0KQn0Q0UZdn77jWDYKzK3D7q0E=; b=n0YVohrZb9GA48
	qceqRQ1xW3gzoijT8eqBfOPNFv6N4JmwqboJD486/W9KMYJxaaQL9IlSdwKIDZ0h/ywFgWYOIYvNn
	T9U0xiAO2hXRanV/IKhm1Y9WWeQ/qtSXq+7xrYQhj5Hag5Qy8leCEC91Uoz0OnPqAJ64/fVK9flRj
	7TL4NpwX046dj9hQdJmkgjTEMTFR3i3oxGGEdr1MMhx+pHir06CECU+pBH5yV29unFMQPbWGsu+uP
	sgls+dn/a5+PcS5gVMLvhTo1LBXFAthzdPLjdlHdLjZRnCoYwpwPW0hl/plpa44Nl/moVif9P8DUr
	SMC2cRQapEUZvZ1DXfaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8GsV-007eQ1-27;
	Wed, 29 Nov 2023 09:29:07 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Gs7-007e25-2l;
	Wed, 29 Nov 2023 09:28:48 +0000
Received: from pyrite.hamster-moth.ts.net (h175-177-049-135.catv02.itscom.jp [175.177.49.135])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 26B69F02;
	Wed, 29 Nov 2023 10:28:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701250086;
	bh=Edrymv5691+fMNHomNnzzNr4DmSpwPe97XaFQm/kkW8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=aDXlrcTI9ujlwLviFejRx+86njHF7zKPxbHPS3bIt9iAygP67XR5zGuBFoQe1SA9e
	 ZgPxXYj9EnTmQtlN79OzIdjLjKkQd6Mk8icNqxbC93QIk02+bRGHIgU62RWfXvOQyv
	 GbugVP2iLOawbOF5UGjvLr9+d/B4iGThKrlyq7aM=
From: Paul Elder <paul.elder@ideasonboard.com>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com,
	umang.jain@ideasonboard.com,
	aford173@gmail.com,
	Paul Elder <paul.elder@ideasonboard.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v4 05/11] media: rkisp1: Fix RSZ_CTRL bits for i.MX8MP
Date: Wed, 29 Nov 2023 18:27:53 +0900
Message-Id: <20231129092759.242641-6-paul.elder@ideasonboard.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231129092759.242641-1-paul.elder@ideasonboard.com>
References: <20231129092759.242641-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_012844_081276_FBF24AC8 
X-CRM114-Status: GOOD (  15.33  )
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

The ISP8000Nano, found in the i.MX8MP, has a different architecture to
crop at the resizer input. Instead of the "dual crop" block between the
ISP and the resizers found in the RK3399, cropping has been moved to the
input of the resizer blocks. As a result, the resizer CFG_UPD and
CFG_UPD_AUTO bits have been moved to make space for a new CROP_ENABLE
bit.

Fix the resizer shadow update accordingly, using the DUAL_CROP feature
to infer whether or not the resizer implements cropping. Support for
resizer cropping itself will be added in a subsequent commit.

Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v3:

- Condition on RKISP1_FEATURE_DUAL_CROP feature
- Update commit message

Changes since v2:

- Condition on RKISP1_FEATURE_RSZ_CROP feature
- Rename bits
- Use the rkisp1_has_feature() macro

 .../media/platform/rockchip/rkisp1/rkisp1-regs.h  |  5 +++++
 .../platform/rockchip/rkisp1/rkisp1-resizer.c     | 15 +++++++++++----
 2 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
index 3b19c8411360..95646b45f28b 100644
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
 /* MI_IMSC - MI_MIS - MI_RIS - MI_ICR - MI_ISR */
 #define RKISP1_CIF_MI_FRAME(stream)			BIT((stream)->id)
 #define RKISP1_CIF_MI_MBLK_LINE				BIT(2)
diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
index c1aaeed58acc..6d6ebc53c6e5 100644
--- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
+++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
@@ -178,10 +178,17 @@ static void rkisp1_rsz_update_shadow(struct rkisp1_resizer *rsz,
 {
 	u32 ctrl_cfg = rkisp1_rsz_read(rsz, RKISP1_CIF_RSZ_CTRL);
 
-	if (when == RKISP1_SHADOW_REGS_ASYNC)
-		ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO;
-	else
-		ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD;
+	if (when == RKISP1_SHADOW_REGS_ASYNC) {
+		if (rkisp1_has_feature(rsz->rkisp1, DUAL_CROP))
+			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD_AUTO;
+		else
+			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CROP_CFG_UPD_AUTO;
+	} else {
+		if (rkisp1_has_feature(rsz->rkisp1, DUAL_CROP))
+			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CFG_UPD;
+		else
+			ctrl_cfg |= RKISP1_CIF_RSZ_CTRL_CROP_CFG_UPD;
+	}
 
 	rkisp1_rsz_write(rsz, RKISP1_CIF_RSZ_CTRL, ctrl_cfg);
 }
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
