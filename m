Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5739CE7B10
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Sep 2023 09:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tu2YQpzeWXMsbEraZpQzrLF7y3lELShQ/j3IUPrTiBA=; b=I6s9/smUZoISdK
	aQ5GoNSLlzWxXxuCq48v80d6WPreGiC3KIEYTphhamYyB4+gQq/NMLuxji3vjMi4tK/WrY75vIHJT
	Nf+eBunsmkl/5sJqXOQYiOY04Se9eF3K65d+bY2RAKHEyD+5EqgbCH0Qdz091FRTtuioKr9Rv3Njt
	pEEomMOvl02s65Z9Vv6litaFSJmEsNXyFR17wMS9VDNyT/9+ixETxW7eDt1xw5XTBNniEeSAHxEHB
	NHc6srddPiKTvkFUz1k/jrBuGrDPzvurwNp1k5Faemk1UuXejrfgA6g+DirbA23TmVq2/a1cQDtEk
	VdbkYjDoVs26zrR83HyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlnTX-002klF-31;
	Thu, 28 Sep 2023 09:38:27 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlnTU-002kjW-05;
	Thu, 28 Sep 2023 09:38:25 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 38S9cC0c122014;
	Thu, 28 Sep 2023 04:38:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1695893892;
	bh=f0aP2zPIw8Ww5POXs3VDmPWZE2QQ78JrFXN3YNREGPQ=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=NJeMxpLwda8cYHiIQzS3875RkjSFCXY6u/66nuL5s0NjOBlHClSw9o9ZkrTqgiU4X
	 Yqg8H/usOo8tGXdNfYiAFqTBAkqNw0XYQGicReW30fPp/Xlh/lgoo1s3JAf+Yn1KZ5
	 KAZWwYlhR3De2XjtVeB8jOTvbljh916YvkDW/b4g=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 38S9cCqO022484
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 28 Sep 2023 04:38:12 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Thu, 28
 Sep 2023 04:38:12 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Thu, 28 Sep 2023 04:38:12 -0500
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 38S9cBvR101747;
	Thu, 28 Sep 2023 04:38:11 -0500
Date: Thu, 28 Sep 2023 15:08:10 +0530
From: Dhruva Gole <d-gole@ti.com>
To: Muhammed Efe Cetin <efectn@6tel.net>
CC: <linux-rockchip@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <heiko@sntech.de>,
        <sebastian.reichel@collabora.com>, <jonas@kwiboo.se>, <megi@xff.cz>
Subject: Re: [PATCH v3 2/3] arm64: dts: rockchip: Add sfc node to rk3588s
Message-ID: <20230928093810.iwz52glco2ywy2kc@dhruva>
References: <cover.1692632346.git.efectn@6tel.net>
 <70557b7843994a57c6d3422e00643cb75a698d0b.1692632346.git.efectn@6tel.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70557b7843994a57c6d3422e00643cb75a698d0b.1692632346.git.efectn@6tel.net>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_023824_147097_FB8F392A 
X-CRM114-Status: GOOD (  17.44  )
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

On Aug 21, 2023 at 18:47:58 +0300, Muhammed Efe Cetin wrote:
> Add sfc node to rk3588s.dtsi from downstream kernel.

For those with lesser context, can you please mention what SFC means? I
did a quick grep on the compatible and that's how I got to know it's a
Serial Flash Controller

Also, not sure what you mean by downstream kernel, where is it located?
Why did you feel the need to mention it while upstreaming this patch?
Please can you provide more context or drop the downstream part
altogether?

> 
> Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 5544f66c6ff4..1a820a5a51eb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -1424,6 +1424,17 @@ sata-port@0 {
>  		};
>  	};
>  
> +	sfc: spi@fe2b0000 {
> +		compatible = "rockchip,sfc";
> +		reg = <0x0 0xfe2b0000 0x0 0x4000>;
> +		interrupts = <GIC_SPI 206 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
> +		clock-names = "clk_sfc", "hclk_sfc";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		status = "disabled";
> +	};
> +

Otherwise, looks okay.

Reviewed-by: Dhruva Gole <d-gole@ti.com>

>  	sdmmc: mmc@fe2c0000 {
>  		compatible = "rockchip,rk3588-dw-mshc", "rockchip,rk3288-dw-mshc";
>  		reg = <0x0 0xfe2c0000 0x0 0x4000>;
> -- 
> 2.41.0
> 
> 

-- 
Best regards,
Dhruva Gole <d-gole@ti.com>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
