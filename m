Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FAAAC43327
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 02:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	MIME-Version:Subject:Date:From:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/WHAJnx55R0725vYx8lO5YvbIXWROPESmhI7dCc3Kao=; b=wHR37dLy6hG+0jiKVCq7amcuVD
	0g5xkU15moGGNhtjbyheXdsWHUhKUod0AcuyCIVWO1XhmZj1Pv6QO1mdPmw1dHsSMvYy0o+eCnXhO
	RvpQ/JQeT89MhsOcJ/KEgzdyjj5bjXGGchOOUXmUXzUEiiK8d50prO3EBBEnFa32r3ctzD3quZ3LV
	UCqQM5lr2Nj1SkzbftMCho1tEKjhL0pP1zwE2zOJV0jHIt9IGi8TRkWy1B6LnmaDJyv4ie8vFlKXl
	Sjd4/EBoBicP+VyxrPsKXGLT5iTX0qlbx7kmjZFOJOyaFbelTGFqRqa+mZ+ffH3oGTLoqZJAlpLq4
	nHkNwxXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfTmP-00000005tZ9-00yc;
	Fri, 03 Jul 2026 02:37:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfTmN-00000005tXm-31Dz
	for linux-rockchip@bombadil.infradead.org;
	Fri, 03 Jul 2026 02:37:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Message-ID:Sender:Reply-To:Content-ID:Content-Description;
	bh=FNpeTTaxZzlztLRm8w0bMFvau88h3vRn+4DN6i85aPU=; b=bLEKeTp6TAkZFEDPh+75JXC6fK
	PN0fmY+NgFoU3vX2VjfSOg9kw0X9wDnubjvtqoxGCN0IexuaSmqqpxCjkrmq9PmVLMC+CGPDm8C8T
	5e4cjpJd47g1XB52vPDXKJi7VFTh8DSGtHljJPVZTLN8WDPCKN0SpyLA7cx5sELS1e8ZaEFmawtzj
	O+OEJySbps5qKhugw2eiNRyyKhfvEJjhyRwINctGqEFGeEWf0OhR3itPWquSx/8lyiMXfXSDxvkoO
	f3Wv87XX2ht0GKeIBran71LVYCxci64loFZfwRzW4SQdR/fHl2GKJ6vM4H97qhpi/ge0qLzWVfvbv
	B7rlFePw==;
Received: from xmbghk7.mail.qq.com ([43.163.128.48])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wfTmJ-00000004PRk-3ANd
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 02:37:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1783046236; bh=FNpeTTaxZzlztLRm8w0bMFvau88h3vRn+4DN6i85aPU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=Nkx1lL+izVWss+NkChhyrNv5TdXGFHSPOmhpyKEGbPnW7S3r6yHaxDKKzoF4KG1x1
	 Ymz/8qCZ4+FopiRIgpG9xxG3VTZbU6hx4Pude9kou8dWAAcPVcjDdLZ8n7lGJ64YDJ
	 txsdcUNHUC8kTwBKGFRyXtJZy+jAuwFAYkVY2bWo=
Received: from ubuntu2204.localdomain ([218.4.149.66])
	by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
	id 8F90EEF9; Fri, 03 Jul 2026 10:35:57 +0800
X-QQ-mid: xmsmtpt1783046163tk6c419un
Message-ID: <tencent_EA7BE4312000D1DBCFA3A99B864A462B2105@qq.com>
X-QQ-XMAILINFO: M8EWeGxIhz+FNkyjQtDRK8tkiz1GRAG+22KAfFT//mtmP3VizZBEGykjChW0as
	 RwkEKbr8UpsNkHnOFR2KXR6U9Or+WoYT11tvpqeGl6JSvzq5YPsEjWWUO9VbzQBaVHc3fNVz8VTK
	 GdAZT/CHx3w7hundgKWyW3G/mKKfv2T1EbLRwmUy+RT2C3FPml0OmO2StAOIZCDOY+y537mpQ3u/
	 L0QAQoogwb+2fdY8N4O0Ho/rM9aseybMGhCjirQZJtuzj5vg3NajGRetl3uONBpoXciv7RO6/fGt
	 hOU79hVIkba19aGeBU2CEWN7e836ukekDpPIzdNvlsgqSRQNXd6pVg7LjqZ/4r2U1r+RqwKfrAkR
	 3iEcRhmyL57Qu6v2SuD/8aAc2SqLKAMfoOIXC9VR0QE6E7tcs0s04cwYLYHbtEl/ZlUjCvnzSxIy
	 KjVQyce/k8pX0dp9U8JO5mfbRr1kMywl2isGEs0Q66E3Qs52h8VgVquAQRq8llt9Ez4LjsxrRRIJ
	 glCOLWjI8dVqQihCxQUz0EGNtq/3uN9V3eVON1zcrddwCaLjbOuDUdgvClbnJdoaX78X25sirsUA
	 Escux8RfR5gF2YyYT1tKLfaJchZz+8xvkKZO5di1a8S9M0/f3+fCznmRfMjmLNJZxX9DrfEucm3r
	 g2r/5ocCxHqOql77HoXquP6MdFMIbk6/alGeIa3gbKliAIw51uJnjHXUrMswpBd4VVYXluy9JI6h
	 dcMPtlx9YYXXkoiXRvjIs+G7X9VgB2OnyhMia3/MDDXpKQFnnG7m9nJpCV3LFJyDcgOQEtl2jrcq
	 su0Hn7upC5UYXP9gPPnoSWnLmYXwkWGpuUrpyK9CmOpAe5OO4AMwCNBu7KEyV7O5lsM5tvkB4h/e
	 WWZ5rmK9kfserr1ora5RvrP5WCpEiQl1Zmb+13hHrPZxTq1pqbt/JzsBOAJi9YvuF5+rkwSSCZNq
	 0RDF5MN7xJKRBcchnYN8d3Hgdf8bHkNeO+GxS2+MV7yaPMSs4KWA6ylq3lmrofXIYT5LBXBLuF3b
	 oRQkMaHSwoRo3/0UW1zdZC9yT64lqkwPI4ItGfeG2us1mKMdozNL/lxWgl5Tyvp9LwpQrrXQw7MJ
	 G4YeWf7X40xQUJ9pxR6eEWHhyQKmtMsY7JD7v/2jlqHrbm2KaG5DwQvTHYcgconobscMEH
