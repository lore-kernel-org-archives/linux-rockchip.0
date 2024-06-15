Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C8CFC27C53
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 08:26:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+/ftE3yvzohoLvzPKL96xvQMYaUD9fX+jULVChwOeWM=; b=J/U4X1MLAfB1kf
	V7pc2DsNcs0uBv0JfUv6VfSGbdp7Oamrzh4qaUyQl5yXW7QJYtyuTLivZhKDmfpkiwIYcMz+lW5JB
	nDKmocKyE60M+riQq+2gZ2DAPYnG9/rEZotr0LlBJyAFgT+kDidrnH4mn2sVeO7tIKKcvlPNlLFpY
	SBANbs7m7WEdp02/g9SEYVMQu4YZsN9PesRwV83q/nwoCI7NOa/+mwkgYa+BBO3c+ig/tKCb5H2Dz
	D7h9c/fhArhKW0WfXGhH4pHS+D1f+EJ4gP45hXEtHkc8/92Ny/p3kXxswYUBIu9+WG0NH9Q2fzbEa
	DZe7N3ipdqZXFChH73nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIOjf-0000000516J-1rvJ;
	Sat, 15 Jun 2024 08:26:07 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIOjb-0000000514i-0aYv
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 08:26:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1718439934;
 bh=EW7jvkwNl5KPdKEMQlw7NNrj1stNAcl0D/1kkAtbX9s=;
 b=x4pKHQ8xY4jG2m4ai/rW5ZXbsDn3QBmtALJi+WiuR4Fz4Weyu0kuskrVNAsce9CQ4pgLgcBmp
 JnXriXcuP18dwwfs2e51uanLqxEFSxN0U26zVBFTa6tY5BIIu5BhJnU2CbhuRr2HHwIOnFrwR28
 ZJL3Cm/zmz7mraYUKnVelMcRnC3iJAGPXtfBTasiPYn3ntsqo8CSLDukQ+rw+j0C++dF4NDPV9w
 eK5t9JKqMkx1P7rw36uqM8YNKgZ6fYadat6ssaWIM4F8bQrsxgnaC/eU4O3M0Rc3GgR6mjmYTnG
 1pj/NnJbD5j8U3iCSi/05NhRobCfDSHDfDhe9Zt0knvA==
Message-ID: <944c4296-8dd2-4ffd-b430-1839ff3a3ed2@kwiboo.se>
Date: Sat, 15 Jun 2024 10:25:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add rkvdec2 Video Decoder on
 rk3588(s)
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, Dragan Simic
 <dsimic@manjaro.org>, Alexey Charkov <alchark@gmail.com>, Cristian
 Ciocaltea <cristian.ciocaltea@collabora.com>, Diederik de Haas
 <didi.debian@cknow.org>, Andy Yan <andy.yan@rock-chips.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
References: <20240615015734.1612108-1-detlev.casanova@collabora.com>
 <20240615015734.1612108-4-detlev.casanova@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240615015734.1612108-4-detlev.casanova@collabora.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 666d4ffdb23880544d1f1533
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_012603_233125_AAFDA816 
X-CRM114-Status: GOOD (  16.08  )
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

Hi Detlev,

On 2024-06-15 03:56, Detlev Casanova wrote:
> Add the rkvdec2 Video Decoder to the RK3588s devicetree.
> 
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      |  4 ++++
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  |  4 ++++
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 19 +++++++++++++++++++
>  3 files changed, 27 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index c551b676860c..965322c24a65 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -503,6 +503,10 @@ &pwm1 {
>  	status = "okay";
>  };
>  
> +&rkvdec0 {
> +	status = "okay";
> +};

Enable of rkvdec0 should probably be split out from the patch that adds
the rkvdec0 node to soc dtsi.

Also why is rkvdec0 only enabled on rock-5b and orangepi-5?

> +
>  &saradc {
>  	vref-supply = <&avcc_1v8_s0>;
>  	status = "okay";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> index feea6b20a6bf..2828fb4c182a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> @@ -321,6 +321,10 @@ typec5v_pwren: typec5v-pwren {
>  	};
>  };
>  
> +&rkvdec0 {
> +	status = "okay";
> +};
> +
>  &saradc {
>  	vref-supply = <&avcc_1v8_s0>;
>  	status = "okay";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 0fecbf46e127..09672636dcea 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -3034,6 +3034,9 @@ system_sram2: sram@ff001000 {
>  		ranges = <0x0 0x0 0xff001000 0xef000>;
>  		#address-cells = <1>;
>  		#size-cells = <1>;

Blank line is missing.

> +		rkvdec0_sram: rkvdec-sram@0 {
> +			reg = <0x0 0x78000>;
> +		};
>  	};
>  
>  	pinctrl: pinctrl {
> @@ -3103,6 +3106,22 @@ gpio4: gpio@fec50000 {
>  			#interrupt-cells = <2>;
>  		};
>  	};
> +
> +	rkvdec0: video-decoder@fdc38100 {
> +		compatible = "rockchip,rk3588-vdec2";
> +		reg = <0x0 0xfdc38100 0x0 0x500>;
> +		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru ACLK_RKVDEC0>, <&cru HCLK_RKVDEC0>, <&cru CLK_RKVDEC0_CORE>,
> +			 <&cru CLK_RKVDEC0_CA>, <&cru CLK_RKVDEC0_HEVC_CA>;
> +		clock-names = "axi", "ahb", "core",
> +			      "cabac", "hevc_cabac";
> +		assigned-clocks = <&cru ACLK_RKVDEC0>, <&cru CLK_RKVDEC0_CORE>,
> +				  <&cru CLK_RKVDEC0_CA>, <&cru CLK_RKVDEC0_HEVC_CA>;
> +		assigned-clock-rates = <800000000>, <600000000>,
> +				       <600000000>, <1000000000>;
> +		power-domains = <&power RK3588_PD_RKVDEC0>;

iommus and resets should probably be added.

> +		status = "disabled";
> +	};

The iommu node for rkvdec0_mmu seem to be missing, is it not required to
be able to use memory >4GiB as decoding buffers?

I would also consider adding the rkvdec1 node(s), if I am understanding
correctly they can both be used in a cluster or completely independent.

Also on RK3582/RK3583 one (or both) of the decoder cores may be marked
as bad, yet the remaining one can still be used independently. The idea
will be that bootloader fixup the DT and disabled/delete-node the bad
core(s).

Regards,
Jonas

>  };
>  
>  #include "rk3588s-pinctrl.dtsi"


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
