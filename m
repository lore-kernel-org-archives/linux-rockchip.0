Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BF94C43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 13:03:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:Cc:To:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsBXA0zFAjMqrRVXU1iWAvjxu2noSfb1QUmwBXOhE4c=; b=XuyUE7W9Hn3sgM
	d1UN7/AHNUTdu0cGWhsVVsvtQ/qwwKbGmRLueqz1JSykI/VBSd1Ek3aW8C57HphQd6jfl6DtWcOd4
	mQQaVt1LzsqlAtJyoD08YrmAvglHi1Vup0/LH1W/Jr/Fb2BAi9egmpd0CqeURyy1z5NfI21XmTlvg
	SuRaNeTd39gbYz3rN7lk8iJQKmqpofIXfkVjkT1sx9sIYf4txbPTk+2Ga9FI7YTms1RyoayWXVlZa
	pweY+Z/TPJz3YEsLhbcKwG+R+xuue2VAT9XOJFWIXEZg/d7fukKzbHRwOCNXmMbh9EogEMj4sOgml
	FZWtmrtIAG6HzZFMZv2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjcmq-0000000C4Rr-0dtx;
	Tue, 14 Jul 2026 13:03:00 +0000
Received: from out-172.mta0.migadu.com ([2001:41d0:1004:224b::ac])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjcmn-0000000C4RE-0jV8
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 13:02:59 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1784034169;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=s0CMiWuHZ0uwm0W5eVDnOsKsl7y91gjDTzq0HQxMpSw=;
	b=UGk5ycZi1gfvOCT3UYL7c1WC1wB5w04XvTi36jPTzKWnDmqncgcsA0Baaq7pBkFacjCD9o
	p56kVwP7VJNwgCGHVKqg5uuq5lVXijoK4hTbsalenG1YQEtYQ7q/syDu5Qti5dZQ1Qh9d5
	n1J9wVnTWbLui4anE7KKF3ui+JSTU4+Ya+j09Rcb0e22mo2k9nS6lBiKxrZ+vV7opL+GMd
	UeSHTMPWzvThCfw1S6SWvynCCCZgymG6bdMmBJt7tzA+lUQSVkUgGMVxkBrQKj2HhoNLuc
	bH1CHjVIKeoT5NvEfuXuMLf3HF8brggE4kDqiOPSdAVTXXHI8kgP+YU1uRsjuA==
Date: Tue, 14 Jul 2026 15:02:45 +0200
Message-Id: <DJYBBXE6SAG2.20OEJI5K6JIVM@cknow-tech.com>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Joachim Eastwood" <joachim.eastwood@gmail.com>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <diederik@cknow-tech.com>,
 <jonas@kwiboo.se>
Subject: Re: [PATCH v3 03/12] arm64: dts: rockchip: rk3588s-nanopi-r6: fix
 missing pcie rst pinctrl
References: <20260713-nanopi-m6-v3-0-227567ffc5dc@gmail.com>
 <20260713-nanopi-m6-v3-3-227567ffc5dc@gmail.com>
In-Reply-To: <20260713-nanopi-m6-v3-3-227567ffc5dc@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_060257_696870_60993D49 
X-CRM114-Status: GOOD (  11.68  )
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

Hi Joachim,

On Mon Jul 13, 2026 at 10:30 PM CEST, Joachim Eastwood via B4 Relay wrote:
> From: Joachim Eastwood <joachim.eastwood@gmail.com>
>
> The pins are used as reset-gpios but not reserved through pinctrl.
>
> Fixes: f3c6526d6fb2 ("arm64: dts: rockchip: Convert dts files used as parents to dtsi files")
> Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
> index 67e284a15c35..8df6e1a21180 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-r6.dtsi
> @@ -360,12 +360,16 @@ rgmii_phy1: ethernet-phy@1 {
>  };
>  
>  &pcie2x1l1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie2_1_rst>;
>  	reset-gpios = <&gpio1 RK_PA7 GPIO_ACTIVE_HIGH>;
>  	vpcie3v3-supply = <&vcc_3v3_pcie20>;
>  	status = "okay";
>  };
>  
>  &pcie2x1l2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie2_2_rst>;
>  	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
>  	vpcie3v3-supply = <&vcc_3v3_pcie20>;
>  	status = "okay";
> @@ -420,6 +424,16 @@ rtc_int: rtc-int {
>  		};
>  	};
>  
> +	pcie {
> +		pcie2_1_rst: pcie2-1-rst {

``pcie20x1_1_perstn_m2`` to match the schematic name?

> +			rockchip,pins = <1 RK_PA7 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		pcie2_2_rst: pcie2-2-rst {

And ``pcie20x1_2_perstn_m0`` here?

Cheers,
  Diederik

> +			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>  	sdmmc {
>  		sdmmc_det_pin: sdmmc-det-pin {
>  			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
