Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B751CC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 20:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnvxAKLGWx6JGaFK2oezXWQjRMFAZjXcXu4/SqVjUng=; b=TXY/6OMQGK8nZk
	xYrnXP+39Ck31xKwL9tdZYzfz7Ph1cwWLHoR1V1CgvM+ulmHspboEIhWfudU5Qs/ZnT/cGwyBqceH
	TsHg0teLmvrWdfe4fO3EhXlTMctD2p8DsLFsp4R4TyLUjFJnklWF4X6SzYUVsI7dK6b5UD9OgfGNo
	ncIVy47uo82kuD91fCaEt7zku4iRa84a4iwwu6aLMf5fJeihBB6zxUB49y7hioX4o0PkiTojYgC7D
	FpUyHlZPbyq743wNf87H1nrpriNDosBGi/9turXlBH0AG8P/GruUVfuoBvBKwQpYI4v618xTTY5rx
	GiA1PdN971dMlNgaGpsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXREX-00000004rWi-4AZq;
	Fri, 26 Jul 2024 20:08:10 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXRE7-00000004rSG-4C3B
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jul 2024 20:07:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1722024451;
 bh=fAviikwkH6hmnA7E9iefdvMIdw7782gxRltc2GxmQDc=;
 b=aPmx/nvjUc6Ds/VQ6rvjbXG8MVn/pmbmutUzsblMA2BsogyDOKfY4HM71rcxE8sjRCZKOST71
 suxcrxW9acf8khMH5VHXKSSALRgmB1OcJjvDQRVw/plLXTS65MruhFx3fN61lDZOcUtmixLgE9l
 LKo/A+5bzdwXRBLAfVhBLkfd3+tJh6HaZg3DOl4dan1XGrCqdzFJlgBmqEAW0ERRcuY8I1G76B7
 gAcUqpWNoH7Fb0+Eq6aRm6TUsEB8sh54eOBbAxkMxc4Yp6vfUzzBJrc5Gy81MHTQI0eSklA3bnd
 Q3IAaySCiEnZUQ7fskBOQXR4d8w3OkOFAU1Vz1bdL0cQ==
Message-ID: <880603a5-35c5-4968-8cd0-81ebd2958bce@kwiboo.se>
Date: Fri, 26 Jul 2024 22:07:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/3] arm64: dts: rockchip: Add missing pinctrl for
 PCIe30x4 node
To: Anand Moon <linux.amoon@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240726110050.3664-1-linux.amoon@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240726110050.3664-1-linux.amoon@gmail.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66a40201df62d509e165a98b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_130744_086984_4E3A4498 
X-CRM114-Status: GOOD (  22.94  )
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

Hi Anand,

Sorry for no reply to your v3.

On 2024-07-26 13:00, Anand Moon wrote:
> Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
> signals. Each component of PCIe communication have the following control
> signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to generate
> high-speed signals and communicate with other PCIe devices.
> Used by root complex to endpoint depending on the power state.
> 
> PERST is referred to as a fundamental reset. PERST should be held low
> until all the power rails in the system and the reference clock are stable.
> A transition from low to high in this signal usually indicates the
> beginning of link initialization.
> 
> WAKE signal is an active-low signal that is used to return the PCIe
> interface to an active state when in a low-power state.
> 
> CLKREQ signal is also an active-low signal and is used to request the
> reference clock.
> 
> Rename node from 'pcie3' to 'pcie30x4' to align with schematic
> nomenclature.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
> v4: rebase on master, used RK_FUNC_GPIO GPIO function instead of PIN
> number.

Why this change? Only reset should use gpio function, if I am not
mistaken. Also how come you change the internal pull-up/down on these
pins?, and why do they differ for each pcie node in this series?

Please see [1] for some discussion related to these pins.

"""
The PERST is for sure should work as GPIO, and the same as WAKE;

for CLKREQ, only those board want to support L1SS need to work as 
function IO,
"""

As stated earlier only the reset pin need to be muxed to GPIO function,
and that should also matches the only pin controlled with gpio in the
driver, if I am not mistaken.

[1] https://lore.kernel.org/u-boot/6de0ee14-3d85-4fda-af9d-9be7e0057dc8@rock-chips.com/

Regards,
Jonas

> V3: use pinctrl local to board
> V2: Update the commit messge to describe the changs.
>     use pinctl group as its pre define in pinctrl dtsi
> ---
>  .../arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 18 ++++++++++++------
>  1 file changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 966bbc582d89..1c7080cca11f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -338,7 +338,7 @@ &pcie30phy {
>  
>  &pcie3x4 {
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie3_rst>;
> +	pinctrl-0 = <&pcie30x4_pins>;
>  	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
>  	vpcie3v3-supply = <&vcc3v3_pcie30>;
>  	status = "okay";
> @@ -377,14 +377,20 @@ pcie2_2_rst: pcie2-2-rst {
>  		};
>  	};
>  
> -	pcie3 {
> -		pcie3_rst: pcie3-rst {
> -			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
> -		};
> -
> +	pcie30x4 {
>  		pcie3_vcc3v3_en: pcie3-vcc3v3-en {
>  			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
> +
> +		pcie30x4_pins: pcie30x4-pins {
> +			rockchip,pins =
> +				/* PCIE30X4_CLKREQn_M1_L */
> +				<4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>,
> +				/* PCIE30X4_PERSTn_M1_L */
> +				<4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>,
> +				/* PCIE30X4_WAKEn_M1_L */
> +				<4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
>  	};
>  
>  	usb {
> 
> base-commit: 1722389b0d863056d78287a120a1d6cadb8d4f7b


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
