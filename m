Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9901FC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Nov 2021 17:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rs7YZckKUU6cICDyf/1gdKGWX976VYesRSjdv4unwXo=; b=KiSyzPuUwD4Rdp
	Ry/7TuHLMqsfTXPfhN97mrRQi3aX/Rkh2FvaJfilicWMoSl4YCYVZYPTLWNmK/JyyJp6eeep5GJs3
	4DBSGQ1K/lMe5K5T47FskU0HDnFMZT1MUSaf8Rg+s71HgGDzxrJBJbyEOsFR3Buk9lv9ElA8zwVdq
	YyngBj1phh16+QknBjJQGcRFOmtt2adBH6QxHFfqhGkg28fUlGjJlcuSHTbUQR6+MCvrquZYDAZEM
	z9ki2ZrezB4yD2WytG1Sa7CITRf2Qn4/ynTL86XsPOxbggYxRs59DyAHQ7E3dEwrnn1qLHElb4lOy
	GCJ9HKvL8w2m3U2k1VWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1moqzC-00E57Y-3s; Sun, 21 Nov 2021 17:50:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1moqz9-00E56n-DE; Sun, 21 Nov 2021 17:50:40 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1moqz1-0007ug-8K; Sun, 21 Nov 2021 18:50:31 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Dennis Gilmore <dgilmore@redhat.com>
Cc: dgilmore@redhat.com, Rob Herring <robh+dt@kernel.org>,
 Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <uwe@kleine-koenig.org>,
 Florian Klink <flokli@flokli.de>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: helios64: define usb hub and 2.5GbE
 nic
Date: Sun, 21 Nov 2021 18:50:30 +0100
Message-ID: <2865185.A8ACM6KOrL@diego>
In-Reply-To: <20211026150751.70115-1-dgilmore@redhat.com>
References: <20211026150751.70115-1-dgilmore@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211121_095039_489135_CFA1717B 
X-CRM114-Status: GOOD (  19.61  )
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

Hi Dennis,

Am Dienstag, 26. Oktober 2021, 17:07:47 CET schrieb Dennis Gilmore:
> Add the 4 ports on the internal hub and define and turn on the 2.5GbE
> nic.
> 
> Signed-off-by: Dennis Gilmore <dgilmore@redhat.com>
> ---
>  .../dts/rockchip/rk3399-kobol-helios64.dts    | 55 +++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> index 26d45cf7ce00..1ffddf860375 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> @@ -125,6 +125,18 @@ pcie_power: pcie-power {
>  		vin-supply = <&vcc5v0_perdev>;
>  	};
>  
> +	usblan_power: usblan-power {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PC7 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usb_lan_en>;
> +		regulator-name = "usblan_power";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		vin-supply = <&vcc5v0_usb>;
> +	};
> +
>  	vcc1v8_sys_s0: vcc1v8-sys-s0 {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc1v8_sys_s0";
> @@ -465,6 +477,11 @@ hdd_b_power_en: hdd-b-power-en {
>  		vcc5v0_usb_en: vcc5v0-usb-en {
>  			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
> +
> +		usb_lan_en: usb-lan-en {
> +			rockchip,pins = <1 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
>  	};
>  
>  	vcc3v0-sd {
> @@ -563,5 +580,43 @@ &usbdrd3_1 {
>  	usb@fe900000 {
>  		dr_mode = "host";
>  		status = "okay";
> +
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		hub@1 {
> +			compatible = "usb2109,0815";
> +			reg = <1>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@1 {

port@ nodes are not defined in the dt-bindings.

Are you really sure these are needed, as I guess only defining the
device@4 should be enough and leaving the rest to be allocated
dynamically?

The binding at least contains the line
	Usually, we only use device tree for hard wired USB device.


Heiko

> +				reg = <1>;
> +				#trigger-source-cells = <0>;
> +			};
> +
> +			port@2 {
> +				reg = <2>;
> +				#trigger-source-cells = <0>;
> +			};
> +
> +			port@3 {
> +				reg = <3>;
> +				#trigger-source-cells = <0>;
> +			};
> +
> +			device@4 {
> +				compatible = "usbbda,8156";
> +				reg = <4>;
> +
> +				#address-cells = <2>;
> +				#size-cells = <0>;
> +
> +				interface@0 {	/* interface 0 of configuration 1 */
> +					compatible = "usbbda,8156.config1.0";
> +					reg = <0 1>;
> +				};
> +			};
> +		};
>  	};
>  };
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
