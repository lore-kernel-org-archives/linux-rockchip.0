Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1680D116EA
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Nov 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KWHg/ECAcbAH7cgTiZlxWoiXgs7622WTEldSJYp/XFw=; b=lf0GDmDSCrBT8D
	e+GqGVOpWAdppSYqudyyhubBs5/mTb4ivgbFxNMCqrOV3fsSvJ/vrcxkrZcll33fqbvR1t1szc9Kc
	y314usLSoIG1FWc7EvIDmeKAc0fhcgvkB4FoIL9py+EcxpCpk5a0yG76Pf9i/WZdf7j7yUS8YXGG6
	gEF2RA5RAr2xTDwNLc134RoEnCjb2BqaNRRTipX3+e0Rm3NJZcVKVtlhPrLAoX5c5glHCx02B4YBP
	R5vCs5YXrAK4SACHgyKOsek5thW/Uud1jm2XV3ozzyBd5uYilGLs+FV/VvUIkY0+IuOxyBZeTpybV
	WSCB8mZhnXmY2VH2YLWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOsbt-000000004hn-29mw;
	Fri, 28 Nov 2025 07:09:41 +0000
Received: from mail-m155110.qiye.163.com ([101.71.155.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOsbo-000000004gv-30gB
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Nov 2025 07:09:39 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2b3bfab7b;
	Fri, 28 Nov 2025 15:09:29 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: add dma-coherent for pcie and gmac of RK3576
Date: Fri, 28 Nov 2025 15:09:22 +0800
Message-Id: <1764313762-78063-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9ac94ba5a209cckunmb87542b96dc7fb
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx0ZQlZKHR9DGU1PH0lLThhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=IoVdAwRqnR+CuOGpu3reWOP1G8MiMaHEx1cJzv0U/KTwWRHJu9P49rJPi/Xnu/aj0d8ObNI80NiRMflAB8hIl7/bwqzuQgwCRMqgZMZYhUdQh0S/O2BvwcfLU2YVF6VV9jcT1tN7VaEV1eT1CuljLEv1WrKe6awHQJilVFld4N8=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=ngyQh6Jegi+6/Xe+0GHHOL6vn2V3VLKVugE0RM/LlYk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_230938_458949_3DCAFDC2 
X-CRM114-Status: UNSURE (   9.98  )
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

The RK3576 SoC employs ARM CCI for maintaining cache coherency
between the CPU cluster and high-speed peripherals including USB3,
SATA, GMAC, and PCIe controllers. While the USB3 and SATA controllers
were correctly marked as dma-coherent, the GMAC and PCIe nodes were
overlooked.

Without dma-coherent, the kernel falls back to software cache maintenance
for DMA operations, requiring explicit cache flushing and invalidating.
This adds significant overhead that degrades performance in high-throughput
workloads.

Add the missing dma-coherent properties to enable hardware coherency and
avoid unnecessary software cache management overhead.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---
Hi Heiko,

This patch needs U-boot support which was added on Apr 15 2025 at least.
https://elixir.bootlin.com/u-boot/v2025.10/source/arch/arm/mach-rockchip/rk3576/rk3576.c#L156

Given that when the time USB3 and SATA were added, they set dma-coherent but without a
CCI enabled U-boot, they were in fact broken due to no CCI support and no software cache
maintenace when seeing dma-coherent. But there is no anyone complained about thes, so
it should be ok that we don't need to bother ourselves.

 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index a86fc6b4..33d2e521 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -709,6 +709,7 @@
 			reset-names = "pwr", "pipe";
 			#address-cells = <3>;
 			#size-cells = <2>;
+			dma-coherent;
 			status = "disabled";
 
 			pcie0_intc: legacy-interrupt-controller {
@@ -763,6 +764,7 @@
 			reset-names = "pwr", "pipe";
 			#address-cells = <3>;
 			#size-cells = <2>;
+			dma-coherent;
 			status = "disabled";
 
 			pcie1_intc: legacy-interrupt-controller {
@@ -1709,6 +1711,7 @@
 			snps,mtl-rx-config = <&gmac0_mtl_rx_setup>;
 			snps,mtl-tx-config = <&gmac0_mtl_tx_setup>;
 			snps,tso;
+			dma-coherent;
 			status = "disabled";
 
 			mdio0: mdio {
@@ -1756,6 +1759,7 @@
 			snps,mtl-rx-config = <&gmac1_mtl_rx_setup>;
 			snps,mtl-tx-config = <&gmac1_mtl_tx_setup>;
 			snps,tso;
+			dma-coherent;
 			status = "disabled";
 
 			mdio1: mdio {
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
