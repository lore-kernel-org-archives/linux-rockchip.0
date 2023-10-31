Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F27E7C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Oct 2023 01:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXMNz+uWq479NQW2Zox853IXPKJxjiogDs26PLTnfDs=; b=XXDh7j71V+Gofp
	RwPum+BxPcjQd+d5pHFtyx+NtbdLAcbxllLnDxGzRrPQZmNi70eBAYJgwmTSRvwO/3vIfXOY80U6c
	ymy2tebb84mXkQ/giql7y8xRSGzN7MR9GRtw5gzosS83TQi1n+HjI3RRM/r9nXvih3wPUyDahrpvH
	DqB/cBxsQS7o9dEdBoxq4MSkh7X6tK9FHiluFumqt5KBXC01v9KrNgmnQH9upgyaQ8IG4vrAcJ6yw
	F0Ve2VbM+wRnSdiPKWOspOCMV8apKlSOtQdwVo0t9GlcLUeN6fCkxf2sHguO+Slqioaz2AQkG+lca
	CXemDwSJ09LW/8R6/L3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxdKf-004Lsk-2s;
	Tue, 31 Oct 2023 01:14:13 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxdKc-004Ls0-2W;
	Tue, 31 Oct 2023 01:14:12 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-507b96095abso7373728e87.3;
        Mon, 30 Oct 2023 18:14:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698714846; x=1699319646; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cxTuWUKQ01ITaCaBUI74BXoQMSnfewI7Dt7CkZW+b34=;
        b=OUSbtxx9xE5RMzhaVZY9od92SNMKtrSWRoM04m1hO6hAxCq17firNIAIfa+VHLqFI5
         ERXYplXaUkHJ4uZCgkpgYuCKS0Cy5PBujKCMaFPRlIu6Dw7DMdsOcwwBP8c36ptfzudm
         pe+B8grDPLy/3Mj/KqWGTe4/9jFUxQSBgDob9SO3JfO/7JUkJffrPFfZmX2IWJWWuIp0
         aGLZScHZbSoa40YQiCIqpyIJnhZFkzCoy6Vejfd4FaPiNgppeKC/+QOiCGg/Ie1HH/iu
         q3b+fNQ4zJoXjwMmobB+jAinXClD57vMoKShyXH1sAG675npbddgDS/yUEA/D3Vy1fv2
         K0bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698714846; x=1699319646;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cxTuWUKQ01ITaCaBUI74BXoQMSnfewI7Dt7CkZW+b34=;
        b=eIM7OJYa/ec0hUjXv1PR80QaaUvJBBtAPdKhGw656UBmgjMI9Ve2AHa6sf1ST5MYEg
         hepyqvSN9f+wieQod9GdLsvugHrZuWfSuy2LUZXw2mg8R0DY46Zg9un93DWa7NFmn/CN
         6z6T8+HnDTL1St9NVlWEkBH5JrDkozmoECIQkxh8laexq5kyNOoVa1v0geU1GS6NaJ97
         S8oV8jfAjR0tA0BPTHbX1xKsgiLYlY5tVjtbWn2zrPyRIKpxpFfxkO6efCrmfaYtS4UW
         pc14G3HVVxPd5lAJCUtfI4pcZznjDWyS0tU6Rja2UBGpi6O6uy/u2qpmYEKqKQZtdxYF
         H8ag==
X-Gm-Message-State: AOJu0YxVht9aieeLGTsxHCpD608eslm+Oi9z7YoYeBS72exoKnGF4e68
	UGf8hF30FlcMt5FudknZWP0=
X-Google-Smtp-Source: AGHT+IEpZ7/rH9Rysj9ot+65R0xB8zqfoheAqe7hlH1l1fpzbsGiuGiPb1kHOqUNV+JYx58J5CuzxA==
X-Received: by 2002:a19:f007:0:b0:504:7ff8:3430 with SMTP id p7-20020a19f007000000b005047ff83430mr7714253lfc.10.1698714846341;
        Mon, 30 Oct 2023 18:14:06 -0700 (PDT)
