Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D07C8C77B73
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 08:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6UJhEVopwMg0do+itDcFZLBqnDeSXBuws3b7NT2y9E=; b=1NiuSHLIuOGEbV
	BZof3w+g9MSMdd5O2kFg9pXdwYmltOtK2/ayXwf30XR5CUFoqRGNCuM736XtCWYixPD+b4Q0La5oA
	BKQQxd39EF1YwxyqSnZz/i0El8oI5U8fQqF3+ZXrU15Uoopt0gGfwQnW3cgYi6CNMEtQ2EjmTH8NA
	ndEPWmsStvggWijHTcaFqVqtuGVERb4svKv2ZoEo3XjWROBZ0FWls5zPsCgT+3SQN0QuYcD1MI6GW
	/YgAQZaSk7Ma8HANUrcSK1xGGoGzusCGtRhlM/1L5U/Hqr46WMjMLabOdPOkoGu4rWPR1pHmJld/f
	u2tDJ5DtiMpB4GjchsPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptlp0-000hPP-35;
	Tue, 02 May 2023 08:57:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptloy-000hON-0N;
	Tue, 02 May 2023 08:57:17 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ptlot-0006V9-Ob; Tue, 02 May 2023 10:57:11 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Finley Xiao <finley.xiao@rock-chips.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH 8/8] arm64: dts: rockchip: Add rk3588 OTP node
Date: Tue, 02 May 2023 10:57:10 +0200
Message-ID: <5059282.72vocr9iq0@diego>
In-Reply-To: <20230501084401.765169-9-cristian.ciocaltea@collabora.com>
References:  <20230501084401.765169-1-cristian.ciocaltea@collabora.com>
 <20230501084401.765169-9-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_015716_153955_414116C4 
X-CRM114-Status: GOOD (  15.65  )
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

Am Montag, 1. Mai 2023, 10:44:00 CEST schrieb Cristian Ciocaltea:
> Add DT node for Rockchip RK3588/RK3588S OTP memory.
> 
> Co-developed-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

looks good and I'll pick this up once the code and binding parts land.

Thanks
Heiko


> ---
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 54 +++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 767084a1ec43..0abcd51d7d66 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -1822,6 +1822,60 @@ spi4: spi@fecb0000 {
>  		status = "disabled";
>  	};
>  
> +	otp: efuse@fecc0000 {
> +		compatible = "rockchip,rk3588-otp";
> +		reg = <0x0 0xfecc0000 0x0 0x400>;
> +		clocks = <&cru CLK_OTPC_NS>, <&cru PCLK_OTPC_NS>,
> +			 <&cru CLK_OTPC_ARB>, <&cru CLK_OTP_PHY_G>;
> +		clock-names = "otpc", "apb", "arb", "phy";
> +		resets = <&cru SRST_OTPC_NS>, <&cru SRST_P_OTPC_NS>,
> +			 <&cru SRST_OTPC_ARB>;
> +		reset-names = "otpc", "apb", "arb";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		cpu_code: cpu-code@2 {
> +			reg = <0x02 0x2>;
> +		};
> +
> +		otp_id: id@7 {
> +			reg = <0x07 0x10>;
> +		};
> +
> +		otp_cpu_version: cpu-version@1c {
> +			reg = <0x1c 0x1>;
> +			bits = <3 3>;
> +		};
> +
> +		cpub0_leakage: cpu-leakage@17 {
> +			reg = <0x17 0x1>;
> +		};
> +
> +		cpub1_leakage: cpu-leakage@18 {
> +			reg = <0x18 0x1>;
> +		};
> +
> +		cpul_leakage: cpu-leakage@19 {
> +			reg = <0x19 0x1>;
> +		};
> +
> +		log_leakage: log-leakage@1a {
> +			reg = <0x1a 0x1>;
> +		};
> +
> +		gpu_leakage: gpu-leakage@1b {
> +			reg = <0x1b 0x1>;
> +		};
> +
> +		npu_leakage: npu-leakage@28 {
> +			reg = <0x28 0x1>;
> +		};
> +
> +		codec_leakage: codec-leakage@29 {
> +			reg = <0x29 0x1>;
> +		};
> +	};
> +
>  	dmac2: dma-controller@fed10000 {
>  		compatible = "arm,pl330", "arm,primecell";
>  		reg = <0x0 0xfed10000 0x0 0x4000>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
