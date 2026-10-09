Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39A58CA6015
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Oct 2026 02:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KxhZBn3UaRt41YltOAZOBi1Lm/glK/Ag+Ey0pMaVD8c=; b=P4jz0FK7J4F8dN
	vEZufmPUI7c2kvRdF7Ovb++pYNZaAgSXUvjQ14tjJWtHmB5MGI1WiKAeByUhMRkK1N6GJ+Bvq+xd5
	4le4pktLBCVTPa9BEnw3GgLn4hefEt3cNlXxKVh+s66BIWy1FMpP8Zwyl8049HwjcCwsaqLm42Sje
	LJvqhZ3IWMFaaPpv0JDtxKdyR9hYm/cKyVclbyW+XXm++8bwC+iBNDeI/IPeoNQssRy7uGkMdNaU8
	Q3hAXA1h4Hxbof5+MgqktzWA8ZmjhtiNj0PBik9Y3lYqFu9x3390vZPzuGBlNibLHfpRW/rNmd3WZ
	IXDcRGdmokaDbsjrbr6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEzv9-00000005GNo-24hZ;
	Fri, 09 Oct 2026 02:01:15 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEzv6-00000005GMu-1cRt
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Oct 2026 02:01:14 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-3a4b9732d5aso3251494a91.3
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 19:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791511271; x=1792116071; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=2fDuH5AqlzghdgOw85VEEM3nScrcIHTb70P6L+D1SRk=;
        b=nrChnQkbwFZsqDfSvMyIwbZ+IIHLdXFvZ0si3X0OFYadS9u8wtI0UaRx6SRxA4tuUC
         sQrsMDChRqgwfbMcs4zC5dT8lrxsQp/xwRSAPsElmDpS4XZGTX5MUOoUu9R91dfvhCBr
         XOHUVeMWkN8W91K0Syc9yFWxZoy3ZPrF4HJdFmuLrQp0f/XHqa3c7EngxY9xddeKyrxS
         OvadALJQ2WNSZzCXRUzFlH6elh+pX/jNVa5nScmTyrg7i+0QW8oN+h6gAF3m3ib0sZ2D
         i0cVW72Wbv5+oEOSX/H7+bnGlcXUdyUWJ8FSDFnMf7A41rhSg0+IhgM/U6p5TT9yeB31
         YEeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791511271; x=1792116071;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2fDuH5AqlzghdgOw85VEEM3nScrcIHTb70P6L+D1SRk=;
        b=XlGMmdm1BHS3Kkb3VynW1wFWxvdZsYxEPrtEFLK9J/590AuDFoW/emQEAhvfkfeqHB
         WA38AkcP/ryjahWW1o0qXHFlUcPYPCPkGDWqhUkeudTVRZKV3+WWrurmnuKhm+lpmpIZ
         2XnP4Y3Pbi5AWUAFq/N1v9OnMq+L5gdoaQHTk/Sy2dtfg8PANxfy5x2LfkVf/s+kZXkf
         e5np/gWxEnGCU2PPW68U0bWLTIYT38cYw3yora20BPZ5MbmP11M9tGgACJlpTbglSzNM
         iXocUPp24ZMdDeQmp5pTZGI+KyX0c4nLPyVc0rU09BTesJ2SYUP/zJJf4n19YfOvmizf
         eJ5g==
X-Forwarded-Encrypted: i=1; AKwUvBwtTohm1nSoEKCTAn4jvRIcY2K7dmZlajGiaYhj4IwsNPImo3/3rvLOhHCTwttWzcdK0RSvAghn68ZcYa9JiQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYKpwTkTK6aHPQ0L1VceBq7FopDqv+zQC1ukwJvG9IwWMoLywte2
	H0Yx9PwxFoscowWNqW5lc5YnDFARpPohQlUoE8XzXsooaxgsRvkuCfCZ
