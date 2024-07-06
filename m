Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B805C3271E
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Jul 2024 00:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ue/v7CUEDZFxoeV7ErAuyNqVMmn1xwvgfo7pNdM5ens=; b=wsKJrSTrERKltI
	KGBtrU3uDTwi997CLBjxt9IE8rpmXazB/ePIRRKFIuUVVFUsoovDLKD5KMQWerjpYhWASAZ/MPso8
	Cmfi2CUxbXD0xGZEugqoU8LGHGAkR4g/0Q7hho7TB6Q0Rofkf9XES0yFTb+ASN/ncE4eZfJrhan8a
	X6UZpLKNoe/jp+13NGilWvxadu4p4ecIwMwTkxHZ/kIYJLw4k1fieOJ/zBF1R12Eib3VQZMmvIR8/
	9vJVLkHXFVQuqEto/yupV8iFGaIghWcFlc/Aoh9r4k2FXix0dntZS94Ilawp6s8e7RPUzGPVS6+rn
	pga3yLDkZHFYktNM5msQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPt9Q-0000000H2x4-1dZZ;
	Sat, 06 Jul 2024 00:19:40 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=norbury.hmeau.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPt9A-0000000H2ou-0d3f;
	Sat, 06 Jul 2024 00:19:26 +0000
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.103.7])
	by norbury.hmeau.com with smtp (Exim 4.96 #2 (Debian))
	id 1sPt5o-006giK-2U;
	Sat, 06 Jul 2024 10:16:11 +1000
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Sat, 06 Jul 2024 10:15:57 +1000
Date: Sat, 6 Jul 2024 10:15:57 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Daniel Golle <daniel@makrotopia.org>
Cc: Aurelien Jarno <aurelien@aurel32.net>,
	Olivia Mackall <olivia@selenic.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@debian.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Martin Kaiser <martin@kaiser.cx>, Tony Luck <tony.luck@intel.com>,
	Ard Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/3] hwrng: add hwrng driver for Rockchip RK3568 SoC
Message-ID: <ZoiMvTzXMFxkfcJF@gondor.apana.org.au>
References: <cover.1719365405.git.daniel@makrotopia.org>
 <15b001360cffc0832e7e2748ad900b1336e0fa32.1719365406.git.daniel@makrotopia.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <15b001360cffc0832e7e2748ad900b1336e0fa32.1719365406.git.daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240705_171924_210584_758C0BF7 
X-CRM114-Status: GOOD (  12.78  )
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

On Wed, Jun 26, 2024 at 02:37:10AM +0100, Daniel Golle wrote:
>
> +#ifndef CONFIG_PM
> +	rk_rng->rng.init = rk_rng_init;
> +	rk_rng->rng.cleanup = rk_rng_cleanup;
> +#endif

Please rewrite this as

	if (!IS_ENABLED(CONFIG_PM)) {
		...
	}

> +#ifdef CONFIG_PM
> +static int rk_rng_runtime_suspend(struct device *dev)
> +{
> +	struct rk_rng *rk_rng = dev_get_drvdata(dev);
> +
> +	rk_rng_cleanup(&rk_rng->rng);
> +
> +	return 0;
> +}
> +
> +static int rk_rng_runtime_resume(struct device *dev)
> +{
> +	struct rk_rng *rk_rng = dev_get_drvdata(dev);
> +
> +	return rk_rng_init(&rk_rng->rng);
> +}
> +#endif

These ifdefs should just disappear, with __maybe_unused added
instead.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
