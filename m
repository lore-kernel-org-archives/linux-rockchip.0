Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60825C7618A
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Mar 2023 19:36:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EvkFX97ejTER9RCmL0IV41AqfTo0myexDd8njKifeqg=; b=MVQogwTpiUiqTA
	2iKMvc7uxPJUSkAcNBlw+JoBSqGuRZtRJPkTlB8oi59fLDj1Ni6G9r++gTj/zy1tDap3ekHzJJ75x
	LsRlOpzQsLj3LNHZo7LtKTXaxIbPjFNq5i7B7joPq2K/3lJ2JKTWdqr6omVnFkbeIfv3IgXdi4y7i
	wADE0eXQV12PC9zfennMdcD5uLT6n2iWSb+POZyfNA6BD9Mgqg5i4YTJdnibFNsGFchd8lIo4uKn3
	jG5LNz9b6vUS9/sQ47JUWeqKoOCrxXDgqsTsNjJhE2hqw3HdCqOHbGIuKQZ1d46yrOX1uw1iwD7Dm
	cj6cH3kOgyPqYHIBuaZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdypS-007Iiq-2b;
	Sun, 19 Mar 2023 19:36:30 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdypO-007IhB-0H;
	Sun, 19 Mar 2023 19:36:27 +0000
Received: by mail-ed1-x532.google.com with SMTP id z21so39181023edb.4;
        Sun, 19 Mar 2023 12:36:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679254582;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V7L1LqFV6h0eVxcrS19DAAOXoiewf/UfXtUU8YR+EZ8=;
        b=VXK8qKk8Qgt8PyfEPszQSWYU35fN9eomwlpIhaShMc1cvh/KyLq9zLQ3trY9ePHsyN
         zJfErAwUceFATZ/j4aquZTRnWXhOhtR0RaNUxKm8VbuJMzp68eqiINuDVZf76uSzY8n7
         0hkbxIqxt+Z2Ss8+L7/KaaXXZbT0uhX3h31MFu6/0x+NkvGpoKH/RZTtckBhAeMK3sxs
         GE73JIP+uo0HcczFU+Y8pWqs2K+8sOqQRZUBnWXS9VQztT5XfqVcA6wyUF2FgAsZ7L7S
         BO8AL9lkqzYJ9J5AdD8brCwPa7QxkvjSWsAhBGt9pcr7qEhQT45Bq2NQsqhH2HCH+oc9
         +pVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679254582;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V7L1LqFV6h0eVxcrS19DAAOXoiewf/UfXtUU8YR+EZ8=;
        b=jpsfHt/apSmPhJEpRFNrly7/NSJwcmsriTgtscliirGv38SpmhTMOU97dN41K3SpW/
         X7s4G/JaobXNrVkOY8iN7KkVLUm5PMboKa81Tu2ngH4taPZMt749dp2JoL605QUwfW37
         EQ3awXpBH4BpQbUBgrw6Mcq7WOXgHFbs56RHCzOJY6SCN8KcK9eIcxhAd6CNIybEN/hN
         adrjkCRvT0jfQY/Um4qqvQM0fQY9EFswXr7qqFKdFcuYapANQ8zj+RAZ3KWWBxf+t7kE
         5sHBQVT7QEdbGLvHqtGKu/z/LeCDvgi97VxpPXchIYgQnKyrzRd2BwYGdCCecXfeffl2
         5EqQ==
X-Gm-Message-State: AO0yUKVwu5xG2fi2HKxgfsQMGlMp/GLsLEd4kNmd4nBrg30FO1bIncOV
	GnqKGyQ/vm4gnch+ll7A/Hg=
X-Google-Smtp-Source: AK7set+K/7xKEFbJZW+IljzIrB1qb3ySKS9W32jzKyfVll8cr0qtIl0DsdZbSYQLF2fM7ect5yrT2w==
X-Received: by 2002:aa7:c948:0:b0:4bf:5981:e59f with SMTP id h8-20020aa7c948000000b004bf5981e59fmr8940849edt.6.1679254581675;
        Sun, 19 Mar 2023 12:36:21 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id u3-20020a50d503000000b004fcd78d1215sm3916868edi.36.2023.03.19.12.36.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 12:36:21 -0700 (PDT)
Message-ID: <591bf126-1ab7-8a5d-0d3a-1cac4cd9b112@gmail.com>
Date: Sun, 19 Mar 2023 20:36:20 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] arm64/arm: dts: rockchip: Fix DSI node names
To: Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230319174105.43978-1-robh@kernel.org>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20230319174105.43978-1-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_123626_170306_6DD0D39C 
X-CRM114-Status: GOOD (  14.61  )
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



On 3/19/23 18:41, Rob Herring wrote:
> DSI bus/controller nodes should be named 'dsi' rather than 'mipi'.

There's already a serie that does that.
Lack of communication becomes common. 
More thing must be fixed to comply then this patch alone.

[PATCH v6 09/17] ARM: dts: rockchip: rk3288: fix dsi node
https://lore.kernel.org/linux-rockchip/f3edcbff-4aef-1d24-8d65-e519c9451cda@gmail.com/

[PATCH v6 15/17] arm64: dts: rockchip: rk3399: fix dp node
https://lore.kernel.org/linux-rockchip/f6008819-db9b-0944-3f5b-5522b7cd8a8d@gmail.com/

> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  arch/arm/boot/dts/rk3288.dtsi            | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index 2ca76b69add7..d401b850583c 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -1114,7 +1114,7 @@ vopl_mmu: iommu@ff940300 {
>  		status = "disabled";
>  	};
>  
> -	mipi_dsi: mipi@ff960000 {
> +	mipi_dsi: dsi@ff960000 {
>  		compatible = "rockchip,rk3288-mipi-dsi", "snps,dw-mipi-dsi";
>  		reg = <0x0 0xff960000 0x0 0x4000>;
>  		interrupts = <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 1881b4b71f91..e44e1c40c0ba 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1954,7 +1954,7 @@ hdmi_in_vopl: endpoint@1 {
>  		};
>  	};
>  
> -	mipi_dsi: mipi@ff960000 {
> +	mipi_dsi: dsi@ff960000 {
>  		compatible = "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi";
>  		reg = <0x0 0xff960000 0x0 0x8000>;
>  		interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH 0>;
> @@ -1990,7 +1990,7 @@ mipi_in_vopl: endpoint@1 {
>  		};
>  	};
>  
> -	mipi_dsi1: mipi@ff968000 {
> +	mipi_dsi1: dsi@ff968000 {
>  		compatible = "rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi";
>  		reg = <0x0 0xff968000 0x0 0x8000>;
>  		interrupts = <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH 0>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
