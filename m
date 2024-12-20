Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E959E77188
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 16:34:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WaEuW0ayvX7iCT5VdlZzvy9dubzA8Y0I6bUS2G2MWxY=; b=fFZxyay/3YzFCF
	opiKb9jtEHWRzybI/cnVJwIfcx4k8TnexqBnNnpbiWwNde9k+oucw45QrfJsU7YSUVwILMm0EMuWh
	VeLhm9kcOt1xl4gE8Uz7S+h5M4LF6uypanercI+O0bRVx6LSo93prxVKef5F11U8UEhUf71bBTo0Z
	geHndBlcGGhJ1FJMIExV1Z2Hjl4qzH5oHIGNpM+2Ydx71oTanCWQUaDAjk1zuhNYswRUN+KZGw4Ru
	b9aA82TaWZlQ8/So31fSrqmvOQFEBGI/EpLhEsxnWcaLJIwLs3gZjuuA5UG7wtbomnFFZ2LsD0R9Q
	BF3M9fIdjOfCkUMdYWsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOfwx-00000005Tg9-3k2R;
	Fri, 20 Dec 2024 16:34:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOfvt-00000005Tbz-11oK
	for linux-rockchip@bombadil.infradead.org;
	Fri, 20 Dec 2024 16:32:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=2l7F3pjuoDH3GKZ6bPXFtH3xTXOQ8g8lc//roM40EcA=; b=CDQpHKt01hdz4EJNhkbwx4oa/C
	fIa/ttKi/vf2QQu2ZAH7Ri8n2ERskib6TdnuSMYODOgm+QYBaprg7+1aox2hBrE3Mpwf/6iybcJdW
	7wrrHNzctruzPBiEj0vo2D2pdGaBd6P8I4WfGFtNS94uipiZaikCurzl37QZozHisyuiYqSItmK4L
	fnJNkswOY8xsNMBurAN120rpnzwHUgH4zeige3nSpINSi/9gYZikxnf1zuAPJ1kCam12zLKMb11zJ
	j7af8salr2R0V2C/cUUwGGgoMNbxdaFySk2H93g3jr/aXLTr1aE4Nr4LYdKVFJE1Dd9Z/N1wEF05r
	ijwkBYmA==;
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOfvp-00000005j53-3M8P
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 16:32:56 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3862a921123so1505292f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Dec 2024 08:32:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1734712370; x=1735317170; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2l7F3pjuoDH3GKZ6bPXFtH3xTXOQ8g8lc//roM40EcA=;
        b=W49c+bhoQU5NMhmLaqLf/tZ70Ngn/ymE4T0ciOSwJG2QRfeEE7Ly1kS34i7IkbatD3
         xUoZsv7JsbOuJEhPKgc5BBdupYyrdZmF8zWxXyw7VIYFeeyp0pIgm89B9MP03NMoWUC0
         b4Oo7Hd4ega1U3sd5JUou/jFM0q7ZNCQEhVgykcJDYLbJZ+lM/mLNcMpqaL9T1z4jM0A
         q2M/ReeG0Y1v4igqaYKuLZ+jURqEDs5PVe7RP3Y9JaJ5J1W3tf3CDOrI10qvLJdftYRl
         w5dy/WLDeQl0JhKheurspRDiJUrr7VtLk8NOegnTGfaP/DuuTNKd97uL4T7mUFbCuJ8a
         OkUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734712370; x=1735317170;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2l7F3pjuoDH3GKZ6bPXFtH3xTXOQ8g8lc//roM40EcA=;
        b=Q4eyVIPYx1DWa7wg6UYHDBlkaAjLT/bDqxTfU232r0uFqAkKAtlvVksWIeEjyR9o/M
         Ui0JvLXUllGyXocF/phJNNyLG0xC2zvZF1RAiM8CSdNvYqVnhjbnjZkqP/AWes2KjPMK
         0HAgGTJbLzOOlkPr57ZyOH2rZxGBKmI1iNxTvrzN8Be0G8Ec5EeCwl4E/HyAoP8/DMGa
         6Z26WwyUldh6CkgKkd5CqVmTxskz+0zOnSm/c3zrqAS66wr4gSjRUmp0IiYzi8BTICEN
         X3SlMmnrZRjnr1ludm1w9yTXT8tWwlZf837uhX6dILMJzPCzCZWbz5m9QlcHcYWjEW+3
         rfVw==
X-Gm-Message-State: AOJu0Yzd5OfLNEbs8RxVU1D6DgfBqyI2YDEIInLJBu1WipqB+uly4SH3
	xvNDO8NRaQwirj96d1IVPVIidkVBNrI76/x540Pd6Xwi+5CGoR864Pd6k7nsvETGamv3391PC5g
	/sgPjYA==
