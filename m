Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C9CCC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:10:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3396460C3F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:10:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3396460C3F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3A2G+QdF9tDkWc8yxziBXX/kAK6JUh7nTekKdSZ7fn4=; b=QZzRH6QlJtnWcz
	QayinURfudI2dmvkmFqRoi/3L5SrzUtPvkjPeSLIQaCsrOs2Uca10PTOVyS78Y3odis5ymOvXIgHl
	HVoyoxuU9wGbdL+7qWjDF799VRxU9bFyLKy4BpxXWFz0I/4TW+yDZ3GYs1yHn6jappIzQwrCmx9FV
	Y1akM9qzYqasYvLb7EnofUPORtwBlJbdr77Y9qaYEkFZIGyh34VNV1O4nY/fH6cvlkXijBtTe5/83
	/ZQRopJoIlgM5TfcCNIPe6VLnDki8Ed7WD4ij1BCUS7hvrBIwFcrUcf2WHEwxso1v4jgqXNvgpFdE
	oVev4dru2E7fqnzU63sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kGb-000zMr-GR; Wed, 28 Jul 2021 14:10:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8kCe-000wzp-KN; Wed, 28 Jul 2021 14:06:33 +0000
Received: from [95.90.166.74] (helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m8kCc-0005wH-22; Wed, 28 Jul 2021 16:06:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 6/9] arm64: dts: rockchip: add missing rk3568 cru phandles
Date: Wed, 28 Jul 2021 16:06:29 +0200
Message-ID: <13247009.uLZWGnKmhe@diego>
In-Reply-To: <20210728135534.703028-7-pgwipeout@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <20210728135534.703028-7-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_070632_726194_06BA398D 
X-CRM114-Status: GOOD (  16.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Peter,

Am Mittwoch, 28. Juli 2021, 15:55:31 CEST schrieb Peter Geis:
> The grf and pmugrf phandles are necessary for the pmucru and cru to
> modify clocks. Add these phandles to permit adjusting the clock rates
> and muxes.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 0905fac0726a..8ba0516eedd8 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -218,6 +218,8 @@ grf: syscon@fdc60000 {
>  	pmucru: clock-controller@fdd00000 {
>  		compatible = "rockchip,rk3568-pmucru";
>  		reg = <0x0 0xfdd00000 0x0 0x1000>;
> +		rockchip,grf = <&grf>;
> +		rockchip,pmugrf = <&pmugrf>;

I don't think the pmucru needs both and in fact the mainline
clock driver should just reference its specific grf at all, i.e.
	pmucru -> pmugrf (via the rockchip,grf handle)
	cru -> grf

I've not seen anything breaking this scope so far.


Heiko

>  		#clock-cells = <1>;
>  		#reset-cells = <1>;
>  	};
> @@ -225,6 +227,7 @@ pmucru: clock-controller@fdd00000 {
>  	cru: clock-controller@fdd20000 {
>  		compatible = "rockchip,rk3568-cru";
>  		reg = <0x0 0xfdd20000 0x0 0x1000>;
> +		rockchip,grf = <&grf>;
>  		#clock-cells = <1>;
>  		#reset-cells = <1>;
>  	};
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
