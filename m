Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABC1EC3DA45
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jul 2024 13:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XamD3y8Ft0rYvQzBqSrb2tk3IiReltuf7P0nqB245QM=; b=ni4GOQSgQCoc9cU6P1re5vYdF3
	xYjalIgdqZhPIEPyWsqbz7QhbtOcePsj5L18nA42xkGGEYGq7GFpAbIqGliCvG0/wmlYsT9s0A8qO
	0YqrF3s6UB91rD8TCs/HeXS/CWa7zZEot9oIKM3VmUaGxUdR4GZ0XCo9jM8QqEOxq+dfHS9nt91Ip
	WP7LhaCSTnP7/4ZUqeKQAiP5r7w7giKzCqXWcYNBq+bKGqM0zeKzUHjjyP4kt3ftD5i6m9jFknWjt
	AwROmpdWO7gJWgusx3yxL489YwmQL/df5rPhGgcNmxzqfEAprkiWxRUzjVA712rY0w1QNe3ShIl9d
	DORJpYqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sScra-00000002byT-1Gse;
	Sat, 13 Jul 2024 13:32:34 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sScrF-00000002buh-37zz;
	Sat, 13 Jul 2024 13:32:15 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1720877530;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=gdsA/FWKhdawJ5GjAEMw4Scb4231JfvIGWeKzVvBLl0=;
	b=nPeMeDIAUE6dGEBgaCGnsMJooRVdoxUOL/1VdWuEZbO9L2D/GfinCwRWviD1f0wvImQ7JS
	HbPMVY1OXjAc6fImCZtxrGuFAzRj50Y2ywAGI8ZOYEJychIpRe5vW3P2zO9t59i0dNsxmH
	XZ978LBYKIHBQ9nWpE+R9DZHv4zPcjtHqD/OkMcGYTRw6Y+NucbB25PXFyXF4YdRtIE4au
	IWDASFLoBtBluKis5+Bt8N7ph0mytNMWD5iClw7hferXXA3p1Biwvw8ZfZVGptT/KlNjJK
	OYMGlUCP87MSnfT4x7JpTkzoU0wlcDxaXlnxuch/DuGDGVMHnYE/us0TdUVQQg==
Date: Sat, 13 Jul 2024 15:32:09 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Alex Bee <knaerzche@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Johan
 Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add sdmmc/sdio/emmc reset
 controls for RK3328
In-Reply-To: <20240710132830.14710-4-didi.debian@cknow.org>
References: <20240710132830.14710-1-didi.debian@cknow.org>
 <20240710132830.14710-4-didi.debian@cknow.org>
Message-ID: <2b8fc2a116900bae9b30fa3225235b3c@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240713_063214_285117_E5754424 
X-CRM114-Status: GOOD (  12.16  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Diederik,

On 2024-07-10 15:28, Diederik de Haas wrote:
> From: Alex Bee <knaerzche@gmail.com>
> 
> The DW MCI controller driver will use them to reset the IP block before
> initialisation.
> 
> Fixes: d717f7352ec6 ("arm64: dts: rockchip: add sdmmc/sdio/emmc nodes
> for RK3328 SoCs")
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>

Looking good to me, cross-referencing the RK3328 TRM checks out.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index 95c3f1303544..16b4faa22e4f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -910,6 +910,8 @@ sdmmc: mmc@ff500000 {
>  		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
>  		fifo-depth = <0x100>;
>  		max-frequency = <150000000>;
> +		resets = <&cru SRST_MMC0>;
> +		reset-names = "reset";
>  		status = "disabled";
>  	};
> 
> @@ -922,6 +924,8 @@ sdio: mmc@ff510000 {
>  		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
>  		fifo-depth = <0x100>;
>  		max-frequency = <150000000>;
> +		resets = <&cru SRST_SDIO>;
> +		reset-names = "reset";
>  		status = "disabled";
>  	};
> 
> @@ -934,6 +938,8 @@ emmc: mmc@ff520000 {
>  		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
>  		fifo-depth = <0x100>;
>  		max-frequency = <150000000>;
> +		resets = <&cru SRST_EMMC>;
> +		reset-names = "reset";
>  		status = "disabled";
>  	};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