X-Gm-Gg: ASbGnctCo5e8+FrooU/TN84FhM+KDDF0UtE4jrUn/NyZF3ITqvL95lHEhL3sieN1D9P
	ePZ5MawZad0/9YVI/DEuan5p90jBnPbPxO6fooPOtZ2YK8ROQt51tJDqPFtbzcQg/Odvy7LgF4p
	6yscOEAcVMNcS8dWWytGwLh1LJGRmH52he01JNMLNxmsy7+bKHzU+p+JcIf5/Tk110xd+YBCqGn
	3zaAXHxmj72cEnkaixDs10UdFLreuQ+vBXYqd48DHjk2rZtqGUwQKIypEOICaZ3VmXStGskGeRM
	XYXVL1rfKKzsD3D8Zi1Tj/juZO6IOzVTAS7Uh/jl1/q0rBRAHvSIElpYlw==
X-Google-Smtp-Source: AGHT+IGAt3760Qhq8XM3fVQ4ouCmUKpaz/sP4mtLEw32k0+oB77VuzIh0ce8Xp3r2hz5RJC3cF50Bg==
X-Received: by 2002:a05:6000:1a86:b0:386:3702:d2d8 with SMTP id ffacd0b85a97d-38a22400b0emr3189544f8f.58.1734712370342;
        Fri, 20 Dec 2024 08:32:50 -0800 (PST)
Received: from elemental.sec.9e.network (ip-078-094-000-050.um19.pools.vodafone-ip.de. [78.94.0.50])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-38a1c89e1a1sm4365193f8f.69.2024.12.20.08.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Dec 2024 08:32:49 -0800 (PST)
From: Alicja Michalska <alicja.michalska@9elements.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alicja Michalska <alicja.michalska@9elements.com>
Subject: [PATCH] arm64: dts: rockchip: ROCK3B: Correct clock rates for Ethernet PHYs
Date: Fri, 20 Dec 2024 17:32:27 +0100
Message-ID: <20241220163227.1501912-1-alicja.michalska@9elements.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241220_163254_253771_FA875BEF 
X-CRM114-Status: UNSURE (   8.87  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Built-in ethernet PHYs did not work on mainline kernel:

fe010000.ethernet eth0: Register MEM_TYPE_PAGE_POOL RxQ-0
fe010000.ethernet eth0: __stmmac_open: Cannot attach to PHY

According to the board design, they need to be configured as output with
static TX/RX delay. This patch sets it accordingly.

Signed-off-by: Alicja Michalska <alicja.michalska@9elements.com>
---
 .../boot/dts/rockchip/rk3568-rock-3b.dts      | 68 +++++++++++--------
 1 file changed, 38 insertions(+), 30 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index 3d0c1ccfaa79..5350158302e4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -183,37 +183,65 @@ &cpu3 {
 &gmac0 {
 	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
 	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>, <&cru CLK_MAC0_2TOP>;
-	clock_in_out = "input";
-	phy-handle = <&rgmii_phy0>;
-	phy-mode = "rgmii-id";
+	assigned-clock-rates = <0>, <125000000>;
+	clock_in_out = "output";
 	phy-supply = <&vcc_3v3>;
+	phy-mode = "rgmii";
+	phy-handle = <&rgmii_phy0>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac0_miim
 		     &gmac0_tx_bus2
 		     &gmac0_rx_bus2
 		     &gmac0_rgmii_clk
-		     &gmac0_rgmii_bus
-		     &gmac0_clkinout>;
+		     &gmac0_rgmii_bus>;
+	snps,reset-gpio = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 20000 100000>;
+
+	tx_delay = <0x36>;
+	rx_delay = <0x2d>;
+
 	status = "okay";
 };
 
 &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
 	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru CLK_MAC1_2TOP>;
-	clock_in_out = "input";
-	phy-handle = <&rgmii_phy1>;
-	phy-mode = "rgmii-id";
+	assigned-clock-rates = <0>, <125000000>;
+	clock_in_out = "output";
 	phy-supply = <&vcc_3v3>;
+	phy-mode = "rgmii";
+	phy-handle = <&rgmii_phy1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&gmac1m1_miim
 		     &gmac1m1_tx_bus2
 		     &gmac1m1_rx_bus2
 		     &gmac1m1_rgmii_clk
-		     &gmac1m1_rgmii_bus
-		     &gmac1m1_clkinout>;
+		     &gmac1m1_rgmii_bus>;
+	snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 50000 150000>;
+
+	tx_delay = <0x47>;
+	rx_delay = <0x28>;
+
 	status = "okay";
 };
 
+&mdio0 {
+	rgmii_phy0: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+	};
+};
+
+&mdio1 {
+	rgmii_phy1: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0>;
+	};
+};
+
 &gpu {
 	mali-supply = <&vdd_gpu>;
 	status = "okay";
@@ -512,26 +540,6 @@ &i2s1m0_sdi0
 	status = "okay";
 };
 
-&mdio0 {
-	rgmii_phy0: ethernet-phy@1 {
-		compatible = "ethernet-phy-ieee802.3-c22";
-		reg = <1>;
-		reset-assert-us = <20000>;
-		reset-deassert-us = <50000>;
-		reset-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
-	};
-};
-
-&mdio1 {
-	rgmii_phy1: ethernet-phy@1 {
-		compatible = "ethernet-phy-ieee802.3-c22";
-		reg = <1>;
-		reset-assert-us = <20000>;
-		reset-deassert-us = <50000>;
-		reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
-	};
-};
-
 &pcie2x1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie20m1_pins>;
-- 
2.47.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
