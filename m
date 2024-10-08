Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D48ACEF15A
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 11:51:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=625L4M+dcVRYfDL9AfTMOCj34mdjbWhZy2MqlIFIl1U=; b=ssBFCp4TDNe0s5
	qU0hA85nPK1FuGUiCLGeEzlO0O/a6ddSTA1jN+w99ahONxi23CVifmy4LON7OShQrMtWm7hXdiPtd
	cL1D7uf/61mYf7gL07iMha0W2FDcHGTsUodX6YPzu2vZQv71U7ZM6kr+dGyuCBnGTXHd44tN49FTu
	+NFfMLujIQr+K8shX2TTQqjczVmiX6UYGrPkiy6ZY6l/RpTBcrYGN6oookwe7hkJ5QWqGPL1ymqE7
	HX402hCuFEDz/6JG5UT5vTCurhGlseHe0QnUvUA8L8e0U1dsqxp9qr1SIhz4M3gXt7ABl7qIN+P8Y
	ku+WD/tImU4vRjmZ4Teg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sy8ko-00000005hho-3ZM8;
	Tue, 08 Oct 2024 11:51:50 +0000
Received: from out-184.mta0.migadu.com ([91.218.175.184])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sy8U8-00000005e2V-1Gum
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Oct 2024 11:34:37 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1728387273;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dKlqz7no2Q0t056MIy0/Nk83i3CyvmCGheL9X0Hx2a4=;
	b=Gih9R00ND98f9TxWntc7iICTyevgHbEJHne476iMNtuYR3DmO8m1rXXY2CM9F8xB0VAaSr
	5m+uFIcE2deDLKvzy63wQ4Fn54thb3LPC0nvzHjmLreIpxVidW+Zsay+r3bkOTOg6EeEQV
	sHpTopbwjLFUYybAis2ixpUgJmqUSW7viIKDbJ4jbld5mZ8Sj70sPDPr0+2/h+5NEZovQG
	8M4D0FBvCjqRoj5gIAB1/03yIJheWUK8O/hBGCqtBkpiOshbd+zF2PYd7X5sSzR9tMjLl2
	Fdh2yNdjc/zdtyfvC7Kmtt4ZnL/J76TFm9oPE9iEX1raH3/Ltpr3jXJgUxzSsA==
From: Diederik de Haas <didi.debian@cknow.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Diederik de Haas <didi.debian@cknow.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: rockchip: Fix reset-gpios property on brcm BT nodes
Date: Tue,  8 Oct 2024 13:15:39 +0200
Message-ID: <20241008113344.23957-5-didi.debian@cknow.org>
In-Reply-To: <20241008113344.23957-1-didi.debian@cknow.org>
References: <20241008113344.23957-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_043436_511570_A73083DF 
X-CRM114-Status: GOOD (  11.45  )
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

For most compatibles, the "brcm,bluetooth.yaml" binding doesn't allow
the 'reset-gpios' property, but there is a 'shutdown-gpios' property.

Page 12 of the AzureWave-CM256SM datasheet (v1.9) has the following wrt
pin 34 'BT_REG_ON' (connected to GPIO0_C4_d on the PineNote):

  Used by PMU to power up or power down the internal regulators used
  by the Bluetooth section. Also, when deasserted, this pin holds the
  Bluetooth section in reset. This pin has an internal 200k ohm pull
  down resistor that is enabled by default.

So it is safe to replace 'reset-gpios' with 'shutdown-gpios'.

Fixes: d449121e5e8a ("arm64: dts: rockchip: Add Pine64 PineNote board")
Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
changes in v2:
- Extended commit message to explain why replacing 'reset' with
  'shutdown' is safe
- Added Fixes tag

 arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index 7381bb751852..100a2774bbb5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -686,9 +686,9 @@ bluetooth {
 		clock-names = "lpo";
 		device-wakeup-gpios = <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
-		reset-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
 		pinctrl-0 = <&bt_enable_h>, <&bt_host_wake_l>, <&bt_wake_h>;
 		pinctrl-names = "default";
+		shutdown-gpios = <&gpio0 RK_PC4 GPIO_ACTIVE_LOW>;
 		vbat-supply = <&vcc_wl>;
 		vddio-supply = <&vcca_1v8_pmu>;
 	};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
index d09e6542e236..3e0cbfff96d8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi
@@ -402,9 +402,9 @@ bluetooth {
 		clock-names = "lpo";
 		device-wakeup-gpios = <&gpio2 RK_PB2 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio2 RK_PB1 GPIO_ACTIVE_HIGH>;
-		reset-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_h &bt_reg_on_h &bt_wake_host_h>;
+		shutdown-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_LOW>;
 		vbat-supply = <&vcc_3v3>;
 		vddio-supply = <&vcc_1v8>;
 	};
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
