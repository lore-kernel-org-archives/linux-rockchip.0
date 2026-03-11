Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1586FD88D9
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 01:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0zUB1MlDlxjKc2PhoINZn914weMAXAr+xCvrXthYhE=; b=HXUQd4BlxKgnz/
	9RhgWGk6RDZn5rSHj2uHuPsWlu3wHud9BYPbdE4R1SSC5Y1YyMEGYcvTq2l6DbKDsCF5K+XN8Q1jU
	GJwWlTJ2kbKyWlu2vAd3w7acqahPWx4rLDMSesoX9poL+yGRIg0uSvMYmbPiNUouQ6KtnUoGm17Gm
	/YkGz+ZzjydFUEF/qfLa+XszPx45dteHe5JQ7XZH1Jt+tAAwK/ncIYh7S67Kx8jPYcLDfI83MPQpx
	CdiqnRKOrUby0Z1czswKuCynqFzmloGGfNhGAslGTtqVqocHbgkpvf98dHxaIN5wNgQMJY1RwJQTE
	MgPtlrdDoUzsKwPov36A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w08Yx-0000000AVg3-20H5;
	Wed, 11 Mar 2026 01:40:39 +0000
Received: from mail-m3273.qiye.163.com ([220.197.32.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w08Yv-0000000AVeE-401b
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Mar 2026 01:40:39 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 367a87875;
	Wed, 11 Mar 2026 09:40:33 +0800 (GMT+08:00)
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
Subject: [PATCH 2/2] arm64: dts: rockchip: Add mphy reset to ufshc node
Date: Wed, 11 Mar 2026 09:40:18 +0800
Message-Id: <1773193218-215988-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1773193218-215988-1-git-send-email-shawn.lin@rock-chips.com>
References: <1773193218-215988-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9cda8d841f09cckunm2316bf2d15851b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU5MGlZPSUkfSUoYSRhMQkJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Jzsz3RA2XXrDgueY12HySIdpgncCrZvdEghbHItFLUNS5GOiAeZzakfyALqzziMjmUW/oUAb9l7/OFdYCk/aRd3mOZOoy+GPhh6kkpuARrhtTn057r/bhM0FZrxRB7kpdccDhWwskJ3ah3vRctynUlN/qk/COWSBMX+/BIRbdWo=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=WC5Y8mSIbVN6HwHPXOPgHXXwQRMByedP7DOhwmKOkVg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_184038_176404_1EE0B563 
X-CRM114-Status: GOOD (  10.84  )
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

Add mphy reset to ufshc node to fully reset the whole UFS blocks
if needed. Otherwise, it may occasionally prevent the UFS controller
from successfully linking up with the device.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 9c28769..9fa99be 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -2035,8 +2035,9 @@
 			pinctrl-0 = <&ufs_refclk &ufs_rstgpio>;
 			pinctrl-names = "default";
 			resets = <&cru SRST_A_UFS_BIU>, <&cru SRST_A_UFS_SYS>,
-				 <&cru SRST_A_UFS>, <&cru SRST_P_UFS_GRF>;
-			reset-names = "biu", "sys", "ufs", "grf";
+				 <&cru SRST_A_UFS>, <&cru SRST_P_UFS_GRF>,
+				 <&cru SRST_MPHY_INIT>;
+			reset-names = "biu", "sys", "ufs", "grf", "mphy";
 			reset-gpios = <&gpio4 RK_PD0 GPIO_ACTIVE_LOW>;
 			status = "disabled";
 		};
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
