Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81F81C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 21:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X2EI820NIL0nukKX7I87dSY6VSzubwcMSPySqO5ejEU=; b=QthuELsj9HKOug
	0cUERetPgX0a+3NWggCGjH9ZVo9kmsuOVzjPWZFIp6NsSFbJB94eFpB0tr21dqNmj3zPL93tcCeGx
	JxpHehrXbMOy8aJc3n2u1Bvdn6rFDiofqFg/zQuVmt20QayghGi7OBh9eB6nmjMq/D6ZdBpF6Kel8
	nEXPiDVHGDBH09QZQt2MHC9HMA9w5/OZeCfReREUfSvDcf4p2HdCr8EkWCc+jT60YWE4Z0E5cAlHT
	JqzdyAfyMJQZtJg1j21CtVLVnd2qgHRAWOKCRygKUuVgUIJHTpVwpPXjiaMr7Yf4bUgByjrht8Z9H
	HNtRi+atGdsS9/xsCNYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shF2O-0000000EJuK-1WIo;
	Thu, 22 Aug 2024 21:08:08 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shF2L-0000000EJtR-0QDS
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Aug 2024 21:08:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1724360879;
 bh=4tP9VmGTaewIrqRGDE2dhUdaQkLMhws7PNGMCn9dZtk=;
 b=Im6rq60iCckgkj8fiAKg8XHPHFA8Fe0AUmsSozLD/cOaxGePEBEXp7QEgI1aMughZ2jUGq+3k
 EmKLJSzsHHIjWOrYSZDl8wV+i8LUMHJj+LHEXhlFtf6PbJKcYPuyf3zZmKYbsAKe8OPJ206wayx
 tGAe6udP3FjXn5b3mO830ORINVuEn29ujHRBgIWpMIrxLIWsaijgLaVBJw3rtbRtlWnd171mJ+l
 S9crwX8nUkjYCnwA0LVjGyc6lJQp6IpQoTZgojX6IMtTGsieNl8zfqvtovjMhCD9Ow2Bg5CC5I4
 /izCi/pWxVxmzGKU7sFc3UbLaI/AWw/4J/VEem+5COvg==
Message-ID: <13942328-84bf-4b9f-a88f-287b233c1654@kwiboo.se>
Date: Thu, 22 Aug 2024 23:07:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 7/8] arm64: dts: rockchip: enable USB-C on NanoPC-T6
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
 <20240822-friendlyelec-nanopc-t6-lts-v4-7-892aebcec0c6@linaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240822-friendlyelec-nanopc-t6-lts-v4-7-892aebcec0c6@linaro.org>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66c7a8ae9c6972850a4e9ce9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_140805_461454_20FA050F 
X-CRM114-Status: GOOD (  13.67  )
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

Hi Marcin,

On 2024-08-22 15:32, Marcin Juszkiewicz wrote:
> Enable the USB-C port on FriendlyELEC NanoPC-T6.
> 
> Works one way so far but still better than before.
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 71 ++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> index 74dc1b490ca3..e63b2faee3b5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> @@ -135,6 +135,8 @@ vbus5v0_typec: vbus5v0-typec-regulator {
>  		gpio = <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&typec5v_pwren>;
> +		regulator-always-on;
> +		regulator-boot-on;

This should probably not be always-on/boot-on, the connector is
described as power-role = "dual" and try-power-role = "sink", so should
probably be possible to disable the vbus supply.

Regards,
Jonas

>  		regulator-name = "vbus5v0_typec";
>  		regulator-min-microvolt = <5000000>;
>  		regulator-max-microvolt = <5000000>;
> @@ -384,6 +386,32 @@ connector {
>  			source-pdos = <PDO_FIXED(5000, 2000, PDO_FIXED_USB_COMM)>;
>  			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
>  			op-sink-microwatt = <1000000>;
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +					usbc0_hs: endpoint {
> +						remote-endpoint = <&usb_host0_xhci_drd_sw>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +					usbc0_ss: endpoint {
> +						remote-endpoint = <&usbdp_phy0_typec_ss>;
> +					};
> +				};
> +
> +				port@2 {
> +					reg = <2>;
> +					usbc0_sbu: endpoint {
> +						remote-endpoint = <&usbdp_phy0_typec_sbu>;
> +					};
> +				};
> +			};
>  		};
>  	};
>  
> @@ -927,6 +955,14 @@ &uart2 {
>  	status = "okay";
>  };
>  
> +&u2phy0 {
> +	status = "okay";
> +};
> +
> +&u2phy0_otg {
> +	status = "okay";
> +};
> +
>  &u2phy2_host {
>  	phy-supply = <&vdd_4g_3v3>;
>  	status = "okay";
> @@ -944,6 +980,29 @@ &u2phy3 {
>  	status = "okay";
>  };
>  
> +&usbdp_phy0 {
> +	mode-switch;
> +	orientation-switch;
> +	sbu1-dc-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
> +	sbu2-dc-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
> +	status = "okay";
> +
> +	port {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		usbdp_phy0_typec_ss: endpoint@0 {
> +			reg = <0>;
> +			remote-endpoint = <&usbc0_ss>;
> +		};
> +
> +		usbdp_phy0_typec_sbu: endpoint@1 {
> +			reg = <1>;
> +			remote-endpoint = <&usbc0_sbu>;
> +		};
> +	};
> +};
> +
>  &usb_host0_ehci {
>  	status = "okay";
>  };
> @@ -952,6 +1011,18 @@ &usb_host0_ohci {
>  	status = "okay";
>  };
>  
> +&usb_host0_xhci {
> +	dr_mode = "host";
> +	status = "okay";
> +	usb-role-switch;
> +
> +	port {
> +		usb_host0_xhci_drd_sw: endpoint {
> +			remote-endpoint = <&usbc0_hs>;
> +		};
> +	};
> +};
> +
>  &usb_host1_ehci {
>  	status = "okay";
>  };
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
