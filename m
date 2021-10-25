Return-Path: <SRS0=GaOA=PN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73043C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Oct 2021 11:52:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 34BB261027
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Oct 2021 11:52:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 34BB261027
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2YXK8ncDe3olmEZZLYHMlaIJkMVvZrlXR6Ba1eRnfhQ=; b=nNrc+RJlq9VmmN1xbEQTI5ghvL
	9fLl1cXTWYkfiIqf101e2B6xMRF0mVJkwoYWplNbErmGLOM6VZWz3E9D6L2hjqtWHUfLF4hTIgkJG
	B6OvVe7MuaNEswWkgAiZv+rubyHr+AvTu4f5Me/bleYAyixVRbhB5M/c1mKeQ0rYRLIJM9N8c9mA4
	NmR+4GPlV4yEAXssbcx9OuCnYRrQhuEn3JTmHEFzXbiKjbGZwxivUqJY/lIodXFzZCgyro7XDzX5d
	o/KedcFWfJdBDoSWq2iI9hfiqmDbe3Pr0s1yDnUGbMBoaNgocB1Bk9zC2hXoYfXx3HUiUzRcVmDn0
	bcDRwnvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1meyWw-00GJgA-UQ; Mon, 25 Oct 2021 11:52:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1meyWk-00GJcN-0F; Mon, 25 Oct 2021 11:52:31 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0AD8560E8C;
 Mon, 25 Oct 2021 11:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1635162749;
 bh=McE0Md5cUR7f/vf9dUhpKd5afPO2IYd5qnBCVe07hNU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=IQRWPZ6AttG9SL5GixqViye1T+kuZIF2O8g7jf5MT6Q/DMHH6zcnSyiprAfjEFbv0
 HADYR9gx0/OSmiFJzbouiwVHnG7+R9eFhMXfV6to42Aj3/sj7Y7cOyEMg3vCD2yuBn
 xUNzgQkT+l3yPZSl8XwN+3WcMnh8p0V2chTEQG9UjxiqKCO1iOAauYt98mUZMSL4At
 MfBelVGiyH+xXnaHujYwkticpdTA4r6vAgAd86N0GPiES/o4EjxdRjkObKGxElGx7i
 CRqlpjlHlGjIB64VU+Uw9t7mkKHuAxz79SRWW0i1dH4izvL9elM2G/Pg6MQ7yfSoDO
 kv2NLOyDJFBlQ==
Date: Mon, 25 Oct 2021 12:52:27 +0100
From: Mark Brown <broonie@kernel.org>
To: Yunhao Tian <t123yh.xyz@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/3] ASoC: rockchip: add support for spdifrx receiver
Message-ID: <YXaae+SnnZea1C2C@sirena.org.uk>
References: <20211024094317.1641949-1-t123yh@outlook.com>
 <20211024094317.1641949-2-t123yh@outlook.com>
MIME-Version: 1.0
In-Reply-To: <20211024094317.1641949-2-t123yh@outlook.com>
X-Cookie: From concentrate.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211025_045230_120215_678F5074 
X-CRM114-Status: GOOD (  21.90  )
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
Content-Type: multipart/mixed; boundary="===============3208500393458342998=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3208500393458342998==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/PnUjWzrw+ydMtsz"
Content-Disposition: inline


--/PnUjWzrw+ydMtsz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Oct 24, 2021 at 05:43:15PM +0800, Yunhao Tian wrote:

> --- /dev/null
> +++ b/sound/soc/rockchip/rockchip_spdifrx.c
> @@ -0,0 +1,660 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * ALSA SoC Audio Layer - Rockchip SPDIF_RX Controller driver
> + *

Please make the entire comment a C++ one so things look more
intentional.

> +static int rk_spdifrx_hw_params(struct snd_pcm_substream *substream,
> +				struct snd_pcm_hw_params *params,
> +				struct snd_soc_dai *dai)
> +{
> +	return 0;
> +}

Just remove empty callbacks, if it's safe to omit a callback the
framework will let you.

> +	spin_lock_irqsave(&spdifrx->irq_lock, flags);
> +
> +	/* the access property of controls don't have to
> +	 * be volatile, as it will be notified by interrupt handler
> +	 */
> +	spdifrx->dai = dai;
> +	control = (struct snd_kcontrol_new){
> +		/* Sample Rate Control */
> +		.iface = SNDRV_CTL_ELEM_IFACE_PCM,
> +		.name = SNDRV_CTL_NAME_IEC958("", CAPTURE, NONE) "Rate",
> +		/* access don't have to be volatile, as it will be notified by intr */
> +		.access = SNDRV_CTL_ELEM_ACCESS_READ,
> +		.info = rk_spdifrx_rate_info,
> +		.get = rk_spdifrx_rate_get,
> +	};
> +	spdifrx->snd_kctl_rate = snd_ctl_new1(&control, dai);

You really shouldn't be calling snd_ctl_new1() with interrupts disabled,
nor can I see a reason why you'd want to do this.  I'd be surprised if
it doesn't do any allocations or other operations that are not permitted
while in atomic context.

I also don't understand why the control is declared in this way rather
than just being a normal const static struct, there's no variable data
in any of these structs that I can see.

> +static irqreturn_t rk_spdifrx_isr(int irq, void *dev_id)
> +{

> +	spin_lock_irqsave(&spdifrx->irq_lock, flags);
> +	if (spdifrx->dai) {

You're in the interrupt handler here so this should just be a regular
spin_lock().

> +MODULE_DESCRIPTION("ROCKCHIP SPDIF Receiver Interface");
> +MODULE_AUTHOR("Sugar Zhang <sugar.zhang@rock-chips.com>");

Given that Sugar is active upstream it would be good to keep them in the
CCs.

--/PnUjWzrw+ydMtsz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmF2mnoACgkQJNaLcl1U
h9DSOwf+JNBLgPpAa7LDwRvv92YCK3c14xEWqLn7bUZ8+ePk8gwaiiTZWLi5ICDI
zKKpMqZ9iQQ0lpo3JmnFoDBqWZe5MKGUL5iMlAImFAu+XTDmzcZoLFTJaxLX389M
wcrrDByWnL9PChNnJ1HkmL2q+1ozpRLQGejb98+GgPmSEBgXQPeWcPzC8zUu95sg
AckOGVzA7mOThPkv1ZXEMNT6Efca1Fi3qPPAR2ZMSTYSCBTly8qW77VwX98U2u/L
b278E6Ii2t+tlDG+WR25sZP3eblj58+oUehF91q9CQ7gRV1GqJYaQeF5dEheCU24
3kvqqgtE0QQdLNVHGvVjoLP8ibWkFg==
=ePx5
-----END PGP SIGNATURE-----

--/PnUjWzrw+ydMtsz--


--===============3208500393458342998==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3208500393458342998==--

