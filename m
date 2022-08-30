Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E710ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 12:46:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o4WeFwgfQarpeED56cUkDlgWNzxW+0PcQa3z6gCtDJk=; b=4c+npJSCJqlVYn
	mLJQ209LbmE69u5c7bXIH75nCDCRTkJtcgnxE0HXnKn1spjZ9wZAHk3g9X0tcQ4mmJQGwwpI7H0Mz
	WYf4cIuSD519Mqv9LBoQL0KJ54W/z6/LrHvHEusop0UEzF+ebzBICKCf09U/TVKDiATpNIG1F8fuR
	wEeIt7ny7AQC0RSowSHwKYFQmXu6GD+VyKTxay/ANDtJ/kngBRbM64jplMoz1JG1u33URL60arLKn
	wIr2f0KzhA5ox3pTch2q2evESxLjOc5ybEHA8mB+4U9nbqFNsLzJ95ooPyADlfeT9fVUFg3t0nGHx
	8gL2beMpJr4JsBLX6lNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT0cu-00Gubt-B3; Tue, 30 Aug 2022 12:45:56 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT0cq-00GuVk-87
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 12:45:53 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oT0cn-0006qD-M3; Tue, 30 Aug 2022 14:45:49 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, kernel@collabora.com
Subject: Re: [PATCH 1/1] spi: spi-rockchip: Add rk3588-spi compatible
Date: Tue, 30 Aug 2022 14:45:48 +0200
Message-ID: <4393023.RUnXabflUD@diego>
In-Reply-To: <20220830124452.33561-1-sebastian.reichel@collabora.com>
References: <20220830124452.33561-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_054552_318392_87944CB1 
X-CRM114-Status: GOOD (  14.29  )
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

Am Dienstag, 30. August 2022, 14:44:52 CEST schrieb Sebastian Reichel:
> This adds a compatible string for the SPI controller found in
> the RK3588 and RK3588s SoCs.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
> No driver changes are required for rk3588 SPI support.
> ---
>  Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> index 52a78a2e362e..21f2de785102 100644
> --- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> +++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
> @@ -34,6 +34,7 @@ properties:
>                - rockchip,rk3368-spi
>                - rockchip,rk3399-spi
>                - rockchip,rk3568-spi
> +              - rockchip,rk3588-spi
>                - rockchip,rv1126-spi
>            - const: rockchip,rk3066-spi
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
