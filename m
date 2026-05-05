Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE8AFFF8855
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 17:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nrcpsu7PiRDLtW5lIP+0B0GmxtybnNWk0lrSP8FqjLg=; b=p7Z86w7gm6VtLY
	p7g32SxRj18rzaE7N0gDhb16fD4KCsVg0T4RbuSo5lO8upHujdonRDZ06gmPh1k4WXg/D01U11YOD
	9+lADd1h0H1nq6s1oIRMuwP8kJywF0P3EdMyazeWfswcWm7bFFhVx56p5pUHvXv3nGKOewXj7mdFl
	wPafmhbYuv+YJAHpRGrtOMVGcqqLcJSstjFVGgFBYeiQU4xocq0vv9qbzjLUHrp3WopER9NVbnf/t
	TyDlUmdobxFnfsVmrXPWsqnVKGjNiagHo+dhHsfWrs+eZradXl6X8xvQW4iiqUOp8efQ7HtIIjlZG
	syS4ktqzaC9RkQKbuzHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKJa9-0000000H3cC-0oM6;
	Tue, 05 May 2026 17:29:17 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKJa6-0000000H3bc-2DU9
	for linux-rockchip@lists.infradead.org;
	Tue, 05 May 2026 17:29:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id BB20442A81;
	Tue,  5 May 2026 17:29:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A70FCC2BCB4;
	Tue,  5 May 2026 17:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778002153;
	bh=a2VxScLn6dlcb/B5AXY9SHUXcMy7dE/2xkJkiH/Eh64=;
	h=From:To:Cc:Subject:Date:From;
	b=GG+WlmF81wNTntNhmwTh+yozRh7WXzFRPrLxFe5qtm8PDNgQQ7GMWVQkCL0zAoOGj
	 UkPotkAd/zlKhVaS1zZb9ZKKvsvuizmVFUUKc9sP3d8DB+V8+tbkXsG7/378gegIQK
	 6+SgiH8AOiMdlyzQsyMYY7LscWi0kvKqD1yPLEBl2xBKuEqU5Czz6JRYIoubzsTssC
	 JIz7YBmDStHS/iurX91bFDcZ6sETLo6JZSks3LvPQphOtkEfgVWODbSRJTQkeomn2H
	 ZS7V/pnYFMNh8i1RbEUfSxV7rgjbVioCIc+2mj1FFeDnJvknwvFM9LYsnlJxdgqllg
	 nAeWRu7l8G3cg==
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@kernel.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk3399-nanopi-r4s: Disable removed devices
Date: Wed,  6 May 2026 01:29:02 +0800
Message-ID: <20260505172903.33271-1-wens@kernel.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_102914_611636_7F8D00EA 
X-CRM114-Status: UNSURE (   8.21  )
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

While the design of the NanoPi R4S is based on the common NanoPi 4
family, it is trimmed down a lot.

Disable all the peripherals on the SoC that are not used, and delete
all the external components that are not present.

Signed-off-by: Chen-Yu Tsai <wens@kernel.org>
---
 .../boot/dts/rockchip/rk3399-nanopi-r4s.dtsi  | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
index 3a9a10f531bd..4274d1b6e80a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dtsi
@@ -66,16 +66,41 @@ &emmc_phy {
 	status = "disabled";
 };
 
+/* No USB type-C PD power manager */
+/delete-node/ &fusb0;
+
+&i2c1 {
+	status = "disabled";
+};
+
 &i2c4 {
 	status = "disabled";
 };
 
+&i2c7 {
+	status = "disabled";
+};
+
+&i2s2 {
+	status = "disabled";
+};
+
+&hdmi {
+	status = "disabled";
+};
+
+&hdmi_sound {
+	status = "disabled";
+};
+
 &pcie0 {
 	num-lanes = <1>;
 	vpcie3v3-supply = <&vcc3v3_sys>;
 };
 
 &pinctrl {
+	/delete-node/ fusb30x;
+
 	gpio-leds {
 		/delete-node/ status-led-pin;
 
@@ -101,14 +126,21 @@ reset_button_pin: reset-button-pin {
 	};
 };
 
+&pwm0 {
+	status = "disabled";
+};
+
 &sdhci {
 	status = "disabled";
 };
 
 &sdio0 {
+	/delete-property/ mmc-pwrseq;
 	status = "disabled";
 };
 
+/delete-node/ &sdio_pwrseq;
+
 &u2phy0_host {
 	phy-supply = <&vdd_5v>;
 };
@@ -119,12 +151,48 @@ &u2phy1_host {
 
 &uart0 {
 	status = "disabled";
+
+	/delete-node/ bluetooth;
 };
 
+&u2phy1_host {
+	status = "disabled";
+};
+
+&usb_host1_ehci {
+	status = "disabled";
+};
+
+&usb_host1_ohci {
+	status = "disabled";
+};
 &usbdrd_dwc3_0 {
 	dr_mode = "host";
 };
 
+/delete-node/ &vbus_typec;
+
 &vcc3v3_sys {
 	vin-supply = <&vcc5v0_sys>;
 };
+
+&vopb {
+	status = "disabled";
+};
+
+&vopb_mmu {
+	status = "disabled";
+};
+
+&vopl {
+	status = "disabled";
+};
+
+&vopl_mmu {
+	status = "disabled";
+};
+
+/delete-node/ &bt_host_wake_l;
+/delete-node/ &bt_reg_on_h;
+/delete-node/ &bt_wake_l;
+/delete-node/ &wifi_reg_on_h;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
