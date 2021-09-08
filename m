Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC6FEC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 02:09:48 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8D13B61157
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 02:09:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8D13B61157
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hMi0NzE+yKC+xeDvoKS1Q1/LX9PS3t81GADYuzoUWA=; b=3vna/l1fN+SbJJ
	K8wHAu9vP/XI+njiB+I6oDRkFm1LuQTkQl3I04MnOe/Pa4kHphT1OZmsihDl92B/poRpOi28Idq4d
	06+d0PRXW0u+AGitov0s6rRmH7RFhzsQwNorYB2KyCYJC+uF4HYYdhimmkBwMLJLkaNVi6FFXeVH9
	DCIyh8XsxWLdW5+UypEK0OoKt8KsMbguA1tr31utnQ4V9t+tyRH5koEuHDuDEGlUroVdMfS1pZUqU
	/hJBIk8UBGKXxMQcaSB6GRF4wBEx7yOKaXgF+uUm1aT4h7L59M4LuUdCibrRZgEsmwvfaVOXJ88TR
	UQJASwY/SRVSml10wrWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNn1x-005BoB-IN; Wed, 08 Sep 2021 02:09:41 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNn1u-005Bn0-Nl
 for linux-rockchip@lists.infradead.org; Wed, 08 Sep 2021 02:09:40 +0000
Received: by mail-pj1-x102d.google.com with SMTP id c6so605279pjv.1
 for <linux-rockchip@lists.infradead.org>; Tue, 07 Sep 2021 19:09:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=7NYzM/JHWz+Fchf07XDZ5B5EQZtrwYGf0aZaNqlzyHc=;
 b=nBbT/qUKGrTbqMibm0K8J4JkgO3JQakv4S3JxJCGj1nqvnkGXh60acFH6QHdOdOwFq
 tl2JgUe/6Y+vT0gVbgAPKikswJIfV1buTiAh9B71JzG71J2uzX9Fw0nEgTWg8UVoIG45
 yhBSM1GVQOrT1pzXmxmHoQoIOO4VjQHBMyjpIR022OjCNlKae5xRXVoYjr2E30tDhemA
 updhzfS6gsPwWpWNjd0U8o7/bwuajJ99c2EVsY8tB7/yIUqM9K8gg0B/Zcnwkmj+s+KZ
 ZJ375lKTAZRRNglanTHHEzVJ01JqWvMaOIEIulafVBU7vM11Fy7fwImFdym4PsIJ+2Wz
 C5ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7NYzM/JHWz+Fchf07XDZ5B5EQZtrwYGf0aZaNqlzyHc=;
 b=UMOi0HClhG4FiCmIkzdvzhUNB4kdhtUDvM9VbzvZ6zk4gzCh8NbLsN12SpmxPpOyMs
 2bxkCAbZms3Tsa5abrK18Z/ipdDZ5KBsBoZN423lEAHwbwwbfW/d2zbnfkdt/UR3dMnp
 yMCK33N6ouRGpmP4vZl6Kwbg+7czGUnZGcTZM4RVLINPNdaDco0nJtWUg6xPCQ4F4Zk7
 AeMZS6soi6O28gc3pPqG0Ysjz781GedQT/KKw2PrnmIOZcRaimOsO/ArW90UYCom8Y1B
 KjZwXyfB8XmqiesRWgzbDJfAAF6XzjY1nKWb+sjQQrNQwuRaUSN90NTdLMDjJ5REkw6l
 LT3g==
X-Gm-Message-State: AOAM530CHjxJqA9IU7Uq3UhvA22nP54kSf2JV0EczGOG8BbK0v2DuMFm
 UiNh6LbFGeo4tHsAXuL/KdspjA==
X-Google-Smtp-Source: ABdhPJxdP4gTchzCo+ZAT1VvYKwNscoCzoB5wdo4DUOGVEojV9N2Jj5yp24CISY6jJFA1h2GQcsMKw==
X-Received: by 2002:a17:902:c205:b0:138:c28f:a774 with SMTP id
 5-20020a170902c20500b00138c28fa774mr939495pll.59.1631066976966; 
 Tue, 07 Sep 2021 19:09:36 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([202.155.204.36])
 by smtp.gmail.com with ESMTPSA id d5sm331607pfd.142.2021.09.07.19.09.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Sep 2021 19:09:36 -0700 (PDT)
