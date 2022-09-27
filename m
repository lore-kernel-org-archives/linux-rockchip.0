Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EC3DC54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 21:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wO8XYDUlXVh/4vazjQQgIO0bW0wI3z4DZEvlvexgbs=; b=qrQ5407lhUtId6
	w/1VMK6vXBxGdEazb4vwJiHKucAxIwp7NrObkiN6yPMkntY8VJF+vnakqAcK5KcVpB/345O5hl7iu
	oXyNjxOMVcKD8bqBIIVqf2ILvCwY4fKc3ircfMmAgM9kmUgRb+Hop9R9+URpHaj6AQQyl/6QYJ8nU
	9hi3GEwRbNGYt7IXQCxcAOtWAX5NEvlpAbPP7h2VhzFtukSHgGniNnU4R3hKX3ZStu1jgxDyHX0ZK
	qUHLlgR6xC/lITvyiuLqG1ivgAbfpQn7j0O7nBBTdUCqKTSNo9qkfRSChzmGNnL/3RgCU2mM6I4mD
	xC4RJjz/iCBknBBH8uMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odIIz-00ClPx-P4; Tue, 27 Sep 2022 21:39:53 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odIIl-00ClAJ-30; Tue, 27 Sep 2022 21:39:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=2JMLfcmZeS6Sxey/juZszgrKjCQGK3qAWvZUg82Nalo=; b=DE817yt/jIg3i8+SdpFozjOoLX
	O9WbPIlD+89sho1SMwwgLDKgMTxPJwFlwnO2Yido0b1bzVUUsqddDjM7x7NK2I/ulnI9GjVPKYrjs
	DUlaIwgsY8rTKxQbPKyjuBWOyZw6RYW1pdR1WtXme2ayi1MXPD1OPnUbUxA2LYt1lQgiEPl4LSO5N
	VUsD4IvPYZydEbA/mjKYd1Mn+iSOKXjYct3TGTJwRQnEDuvlMWOJwsed/5pMkpdUze9Gjzs6GTanC
	uH01DAX1kp89bLWi23bY4hX07VpgzFxj4Cfm8J+LX+nrnY7sTliWjTpXAtvVk/mToI1ukf/w7uJzY
	8frYoYTw==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1odIId-00C1hi-Hs; Tue, 27 Sep 2022 23:39:31 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1odIIc-000VSP-3D;
	Tue, 27 Sep 2022 23:39:31 +0200
Date: Tue, 27 Sep 2022 23:39:30 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: heiko@sntech.de, davem@davemloft.net, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH RFT 4/5] crypto: rockchip: support the new crypto IP for
 rk3568/rk3588
Message-ID: <YzNtkiR/dD0aEZrv@aurel32.net>
Mail-Followup-To: Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
	davem@davemloft.net, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
References: <20220927080048.3151911-1-clabbe@baylibre.com>
 <20220927080048.3151911-5-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220927080048.3151911-5-clabbe@baylibre.com>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_143939_150248_C42753B2 
X-CRM114-Status: GOOD (  14.73  )
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

On 2022-09-27 08:00, Corentin Labbe wrote:
> Rockchip rk3568 and rk3588 have a common crypto offloader IP.
> This driver adds support for it.
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  drivers/crypto/rockchip/Kconfig               |  28 +
>  drivers/crypto/rockchip/Makefile              |   5 +
>  drivers/crypto/rockchip/rk3588_crypto.c       | 646 ++++++++++++++++++
>  drivers/crypto/rockchip/rk3588_crypto.h       | 221 ++++++
>  drivers/crypto/rockchip/rk3588_crypto_ahash.c | 346 ++++++++++
>  .../crypto/rockchip/rk3588_crypto_skcipher.c  | 340 +++++++++
>  6 files changed, 1586 insertions(+)
>  create mode 100644 drivers/crypto/rockchip/rk3588_crypto.c
>  create mode 100644 drivers/crypto/rockchip/rk3588_crypto.h
>  create mode 100644 drivers/crypto/rockchip/rk3588_crypto_ahash.c
>  create mode 100644 drivers/crypto/rockchip/rk3588_crypto_skcipher.c
> 
> diff --git a/drivers/crypto/rockchip/Kconfig b/drivers/crypto/rockchip/Kconfig
> index 1010d897d9ef..84ca1081fd0c 100644
> --- a/drivers/crypto/rockchip/Kconfig
> +++ b/drivers/crypto/rockchip/Kconfig
> @@ -26,3 +26,31 @@ config CRYPTO_DEV_ROCKCHIP_DEBUG
>  	  Say y to enable Rockchip crypto debug stats.
>  	  This will create /sys/kernel/debug/rk3288_crypto/stats for displaying
>  	  the number of requests per algorithm and other internal stats.
> +
> +config CRYPTO_DEV_ROCKCHIP2
> +	tristate "Rockchip's cryptographic offloader V2"
> +	depends on OF && ARCH_ROCKCHIP
> +	depends on PM
> +	select CRYPTO_ECB
> +	select CRYPTO_CBC
> +	select CRYPTO_AES
> +	select CRYPTO_MD5
> +	select CRYPTO_SHA1
> +	select CRYPTO_SHA256
> +	select CRYPTO_SM3

That should be CRYPTO_SM3_GENERIC

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
