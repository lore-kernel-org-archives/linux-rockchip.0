Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B92C7CD3423
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 May 2026 10:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3eV08G9O/L1SyF9QkZP0MobhqPWbrJEE20aH6qYHcFg=; b=cswzg3Nui0/dAd
	8qpBaUYmATnrYlX1bAlahskvDNWrqDmK8FZ1ppRsTl3MXgzDgFv7HgML7OK7ItsLcYJdhAGkqeDci
	PBHalzzCb+WYzEZXfht8Yh91D73HvFh7aavL+voBH6bMIZgAu3MkjYKiGkxi9GK9QA0xv+OruNdut
	ithuUQuumIfBzGJtxWPGyvqNqatFUZBgWMNZmz7Xkr16HD9KIGYAXPJBw2z921vkgWSSPDtbiA9kY
	OWDdiR10HyO4b+fvbLDxVaxjpiRi7zxPfrWxwuvH7UKnmDJ5V4t40L+WoGU0tJYQHPZeG3r5RGaIH
	yMoNr4n8zIHa+nzUcQQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJ7by-00000008oJm-13Xz;
	Sat, 02 May 2026 10:30:14 +0000
Received: from out-179.mta0.migadu.com ([2001:41d0:1004:224b::b3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJ7bw-00000008oG3-0fPg
	for linux-rockchip@lists.infradead.org;
	Sat, 02 May 2026 10:30:13 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1777717788;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=jKC3PTkwWrrt7PYEQQ0B4ZjpL8QByGd23QV939tztOg=;
	b=TvAbHW2veUJcqZme81cx/GGP21R4PHW48Vdw9zFZVYz7lCULM0oYq8uZZ7Ra4+LV09brVr
	fAxK4DBv+MX5wbEMbSxiS1cjcjoSfHRiR08qh468IM4CjCYgwY84JKB6OfstJ7+gqrnE2k
	pD3knfHjk5ly0w8/ukaBdUTNmJ7gGf94gnpXEUNl3fov/xCCdWABF2f1J9p9I+d68sTFI6
	Ip1ZA7X45ylF88PIs+mnGL1GDFTGMIWXjakszAleSQpi1J5R6xmeKp+XXkXRyd4cWUeArB
	9RmD0PbQyU6MB6OKBhx6SbGUUbRNFWCqc7Ev8l5DNhOcI6Z00JdNGehMPsnTPA==
Date: Sat, 02 May 2026 12:29:40 +0200
Message-Id: <DI84CXWVJPXB.1OG0PYJ5L31TX@cknow-tech.com>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <nick@khadas.com>
Subject: Re: [PATCH v2 2/7] arm64: dts: rockchip: Add HYM8563 RTC for Khadas
 Edge 2L
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Gray Huang" <gray.huang@wesion.com>, <robh@kernel.org>,
 <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <heiko@sntech.de>
References: <20260429063712.2150938-1-gray.huang@wesion.com>
 <20260429063712.2150938-3-gray.huang@wesion.com>
In-Reply-To: <20260429063712.2150938-3-gray.huang@wesion.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260502_033012_334366_2DD8C529 
X-CRM114-Status: GOOD (  13.93  )
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

On Wed Apr 29, 2026 at 8:37 AM CEST, Gray Huang wrote:
> The Khadas Edge 2L uses an on-board HYM8563 RTC connected to
> I2C2. Enable it and expose its 32.768kHz clock output so later
> board-level patches can reference it as the LPO clock source for
> the AP6275P wireless module.
>
> Mark the RTC as a wakeup source as well.
>
> Signed-off-by: Gray Huang <gray.huang@wesion.com>
> ---
>  .../boot/dts/rockchip/rk3576-khadas-edge-2l.dts     | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-khadas-edge-2l.dts b/arch/arm64/boot/dts/rockchip/rk3576-khadas-edge-2l.dts
> index 5781deae00d9..c85b219fe409 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576-khadas-edge-2l.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3576-khadas-edge-2l.dts
> @@ -46,8 +46,6 @@ vcc_2v0_pldo_s3: regulator-vcc-2v0-pldo-s3 {
>  		regulator-max-microvolt = <2000000>;
>  		vin-supply = <&vcc_sys>;
>  	};
> -
> -
>  };

You're removing unneeded empty lines (good), but you introduced them in
patch 1 of this series ... thus fix patch 1? That also means you're no
longer adding an unrelated change in this patch.

Cheers,
  Diederik
  
>  &cpu_l0 {
> @@ -431,6 +429,17 @@ regulator-state-mem {
>  	};
>  };
>  
> +&i2c2 {
> +	status = "okay";
> +
> +	hym8563: hym8563@51 {
> +		compatible = "haoyu,hym8563";
> +		reg = <0x51>;
> +		#clock-cells = <0>;
> +		clock-output-names = "hym8563";
> +		wakeup-source;
> +	};
> +};
>  
>  &sdhci {
>  	bus-width = <8>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
