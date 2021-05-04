Return-Path: <SRS0=aLnl=J7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B862C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 08:37:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D1BCC613BC
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 May 2021 08:37:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D1BCC613BC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=E7nLBEqK99loVbcopdWNLPJqWVOv6YZ+0KFkZUaUwgs=; b=qQR6EuRVtvyPHiApu/BA5uU6h
	wi9Z+Ect1Vcf64OlzLYmo1GHND0KuVRmVcmMi+T/bTUhsD7SjiBSM2PSsd+STRkyYhNPvTLaxzzVf
	eyT3faxSTVTXdVsT3MROz0BtwpnAf5oqnWi2VRu/u4RIl2s9vjmvElrjec4dz0WBm/1EfWACuyyFT
	4xf55HhF5rULYzNGWKL13slSq56mW+OFYxrsopBfDEs64KKJRpK3uERVG6vfUjrQo1ys5abmi3fz+
	ZFI4UtKYHIXqlxQu1H7dO7OJl+a4SuIkWqfYEMjVH8qgEqpbdFAouIFYvZRbjcJj8KRW1lLNYHf2Y
	S4hvLpZDQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldqYp-00Fl6b-Kw; Tue, 04 May 2021 08:37:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldqXd-00Fkla-Ah; Tue, 04 May 2021 08:36:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=KGWVdKmlX+0r+cNEfH9lTGVIKxdZd5LTf884wXvylm0=; b=XVN8LMBbiq9RXzTDlnL/8yVfb7
 pBHvlWFPW/b7uypNfRMvyRm/bh4tfCh66Nko9ttS3TrjNzk88vf6OeHby2VShG047qudZG/GUB8Uz
 p2R8krYxNtyYjYJJ2yUfvhQsdOYWx3hwkzOIo3zzcNVLW1OtA1yrFEVAj4kKsbFHSzYdGhbnuj1b3
 TL7E6o0SWBAtDIXv8iE1L43Lf81c1Lkg/RmMDbuHpKp06mBD0auanjOF/aNw0zBISf2He7118nz9y
 Zv0IbjQm0E1Xfri/S1a/IqGrc+xw+lQ0sgotJyUmwsP9c9gw8J0NdHRPCyCKZBykwlsTzLlltb471
 nFnKH+aQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldqXa-003osd-1n; Tue, 04 May 2021 08:36:27 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 57CA8613C0;
 Tue,  4 May 2021 08:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1620117385;
 bh=wDdTO8tC8Zdg5fvkSijmtyx/2c1fdbnwL+BFdPq35v8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nz6peFjPqrrphuzcV4JUJPy0nDAOSH1h3PtxT10nllAGyQ/XDU+x6uDBRxaYK3daM
 jHiVkXyUNrnvkwC22dF7nXXenRvLH8bwupoGiyYmcqCKGVyWKh5vqKZwmrFUinnUEG
 zN3AWY6dxB5s4jKJ4/0AWE44nrh2eKoC9GYwu+RxOrWo5Kn4TqeH+PuRyASNo/BsEr
 DFIynW+U7qCKNLoKssZaHuwn47aj6SkHmJNIrvRYLxYIS7htKnZYGTHAmhRlOyyR/F
 mSq0HZHgANpaeqrFpPdPBXfnPckj1NLr4J56P/QsUUXd2akbcBUNu8A7WyGYXmoq0G
 AI8qnvjl6knNg==
Received: by wens.tw (Postfix, from userid 1000)
 id 473345FCC8; Tue,  4 May 2021 16:36:23 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: rockchip: rk3328: Enable USB3 Ethernet on
 NanoPi R2S
Date: Tue,  4 May 2021 16:36:16 +0800
Message-Id: <20210504083616.9654-5-wens@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210504083616.9654-1-wens@kernel.org>
References: <20210504083616.9654-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210504_013626_150711_C821A4B3 
X-CRM114-Status: GOOD (  14.19  )
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

From: Chen-Yu Tsai <wens@csie.org>

The NanoPi R2S has a Realtek RTL8153B USB 3.0 Ethernet chip connected
to the USB 3.0 pins of the RK3328 SoC. Power to the chip is controlled
by a GPIO line toggled transistor switch, which is not a full-blown
voltage regulator.

At least in Linux, the USB 3.0 XHCI controller has two ports: the first
port is for legacy USB 2.0 and slower, while the second port is for USB
3.0. Since the Ethernet chip supports USB 3.0, it should be described
as connected to the second port.

Add the device nodes for the power switch and Ethernet chip, and enable
the USB 3.0 controller. The USB device node follows the standard USB
device binding.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 .../boot/dts/rockchip/rk3328-nanopi-r2s.dts   | 32 +++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
index f807bc066ccb..64cf07ee3d10 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
@@ -14,6 +14,7 @@ / {
 	compatible = "friendlyarm,nanopi-r2s", "rockchip,rk3328";
 
 	aliases {
+		ethernet1 = &rtl8153;
 		mmc0 = &sdmmc;
 	};
 
@@ -101,6 +102,18 @@ vdd_5v: vdd-5v {
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 	};
+
+	vdd_5v_lan: vdd-5v-lan {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio2 RK_PC6 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&lan_vdd_pin>;
+		pinctrl-names = "default";
+		regulator-name = "vdd_5v_lan";
+		regulator-always-on;
+		regulator-boot-on;
+		vin-supply = <&vdd_5v>;
+	};
 };
 
 &cpu0 {
@@ -309,6 +322,12 @@ wan_led_pin: wan-led-pin {
 		};
 	};
 
+	lan {
+		lan_vdd_pin: lan-vdd-pin {
+			rockchip,pins = <2 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	pmic {
 		pmic_int_l: pmic-int-l {
 			rockchip,pins = <1 RK_PD0 RK_FUNC_GPIO &pcfg_pull_up>;
@@ -368,6 +387,19 @@ &usb20_otg {
 	dr_mode = "host";
 };
 
+&usbdrd3 {
+	dr_mode = "host";
+	status = "okay";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	/* Second port is for USB 3.0 */
+	rtl8153: device@2 {
+		compatible = "usbbda,8153";
+		reg = <2>;
+	};
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
