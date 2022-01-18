Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7022AC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jan 2022 02:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCmLA+soCgo2sDoCKQYIu4M1zbNQ02cpxf4FYYqrwQM=; b=uhl+sY/IPPxJEr
	Mj6yQlLpV+5tGKX2f90XzVcNMzTQ0XvbYbKVzGr+UXj7ONr4XCW8GiwuIxLZW86Deo/ik/et1PEIB
	N7um0DoodYj7xImoylV2nNf8Lgcm/Obs2aS8Thi0poLGHlmG0N7i5thRDWYfIhG1tdxebh3XUDT41
	CMvP6TBw1/Yope/XEFnSnijZBPx45NO18c51cgrEK7jx7MimW69cNPkvQbB1/Lgk5PtinTN81IbQv
	ZE+SmgLv9BI12YOnhdvN4VpWb5/zh5PKgtdkU+UqIPAfaSaDFe0hOUaNToYaxIG3G/f1PIQ8/lxMu
	1yGX/ht9lueVosqmgnIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9eHn-00GyOt-Ug; Tue, 18 Jan 2022 02:31:52 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9eBw-00GvCZ-IF; Tue, 18 Jan 2022 02:25:50 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0521AB81255;
 Tue, 18 Jan 2022 02:25:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84A0DC36AE3;
 Tue, 18 Jan 2022 02:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1642472745;
 bh=Chc9JxYeropHxv0l4lx9PHgC5dJsgohvIR5/56p+Y3g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XmsB62sFKiLBR0QBOKBjBnU+vOFtu7md2pG6qsu/thRDv1Sn17zivykXr+15L1i1d
 kVonbab5nbEsNS5EUZgyH7Ucv837ThmYRHKnqvLnTOoFsEl8lVH/g3N/zV/+gz4TnU
 Zq3H2JccaIukpDKiTRA2U7ay+0bjGB+5aVnciKwigyN695VK8tNq+RPzP5g/nTs8W1
 y33HVMzFU6/mcRX3v4CwIHHIh2wkwUZrfoXEUcGqNqMrYnuLnio9m6y70AreNFTcyb
 TUcy73MuQM64F7vyT+P/cVTLBpAk6j6RwY67khTFyqb19xwKm/AJxeMn/0XNjTJbL3
 g4GjQxDd0v8yQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jagan Teki <jagan@amarulasolutions.com>, Heiko Stuebner <heiko@sntech.de>,
 Sasha Levin <sashal@kernel.org>, robh+dt@kernel.org, knaerzche@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.16 119/217] arm64: dts: rockchip: Fix Bluetooth on
 ROCK Pi 4 boards
Date: Mon, 17 Jan 2022 21:18:02 -0500
Message-Id: <20220118021940.1942199-119-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220118021940.1942199-1-sashal@kernel.org>
References: <20220118021940.1942199-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_182548_925809_6FDE7C5F 
X-CRM114-Status: GOOD (  12.99  )
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

From: Jagan Teki <jagan@amarulasolutions.com>

[ Upstream commit f471b1b2db0819917c54099ab68349ad6a7e9e19 ]

This patch fixes the Bluetooth on ROCK Pi 4 boards.

ROCK Pi 4 boards has BCM4345C5 and now it is supported
on Mainline Linux, brcm,bcm43438-bt still working but
observed the BT Audio issues with latest test.

So, use the BCM4345C5 compatible and its associated
properties like clock-names as lpo and max-speed.

Attach vbat and vddio supply rails as well.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Link: https://lore.kernel.org/r/20211112142359.320798-1-jagan@amarulasolutions.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts | 7 +++++--
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts      | 7 +++++--
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts      | 7 +++++--
 3 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
index dfad13d2ab249..5bd2b8db3d51a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b-plus.dts
@@ -35,13 +35,16 @@ &uart0 {
 	status = "okay";
 
 	bluetooth {
-		compatible = "brcm,bcm43438-bt";
+		compatible = "brcm,bcm4345c5";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "lpo";
 		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		max-speed = <1500000>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
index 6c63e617063c9..cf48746a3ad81 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
@@ -34,13 +34,16 @@ &uart0 {
 	status = "okay";
 
 	bluetooth {
-		compatible = "brcm,bcm43438-bt";
+		compatible = "brcm,bcm4345c5";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "lpo";
 		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		max-speed = <1500000>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
index 99169bcd51c03..57ddf55ee6930 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
@@ -35,14 +35,17 @@ &uart0 {
 	status = "okay";
 
 	bluetooth {
-		compatible = "brcm,bcm43438-bt";
+		compatible = "brcm,bcm4345c5";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "lpo";
 		device-wakeup-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
+		max-speed = <1500000>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vcc_1v8>;
 	};
 };
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
