Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABEC5C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jul 2024 08:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hfUsPQBU9HlPdkemoT0juAcB89QoUiCVpE8D1QvvUMY=; b=s0Y+cHWR+qGsteb4EuO1fyBEds
	Hb1bDQr1Ng0DS+++GErjJfAu7JtwhwKQlgd3tnP1mAuN4oncj47rr2rQqgJgr0NW15Si+AQieV7ge
	xLU8CGS06t8IVeUOWiVkVXGVWhu2JfJichYm4NAfqrfMbOkob5WYDFGNDuZ2Fay3WpZ2+phATpvye
	kwYN3AbxwdXoAk8rpa2AGJv/5MbMuacEkv0VHFAifky6A4BvWX9B7wfJOFO56paUMUGcT75UpmWLY
	W7HL+rcrd2u9h+RTLDbmGyWhH1SxutoCgZi80G4MZj2qd3YyCEX7RoE7+BBFghzYTJuAfYyNMpmOM
	+JS1vVhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSC2z-0000000Gz24-338K;
	Fri, 12 Jul 2024 08:54:33 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSC2w-0000000Gyzx-1kEM
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jul 2024 08:54:32 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-367940c57ddso1058082f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jul 2024 01:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1720774468; x=1721379268; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Y9InJSzy0ES6bg+8MGtn3MK1Bwf9ZBDLRJ2XsmfgOvc=;
        b=daavQdubDwuEDUHzCsOUqyr0MeWWqCT3Xw1lVqkj6qF+z2HhG4V1vvkA6mfurC90ji
         KRqheGlo0gNlSA7sOtSIZiTFsAiKKAiLHJrMPfBlHgbyMYNd6XHwXH/qF1qAxtaP2zQB
         iHLXRJbtEicfkAd0iynHYiVZHFP2zZAyckWEER/tC0HQn0cPV9ydaIsmLdh8NyCdX/p7
         Xz2hDuQzjHQhDVyumPo6+vapj0JtBBgaTtSy8sux/LZzKSsT9l/K13tIhAPMWq3oe9O3
         ByuaT1hp85d3QqL3iCPMgKVeH2e87CZH8wDeeSA1AdkIYqf+rs+F0fzdGwX3TLVbfdr4
         MjEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720774468; x=1721379268;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y9InJSzy0ES6bg+8MGtn3MK1Bwf9ZBDLRJ2XsmfgOvc=;
        b=r3NxAUWPxURkBOM0o3Os6/UH2QEYaVzx+Az/Nfmrwzauv+Febn6mL2+ydjsM84+V62
         Dho/ozO9DsKq/2dpoGrnfPu5me+VnTB7Waghutm1s+SoLiD06IlX87Bbeyuu6QrZ8sS5
         o6YTJqFkec99HOCnHhHFkWzdQQ5KhKXkXFZJqa6C9w6YmMNcXXk57gpe28KU/zqmb/IJ
         /E/t+OVLBa3Vue4S0C7dtEtQVKkylViZLySfy+H/vViwt3u5mZXGAeCMXibgHDt/RETx
         603Y6i4N1K0zNJifNOXI0wxSoCupiFeUwyfDr6aprZcJnzr/3/3ne9IRS1d5lvK/bHOP
         1qXw==
X-Forwarded-Encrypted: i=1; AJvYcCXIo0+Xq1lbX2eigeZXs/dE0cpg8NRLdxJX9DY1ZyrYv+DkRdn1nA+1btIBc7IqI1dMiWh25xytf6WgqWHpgsZcc/7umC0IsVVJET0LmPFqXAxD
X-Gm-Message-State: AOJu0YyB1vQT6fdDlxXpwRe+wHy85NMhPC1wKtoisw1sGk6xq8xm4VlI
	G1J41ak0U7YUI7aKg6unCuecuJ1ErftUtOr3bBBxUFPMkpxMfu/PQ6XbYTYqyYA=
X-Google-Smtp-Source: AGHT+IHD4MV1Mmsw+K5iradfuCMgKB56j98M6M1zcRyASCH4zkXlQMd8jezMCRK6rG3ByRTw0+9ZzA==
X-Received: by 2002:adf:eb81:0:b0:367:9ce3:167a with SMTP id ffacd0b85a97d-367ceadb3e7mr7065472f8f.64.1720774468043;
        Fri, 12 Jul 2024 01:54:28 -0700 (PDT)
