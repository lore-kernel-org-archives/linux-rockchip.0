Return-Path: <SRS0=3rJg=PQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1536CC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Oct 2021 16:35:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D879F610CF
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Oct 2021 16:35:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D879F610CF
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=flokli.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1qkoSYkxyyljZe/23datmxX/9BXm38/rD5adIwOIVLQ=; b=ZoTlSE5P9XSNAvaoOwuTNmq/pY
	c9YUsU9s9i+lk6+ZcP1PXfo463OCvHVQnhb+DVGLNqRZlrc2geYXNf0yfD/PZ/I/APSb4dl/RCpfS
	poUVnqn4dPATa7oihDOcb9iJq+ncPQjCiBiDDVjyhixtncqTGVV1UNIx2n/6USkElPER0ZFUo0JF4
	vGusChyFYBB+MPGRWrqHLogUmCkR4FldCFSqHijUWmKrHEnPVaggikNVpJGd4A3JJfXAM3C9rlhT0
	uxQNvqhCFG8Yrd1dbxZ4zOfHrxTpyLvhvxtHkYS+oF0d+D5EdMKITJafuJPCQTTpKNXSsT0B20Zbb
	h/Cg7t6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mg8Nb-008asE-IA; Thu, 28 Oct 2021 16:35:51 +0000
Received: from mail.zeus.flokli.de ([88.198.15.28] helo=zeus.flokli.de)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mg8NO-008ao7-DX; Thu, 28 Oct 2021 16:35:39 +0000
Received: from localhost (ip-84-119-226-0.unity-media.net [84.119.226.0])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: flokli@flokli.de)
 by zeus.flokli.de (Postfix) with ESMTPSA id 1DB9E11E160A;
 Thu, 28 Oct 2021 16:35:33 +0000 (UTC)
Date: Thu, 28 Oct 2021 18:35:32 +0200
From: Florian Klink <flokli@flokli.de>
To: Dennis Gilmore <dgilmore@redhat.com>
Cc: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: helios64: define usb hub and
 2.5GbE nic
Message-ID: <20211028163532.xhcvlxi4e2wuuisz@tp>
References: <20211026150751.70115-1-dgilmore@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211026150751.70115-1-dgilmore@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_093538_655220_93680404 
X-CRM114-Status: GOOD (  10.51  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 21-10-26 10:07:47, Dennis Gilmore wrote:
>Add the 4 ports on the internal hub and define and turn on the 2.5GbE
>nic.
>
>Signed-off-by: Dennis Gilmore <dgilmore@redhat.com>

Tested-by: Florian Klink <flokli@flokli.de>

>---
> .../dts/rockchip/rk3399-kobol-helios64.dts    | 55 +++++++++++++++++++
> 1 file changed, 55 insertions(+)
>
>diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
>index 26d45cf7ce00..1ffddf860375 100644
>--- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
>+++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
>@@ -125,6 +125,18 @@ pcie_power: pcie-power {
> 		vin-supply = <&vcc5v0_perdev>;
> 	};
>
>+	usblan_power: usblan-power {
>+		compatible = "regulator-fixed";
>+		enable-active-high;
>+		gpio = <&gpio1 RK_PC7 GPIO_ACTIVE_HIGH>;
>+		pinctrl-names = "default";
>+		pinctrl-0 = <&usb_lan_en>;
>+		regulator-name = "usblan_power";
>+		regulator-always-on;
>+		regulator-boot-on;
>+		vin-supply = <&vcc5v0_usb>;
>+	};
>+
> 	vcc1v8_sys_s0: vcc1v8-sys-s0 {
> 		compatible = "regulator-fixed";
> 		regulator-name = "vcc1v8_sys_s0";
>@@ -465,6 +477,11 @@ hdd_b_power_en: hdd-b-power-en {
> 		vcc5v0_usb_en: vcc5v0-usb-en {
> 			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
> 		};
>+
>+		usb_lan_en: usb-lan-en {
>+			rockchip,pins = <1 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
>+		};
>+
> 	};
>
> 	vcc3v0-sd {
>@@ -563,5 +580,43 @@ &usbdrd3_1 {
> 	usb@fe900000 {
> 		dr_mode = "host";
> 		status = "okay";
>+
>+		#address-cells = <1>;
>+		#size-cells = <0>;
>+
>+		hub@1 {
>+			compatible = "usb2109,0815";
>+			reg = <1>;
>+			#address-cells = <1>;
>+			#size-cells = <0>;
>+
>+			port@1 {
>+				reg = <1>;
>+				#trigger-source-cells = <0>;
>+			};
>+
>+			port@2 {
>+				reg = <2>;
>+				#trigger-source-cells = <0>;
>+			};
>+
>+			port@3 {
>+				reg = <3>;
>+				#trigger-source-cells = <0>;
>+			};
>+
>+			device@4 {
>+				compatible = "usbbda,8156";
>+				reg = <4>;
>+
>+				#address-cells = <2>;
>+				#size-cells = <0>;
>+
>+				interface@0 {	/* interface 0 of configuration 1 */
>+					compatible = "usbbda,8156.config1.0";
>+					reg = <0 1>;
>+				};
>+			};
>+		};
> 	};
> };
>-- 
>2.32.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
