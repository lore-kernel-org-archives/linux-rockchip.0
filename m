Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C094C83F03
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Jul 2025 15:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kd4lyqfzUS19Mtecb/Tv9gqS+g97Cbolwss9kDIevXQ=; b=0gQzGd8U+KURh4
	H6Rv9tJvjeJU2aZOtPw7n12t2fyVw+Vc+xZGebtNdkVVUaJ/XX9XmxST3Xvyq5mPyWJDBXAOnoZt8
	LZydS0jr/min3QBxJ5GE0PyucB6cMQOYHuS6vNowrFHUSEr/0uwpN3Aph4+iKqI8Vr+lA3Z0xkxYs
	d4IuMWhuGQlk8WkUspSxU7yuXzgdHM6iBgNoCSVTykJk1dLV5JLWfcnLb0qs4cgj0qlb4rUk6zy4e
	WfIUZ88cQhsXMi1M9EnUA6qHngjGbBiSYteDrWPGZPhMAz1O7IWC4uhuuHvIDKUFHctPXegFihiPL
	fhreXPmnxnfia9UyEzww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZWiN-00000009ALo-0nKf;
	Wed, 09 Jul 2025 15:28:07 +0000
Received: from out-171.mta0.migadu.com ([2001:41d0:1004:224b::ab])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZUls-00000008lpo-2hRT
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Jul 2025 13:23:38 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1752067414;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nOh9E6KTw/G/RjNvzFhSoJb3dEHhHttr0OlC9cZGWdE=;
	b=0amw15gcaBpnOB/8CDQ13CKbnZ6BR1R38ikYGdeziEhiZRtos5mxL+B1VIaxCKvJEpqBRm
	iGCsqMwlrGBswFFfTV0r7iqfvqMJZNk9DQnt8irpGoJht1rXCxYb0ql/LNbTwKyLpItGcv
	vCxXoSnMZBgr7egmchNaOPZxEkxlQewN3FlaDt0oiSb0gZkZ7Q8VyuY1EBC/n92jRugbYj
	fC9TRL37c2PulEwj5NNgWtxhGh1I1IWvish4z+QrCl0dmYJPKryhDey9MptzXnVBNgsiLQ
	x19sCPLpBgYEVz7+40/8fFfEJuT9+9VD2a8E84zeu2q6s1+VPJe03gLW4+Sn5g==
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
Subject: [PATCH v4 02/10] arm64: dts: rockchip: Move dsi address+size-cells from SoC to rk3399 boards
Date: Wed,  9 Jul 2025 15:15:15 +0200
Message-ID: <20250709132323.128757-3-didi.debian@cknow.org>
In-Reply-To: <20250709132323.128757-1-didi.debian@cknow.org>
References: <20250709132323.128757-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_062336_829007_D71D2304 
X-CRM114-Status: GOOD (  10.54  )
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
