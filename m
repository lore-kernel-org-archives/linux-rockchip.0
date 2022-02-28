Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95D93C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 09:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=riVP2+YW5X98v8608n4TywsQMxbGSJsA+5ZFK0rsC6k=; b=euGalrq+IaPqOH
	4u1DnSuKrHiPjT2mCo2EI4fj8H18O5/XAGPZibs1AsoHifvWsocAsKti/HqECwFszrrBpQgtdImOo
	ItQUo5GBz21xLKL1XtNiYjX1aFiBEc+93Lv+NqkdsFlF0mn81OkW2vyhYDlw/MZYc3GsdL7JDYdpq
	UU79os+12tEd+ojzTenW19e5uOIBH5zGdxoPigSY+5lwNdmMrPP2p+0rJ5Sh/8e6qaDpXibgvB9lA
	s2LZDlKi4YdubPZCOeO8o+zXhTAN49H3/7sGKd15L4/LbDPv74gfhk5nebu7wXGo4Fehl5YDGaEGN
	JKM/4C+UgaZWTwDD1WQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOckl-00BMfi-IW; Mon, 28 Feb 2022 09:55:39 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOcjc-00BMCy-Gs
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 09:54:34 +0000
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id CCA413FCA8
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 09:54:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1646042065;
 bh=mna9J1nBg6HOMnow2P6fMcSmE8VXg1IqnH2FURdKmp0=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=f/OD2VNO+nXtSZLHFiS1/91UX0fGEmAPWyWnDrf4xz5X/SY5YAZawiScUYFg5m3r9
 beVPIrBsISVvy0hOr3ZQu0FGpHszTy1K3vFxFLMKbUdbkF5uUMB99IkxRaNe0j4GiQ
 b5nhxTkUnMbClnZq07HtAMQtQl4sEwK00QJrkCmCYdJtu4UEDHpnL4Ovepm3uYXs1j
 /MSLJVhfznzVOJkltXzdez+UisBUAj4aSKOgL/RD88xXFL49Wq9iMD5FigQZvOfYc3
 Ndx6+HZhor5K1SUaIXLDz892YkNsWvzubD3Kw4oOTmzLmMmwM3E8joXjRoVxWlz341
 YUjLtJdHtgA9w==
Received: by mail-wm1-f70.google.com with SMTP id
 r206-20020a1c44d7000000b00380e36c6d34so6178157wma.4
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 01:54:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=mna9J1nBg6HOMnow2P6fMcSmE8VXg1IqnH2FURdKmp0=;
 b=1ITgHf8i3Vteai2Me+eEXW8WSBIkvib4rLWpjlu9Q3a5BiYxaHSGZU0nsrmai+Q83v
 b+ekJKLlPnD7aZYDcE6vQ/kkkngxrOCc3FC937S7IALIU+J3q011pVRm9RbioxlQiK4o
 HM7MlN6nK16Y4muldvvMxAShcFJZf3Dn40wy/H4ymJcecci/3XL+jyLZM3591f9UEmvV
 U8GmZasGtXiGLpkvOUEa15BVPNWwUxI2ZZsjREZZhVtI56aGDvvddDEk6Ar0UEHiGKxa
 tHPZ6gW+tgVypXv67w9jn1wGSq3tAYKRjTSfF/oliJSMVuLYsereDhFXN2zvPbwdvi6c
 GGKg==
X-Gm-Message-State: AOAM532V6GWG/NI17baiHchjvAQ6T2S4KAV6GAQ3i8b3+RP/I0Nprd4b
 6BIzxBoOU0YFPBaJZ7Z6Tet9v8mpWxJTYo6esZFr0+pqhI04qyR5ew8lJuNlfYfIQr+4hEf6/1t
 /iJyFAauIxSMd/GRLkQLOPog6H74nbhd/0l//5tf03SDUPWfkiw==
