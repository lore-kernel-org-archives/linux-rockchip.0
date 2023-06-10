Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2F1BC77B7A
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jun 2023 12:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fYxwHkO5xV8etry0DIWkRhT8EXW0ZIfzWqNiJQWDOUM=; b=hPeb7tTkTu+vpm
	lHGST3tNQKSGxhq9smqGokhz7goDOGOxlmve9U6tClsAJPIKlMW9O3kqMWck6a6jskonQ1dilv4x+
	d9BKaDCTmnfRJ9SAkXVvIl1oylazM35vrFqksvnIznx9x451uKn299EfTyF4XhC8IwMpxwqpexXjM
	qepMn26jdEdQBiCQv56kO4+DAC3cZyTiBDkXgB842GG1Yc/3+jLSyShJz40MFz2b542UnPER6QPCe
	4YwcBjO/7DhH/dsaGbBuaMEKe7rfpkxvWmdq6dAbBqZxzBDsviman4OfSO1j3nxyg2T6PMBit8raH
	sZisSsFwtTNjEXOKrKjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7y9Z-00GAUD-1y;
	Sat, 10 Jun 2023 12:57:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7y9W-00GASL-1D;
	Sat, 10 Jun 2023 12:57:11 +0000
Received: from i53875b22.versanet.de ([83.135.91.34] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q7y9L-0005N2-CT; Sat, 10 Jun 2023 14:56:59 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: jic23@kernel.org, lars@metafoo.de, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 sebastian.reichel@collabora.com, Shreeya Patel <shreeya.patel@collabora.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 gustavo.padovan@collabora.com, serge.broslavsky@collabora.com,
 Shreeya Patel <shreeya.patel@collabora.com>
Subject: Re: [PATCH] dt-bindings: iio: rockchip: Fix 'oneOf' condition failed warning
Date: Sat, 10 Jun 2023 14:56:58 +0200
Message-ID: <2621715.Lt9SDvczpP@diego>
In-Reply-To: <20230610122200.161741-1-shreeya.patel@collabora.com>
References: <20230610122200.161741-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_055710_432124_A0D2C07D 
X-CRM114-Status: GOOD (  16.61  )
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

Am Samstag, 10. Juni 2023, 14:22:00 CEST schrieb Shreeya Patel:
> Fix the dtbs_check warning for 'oneOf' condition failure.
> 
> DTC_CHK arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb
> /home/shreeya/linux/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb:
> 	saradc@fec10000: compatible: 'oneOf' conditional failed,
> 	one must be fixed:
> 	['rockchip,rk3588-saradc'] is too short
> 	'rockchip,saradc' was expected
> 	'rockchip,rk3066-tsadc' was expected
> 	'rockchip,rk3399-saradc' was expected
> 

Nit: the commit message could explain that the rk3588 in fact isn't
compatible with the rk3399-saradc variant.

Otherwise I checked the implementation, so
Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> Fixes: 2daf2ae9793d ("dt-bindings: iio: adc: Add rockchip,rk3588-saradc string")
> Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> index 11c27ea451c8..aa24b841393c 100644
> --- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> @@ -15,13 +15,13 @@ properties:
>        - const: rockchip,saradc
>        - const: rockchip,rk3066-tsadc
>        - const: rockchip,rk3399-saradc
> +      - const: rockchip,rk3588-saradc
>        - items:
>            - enum:
>                - rockchip,px30-saradc
>                - rockchip,rk3308-saradc
>                - rockchip,rk3328-saradc
>                - rockchip,rk3568-saradc
> -              - rockchip,rk3588-saradc
>                - rockchip,rv1108-saradc
>                - rockchip,rv1126-saradc
>            - const: rockchip,rk3399-saradc
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
