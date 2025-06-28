Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4691C54ED1
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Jun 2025 14:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kd4lyqfzUS19Mtecb/Tv9gqS+g97Cbolwss9kDIevXQ=; b=ttI/t6Tyw0OeTq
	GLrK7vRVNTFAne7k71F1rPnO02kamSNti0cZ9GzYarRbVQb/M2yM3eZiYC6X6Hrh2aUbgeiINROh1
	+dP28GxMQ8f8zT8LJQAdF6z5quKtdgF+wvQamZM7j7hkVjgmxhkyYUlcRb16Wp/LoQcpm+3mYk1Fv
	DElWaYM+O2eFILcwnMVwNdRGDxOYMB7xVDoF4uYIUk0G77CQzy8HeHgGP/Z7FqairnFSK0DDXmfLc
	fq+Kguk8usSPR3DRon/W764HcKZpGEPP+dyzOJCi+Uqko4/D7m4GfIwGdo01bR7Kz9O4zCGWkXx77
	WCXn4e7mkDDYCFr4wA7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVWuK-0000000GuVe-0GkF;
	Sat, 28 Jun 2025 14:51:56 +0000
Received: from out-172.mta0.migadu.com ([2001:41d0:1004:224b::ac])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVWry-0000000Gtzs-0tO0
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Jun 2025 14:49:32 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1751122167;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nOh9E6KTw/G/RjNvzFhSoJb3dEHhHttr0OlC9cZGWdE=;
	b=RI2cprHMkvR80i1f397cAPHR2Lai/hXFD21EM2oIdU/DEM4zIMx3nExva5oamc6uD4mw/U
	shsiI/dwJL4/bmLCPzOVLgiOYM1dQKNgE5Er6IGb8pKbTkxQH4gsay8AALFzsiAbFQFhIM
	cInZDzvwo/2S4PC2sJF08Sano2pFfuHBHitY3nHMxz7u/foe4FABwW0NB+WWdkgk4xZmps
	dG8oR3SkMxyfB46ZhsT40bkA+OkSoWycpbJ1aPSiuY2t1ZK34fWmiF8p55nntO1eCv007X
	w9zdllLvgwjlFi0DesdqEuxlifEJtrIoUWgo4QGWl8FH16o3pzMQwL9na8Dwow==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v2 02/10] arm64: dts: rockchip: Move dsi address+size-cells from SoC to rk3399 boards
Date: Sat, 28 Jun 2025 16:32:36 +0200
Message-ID: <20250628144915.839338-3-didi.debian@cknow.org>
In-Reply-To: <20250628144915.839338-1-didi.debian@cknow.org>
References: <20250628144915.839338-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250628_074930_389704_36D5F3CE 
X-CRM114-Status: GOOD (  10.91  )
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

The #address-cells and #size-cells properties are not useful on the DSI
controller node; they are only useful/required on ports and panel(s).
So remove them from the controller node and add them where actually
needed on the various rk3399 based boards.

This fixes the following DTB validation warnings:

  unnecessary #address-cells/#size-cells without "ranges",
  "dma-ranges" or child "reg" property

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-base.dtsi             | 4 ----
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi      | 4 +++-
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts     | 2 ++
 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.dtso | 3 +--
 4 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
index 9d5f5b083e3c..4dcceb9136b7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
@@ -2071,8 +2071,6 @@ mipi_dsi: dsi@ff960000 {
 		resets = <&cru SRST_P_MIPI_DSI0>;
 		reset-names = "apb";
 		rockchip,grf = <&grf>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		status = "disabled";
 
 		ports {
@@ -2112,8 +2110,6 @@ mipi_dsi1: dsi@ff968000 {
 		resets = <&cru SRST_P_MIPI_DSI1>;
 		reset-names = "apb";
 		rockchip,grf = <&grf>;
-		#address-cells = <1>;
-		#size-cells = <0>;
 		#phy-cells = <0>;
 		status = "disabled";
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index 5e068377a0a2..6aaaf0f7f73f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -627,8 +627,10 @@ &mipi_dphy_rx0 {
 };
 
 &mipi_dsi {
-	status = "okay";
 	clock-master;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
 
 	ports {
 		mipi_out: port@1 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 909ed14035f7..fe32937a2d16 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -464,6 +464,8 @@ &io_domains {
 
 &mipi_dsi {
 	clock-master;
+	#address-cells = <1>;
+	#size-cells = <0>;
 	status = "okay";
 
 	panel@0 {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.dtso b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.dtso
index b1f4ab22b99c..a26c8e05c13b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.dtso
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-screen.dtso
@@ -47,10 +47,9 @@ touch: touchscreen@5d {
 };
 
 &mipi_dsi {
+	clock-master;
 	#address-cells = <1>;
 	#size-cells = <0>;
-
-	clock-master;
 	status = "okay";
 
 	ports {
-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
