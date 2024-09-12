Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49145EEE250
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 19:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whgPwOu+Kz7oP/jleMZ67Xpr2BfEupFT2MfmOpOBGtM=; b=u8UglijZn/oSEG
	HyXcuFTlVBnAcIVudD+G6kPdtKhsIr+PfmVGMobOSh7mY8u0UCQV2I7r0ZWp4B1Ztb0xYU89SFcj0
	7pdNo7VDNTX9L78OeFqr/5S25dYJ0FVI9wcftb1KOBhHUiUqFc705hYR12O4fhqJ7QxPgab1/tWum
	8sEJG9RUmxUSfdXrQtWDLb8o+TE9ZWsW42L8amyMlgKXbBv2pt1Q3NIC0pvb8aJSEZXc6xhwfersP
	1mzNTFGeK3ul2IpIrd8m6SpzjkD+P7K7zWGdkmnV2ft1JaLuCvNsY1DU+Gpy/mc2wSEqvsQ5uSxPL
	7cJbcokS/qEihy9MBIhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soptz-0000000E8RO-0eL0;
	Thu, 12 Sep 2024 19:54:51 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sopsu-0000000E8Mf-1NuW
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Sep 2024 19:53:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1726170804;
 bh=r1OmUvvXBK2m/ZTQhR2+stgE0XRSFyk2GHzUddZ5Wps=;
 b=TbFaotKVrsa0TchV4o5DR4L2n6rXDXyvQK76MFEZFrYNEi0a8utv/ifedW1G/GJvlgMIleVGj
 lhVdLdXzYvLBUziOOaJAfy+3tEPkIbZhsDFwcA5rNSnry1mvHoOL1N5cBiFj2MhWEDzZZ9el7wJ
 INTl4xfiZH8k+pmtK5UT81YBVhn5ivCVGj/2lKQoKohY+UypgLO0PBuGSrHVDPt7ZF3g+lFCAfq
 ZgqqZAmLNtgmuK4AbtsAqLhFlj6LffaPVTlgUnnmwHzCyrdAZDCi9bKciGPyEb+kGc5hhAKeB+9
 32omUelNuR+l14xaLCVbpASlpV45ap8CRwoRfSbxJuQA==
Message-ID: <ed4b6913-f19b-4280-b3b2-f5bb1e7f47eb@kwiboo.se>
Date: Thu, 12 Sep 2024 21:53:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: Enable all 3 USBs on Turing RK1
To: Sam Edwards <cfsworks@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ondrej Jirman <megi@xff.cz>,
 Chris Morgan <macromorgan@hotmail.com>, Alex Zhao <zzc@rock-chips.com>,
 Dragan Simic <dsimic@manjaro.org>, FUKAUMI Naoki <naoki@radxa.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Jing Luo <jing@jing.rocks>, Kever Yang <kever.yang@rock-chips.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?UTF-8?Q?Daniel_Kukie=C5=82a?= <daniel@kukiela.pl>,
 Joshua Riek <jjriek@verizon.net>
References: <20240912025034.180233-1-CFSworks@gmail.com>
 <20240912025034.180233-5-CFSworks@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240912025034.180233-5-CFSworks@gmail.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66e346b3fcb6c7d83e7b8dc6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_125344_601326_031D734C 
X-CRM114-Status: GOOD (  26.66  )
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

Hi Sam,

On 2024-09-12 04:50, Sam Edwards wrote:
> The Turing RK1 contains 3 different USBs:
> - USB0: USB 2.0, OTG
> - USB1: USB 3.0, host
> - USB2: USB 2.0, host
> 
> This patch activates the necessary DT nodes to enable all 3 buses.
> 
> Future work will be needed on USB0: it is not USB 3.0, but Linux creates
> an unused USB 3.0 root hub and the controller also requires that USBDP0
> be powered up. However, it is possible to remove this dependency. By
> either patching the xHCI driver to ignore the enumerated USB 3.0 port or
> setting usb3otg0_host_num_u3_port=0 in the GRF to stop the controller
> from enumerating a USB 3.0 port in the first place, neither Linux nor
> the controller will expect USB 3.0 capability, and USBDP0 can then
> safely be removed from the `phys` property.
> 
> Signed-off-by: Sam Edwards <CFSworks@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3588-turing-rk1.dtsi  | 64 +++++++++++++++++++
>  1 file changed, 64 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
> index f6a12fe12d45..6036c4fe6727 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
> @@ -666,3 +666,67 @@ &uart9 {
>  	pinctrl-0 = <&uart9m0_xfer>;
>  	status = "okay";
>  };
> +
> +/* USB 0: USB 2.0 only, OTG-capable */
> +&u2phy0 {
> +	status = "okay";
> +};
> +
> +&u2phy0_otg {
> +	status = "okay";
> +};
> +
> +&usbdp_phy0 {
> +	/*
> +	 * TODO: On the RK1, USBDP0 drives the DisplayPort pins, and is not
> +	 * involved in this USB2-only bus.  However, if the USB3 port is
> +	 * enabled in the xHCI below, the controller will expect this PHY to be
> +	 * powered up and holding RX_STATUS idle, or else it will generate an
> +	 * endless stream of CSC events whenever a device is plugged in.  Until
> +	 * there is a way to communicate to usb_host0_xhci that it doesn't have
> +	 * a USB3 port, we have no choice but to power up USBDP0.
> +	 */

Sounds like this may be missing

	rockchip,dp-lane-mux = <0 1 2 3>;

or

	rockchip,dp-lane-mux = <3 2 1 0>;

if all lanes are used for DP and none are used for USB.

It should help describe the hw and also help the driver set mode to
UDPHY_MODE_DP and that should disable the u3 port, or there may be an
issue to fix in the phy driver.

> +	status = "okay";
> +};
> +
> +&usb_host0_xhci {
> +	extcon = <&u2phy0>;
> +	maximum-speed = "high-speed";

If this only use the USB2 phy, this should probably also override the
default phys and phy-names props with:

	phys = <&u2phy0_otg>;
	phy-names = "usb2-phy";

Regards,
Jonas

> +	status = "okay";
> +};
> +
> +/* USB 1: USB 3.0, host only */
> +&u2phy1 {
> +	status = "okay";
> +};
> +
> +&u2phy1_otg {
> +	status = "okay";
> +};
> +
> +&usbdp_phy1 {
> +	status = "okay";
> +};
> +
> +&usb_host1_xhci {
> +	extcon = <&u2phy1>;
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +/* USB 2: USB 2.0, host only */
> +&u2phy2 {
> +	status = "okay";
> +};
> +
> +&u2phy2_host {
> +	status = "okay";
> +};
> +
> +&usb_host0_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host0_ohci {
> +	status = "okay";
> +};


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
