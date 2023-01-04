Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03782C46467
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jan 2023 20:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NYRHxzG7fr+wUxlnGhbH+e+SzNx7MF5mY3jBSUcKk3M=; b=ilimt0cmhc4bI0
	onY3DvoJXLc7XM/07Bsfk1CFiFYa80IunEOFRiw+CXhj9w2wN0Hlq4Kft0/3QhlLzpjwegUDalH9p
	JQX817rxbzpARox2L4DrvFOe5Y3bhXrVCG7tu8fIZoqwHZIV/s4eTi2Do3Q/37hEIS29Ri0Z8MCGi
	bP3FCgg0CuvujMz7IHLXxO+kv7uf6Hsizzl9oCq3vgIbLeFN/4Tl/5IAwga8LgR41b/+aLehtjb7U
	tls8Ax8r09b4Jy6wJPIT8sLsOYypmFHiQXebIo+FvLWAUhYciMZ8Ba6JuU/JqoMSZwBmfcZXrsmrO
	uiCOq0qAOZ12BTGaTo/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDAmr-00C1Ma-CF; Wed, 04 Jan 2023 20:55:01 +0000
Received: from s2.dolansoft.org ([212.51.146.245] helo=mx.dolansoft.org)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDAmn-00C1Eb-RZ
	for linux-rockchip@lists.infradead.org; Wed, 04 Jan 2023 20:54:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=brun.one;
	s=s1; h=MIME-Version:Message-Id:Date:Subject:Cc:To:From:In-Reply-To:
	References:From:To:Subject:Date:Message-ID:Reply-To;
	bh=dScxnYnetHqkt0e3pYXPOSfgXFo46Th6kTSyK5zNUiI=; b=JAZNuIKlBzMsTSA3nqgSFwQFZF
	JRpuQ08FQExADliwUOYgjWOdgZvieTM3ok9dpFPOvpuzSDajUQGcuqef9Tis4wSRwbHpp4GWcdbP0
	aocEImRIw0XpgAvwqGa0tUNyNwGzLC1YIG7YCSpWW0LRJKfGYo5tNENI8Qx1/o0UqC4nM65cOnNT3
	uZBvBhMzORGyBHwdA2pCt3ltkhPOCk9a6Uo1kCZhPxKHy5H/LDE9fpALlSQEP9wLxTKnjvGbSYONm
	PEuVYYwAi9kaTfCZgFNjcdMAxy7AAmbpNdr50zIzEnWAmADWe05jP8ScTcUWXxvitl+BnUl61Iik7
	AtRKPZ9g==;
Received: from [212.51.153.89] (helo=blacklava.cluster.local)
	by mx.dolansoft.org with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <lorenz@dolansoft.org>)
	id 1pDAmi-0020ms-1i;
	Wed, 04 Jan 2023 20:54:52 +0000
From: Lorenz Brun <lorenz@brun.one>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: fix USB regulator on ROCK64
Date: Wed,  4 Jan 2023 21:54:34 +0100
Message-Id: <20230104205434.867219-1-lorenz@brun.one>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_125457_919347_E7FB9A80 
X-CRM114-Status: GOOD (  11.19  )
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

Currently the ROCK64 device tree specifies two regulators, vcc_host_5v
and vcc_host1_5v for USB VBUS on the device. Both of those are however
specified with RK_PA2 as the GPIO enabling them, causing the following
error when booting:

  rockchip-pinctrl pinctrl: pin gpio0-2 already requested by vcc-host-5v-regulator; cannot claim for vcc-host1-5v-regulator
  rockchip-pinctrl pinctrl: pin-2 (vcc-host1-5v-regulator) status -22
  rockchip-pinctrl pinctrl: could not request pin 2 (gpio0-2) from group usb20-host-drv  on device rockchip-pinctrl
  reg-fixed-voltage vcc-host1-5v-regulator: Error applying setting, reverse things back

Looking at the schematic, there are in fact three USB regulators,
vcc_host_5v, vcc_host1_5v and vcc_otg_v5. But the enable signal for all
three is driven by Q2604 which is in turn driven by GPIO_A2/PA2.

Since these three regulators are not controllable separately, I removed
the second one which was causing the error and left a comment explaining
that this regulator actually controls multiple rails.

Signed-off-by: Lorenz Brun <lorenz@brun.one>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index f69a38f42d2d..bd82bc80444d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -37,6 +37,9 @@ vcc_sd: sdmmc-regulator {
 		vin-supply = <&vcc_io>;
 	};
 
+	// vcc_host_5v also controls the vcc_host1_5v and vcc_otg_5v rails
+	// but there is only one common control signal (USB20_HOST_DRV) at
+	// GPIO_A2
 	vcc_host_5v: vcc-host-5v-regulator {
 		compatible = "regulator-fixed";
 		gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
@@ -48,17 +51,6 @@ vcc_host_5v: vcc-host-5v-regulator {
 		vin-supply = <&vcc_sys>;
 	};
 
-	vcc_host1_5v: vcc_otg_5v: vcc-host1-5v-regulator {
-		compatible = "regulator-fixed";
-		gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_LOW>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&usb20_host_drv>;
-		regulator-name = "vcc_host1_5v";
-		regulator-always-on;
-		regulator-boot-on;
-		vin-supply = <&vcc_sys>;
-	};
-
 	vcc_sys: vcc-sys {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_sys";
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
