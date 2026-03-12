Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7366E103E2F8
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Mar 2026 00:52:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hPegBgZdOBN4HXRdaXnyBhr+QFCuV+TL1h+mfMpwHGU=; b=JXQGC0kvHN+q5d
	F1gN5yVnDrZhVO1+pStncJ4bjOUGOgRLD58volyxTu1jPqxttI9cc8pRrLlttEZVw9a5w1il7kuRK
	Jz083zE3pZWRcZMz5V92cSmAGcpn+KTpYJ+5gBmelcFWGR2SFHKXAHRMNhgZeNBhXav3DWacs/JAx
	weqHgjWJS6EnfrYNEmw1vm/iju/R8iBFLPRlhTZmQkzNJdNq9lbodMu41wpU2C0Tj9L7ZoRmxJ8GM
	m463HjR8/AtjnRI+Lcfn6TVkZ0spxlFJuLrEa5EysZirsNJYtGjfapW8X5Zn7TXjQD2QdTjQL+qtC
	QgJ3P9CEsvcBAmJU1Xvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0UHZ-0000000CyE3-3KiT;
	Thu, 12 Mar 2026 00:52:09 +0000
Received: from mail-m15598.qiye.163.com ([101.71.155.98])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0UHW-0000000CyDg-3glQ
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Mar 2026 00:52:08 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 369efffad;
	Thu, 12 Mar 2026 08:51:57 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: "James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2] scsi: ufs: drockchip,rk3576-ufshc: dt-bindings: Add new mphy reset item
Date: Thu, 12 Mar 2026 08:51:47 +0800
Message-Id: <1773276707-24857-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9cdf875eb709cckunmc99ce7d957335
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQklJTVZOTUwfTUNNSkMYTxpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Pa3gm9LPU8atHGfwjM6pFp1/paSeulsxByOX5OBJ7JhU2lpd1sLpbm+Gmkx8B3eq4fd3n4ZT2QiDAsl97YeCpYqv0RoxAVYZiQ2hjHFOkLomSMMer2/vN9ie+c9gK6cM+PXEO5xIFipTK3FGTJSWCpeWTCl3Yh+npTvcYYYP+Uo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=1CdTSXSgbu7pjk01TaZ9yRuCgv2po2xbhjwyMUCPEKg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_175207_435575_6D458272 
X-CRM114-Status: GOOD (  11.16  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the mphy reset property to the devicetree bindings for the Rockchip
RK3576 UFS host controller. The mphy reset signal is used to reset the
physical adapter. Resetting other components while leaving the mphy
unreset may occasionally prevent the UFS controller from successfully
linking up with the device.

This addresses an intermittent hardware bug where the UFS link fails to
establish under specific timing conditions with certain chips. While
difficult to reproduce initially, this issue was consistently observed in
downstream testing and requires explicit mphy reset control for full
stability.

Although this change increases the maxItems for resets and adds a new
entry (which technically alters the binding ABI), it does not break
compatibility for existing Linux systems. The driver uses
devm_reset_control_array_get_exclusive() to manage resets, allowing it
to function correctly with both older Device Trees (without the mphy
entry) and newer ones.

Fixes: d90e92023771 ("scsi: ufs: dt-bindings: Document Rockchip UFS host controller")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2:
- update commit msg to indicate Linux is not affected and describe the
  what is happended(Krzysztof)

 Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml b/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
index c7d17cf4..e738153 100644
--- a/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/rockchip,rk3576-ufshc.yaml
@@ -41,7 +41,7 @@ properties:
     maxItems: 1
 
   resets:
-    maxItems: 4
+    maxItems: 5
 
   reset-names:
     items:
@@ -49,6 +49,7 @@ properties:
       - const: sys
       - const: ufs
       - const: grf
+      - const: mphy
 
   reset-gpios:
     maxItems: 1
@@ -98,8 +99,8 @@ examples:
             interrupts = <GIC_SPI 361 IRQ_TYPE_LEVEL_HIGH>;
             power-domains = <&power RK3576_PD_USB>;
             resets = <&cru SRST_A_UFS_BIU>, <&cru SRST_A_UFS_SYS>, <&cru SRST_A_UFS>,
-                     <&cru SRST_P_UFS_GRF>;
-            reset-names = "biu", "sys", "ufs", "grf";
+                     <&cru SRST_P_UFS_GRF>, <&cru SRST_MPHY_INIT>;
+            reset-names = "biu", "sys", "ufs", "grf", "mphy";
             reset-gpios = <&gpio4 RK_PD0 GPIO_ACTIVE_LOW>;
         };
     };
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
