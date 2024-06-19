Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDBF6C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jun 2024 19:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mv7IEzHRIU4EP3OFeKc4/ojzfJbwiLX3g1ZLjhlYKJI=; b=sNF6zfii4wlbJO
	IRBqiCRHgUdF1f53l4Bayub1y7veNACnVmgDrrSVe8DbCcZTn4H728Y66S5q7dIaJHDcfrHV8n8Ou
	zPxOJ1OdwEk3sNT9qRxEwLFyt7P//PLZ0+l5qhCdEJvkk0zbHUWkfGEZqUs7gEwWfGlsAdD1A/4kj
	6UKdaY3LjWFpVjHrQ7gTAv5U1EOc3qMzGSyf5+nQRIxSjnZ14ZFsM8jV++y8CQZ82SiHABTr2AHqP
	rU9xYPVGRWOBPK4Lf37I0ovRYds7laVWSRPRFmP+9F2gKryproyW/+lzx2PaQjcYk3kFCTzO/+Y8F
	j5YdAZ/nW5VFO1+KKwRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK1MZ-00000002ZZN-2LSh;
	Wed, 19 Jun 2024 19:52:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK1MV-00000002ZYc-33S9;
	Wed, 19 Jun 2024 19:52:57 +0000
Received: from i5e8616dc.versanet.de ([94.134.22.220] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sK1ML-0000cJ-Uc; Wed, 19 Jun 2024 21:52:45 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/3] ARM: dts: rockchip: rk3xxx: fix emac node
Date: Wed, 19 Jun 2024 21:52:44 +0200
Message-ID: <24211354.RjEADstKbi@diego>
In-Reply-To: <12f50bef-ba6e-4d96-8ced-08682c931da9@gmail.com>
References: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
 <12f50bef-ba6e-4d96-8ced-08682c931da9@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_125255_877855_11305430 
X-CRM114-Status: GOOD (  20.40  )
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

Am Dienstag, 18. Juni 2024, 18:13:56 CEST schrieb Johan Jonker:
> In the combined DT of rk3066a/rk3188 the emac node uses as place holder
> the compatible string "snps,arc-emac". The last real user nSIM_700
> of the "snps,arc-emac" compatible string in a driver was removed in 2019.
> Rockchip emac nodes don't make use of this common fall back string.
> In order to removed unused driver code replace this string with
> "rockchip,rk3066-emac".
> As we are there remove the blank lines and sort.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

I think this is fine going through the network tree together with the
other two patches.


> ---
> 
> [PATCH 8/8] ARC: nSIM_700: remove unused network options
> https://lore.kernel.org/all/20191023124417.5770-9-Eugeniy.Paltsev@synopsys.com/
> ---
>  arch/arm/boot/dts/rockchip/rk3066a.dtsi | 4 ----
>  arch/arm/boot/dts/rockchip/rk3xxx.dtsi  | 7 ++-----
>  2 files changed, 2 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3066a.dtsi b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
> index 5e0750547ab5..3f6d49459734 100644
> --- a/arch/arm/boot/dts/rockchip/rk3066a.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
> @@ -896,7 +896,3 @@ &vpu {
>  &wdt {
>  	compatible = "rockchip,rk3066-wdt", "snps,dw-wdt";
>  };
> -
> -&emac {
> -	compatible = "rockchip,rk3066-emac";
> -};
> diff --git a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
> index f37137f298d5..e6a78bcf9163 100644
> --- a/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3xxx.dtsi
> @@ -194,17 +194,14 @@ usb_host: usb@101c0000 {
>  	};
> 
>  	emac: ethernet@10204000 {
> -		compatible = "snps,arc-emac";
> +		compatible = "rockchip,rk3066-emac";
>  		reg = <0x10204000 0x3c>;
>  		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
> -
> -		rockchip,grf = <&grf>;
> -
>  		clocks = <&cru HCLK_EMAC>, <&cru SCLK_MAC>;
>  		clock-names = "hclk", "macref";
>  		max-speed = <100>;
>  		phy-mode = "rmii";
> -
> +		rockchip,grf = <&grf>;
>  		status = "disabled";
>  	};
> 
> --
> 2.39.2
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