Date: Wed, 8 Sep 2021 10:09:31 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 Chen-Yu Tsai <wenst@chromium.org>,
 Douglas Anderson <dianders@chromium.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [RESEND PATCH 2/2] arm64: dts: rockchip: add Coresight debug
 range for RK3399
Message-ID: <20210908020931.GB1538480@leoy-ThinkPad-X240s>
References: <20210907094628.RESEND.1.If29cd838efbcee4450a62b8d84a99b23c86e0a3f@changeid>
 <20210907094628.RESEND.2.Ibc87b4785709543c998cc852c1edaeb7a08edf5c@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210907094628.RESEND.2.Ibc87b4785709543c998cc852c1edaeb7a08edf5c@changeid>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_190938_885245_3ABD60FD 
X-CRM114-Status: GOOD (  16.29  )
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

On Tue, Sep 07, 2021 at 09:46:37AM -0700, Brian Norris wrote:
> Per Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt.
> 
> This IP block can be used for sampling the PC of any given CPU, which is
> useful in certain panic scenarios where you can't get the CPU to stop
> cleanly (e.g., hard lockup).
> 
> Signed-off-by: Brian Norris <briannorris@chromium.org>

Looks good to me, FWIW:

Reviewed-by: Leo Yan <leo.yan@linaro.org>

> ---
> 
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 48 ++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 3871c7fd83b0..c8c62637b600 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -433,6 +433,54 @@ usbdrd_dwc3_1: usb@fe900000 {
>  		};
>  	};
>  
> +	debug@fe430000 {
> +		compatible = "arm,coresight-cpu-debug", "arm,primecell";
> +		reg = <0 0xfe430000 0 0x1000>;
> +		clocks = <&cru PCLK_COREDBG_L>;
> +		clock-names = "apb_pclk";
> +		cpu = <&cpu_l0>;
> +	};
> +
> +	debug@fe432000 {
> +		compatible = "arm,coresight-cpu-debug", "arm,primecell";
> +		reg = <0 0xfe432000 0 0x1000>;
> +		clocks = <&cru PCLK_COREDBG_L>;
> +		clock-names = "apb_pclk";
> +		cpu = <&cpu_l1>;
> +	};
> +
> +	debug@fe434000 {
> +		compatible = "arm,coresight-cpu-debug", "arm,primecell";
> +		reg = <0 0xfe434000 0 0x1000>;
> +		clocks = <&cru PCLK_COREDBG_L>;
> +		clock-names = "apb_pclk";
> +		cpu = <&cpu_l2>;
> +	};
> +
> +	debug@fe436000 {
> +		compatible = "arm,coresight-cpu-debug", "arm,primecell";
> +		reg = <0 0xfe436000 0 0x1000>;
> +		clocks = <&cru PCLK_COREDBG_L>;
> +		clock-names = "apb_pclk";
> +		cpu = <&cpu_l3>;
> +	};
> +
> +	debug@fe610000 {
> +		compatible = "arm,coresight-cpu-debug", "arm,primecell";
> +		reg = <0 0xfe610000 0 0x1000>;
> +		clocks = <&cru PCLK_COREDBG_B>;
> +		clock-names = "apb_pclk";
> +		cpu = <&cpu_b0>;
> +	};
> +
> +	debug@fe710000 {
> +		compatible = "arm,coresight-cpu-debug", "arm,primecell";
> +		reg = <0 0xfe710000 0 0x1000>;
> +		clocks = <&cru PCLK_COREDBG_B>;
> +		clock-names = "apb_pclk";
> +		cpu = <&cpu_b1>;
> +	};
> +
>  	cdn_dp: dp@fec00000 {
>  		compatible = "rockchip,rk3399-cdn-dp";
>  		reg = <0x0 0xfec00000 0x0 0x100000>;
> -- 
> 2.33.0.153.gba50c8fa24-goog
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