X-QQ-XMRINFO: OWPUhxQsoeAVwkVaQIEGSKwwgKCxK/fD5g==
From: Cunhao Lu <1579567540@qq.com>
Date: Fri, 03 Jul 2026 10:35:42 +0800
Subject: [PATCH v3 3/4] arm64: dts: rockchip: add CAN-FD nodes for RK3588
MIME-Version: 1.0
X-OQ-MSGID: <20260703-master-v3-3-6d56de6fd2f3@qq.com>
References: <20260703-master-v3-0-6d56de6fd2f3@qq.com>
In-Reply-To: <20260703-master-v3-0-6d56de6fd2f3@qq.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, kernel@pengutronix.de, 
 Vincent Mailhol <mailhol@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Cunhao Lu <1579567540@qq.com>, 
 Heiko Stuebner <heiko.stuebner@cherry.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_033720_305756_EA904A6A 
X-CRM114-Status: UNSURE (   7.54  )
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

Describe the three CAN-FD controllers integrated in RK3588 in the base
SoC .dtsi.

Add CAN0, CAN1 and CAN2 nodes with their register ranges, interrupts,
clocks and resets, and keep them disabled by default so board DTS files
can enable them as needed.

Co-developed-by: Heiko Stuebner <heiko.stuebner@cherry.de>
Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
v2 -> v3:
- Use Co-developed-by for Heiko's RK3588 contributions and add his
  Signed-off-by
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 39 +++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index fc1fdbfd3162..b340973775c5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -2648,6 +2648,45 @@ dmac1: dma-controller@fea30000 {
 		#dma-cells = <1>;
 	};
 
+	can0: can@fea50000 {
+		compatible = "rockchip,rk3588-canfd";
+		reg = <0x0 0xfea50000 0x0 0x1000>;
+		interrupts = <GIC_SPI 341 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru CLK_CAN0>, <&cru PCLK_CAN0>;
+		clock-names = "baud", "pclk";
+		resets = <&cru SRST_CAN0>, <&cru SRST_P_CAN0>;
+		reset-names = "core", "apb";
+		pinctrl-names = "default";
+		pinctrl-0 = <&can0m0_pins>;
+		status = "disabled";
+	};
+
+	can1: can@fea60000 {
+		compatible = "rockchip,rk3588-canfd";
+		reg = <0x0 0xfea60000 0x0 0x1000>;
+		interrupts = <GIC_SPI 342 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru CLK_CAN1>, <&cru PCLK_CAN1>;
+		clock-names = "baud", "pclk";
+		resets = <&cru SRST_CAN1>, <&cru SRST_P_CAN1>;
+		reset-names = "core", "apb";
+		pinctrl-names = "default";
+		pinctrl-0 = <&can1m0_pins>;
+		status = "disabled";
+	};
+
+	can2: can@fea70000 {
+		compatible = "rockchip,rk3588-canfd";
+		reg = <0x0 0xfea70000 0x0 0x1000>;
+		interrupts = <GIC_SPI 343 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru CLK_CAN2>, <&cru PCLK_CAN2>;
+		clock-names = "baud", "pclk";
+		resets = <&cru SRST_CAN2>, <&cru SRST_P_CAN2>;
+		reset-names = "core", "apb";
+		pinctrl-names = "default";
+		pinctrl-0 = <&can2m0_pins>;
+		status = "disabled";
+	};
+
 	i2c1: i2c@fea90000 {
 		compatible = "rockchip,rk3588-i2c", "rockchip,rk3399-i2c";
 		reg = <0x0 0xfea90000 0x0 0x1000>;

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