Received: from localhost (p50915eb1.dip0.t-ipconnect.de. [80.145.94.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-367cdfa067dsm9712869f8f.78.2024.07.12.01.54.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jul 2024 01:54:27 -0700 (PDT)
Date: Fri, 12 Jul 2024 10:54:26 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Farouk Bouabid <farouk.bouabid@cherry.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/6] pwm: add mule pwm-over-i2c driver
Message-ID: <5hd7fndgivgusx76wq6mbvgefngd3tllqsfsk6pppbphchczte@ujagkep4miet>
References: <20240529-buzzer_support-v1-0-fd3eb0a24442@cherry.de>
 <20240529-buzzer_support-v1-2-fd3eb0a24442@cherry.de>
MIME-Version: 1.0
In-Reply-To: <20240529-buzzer_support-v1-2-fd3eb0a24442@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240712_015430_511296_486BFD2D 
X-CRM114-Status: GOOD (  40.52  )
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
Content-Type: multipart/mixed; boundary="===============1864096509413940179=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1864096509413940179==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wbrgntclef5fmbs4"
Content-Disposition: inline


--wbrgntclef5fmbs4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Wed, May 29, 2024 at 12:10:31PM +0200, Farouk Bouabid wrote:
> Mule is a device that can output a PWM signal based on I2C commands.
>=20
> Add pwm driver for Mule PWM-over-I2C controller.
>=20
> Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
> ---
>  drivers/pwm/Kconfig    |  10 +++++
>  drivers/pwm/Makefile   |   1 +
>  drivers/pwm/pwm-mule.c | 115 +++++++++++++++++++++++++++++++++++++++++++=
++++++
>  3 files changed, 126 insertions(+)
>=20
> diff --git a/drivers/pwm/Kconfig b/drivers/pwm/Kconfig
> index 4b956d661755..eb8cfa113ec7 100644
> --- a/drivers/pwm/Kconfig
> +++ b/drivers/pwm/Kconfig
> @@ -425,6 +425,16 @@ config PWM_MICROCHIP_CORE
>  	  To compile this driver as a module, choose M here: the module
>  	  will be called pwm-microchip-core.
> =20
> +config PWM_MULE
> +	tristate "Mule PWM-over-I2C support"
> +	depends on I2C && OF

It would be easy to drop the hard dependency on OF. Please do that.

Given that that part doesn't seem to be available for individual sale, I
suggest to add something like:

	depends on (ARM64 && ARCH_ROCKCHIP) || COMPILE_TEST

to not annoy people configuring a kernel for x86 or s390.

> +	help
> +	  PWM driver for Mule PWM-over-I2C controller. Mule is a device
> +	  that can output a PWM signal based on I2C commands.

How is that different from a PWM that is an ordinary I2C device? If
there is no difference, I'd just call this "an I2C device". Also "can
output a PWM signal" is a given for PWM drivers :-)

> +	  To compile this driver as a module, choose M here: the module
> +	  will be called pwm-mule.
> +
>  config PWM_MXS
>  	tristate "Freescale MXS PWM support"
>  	depends on ARCH_MXS || COMPILE_TEST
> diff --git a/drivers/pwm/Makefile b/drivers/pwm/Makefile
> index c5ec9e168ee7..cdd736ea3244 100644
> --- a/drivers/pwm/Makefile
> +++ b/drivers/pwm/Makefile
> @@ -38,6 +38,7 @@ obj-$(CONFIG_PWM_MESON)		+=3D pwm-meson.o
>  obj-$(CONFIG_PWM_MEDIATEK)	+=3D pwm-mediatek.o
>  obj-$(CONFIG_PWM_MICROCHIP_CORE)	+=3D pwm-microchip-core.o
>  obj-$(CONFIG_PWM_MTK_DISP)	+=3D pwm-mtk-disp.o
> +obj-$(CONFIG_PWM_MULE)		+=3D pwm-mule.o
>  obj-$(CONFIG_PWM_MXS)		+=3D pwm-mxs.o
>  obj-$(CONFIG_PWM_NTXEC)		+=3D pwm-ntxec.o
>  obj-$(CONFIG_PWM_OMAP_DMTIMER)	+=3D pwm-omap-dmtimer.o
> diff --git a/drivers/pwm/pwm-mule.c b/drivers/pwm/pwm-mule.c
> new file mode 100644
> index 000000000000..e8593a48b16e
> --- /dev/null
> +++ b/drivers/pwm/pwm-mule.c
> @@ -0,0 +1,115 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Mule PWM-over-I2C controller driver
> + *
> + * Copyright (C) 2024 Theobroma Systems Design und Consulting GmbH

Is there a publicly available datasheet? I guess not. (I ask because
adding a link there to such a document would be nice.)

> + */
> +
> +#include <linux/i2c.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/pwm.h>
> +#include <linux/regmap.h>
> +
> +struct mule_pwm {
> +	struct mutex lock;
> +	struct regmap *regmap;
> +};
> +
> +static const struct regmap_config pwm_mule_config =3D {
> +	.reg_bits =3D 8,
> +	.val_bits =3D 8,
> +};
> +
> +#define MULE_PWM_DCY_REG	0x0
> +#define MULE_PWM_FREQ_L_REG	0x1	/* LSB register */
> +#define MULE_PWM_FREQ_H_REG	0x2	/* MSB register */
> +
> +#define NANOSECONDS_TO_HZ(x) (1000000000UL/(x))

Don't introduce such a macro if you only use it once. Having the
division in the function results in code that is easier to read (IMHO).

> +static int pwm_mule_apply(struct pwm_chip *chip, struct pwm_device *pwm,
> +			      const struct pwm_state *state)
> +{
> +	struct mule_pwm *priv =3D pwmchip_get_drvdata(chip);
> +	u8 duty_cycle;
> +	u64 freq;
> +	int ret;
> +
> +	freq =3D NANOSECONDS_TO_HZ(state->period);
> +
> +	if (freq > U16_MAX) /* Frequency is 16-bit wide */ {
> +		dev_err(chip->dev,
> +			"Failed to set frequency: %llu Hz: out of 16-bit range\n", freq);
> +		return -EINVAL;
> +	}

You're supposed to configure the biggest possible period not bigger than
the requested period. So this should be:

	/*
	 * The period is configured using a 16 bit wide register holding
	 * the frequency in Hz.
	 */
	unsigned int period =3D min_t(u64, state->period, NSEC_PER_SEC);
	unsigned int freq =3D DIV_ROUND_UP(NSEC_PER_SEC, period);

	if (freq > U16_MAX)
		return -EINVAL;

> +	if (state->enabled)
> +		duty_cycle =3D pwm_get_relative_duty_cycle(state, 100);

This is wrong for two reasons:

 - It uses rounding to the nearest duty_cycle, however you're supposed
   to round down.
 - It uses the requested period instead of the real one.

I wonder why the hardware doesn't use the whole 8 bits here.

> +	else
> +		duty_cycle =3D 0;
> +
> +	mutex_lock(&priv->lock);

If you use the guard helper, you don't need to resort to goto for error
handling.

> +	ret =3D regmap_bulk_write(priv->regmap, MULE_PWM_FREQ_L_REG, &freq, 2);
> +	if (ret) {
> +		dev_err(chip->dev,
> +			"Failed to set frequency: %llu Hz: %d\n", freq, ret);
> +		goto out;
> +	}
> +
> +	ret =3D regmap_write(priv->regmap, MULE_PWM_DCY_REG, duty_cycle);
> +	if (ret)
> +		dev_err(chip->dev,
> +			"Failed to set duty cycle: %u: %d\n", duty_cycle, ret);

Please document how the hardware behaves here in a "Limitations" section
as several other drivers do. Questions to answer include: Does it
complete a period when the parameters are updated? Can it happen that a
glitch is emitted while MULE_PWM_FREQ_[LH]_REG is updated but
MULE_PWM_DCY_REG isn't yet? Maybe updating MULE_PWM_FREQ_[LH]_REG isn't
even atomic? "Doesn't support disabling, configures duty_cycle=3D0 when
disabled is requested."

Maybe write all three registers in a bulk write, then you might even be
able to drop the lock.

Also please fail silently.

> +out:
> +	mutex_unlock(&priv->lock);
> +	return ret;
> +}
> +
> +static const struct pwm_ops pwm_mule_ops =3D {
> +	.apply =3D pwm_mule_apply,

Is .get_state not possible to implement (then please document that with a r=
eason)?

> +};
> +
> +static int pwm_mule_probe(struct i2c_client *client)
> +{
> +	struct device *dev =3D &client->dev;
> +	struct pwm_chip *chip;
> +	struct mule_pwm *priv;
> +
> +	chip =3D devm_pwmchip_alloc(dev, 1, sizeof(*priv));
> +	if (IS_ERR(chip))
> +		return PTR_ERR(chip);
> +
> +	priv =3D pwmchip_get_drvdata(chip);
> +
> +	mutex_init(&priv->lock);
> +
> +	priv->regmap =3D devm_regmap_init_i2c(client, &pwm_mule_config);
> +	if (IS_ERR(priv->regmap))
> +		return dev_err_probe(dev, PTR_ERR(priv->regmap),
> +				     "Failed to allocate i2c register map\n");
> +
> +	chip->ops =3D &pwm_mule_ops;
> +
> +	return devm_pwmchip_add(dev, chip);

Error message if this fails, please.

> +}

Best regards
Uwe

--wbrgntclef5fmbs4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmaQ70AACgkQj4D7WH0S
/k7/gQf/Q+SdZqNCkDwpvZRbQGIjpyKxHGDP30YB3HC97oU7mrFiybp5l20eBhSh
n/WDFCvdBYeiKsMLuWgN7RVITqfHJNa0gT22Lhf6l0Sco1ZykjQDuAVPbkNyp/jd
FFf+EFHa3QhLAxsCvCNc18TvnBImTasMPFQ1preymMa/ISA93OAL4paT5+7Pix/R
zdD0oPZjQ3tul9MJhqOUBtPdh+QcRaYx9a8shRzmk6FMBAZFSVq0lwErIAgI7Zp7
InKTINIO9Y/f+xLeMqi3X+cLzCOBY7AaqFGbOPNnyFKCRZYDH88knYaUSAzh4V49
eqzPSd6OEKPEdcD5vCj1jt1Fcdna+A==
=gYdx
-----END PGP SIGNATURE-----

--wbrgntclef5fmbs4--


--===============1864096509413940179==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1864096509413940179==--