X-Gm-Gg: AYBFou05fyN3ycgF7ZhKFZ+qVmxPquk6mrJOXQPrwXJSvbxs64cNnzDDqLx0CGl39Ye
	A6hh5XNuhLj1prl2uxlPRv4upeKxUR70vNtMlE2rz47iIMLmvl8OxZK2rGxq3qBepp14o6qMJsE
	+jPsMV6aVDL5O5hXvqwBa6Fho0zL25w6mLtBN+u9L3euthEu8frwpCp64KReS+isTL1m6zdoKuC
	zCwBxgkT3y8bZTvKqesIFQAeS2dVDCOq3s3GZJih+6+XgW3vAd2rumzlUbhdlnTIPB7XkSwXtG9
	tk4VZPX9M/BtmWn/jdrLBij+3xCGhjcWoRkffSiTs53zaweYEppYWtWuDucVbgtUxdLIHe66aKy
	dG4C4uHq2i7LJoBS0iNWheJK/dttHL+2DGNTy9xGXHF7mF6btii34nd8zJCP9sMipBsNAn0beZj
	MGL1hS0D19V6Z0YZTgj0oYKzaZLaFMr/q1I/8KKrik3Nc5ZrKsBBuDis6Qb2xOIR2h3UO7c4KaG
	OcL3tI=
X-Received: by 2002:a17:90a:e707:b0:3a8:796e:ca18 with SMTP id 98e67ed59e1d1-3ab3ace27f1mr572130a91.59.1791511271485;
        Thu, 08 Oct 2026 19:01:11 -0700 (PDT)
Received: from arch.localdomain ([161.33.202.10])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab38fc9e52sm1095770a91.13.2026.10.08.19.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 19:01:11 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Liang Chen <cl@rock-chips.com>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Add dma-names to RK356x UART nodes
Date: Fri,  9 Oct 2026 10:01:02 +0800
Message-ID: <20261009020103.364498-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.56.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_190112_452252_1A2D5DB4 
X-CRM114-Status: GOOD (  10.83  )
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

The RK356x UART nodes define a dmas property but omit the matching
dma-names property, so the 8250 driver fails to request a DMA channel
and falls back to PIO, logging:

  of_dma_request_slave_channel: dma-names property of node
  '/serial@fe650000' missing or empty

Add the missing dma-names = "tx", "rx" to uart0 through uart9,
matching other Rockchip SoCs such as the RK3588.

Fixes: a3adc0b9071d ("arm64: dts: rockchip: add core dtsi for RK3568 SoC")
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
Changes in v2:
  - Add Fixes tag for the commit that introduced the dmas property.

v1: https://lore.kernel.org/all/20261008153620.238580-1-jerrysteve1101@gmail.com/

 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index a5832895bd39..098493c04ecc 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -443,6 +443,7 @@ uart0: serial@fdd50000 {
 		clocks = <&pmucru SCLK_UART0>, <&pmucru PCLK_UART0>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 0>, <&dmac0 1>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1449,6 +1450,7 @@ uart1: serial@fe650000 {
 		clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 2>, <&dmac0 3>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart1m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1463,6 +1465,7 @@ uart2: serial@fe660000 {
 		clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 4>, <&dmac0 5>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart2m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1477,6 +1480,7 @@ uart3: serial@fe670000 {
 		clocks = <&cru SCLK_UART3>, <&cru PCLK_UART3>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 6>, <&dmac0 7>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart3m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1491,6 +1495,7 @@ uart4: serial@fe680000 {
 		clocks = <&cru SCLK_UART4>, <&cru PCLK_UART4>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 8>, <&dmac0 9>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart4m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1505,6 +1510,7 @@ uart5: serial@fe690000 {
 		clocks = <&cru SCLK_UART5>, <&cru PCLK_UART5>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 10>, <&dmac0 11>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart5m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1519,6 +1525,7 @@ uart6: serial@fe6a0000 {
 		clocks = <&cru SCLK_UART6>, <&cru PCLK_UART6>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 12>, <&dmac0 13>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart6m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1533,6 +1540,7 @@ uart7: serial@fe6b0000 {
 		clocks = <&cru SCLK_UART7>, <&cru PCLK_UART7>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 14>, <&dmac0 15>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart7m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1547,6 +1555,7 @@ uart8: serial@fe6c0000 {
 		clocks = <&cru SCLK_UART8>, <&cru PCLK_UART8>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 16>, <&dmac0 17>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart8m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
@@ -1561,6 +1570,7 @@ uart9: serial@fe6d0000 {
 		clocks = <&cru SCLK_UART9>, <&cru PCLK_UART9>;
 		clock-names = "baudclk", "apb_pclk";
 		dmas = <&dmac0 18>, <&dmac0 19>;
+		dma-names = "tx", "rx";
 		pinctrl-0 = <&uart9m0_xfer>;
 		pinctrl-names = "default";
 		reg-io-width = <4>;
-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