Received: from mobilestation ([89.113.151.243])
        by smtp.gmail.com with ESMTPSA id d16-20020ac25450000000b005041b7735dbsm26187lfn.53.2023.10.30.18.14.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 18:14:05 -0700 (PDT)
Date: Tue, 31 Oct 2023 04:14:02 +0300
From: Serge Semin <fancer.lancer@gmail.com>
To: Niklas Cassel <nks@flawful.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Damien Le Moal <dlemoal@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Rob Herring <robh@kernel.org>, 
	Niklas Cassel <niklas.cassel@wdc.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 3/6] arm64: dts: rockchip: drop unused properties
 num-{ib,ob}-windows
Message-ID: <e62ymopao3gwwohzt75ehowqbxatmjtvenljutzzh7yeku3kep@smafdc5l5kq5>
References: <20231027145422.40265-1-nks@flawful.org>
 <20231027145422.40265-4-nks@flawful.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231027145422.40265-4-nks@flawful.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231030_181410_821795_2457E124 
X-CRM114-Status: GOOD (  18.11  )
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

On Fri, Oct 27, 2023 at 04:54:15PM +0200, Niklas Cassel wrote:
> From: Niklas Cassel <niklas.cassel@wdc.com>
> 
> The properties num-ib-windows and num-ob-windows have been deprecated for
> a long time, and since commit 281f1f99cf3a ("PCI: dwc: Detect number of
> iATU windows"), these properties are no longer used by the driver.
> 
> The correct number of inbound and outbound iATUs are now detected at
> runtime. Thus, drop these unused properties.
> 
> Signed-off-by: Niklas Cassel <niklas.cassel@wdc.com>

Reviewed-by: Serge Semin <fancer.lancer@gmail.com>

-Serge(y)

> ---
>  arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts | 2 --
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi           | 4 ----
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi           | 2 --
>  3 files changed, 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
> index b6ad8328c7eb..da4927a35142 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
> @@ -102,8 +102,6 @@ &pcie3x1 {
>  
>  &pcie3x2 {
>  	num-lanes = <1>;
> -	num-ib-windows = <8>;
> -	num-ob-windows = <8>;
>  	reset-gpios = <&gpio2 RK_PD6 GPIO_ACTIVE_HIGH>;
>  	vpcie3v3-supply = <&vcc3v3_pcie>;
>  	status = "okay";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index f1be76a54ceb..4487754065b7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -84,8 +84,6 @@ pcie3x1: pcie@fe270000 {
>  				<0 0 0 3 &pcie3x1_intc 2>,
>  				<0 0 0 4 &pcie3x1_intc 3>;
>  		linux,pci-domain = <1>;
> -		num-ib-windows = <6>;
> -		num-ob-windows = <2>;
>  		max-link-speed = <3>;
>  		msi-map = <0x0 &gic 0x1000 0x1000>;
>  		num-lanes = <1>;
> @@ -137,8 +135,6 @@ pcie3x2: pcie@fe280000 {
>  				<0 0 0 3 &pcie3x2_intc 2>,
>  				<0 0 0 4 &pcie3x2_intc 3>;
>  		linux,pci-domain = <2>;
> -		num-ib-windows = <6>;
> -		num-ob-windows = <2>;
>  		max-link-speed = <3>;
>  		msi-map = <0x0 &gic 0x2000 0x1000>;
>  		num-lanes = <2>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index abee88911982..e2d99613109b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -985,8 +985,6 @@ pcie2x1: pcie@fe260000 {
>  				<0 0 0 3 &pcie_intc 2>,
>  				<0 0 0 4 &pcie_intc 3>;
>  		linux,pci-domain = <0>;
> -		num-ib-windows = <6>;
> -		num-ob-windows = <2>;
>  		max-link-speed = <2>;
>  		msi-map = <0x0 &gic 0x0 0x1000>;
>  		num-lanes = <1>;
> -- 
> 2.41.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
