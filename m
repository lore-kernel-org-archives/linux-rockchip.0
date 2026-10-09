Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68BFBCA5FED
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Oct 2026 09:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5kY+KWBuwUZfPPDkSESc+mJZZdrQBEQAp9pU98ooT/4=; b=e8KnK1FoyWyG2B
	Kbx1B9gJH+t9zS8uRiCH27VSWQdLSXHR2d2+I/9km+pbLwKDOUA7qQ+25MKVxEmdLIHPBCIUKOYbx
	PKtw3SHaYZULzK22oZdSs4x4sCKud2WLLzNx6CHKx2qQAS4vSQYu356lY3LoYWpC/C3rXpuaEbOp5
	/trH7dp5KJftZeJago3YmEfR/+0dYE+bOR33VNSR57wDAaRBlBJ2uodszr+0v3Euh6r498iJN3D+A
	BOLp/+HQw5+MDQRSq0nNUhvhg8wuRdFmN/m0VgHhu9jXO4PdFh23aJdefHneZEPWCZxdLd67rx39T
	r28A4ISGb+qJa9QEOAvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF6cH-00000005t1z-0x7W;
	Fri, 09 Oct 2026 09:10:13 +0000
Received: from mail-m20521016446.xmail.ntesmail.com ([205.210.164.46])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF6cE-00000005t0L-0suI;
	Fri, 09 Oct 2026 09:10:11 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 506fb566b;
	Fri, 9 Oct 2026 17:10:05 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: add pcie30phy data-lanes on rk3588 coolpi-cm5-evb
Date: Fri,  9 Oct 2026 17:09:57 +0800
Message-Id: <1791536997-182608-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0aa11fed407e03a4kunme6ee38c8e188df
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGR5ISlYdTkhPHUhKHU
	JKQhhWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=ZqHnSejUonmOpl517ujiPl/c1n3XVgUkSu1Lg225rbi+UfubsGMg+mMKekoUB1a1ZkknzjlM87ZJdqGK3qXKBwhTKZFD8Ex+3cDk4TI+X0dFjHtn4X62wmG2tMGhICdTr/wcz2Z9v5jqkPyKMcdktcASfWXd2WWgrFQdtoGpPyc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=YFgPh2U5bGWg+BoExEn8iIfQGBbqolpxJI9fAFKU/KE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_021010_525347_5E94FAAD 
X-CRM114-Status: UNSURE (   9.11  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Both pcie3x2 (PHY port1) and pcie3x4 (PHY port0) are enabled, but
pcie30phy had no data-lanes. Without it the PHY defaults to aggregation
mode and assigns all four lanes to port0, leaving pcie3x2 without lanes
and unable to establish a link. Set data-lanes = <1 1 2 2> to split the
lanes as 2+2 between the two controllers.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
index 66e3c20..c269fdb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-evb.dts
@@ -198,6 +198,7 @@
 };
 
 &pcie30phy {
+	data-lanes = <1 1 2 2>;
 	status = "okay";
 };
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
