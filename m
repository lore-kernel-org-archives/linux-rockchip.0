Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F059C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Dec 2023 15:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nPEMsk5uzwJb8IWyKd15ypwsqrZgMZLelURqvUkFhfo=; b=Ngk/hngJKbTpktBfuJd2z7B3+W
	FLFjj7xo8xm3CXYcDOMpzVE+HfyyJfXhBP/m3ixg9r6BPim5FK3nqqLBuHFYvk2KYaG12ILxre+XD
	1sCmwk1uiisTVW6W87JQiMZTQ75PwxN+gy7grmfR2ruXne89aA849+ktsS4W+b4OH4Fh2w5v6+JT8
	8kGwMdFmYo256S1Hwl/tGI3b32yOj6h0XbZxGDkIC68Duw1li9HfX4M6fJEN98KuBJx6SeBBQZeN7
	jJn5ByEwkcEd9A0eS1yxv/TpQfIl86uYzAXAXnsCOpEdT9sInIzCPoV92UFsDqz7dU6QmFBqPB+pd
	EeZLVpZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEsuV-0081LD-23;
	Sun, 17 Dec 2023 15:18:31 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEsuS-0081KS-0l;
	Sun, 17 Dec 2023 15:18:29 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702826302;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=YgdXduRKDjKkV05w+ashYe1V8iCTBHNOlwTcti7d7Bg=;
	b=YbpPTZaMhsYWWeel0FpSWWui3jWQCJDkCzwfrjdtdVcTx4QXzqWGYEigcgHzvtexY1gOMr
	hdyQAVCBWOGEuUcgc+e+So8VjVf5EXUezhH9cHLatf0z3ZLyAZYcsDj3MmEkDedK4GqmVK
	Oe/hZCNMcTLTFP1HSx1QgPYLm5lHS507rbHVQN1dUwwftIM74vDS/Cgklpqoxidor5qV7Z
	E6c3pscZ9brmaPVCcjNd9d3FlLdMnDPRqdUNvrWUDzBPQW6jqFbmsoB1PXBhPzHJAmpUvo
	d0dymju33bXOjBWSzTJVqZ3npBfIeoyQxNB+WjrubYZNFy341ROC7gB+wkobLA==
Date: Sun, 17 Dec 2023 16:18:22 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Stefan Nagy <stefan.nagy@ixypsilon.net>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Increase maximum frequency of
 SPI flash for ROCK Pi 4A/B/C
In-Reply-To: <20231217113208.64056-1-stefan.nagy@ixypsilon.net>
References: <20231217113208.64056-1-stefan.nagy@ixypsilon.net>
Message-ID: <edda17071180a91658ced910bdb54be7@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231217_071828_447430_4BA4A3A5 
X-CRM114-Status: GOOD (  16.05  )
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

On 2023-12-17 12:32, Stefan Nagy wrote:
> The ROCK Pi 4A/B/C boards come with a 32 Mbit SPI NOR flash chip (XTX
> Technology Limited XT25F32) with a maximum clock frequency of 108 MHz.
> Use this value for the device node's spi-max-frequency property.
> 
> This patch has been tested on ROCK Pi 4A.
> 
> Signed-off-by: Stefan Nagy <stefan.nagy@ixypsilon.net>

Looks good to me.  It would be nice, if you have time, to include some 
SPI benchmark results before and after the change in the commit message.

Otherwise,

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
> Changes from v1:
> - Use the maximum clock frequency the SPI chip actually supports
>   instead of the SPI clock frequency limit of 50 MHz set by the
>   Rockchip SPI driver.
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
> index d5df8939a..c68f45849 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
> @@ -19,6 +19,6 @@ &spi1 {
>  	flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
> -		spi-max-frequency = <10000000>;
> +		spi-max-frequency = <108000000>;
>  	};
>  };
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
> index bee6d7588..6ea3180e5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
> @@ -37,7 +37,7 @@ &spi1 {
>  	flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
> -		spi-max-frequency = <10000000>;
> +		spi-max-frequency = <108000000>;
>  	};
>  };
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
> index de2ebe4cb..5274938bf 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
> @@ -49,7 +49,7 @@ &spi1 {
>  	flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
> -		spi-max-frequency = <10000000>;
> +		spi-max-frequency = <108000000>;
>  	};
>  };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
