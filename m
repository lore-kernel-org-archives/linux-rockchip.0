Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 264EDC5320E
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 20:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mJ2wZgBXd/PkAbGBow4w9NgjL52lEClELDXNo3yOCMg=; b=idWZRmtdqzjv50
	Q6JHUcnhhCkwbk73UzHxVvrfdN3IUi8ykKquPar0PVIQ8W0bRjBhEVITkqDnpVIJKnb8bAVAGFNp1
	BKqjNI/38XzxkvXssNi+8/ibyI4lVUl9QMGxpaaC+QVby6bxL6zMZK9a6wwsY/Mb4vIjTPZB8UTmZ
	4PSAeiyspSMBqgxGA5+JVoXe77WYPx9BFc5sp2ENXM6PUe18mYILyRQpCxNvMIWN4WxZ2eU+CVjoP
	wAz0iAaGJ1DiSCcc6nVD3ZBBk33/yj+drK+7GBmzfRRE0YrDMxRHUNsfSCVkayMh5X+zpvdnFFBLZ
	QB2B5MosKt8PuDVFEP9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shEk3-0000000EHhP-2m3r;
	Thu, 22 Aug 2024 20:49:11 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shEk0-0000000EHgj-1Mum
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Aug 2024 20:49:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1724359743;
 bh=z1dt8PEPmuFNeq5YWFTeFq9Klfxz/2jDSwHmaQYIDF4=;
 b=sQvXq2Rj0rRMGYofUt/nqUs1A7K2zUuB3i6sLEg7PQBFyIYpkQPKigZ867jh91w47AX/CHOS4
 wHsD5x1yUCB1pAwbAUYn3elqEJ8teXD6kPaVxFo1EPNfLAS/4zNyB2GIoG9IBbkTBdlR5qACjK/
 udmaGxDot6dJtbiy+cT75jUu+Gm5+cGRHOlUMhFdb6o2gqP9eT9hr0us9jRXWLTzadOksRupZDo
 1nQ311XnEEOS+aNnshLGJ6+8HxsZvFy20AbSQJWwmsproc36lztrtwDZkKcbbPXSrGTqnoNYK6p
 53KRslhuj97Ti0eIpI80k9DhnJiub40KZWGutukG622w==
Message-ID: <c48e7d26-0496-4377-8be0-5b76f1f8704b@kwiboo.se>
Date: Thu, 22 Aug 2024 22:48:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/8] arm64: dts: rockchip: add SPI flash on NanoPC-T6
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org>
 <20240822-friendlyelec-nanopc-t6-lts-v4-4-892aebcec0c6@linaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240822-friendlyelec-nanopc-t6-lts-v4-4-892aebcec0c6@linaro.org>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66c7a43b9c6972850a4e96bd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_134908_439691_393226FF 
X-CRM114-Status: GOOD (  11.89  )
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

Hi Marcin,

On 2024-08-22 15:32, Marcin Juszkiewicz wrote:
> FriendlyELEC NanoPC-T6 has optional SPI flash chip on-board.
> It is populated with 32MB one on LTS version.
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> index ce0db9b8b126..292022a56332 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> @@ -560,6 +560,21 @@ &sdmmc {
>  	status = "okay";
>  };
>  
> +/* optional on non-LTS, populated on LTS version */
> +&sfc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&fspim1_pins>;
> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <104000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <1>;
> +	};
> +};

This matches what we have and works in U-Boot for non-LTS version, so

Reviewed-by: Jonas Karlman <jonas@kwiboo.se>

Regards,
Jonas

> +
>  &spi2 {
>  	status = "okay";
>  	assigned-clocks = <&cru CLK_SPI2>;
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
