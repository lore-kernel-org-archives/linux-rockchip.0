Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E5D1C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 16:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zVps4/qkp4Y7jfLooEIC4SoC2bi8w+kL7bfGTIZz3Ck=; b=qwyLnaO0WO1Ens
	CnZhdXjPSGW/2QwaNPM384Rg7PkVV1E7e2vWs7NAf+jPUpv9bN1/9dk2Mcjytd35nt620BQoCViLw
	lwmTp9tbB668F9UB9LXkGgaFzCKxd5gfHHxiR7B4cN9vx/mLezwdFqKEZ8g9irkEc8o3tZ3CUzV58
	OR6U7Yqf+d/Tt0Je4B+Gdry83VOaF2UJpI58fE6uFvu8oIJ8z2B9v3lAypkOBZXpr6+SMJbygHXiv
	w6jpDy8j6DWb1zRhPP5bBTTRPe8RJpNPyE480k2QeAu3VgsNBopPsXUftirTnOIQLbbMI1VUUMa1g
	bzoK8nZG+HhVWKl4glZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRz0O-009KB0-O7; Wed, 09 Mar 2022 16:17:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRz07-009K7B-7u; Wed, 09 Mar 2022 16:17:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 302276173D;
 Wed,  9 Mar 2022 16:17:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0ACAEC340E8;
 Wed,  9 Mar 2022 16:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646842641;
 bh=Uy23ZolzuI1RPojDcKbOT+RVaAD15FgdKsEPlpak3Ic=;
 h=From:To:Cc:Subject:Date:From;
 b=eu0cq5nKT9mDIwdLPyvYdQTNAswY1B78OWx2tcL6BIfIwnHkxuSvqApH3+DxXfxJ0
 TZMrrNRknAoVmgLlpOfD9jnFaa77aQonVMrFsRZno/6vjlyimcwiJKnC2ljQ9fcRr2
 u0RaBwM4N8JxJKo5RKIlG/lKrcE06LIKurW2lnmVZPhimcl6z8QAAEJFtnrIZMmLrs
 IEpI9pUDr0YTEgiRksdRgRAroOx4BdBSwcC9u777Cxtk/Ib8YHCs/eENePFztwzbEg
 GuHclo8r7fzDf8D+4mvKHqJYIlz2GgL80h8hud/Qtjr0IcpDH0Drad27SmhUE5OBkt
 YHjLzCzzBiGFA==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Heiko Stuebner <heiko@sntech.de>, Sasha Levin <sashal@kernel.org>,
 robh+dt@kernel.org, pgwipeout@gmail.com, cl@rock-chips.com,
 michael.riesch@wolfvision.net, frattaroli.nicolas@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.16 01/27] arm64: dts: rockchip: fix dma-controller
 node names on rk356x
Date: Wed,  9 Mar 2022 11:16:38 -0500
Message-Id: <20220309161711.135679-1-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_081723_365836_44F9EE48 
X-CRM114-Status: GOOD (  12.49  )
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

[ Upstream commit 2ddd96aadbd0412040ef49eda94549c32de6c92c ]

DMA-Cotrollers defined in rk356x.dtsi do not match the pattern in bindings.

arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dt.yaml:
  dmac@fe530000: $nodename:0: 'dmac@fe530000' does not match '^dma-controller(@.*)?$'
	From schema: Documentation/devicetree/bindings/dma/arm,pl330.yaml
arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dt.yaml:
  dmac@fe550000: $nodename:0: 'dmac@fe550000' does not match '^dma-controller(@.*)?$'
	From schema: Documentation/devicetree/bindings/dma/arm,pl330.yaml

This Patch fixes it.

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
Link: https://lore.kernel.org/r/20220123133615.135789-1-linux@fw-web.de
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 46d9552f6028..688e3585525a 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -647,7 +647,7 @@ &i2s1m0_sdo0   &i2s1m0_sdo1
 		status = "disabled";
 	};
 
-	dmac0: dmac@fe530000 {
+	dmac0: dma-controller@fe530000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xfe530000 0x0 0x4000>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>,
@@ -658,7 +658,7 @@ dmac0: dmac@fe530000 {
 		#dma-cells = <1>;
 	};
 
-	dmac1: dmac@fe550000 {
+	dmac1: dma-controller@fe550000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xfe550000 0x0 0x4000>;
 		interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
