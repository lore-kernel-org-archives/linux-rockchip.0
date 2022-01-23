Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71D45C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jan 2022 13:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eaCVxsbNeyHqK52xund6ZlPxDsT0S5pNBBD5FabZYpQ=; b=V2KlovWl8a3PtQ
	TOHGTCj50NbTFGewhjFCItiQf0y8BSctkKHyGzrXdBpQCCU1qcgPB7VNQOOIbluPZ8Nv7rw09ZfSY
	Hny7M3EhC+WwfGo/bzdNv1uCUO4/8lBFXIgFllziwvXoqb5uniq/taoQenP8B3DaDkXNh+oNboL6q
	CjtdeCiGAYYtiHhwx3C70tfhSMNeY2lGigPwdCjRc2NqxyalFtrl/WLC9nLskGp049rF4kRbwBgDU
	OCRX1Ra2naV9vELMqcN/5VZQYxhqhSRTHbm2fR7Mb+vcx+GicnGuGghxiamynZAtStZMUIGRGvfFs
	vlUB32pFC2IGqV7/QyGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nBd2w-000sIW-7m; Sun, 23 Jan 2022 13:36:42 +0000
Received: from mxout4.routing.net ([2a03:2900:1:a::9])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nBd2i-000sD9-VE; Sun, 23 Jan 2022 13:36:30 +0000
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
 by mxout4.routing.net (Postfix) with ESMTP id DADED1007A0;
 Sun, 23 Jan 2022 13:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
 s=20200217; t=1642944987;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=fqfsP/ntZCKwYdbau/pTlmwRTLdGLdcEXAGWnn9giqI=;
 b=gAOEs/4TfYv8tuAtd3KTUIySFXCQX0Vzs+odxOinxZLZdsF9G0QDDtpr27anUPfivaWxb/
 6AZPN5H/rbLUyt5AblDGZMehfhlKBoGoMDuAZiqB7VFotoTNpdezAFKsIn3P41pTgftHxy
 JHaPyL5blKZomc4pDTgIffONFcf1SvM=
Received: from localhost.localdomain (fttx-pool-80.245.79.232.bambit.de
 [80.245.79.232])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 35C9F402ED;
 Sun, 23 Jan 2022 13:36:26 +0000 (UTC)
From: Frank Wunderlich <linux@fw-web.de>
To: linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1] arm64: dts: rk356x: fix dma-controller warning
Date: Sun, 23 Jan 2022 14:36:15 +0100
Message-Id: <20220123133615.135789-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mail-ID: 3a9c0cd5-7e83-47e6-9c3e-403b1c0a467c
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220123_053629_179531_EC966C41 
X-CRM114-Status: GOOD (  10.43  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Frank Wunderlich <frank-w@public-files.de>

DMA-Cotrollers defined in rk356x.dtsi do not match the pattern in bindings.

arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dt.yaml:
  dmac@fe530000: $nodename:0: 'dmac@fe530000' does not match '^dma-controller(@.*)?$'
	From schema: Documentation/devicetree/bindings/dma/arm,pl330.yaml
arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dt.yaml:
  dmac@fe550000: $nodename:0: 'dmac@fe550000' does not match '^dma-controller(@.*)?$'
	From schema: Documentation/devicetree/bindings/dma/arm,pl330.yaml

This Patch fixes it.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index a68033a23975..8ccce54ee8e7 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -651,7 +651,7 @@ &i2s1m0_sdo0   &i2s1m0_sdo1
 		status = "disabled";
 	};
 
-	dmac0: dmac@fe530000 {
+	dmac0: dma-controller@fe530000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xfe530000 0x0 0x4000>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>,
@@ -662,7 +662,7 @@ dmac0: dmac@fe530000 {
 		#dma-cells = <1>;
 	};
 
-	dmac1: dmac@fe550000 {
+	dmac1: dma-controller@fe550000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xfe550000 0x0 0x4000>;
 		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