X-Received: by 2002:a05:6000:162f:b0:1ed:bbef:f7b9 with SMTP id
 v15-20020a056000162f00b001edbbeff7b9mr15608217wrb.379.1646042064787; 
 Mon, 28 Feb 2022 01:54:24 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwF4VDklq4C5zzM72nwt08X01T/IfVu/GQ6QrQbbkJljUbB9HduFrRm9IjGHQBgzq6rkjLXyQ==
X-Received: by 2002:a05:6000:162f:b0:1ed:bbef:f7b9 with SMTP id
 v15-20020a056000162f00b001edbbeff7b9mr15608187wrb.379.1646042064370; 
 Mon, 28 Feb 2022 01:54:24 -0800 (PST)
Received: from [192.168.0.133] (xdsl-188-155-181-108.adslplus.ch.
 [188.155.181.108]) by smtp.gmail.com with ESMTPSA id
 n10-20020a5d598a000000b001efab095615sm4434539wri.29.2022.02.28.01.54.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Feb 2022 01:54:23 -0800 (PST)
Message-ID: <fc3186ce-f731-a7c1-e958-b0071125b32c@canonical.com>
Date: Mon, 28 Feb 2022 10:54:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: Add sata nodes to rk356x
Content-Language: en-US
To: Frank Wunderlich <linux@fw-web.de>,
 "devicetree @ vger . kernel . org Damien Le Moal"
 <damien.lemoal@opensource.wdc.com>, Rob Herring <robh+dt@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>
References: <20220227182800.275572-1-linux@fw-web.de>
 <20220227182800.275572-4-linux@fw-web.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220227182800.275572-4-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_015428_738921_A6B4C4FB 
X-CRM114-Status: GOOD (  18.25  )
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

On 27/02/2022 19:28, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> RK356x supports up to 3 sata controllers which were compatible with the
> existing snps,dwc-ahci binding.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> changes in v3:
>   - fix combphy error by moving sata0 to rk3568.dtsi
>   - remove clock-names and interrupt-names
> changes in v2:
>   - added sata0 + 1, but have only tested sata2
> ---
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 14 +++++++++++++
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 26 ++++++++++++++++++++++++
>  2 files changed, 40 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index 5b0f528d6818..2a2f65899d47 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -8,6 +8,19 @@
>  / {
>  	compatible = "rockchip,rk3568";
>  
> +	sata0: sata@fc000000 {
> +		compatible = "snps,dwc-ahci";
> +		reg = <0 0xfc000000 0 0x1000>;
> +		clocks = <&cru ACLK_SATA0>, <&cru CLK_SATA0_PMALIVE>,
> +			 <&cru CLK_SATA0_RXOOB>;
> +		interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
> +		phys = <&combphy0 PHY_TYPE_SATA>;
> +		phy-names = "sata-phy";
> +		ports-implemented = <0x1>;
> +		power-domains = <&power RK3568_PD_PIPE>;
> +		status = "disabled";
> +	};
> +
>  	pipe_phy_grf0: syscon@fdc70000 {
>  		compatible = "rockchip,rk3568-pipe-phy-grf", "syscon";
>  		reg = <0x0 0xfdc70000 0x0 0x1000>;
> @@ -114,3 +127,4 @@ power-domain@RK3568_PD_PIPE {
>  		#power-domain-cells = <0>;
>  	};
>  };
> +

No need for new line here,

> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 7cdef800cb3c..484c5ace718a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -230,6 +230,32 @@ scmi_shmem: sram@0 {
>  		};
>  	};
>  
> +	sata1: sata@fc400000 {
> +		compatible = "snps,dwc-ahci";
> +		reg = <0 0xfc400000 0 0x1000>;
> +		clocks = <&cru ACLK_SATA1>, <&cru CLK_SATA1_PMALIVE>,
> +			 <&cru CLK_SATA1_RXOOB>;

clock-names should be added. Also to bindings.


Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
