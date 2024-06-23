Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 009A7C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 10:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sDkEnSk0+uo+i71VgaxAmXL+Z/M+AB5/IyDAj631gJU=; b=LE4/g916LYIgIJ
	2Wj6drHMSbw4BOnvdxQ2+Kci8/EVawNHO1senE1wYQQwDoRJGtrWyKaqKj8+RJuT3lv/JwUwVT2Af
	kPAfXYqfOFdw/R73lPTaIFf4DhIqOT5q8Fj1Os8EQ+Y3WbVEo/VvglErs9HhVbFxeyo99hskLMlAM
	oPg7Eo/8Y2zJxJhz1NYISNNQa8d03MlgNaj+ZGWMe2nZbBjvCPD+cCZyBMavwkYASvCUmK8MvDhOv
	GRhZScwU5kRGN6rsYwBM3iPZot01JFB2Oz5bJGg6l65W8YYGN+q6LsTSCnQkbGVvdecAgrenJaSjX
	RhNfMcPFXeAQnrLD+GTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLKh4-0000000DnTv-06I0;
	Sun, 23 Jun 2024 10:43:34 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLKgy-0000000DnRz-10V5;
	Sun, 23 Jun 2024 10:43:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=In-Reply-To:Content-Type:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=cOPGiZTRLTkSPLlPpnHXwm++QfEHnrjcKdztZiRkX3A=; b=tTGJofW/SnqoWjxA4acUKT5+gG
	Mr4PhiFFC6KqT7c3h2SomxcHqkUoUNzKL6Gsj9JEPfqjc/P3H5AJ6MS7c7HDl8TxeJq1cB0HR1xLL
	wVD2IK2vijGTCx26lZk/fWQan/cjSxrsFGFP8XZ7Hc1VWv8y8o++ro6tkJSdnJ+0gkXR4cukDpu3a
	IYnEvXxLTwZMCzMMjHNhDNv5WufbbugCEWok5HM+VhzXveTHo26izRbQyeY2AUqqEeGyMZqXHTopl
	OLM1pco+3K/9vsAX5rC3eSj8kLBWhC3V8DtmmcepeB4SD3RTgLw/JwmzaU9MhOT19P+9N1ZXvooG5
	Rv2hpWTw==;
Received: from ohm.aurel32.net ([2001:bc8:30d7:111::2] helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1sLKgI-0057EX-1S;
	Sun, 23 Jun 2024 12:42:46 +0200
Date: Sun, 23 Jun 2024 12:42:45 +0200
From: Aurelien Jarno <aurelien@aurel32.net>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Daniel Golle <daniel@makrotopia.org>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@debian.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Dragan Simic <dsimic@manjaro.org>, Martin Kaiser <martin@kaiser.cx>,
	Ard Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/3] hwrng: add Rockchip SoC hwrng driver
Message-ID: <Znf8JeBA4mzVa0V1@aurel32.net>
Mail-Followup-To: Krzysztof Kozlowski <krzk@kernel.org>,
	Daniel Golle <daniel@makrotopia.org>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@debian.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Dragan Simic <dsimic@manjaro.org>, Martin Kaiser <martin@kaiser.cx>,
	Ard Biesheuvel <ardb@kernel.org>, linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1719106472.git.daniel@makrotopia.org>
 <240db6e0ab07e8e2a86da99b0fc085eabaf9f0cc.1719106472.git.daniel@makrotopia.org>
 <612bd49c-c44a-41f2-89e9-c96e62e52a0a@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <612bd49c-c44a-41f2-89e9-c96e62e52a0a@kernel.org>
User-Agent: Mutt/2.2.12 (2023-09-09)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_034328_581273_C86C79DE 
X-CRM114-Status: GOOD (  15.55  )
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

Hi,

On 2024-06-23 09:00, Krzysztof Kozlowski wrote:
> On 23/06/2024 05:33, Daniel Golle wrote:
> > +
> > +	rk_rng->rng.name = dev_driver_string(dev);
> > +#ifndef CONFIG_PM
> > +	rk_rng->rng.init = rk_rng_init;
> > +	rk_rng->rng.cleanup = rk_rng_cleanup;
> > +#endif
> > +	rk_rng->rng.read = rk_rng_read;
> > +	rk_rng->rng.priv = (unsigned long) dev;
> > +	rk_rng->rng.quality = 900;
> 
> I doubt in this value. Usually SoC vendors do not provide datasheet with
> any reliable and verifiable (so one which could be proven by 3rd party)
> information. Can you provide a source? (and vendor downstream tree does
> not really count)

As the original author of the patch, I am the one who have chosen the
value. I did it as explained in the commit message:

| The TRNG device does not seem to have a signal conditionner and the FIPS
| 140-2 test returns a lot of failures. They can be reduced by increasing
| RK_RNG_SAMPLE_CNT, in a tradeoff between quality and speed. This value
| has been adjusted to get ~90% of successes and the quality value has
| been set accordingly.

It is also explained, admittedly more briefly, above the
RK_RNG_SAMPLE_CNT #define, as the commit messages are not really
relevant anymore once the patches are accepted:

| * TRNG collects osc ring output bit every RK_RNG_SAMPLE_CNT time. The value is
| * a tradeoff between speed and quality and has been adjusted to get a quality
| * of ~900 (~90% of FIPS 140-2 successes).
| */

The decision to adjust RK_RNG_SAMPLE_CNT to reach ~90% of FIPS 140-2
successes was based on the quality chosen by most hw_random drivers
currently in the kernel sources. The FIPS 140-2 tests were performed
using rngtest from the rng-tools project.

All that said, I am not an expert in that domain, so feel free to point
to the documentation or provide the correct method to determine the
quality.

Regards
Aurelien

[1] https://git.kernel.org/pub/scm/utils/kernel/rng-tools/rng-tools.git/

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                     http://aurel32.net

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
