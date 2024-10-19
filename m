Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4A98D3E194
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 01:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pk+SMLpvvqUcnceXOeJeDnvWqIfKp50kc3v1bNFJ0Ys=; b=lxjrtVsjhxi1V2
	mKlcMpE27U0CpwbFiZ8EroDsZZpEf+ksVqmKFGu2gY8Df3TsB20DF4rd/dF0dguidCx59w1jKASqv
	YIBPMnz5xeUtu8PddH/9ZEE8FlC52bQL7BmGv40cfQRghex0fM8XOgp6hemBADaZHzvaIU7cflFEW
	quZ9/kRrTvIQyCBYLUZBu+JCs0nuJeEHt7agJnQlQceoz493OY7HjDgpuN8hcX+PrSW5paAirHyMQ
	BKwIIghOhbb57Yz3rsezcyhJeoOY3+voJevSkqJQ90tFBfHpWcIz0j3zKcIHNPws8cfJUX/lxx/G2
	mHe3uc2QEQVnRh9oMliA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1yVh-00000002Pn4-2yG7;
	Sat, 19 Oct 2024 01:44:05 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1yUE-00000002PZW-0VsZ;
	Sat, 19 Oct 2024 01:42:36 +0000
X-QQ-mid: bizesmtpip4t1729302101tvi18dz
X-QQ-Originating-IP: ynXIJcmp3WHc/o4G+1XDGVUvagsnCUWFysOJgE/1ozI=
Received: from [IPV6:240f:10b:7440:1:cb8d:6c02 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sat, 19 Oct 2024 09:41:36 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13226523954872317656
Message-ID: <5E49B36195743C7C+3eb032f1-fda6-4a61-bcaa-8ce34256cb51@radxa.com>
Date: Sat, 19 Oct 2024 10:41:35 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] arm64: dts: rockchip: Enable HDMI0 on rock-5b
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Luis de Arquer <ldearquer@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241019-rk3588-hdmi0-dt-v1-0-bd8f299feacd@collabora.com>
 <20241019-rk3588-hdmi0-dt-v1-2-bd8f299feacd@collabora.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241019-rk3588-hdmi0-dt-v1-2-bd8f299feacd@collabora.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MjkRqJZlUFDQuEI9EiCFYlv4ElHgo8u20Vp8H/O2ZkmkvGo99EPx2QJY
	CxcE8m+i8lqLeVijNVFEI5bx4ylKaPfyh6YiX+AtLDdg+3kKDO+ioVk0czGqx0t1CtpsNz4
	lNtCWquP+ANzuWzvMFYmguvMn7cPzbnI+gmLMfXYIxu3dP9AqCPgUFrW3MChGdw7UAzRe2g
	ocXJDu4FJwiahd4pcC37qVX2nOgn5xD9drAdFf4j+fLLVLluZT2stIeoCl67Yct2hdwEoX3
	/JcknAEiVRAwa9GUFJLpCkZRY5kvqcZ69YP2QI2yG0RMTvTYM1sFz8g4n7LroQ+35U/LTl+
	ni3VviQQsQ64nHbpi5TpP/cUnEtuKPFo2BmLcTNL8kjXj0TDyV6kRDwndrY6IsbXPEvyj7k
	QfLkoF28wqqqsjaVMP+jjIe/yPZbPfChNntEH19ZDCorXKkXXdE06lPUVXbwQwFpoOXx9up
	sINibO5nK6TAEYZDYM6Qdvrh4Kxuc1lFYM5JIUGh5hP2LRreP+6DnAgAbreYjl+yUGnDet0
	lmgB4Pral7pxR1eZAZVQLdegWv0RangvPG0QDIChuxOZK/bTY7dVZG6d+MhObwk9ndXrMN4
	v3KMXwKhP12t4w/ahbRltcJ02AnFOKRu6/WbuC4Sw7OWUYigDTzA40NNldiKH0agVDSJeuU
	S5uPFSEMUuuS5KxigOVrJSsOGlj4rbhocJbPM514o24AS3jJaR//fv//xoejUbto0tb+Z6F
	nko+o1szVB2GQzLQo2OKQ/oDkCk0ZR+r5oFbrtRRR84jP/mP8KPuLK+SNC9ykYT6AySH6qJ
	N2FbUjHIeMrRCt6cd6JV3fJ8cneErP2b5rI5KGlc1VTq/m5xL7pu8But+0TUBy9xQkqG68u
	M94PzM6CeDl0W5VGHKLlpWGXITExXL2JaARV/RheBv8=
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_184234_651522_66DDD14B 
X-CRM114-Status: GOOD (  11.83  )
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

thank you very much for your work!

On 10/19/24 06:39, Cristian Ciocaltea wrote:
> Add the necessary DT changes to enable HDMI0 on Rock 5B.

Rock 5B -> (Radxa) ROCK 5B

> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

Tested-by: FUKAUMI Naoki <naoki@radxa.com>

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> ---
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 47 +++++++++++++++++++++++++
>   1 file changed, 47 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index d6fff5b86b87020f115ce64795aee90c002a2255..0c3baf74981b714eb2a1edbc3fbbb69cd688cfc2 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -4,6 +4,7 @@
>   
>   #include <dt-bindings/gpio/gpio.h>
>   #include <dt-bindings/leds/common.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
>   #include "rk3588.dtsi"
>   
>   / {
> @@ -37,6 +38,17 @@ analog-sound {
>   		pinctrl-0 = <&hp_detect>;
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
> @@ -192,6 +204,26 @@ &gpu {
>   	status = "okay";
>   };
>   
> +&hdmi0 {
> +	status = "okay";
> +};
> +
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
>   &i2c0 {
>   	pinctrl-names = "default";
>   	pinctrl-0 = <&i2c0m2_xfer>;
> @@ -858,3 +890,18 @@ &usb_host1_xhci {
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
