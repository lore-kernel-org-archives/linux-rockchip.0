Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7651C3DA41
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 14:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HCddMZsPT8S1Hd9izvenICmJUd/M2fzeRU3l/hRG+0U=; b=KfdNlvwbR78Can
	m6LMfs2aSGUDE8d7LR3XnPTswMXxdMt/xAAF0u8FAw2mNUk6WCCgybBO9hSW/nqGaps5OhwYIhyzE
	JNsPOtoGzbdmU/rOOOunKrXCJ9r1UVQcda6i/IQaiWhq15bPSDe6isPsaAA+BpTXjyoxgGixo65cz
	D5QXQX0Z2J46ECIjiNCvrNbp+TAxbfzAkPoNaonwng40mFsZqUvg3/DULdwEzOb5q48IBbKB1CraM
	mJTT7tyjBoLMTLQMb4nnGJBUI7PMiIrfier6M3jFq/baPtZUg4DHrkhEIoC+Z9g8ogwhTn4HheV1Y
	29yZiu1A7eSm5drzlHuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYWH-0000000Ar6z-3Ld8;
	Wed, 10 Jul 2024 14:42:09 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRYW4-0000000Ar5q-1S2X
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jul 2024 14:41:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1720622491;
 bh=NXPTGPBY0179P6BWZHx7/WS3Plscrxo5swZEML9bMlE=;
 b=LvW/vF6n1Iy/vur/27xYq65L9ZMqOJib2w6BzzcvdPHfA08fhG9ukXunskgOi569nILYIrx4c
 zg8q/vnD89F1tuKHKpOHe+adWa7lf3J33VycXKvoR743RFbMto1oITu3UEq6J4A7L24aTnMMNCq
 Zb1WgJZX3akaXzhM+TmAANwMvMWQep6dx1+E2RGQR1XtXbya/AELDW2AHm5gcUXf6SA2IuhOIz/
 M+4kq7F7f9Aki0712QK2SI71HqVHe5GQmdU7atI8HVTz2Fm9/Ldf5XoT0dbt0x8BS4jsL7SXsHo
 mwR2ldCJ9QG9VoS/qooaFzAAVA0Eu4TYqxj2ePSooL6Q==
Message-ID: <84dc40f4-1948-4eb7-b16e-8a79357c2622@kwiboo.se>
Date: Wed, 10 Jul 2024 16:41:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4
 node
To: Anand Moon <linux.amoon@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240710142001.7234-1-linux.amoon@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240710142001.7234-1-linux.amoon@gmail.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 668e9d98fc7608dd27c22368
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_074156_659513_7C931B51 
X-CRM114-Status: GOOD (  13.36  )
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

On 2024-07-10 16:19, Anand Moon wrote:
> Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
> signals. Rename node from 'pcie3' to 'pcie30x4' to align with schematic
> nomenclature.
> 
> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 20 +++++++++++++------
>  1 file changed, 14 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 2e7512676b7e..a9b55b7996cf 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -301,7 +301,7 @@ &pcie30phy {
>  
>  &pcie3x4 {
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&pcie3_rst>;
> +	pinctrl-0 = <&pcie30x4_perstn_m1 &pcie30x4_clkreqn_m1 &pcie30x4_waken_m1>;
>  	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
>  	vpcie3v3-supply = <&vcc3v3_pcie30>;
>  	status = "okay";
> @@ -340,14 +340,22 @@ pcie2_2_rst: pcie2-2-rst {
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
> +		pcie30x4_clkreqn_m1: pcie30x4-clkreqn-m1 {
> +			rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		pcie30x4_waken_m1: pcie30x4-waken-m1 {
> +			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};

Should these not be routed to the clkreqn_m1 and waken_m1 function
instead of gpio function?

E.g. something like:

		pcie30x4m1_pins: pcie30x4m1-pins {
			rockchip,pins =
				<4 RK_PB4 4 &pcfg_pull_none>,
				<4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>,
				<4 RK_PB5 4 &pcfg_pull_none>;
		};

There are other rk35xx boards where only the perstn pin is configured
and could use a similar fix.

Regards,
Jonas

> +
> +		pcie30x4_perstn_m1: pcie30x4-perstn-m1 {
> +			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
> +		};
>  	};
>  
>  	usb {
> 
> base-commit: 34afb82a3c67f869267a26f593b6f8fc6bf35905


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
