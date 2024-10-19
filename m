Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 058ADD3C547
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 04:44:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TCUIbK/jP6ObxX4y9uxd+mmtla66lUZxErk+COv5svI=; b=tTCN1Gm5PLabfB
	CGb45JWu5Cd28ZCosBiJ2tUSO6qnFzbGRrtIwWZEGDQGldXNodbm+6Wn5pEmYI3UXtNnfkPMWrr9q
	Utydfm33gyIZGgHY65/lwSAHSJ743dPUsd7ozktVF2QvMHxi/60hnEYwozkCSoFyMusSLwWZvENA3
	sw+X5Lmeaoa/LuozXC97AgyP1X/j7JalwyaXTf4Sh/mMRByDuZs9Xpc0Ak04y0d8/g/h0s1QP8lzT
	MnT1Ttwwkvx7Of4PODUMj034stVOoyptvq6ASoRdz7hxVLiuqUfpf80Ac5eoYmvuCon/UTtZUPRfF
	VWXIHJDU3I5GkIpP/Ibw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t21KH-00000002YkW-209x;
	Sat, 19 Oct 2024 04:44:29 +0000
Received: from smtpbgjp3.qq.com ([54.92.39.34])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t21In-00000002YcQ-0Ctu;
	Sat, 19 Oct 2024 04:42:58 +0000
X-QQ-mid: bizesmtpip2t1729312930tfrg5ja
X-QQ-Originating-IP: PFgNwIWMhEtDdVnAuM0TWSxgSVMwkKW1c0HSyTf66pU=
Received: from [IPV6:240f:10b:7440:1:8680:8ad4 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 19 Oct 2024 12:42:06 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17043883481862814476
Message-ID: <6FF0CF3856870371+bbebd66b-e19c-40c2-863b-1d6c5c30c461@radxa.com>
Date: Sat, 19 Oct 2024 13:42:05 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH UNTESTED 5/5] arm64: dts: rockchip: Enable HDMI0 on
 rock-5a
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Luis de Arquer <ldearquer@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241019-rk3588-hdmi0-dt-v1-0-bd8f299feacd@collabora.com>
 <20241019-rk3588-hdmi0-dt-v1-5-bd8f299feacd@collabora.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241019-rk3588-hdmi0-dt-v1-5-bd8f299feacd@collabora.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OGzoDLzceW/jDbdAXubPKUlKf7t7qVRNDj43beH2UXORzi+Sszf9HPdY
	A0949XRY0W0MV9AwajlTQasuoua2NbirO90jKWiLVsek/fLivSPZjGatc1JzawYk6+vfJAw
	qXDzWP2kxd0upqKOafmNNvfoBb3aoaGYJSs38QqIOYpg84QsyhM4+kq5tybWNJxzaVcNk5g
	M/nUJ8e0kQF8MND682LxXr9upK9okn7Bv9U/GIrQwUWxDFEAimEpK6avWXxLvMwEEn0oXLf
	WFsF/ofmDsq2nHCuhxs7wu7gMbZffT4yHBpFIFFHjvtOZBJX0mryuqbwPndYb5IefmBNSto
	dXQFvv5AGH9qZt7rwArrOwFmbM2C9+1Y8J3rK3URh9hEjc5g8ydPhOk2MuU/DPJzDEbIicx
	1hhdyQOnUUw7La6W2VKqVXBSCT21ski0i1aJk+W7Qb94AMhGTHuL96CCUmgQu/Qzz3fKNBB
	VgbwIzxizoHhq+pH772IEVG0QKRPDVTwMh9aEdmVhCqpP452uZwTkHXXgb5OuVhP7yOl2XU
	8LioUuVczwOuU0pmoT4cyG2aliKPseVD8LG6tIOvcEA3n6rT7kRKIDEhIb8+pYGz9PiMyvz
	uVMZQbWrKc4y9SbXvYHsc/8a4T0qAo2CH8FlAoWvAFZMyn9LeefYtBDabcDXjP+H412jQcJ
	icMbydNxdTYz1k9qlPC7mPSrzxcqFR4Op1siDNNJBPPJRWXX6PbxjGbX3IKmeisqpkKGrWB
	zWsP7H0bc5U+ZHAvhzW9CuHscDKqQRP03NxRRreJi9yZ3uoAKDJEjNX9+2ZytGR8XfovM0R
	WcYeqib3d+KrvtbF36yPAvp2p8ZSIvGDEzjQ/d5A0ixxcG7sdr6ilMbU+6wjXNmaW81ZYV+
	lXwLdne+QaFxyoZ8xnnJD3Ec1wa8jUAfVc+ZitRhFYNFKFN3up+ATw==
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_214257_369063_B8D3A4EF 
X-CRM114-Status: GOOD (  13.51  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On 10/19/24 06:39, Cristian Ciocaltea wrote:
> Add the necessary DT changes to enable HDMI0 on Rock 5A.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 47 ++++++++++++++++++++++++
>   1 file changed, 47 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 87fce8d9a964cd53d179ce214ae1c0ff505a2dce..1fd122250b0c70e729b7a2239ab5f288a6387a70 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -5,6 +5,7 @@
>   #include <dt-bindings/gpio/gpio.h>
>   #include <dt-bindings/leds/common.h>
>   #include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
>   #include "rk3588s.dtsi"
>   
>   / {
> @@ -35,6 +36,17 @@ chosen {
>   		stdout-path = "serial2:1500000n8";
>   	};
>   
> +	hdmi0-con {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi0_con_in: endpoint {
> +				remote-endpoint = <&hdmi0_out_con>;
> +			};
> +		};
> +	};
> +
>   	leds {
>   		compatible = "gpio-leds";
>   		pinctrl-names = "default";
> @@ -296,6 +308,26 @@ &gmac1_rgmii_clk
>   	status = "okay";
>   };
>   
> +&hdmi0 {
> +	status = "okay";
> +};

on ROCK 5A, HPD pin is different.

how about this?

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts 
b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index f4293d666368..600028fcad88 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -314,6 +314,9 @@ &gmac1_rgmii_clk
  };

  &hdmi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&hdmim0_tx0_cec &hdmim1_tx0_hpd
+		     &hdmim0_tx0_scl &hdmim0_tx0_sda>;
  	status = "okay";
  };


(I don't know why HDMI worked on ROCK 5C... it should be same as 5A)

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> +&hdmi0_in {
> +	hdmi0_in_vp0: endpoint {
> +		remote-endpoint = <&vp0_out_hdmi0>;
> +	};
> +};
> +
> +&hdmi0_out {
> +	hdmi0_out_con: endpoint {
> +		remote-endpoint = <&hdmi0_con_in>;
> +	};
> +};
> +
> +&hdptxphy_hdmi0 {
> +	status = "okay";
> +};
> +
>   &mdio1 {
>   	rgmii_phy1: ethernet-phy@1 {
>   		/* RTL8211F */
> @@ -788,3 +820,18 @@ &usb_host1_ohci {
>   &usb_host2_xhci {
>   	status = "okay";
>   };
> +
> +&vop_mmu {
> +	status = "okay";
> +};
> +
> +&vop {
> +	status = "okay";
> +};
> +
> +&vp0 {
> +	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
> +		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
> +		remote-endpoint = <&hdmi0_in_vp0>;
> +	};
> +};


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
