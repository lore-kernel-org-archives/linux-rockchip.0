Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 031A0C3DA4B
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jul 2024 15:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t4ybqFuzbqpFtMvZrtY4CRkK9qgpMb9pCjRUmxyZuK4=; b=TWMeXr6mDOTQlns+3Q+ymySWuM
	PARmAZZcwh1sXsTGxIOgfA6gEBit+XaCnBGVvqyLV8oZOyAkg7IaDgw2xgerBKWMa3FLmNraM9+xi
	s39IP/k5pRDfUoaKmnfpPd9lbZwTWtG3gRE05xVnVb9738WMEBVGMybCgY4bUOkryVYlIPI9EqEOf
	7PtD8mN9xQJFsIHU/XCQ7nHuJZ94kUsawbgk8P1Um03rC0SLGl6Ejt+567Y9QXM9z+/o2k9nD1P2g
	VDLvpckeL/C+5KOru6CrQwR+rwKciktOG69wFIHxx6ZF0YA9K+tzArY/tK4TYS+E0BMwGWsQmrObk
	9WtksQ0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTNLM-00000007Ukm-3OwK;
	Mon, 15 Jul 2024 15:10:24 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTNL1-00000007UfX-1mOx
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jul 2024 15:10:05 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a728f74c23dso560778666b.1
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Jul 2024 08:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1721056201; x=1721661001; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4f3Cmwjo4+C8tOGQYXqfrgWl9Ct+rBShy7XPPD3iWCc=;
        b=xstz4uIDtceOxLWBCQJ2BaoxbZz+fMugPMc7ITaDZcDuGiq0FvmER3cloqd3Jej9xS
         SPJ4DVd/i8jzdQtWAFVx2j/2u62VjwajvKyCkPn7FPPyzU+0DSZHcNTbzIJiGRiDk1Fn
         KUq6ZM52pDZtyCk8vLK5ck1j2fBUBbS7lP9Hp5EWCzFfjLfwR1psmn4sdHBbNqnxojai
         Y8PJA1o6PlVnOghqkicLiz+yQMFj58dlJA+3vOAITUkTpULCmwzxbIN7uFqJyZ7FCsoP
         gG4mnAn5TGIgI6c9oKmdeH4WX/Ap6bXAHxTHJ/wMhvHP9inkX2bNuZaR+1vAILxO0T21
         OwkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721056201; x=1721661001;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4f3Cmwjo4+C8tOGQYXqfrgWl9Ct+rBShy7XPPD3iWCc=;
        b=lQnUk7J+MpoMJeRl18PepdjO0hqWAHERwGTSoiqb1OJ/bQMS4TFBg92pxhrUeaqIa0
         DqIWB5lK1FTHIK2jYkzEvI4HLXeMqEd2nTDQPHUVmU/OWf5N5MnKo1CqZplVmk93ioGB
         NIYc2RWnfrbdWq7NEuUeovBTCCNYyaqscgYSl6/8HqQBRrDh9tksICnzT0UHiOr+2WKe
         OZnOmL8jCuQJncbC6J0kC6/H9RVmcBzBqvC0i5MTFPNuQfCqPJDRjAFvvq8pk3Ob7BAF
         r57yUNT++euXaH16x+WEliAPNJqZEZec4BeoxFIxHevA+FFwZUsHJmwekUWZk609Rd0L
         IAiA==
X-Forwarded-Encrypted: i=1; AJvYcCW2KoAJhpy3UMq3zHEURf1Ak7oo86KLaRjIxsF5dY2Hy8J4R9TaK03E/LTuSTuaMapRNhjjkymWQLx7xblvSgpcNNTs8l2THo5nMXO+XOnRDPBD
X-Gm-Message-State: AOJu0Ywd4+EcDkws/ugsP9JJqAwJ6p8OqX1LIHDvwO7HzobXbQia9ib4
	1ClyD8G5iVC3Kxu9mE3HLI6Aeiz5EYWp9AkpiNB8SV605fDPdaYcMz0YLu12Z+K6Qqrj5+Z+nQp
	w
X-Google-Smtp-Source: AGHT+IEeZnfnZS7fhoaDyZlI+KobrOkLDMA4HhdGBKJDuPEj7OK4LoziT5drUXVzHyWTupraoQASsg==
X-Received: by 2002:a17:906:1786:b0:a6f:51d8:1963 with SMTP id a640c23a62f3a-a79e6a5c54emr3682066b.43.1721056200603;
        Mon, 15 Jul 2024 08:10:00 -0700 (PDT)
Received: from localhost ([2a02:8071:b783:6940:36f3:9aff:fec2:7e46])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a79bc5a3560sm218287366b.4.2024.07.15.08.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 08:10:00 -0700 (PDT)
Date: Mon, 15 Jul 2024 17:09:58 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Farouk Bouabid <farouk.bouabid@cherry.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/6] pwm: add mule pwm-over-i2c driver
Message-ID: <e7b3bfpvtrvt5g637yy7qxsbvfiylyzrjvwsro4hzp5t6cmeux@eqafx3k7oaks>
References: <20240529-buzzer_support-v1-0-fd3eb0a24442@cherry.de>
 <20240529-buzzer_support-v1-2-fd3eb0a24442@cherry.de>
 <5hd7fndgivgusx76wq6mbvgefngd3tllqsfsk6pppbphchczte@ujagkep4miet>
 <25d71c19-6e94-477d-8d04-758015ca4b2c@cherry.de>
MIME-Version: 1.0
In-Reply-To: <25d71c19-6e94-477d-8d04-758015ca4b2c@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240715_081003_760584_56C6C83D 
X-CRM114-Status: GOOD (  64.37  )
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
Content-Type: multipart/mixed; boundary="===============9148379797253320465=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============9148379797253320465==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nnnntzeiyupavwi4"
Content-Disposition: inline


--nnnntzeiyupavwi4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Quentin,

On Mon, Jul 15, 2024 at 02:16:15PM +0200, Quentin Schulz wrote:
> > > --- a/drivers/pwm/Kconfig
> > > +++ b/drivers/pwm/Kconfig
> > > @@ -425,6 +425,16 @@ config PWM_MICROCHIP_CORE
> > >   	  To compile this driver as a module, choose M here: the module
> > >   	  will be called pwm-microchip-core.
> > > +config PWM_MULE
> > > +	tristate "Mule PWM-over-I2C support"
> > > +	depends on I2C && OF
> >=20
> > It would be easy to drop the hard dependency on OF. Please do that.
> >=20
>=20
> Just being curious here, what would be the benefit?

Increasing easy compile coverage.

> [...]
>=20
> > > diff --git a/drivers/pwm/pwm-mule.c b/drivers/pwm/pwm-mule.c
> > > new file mode 100644
> > > index 000000000000..e8593a48b16e
> > > --- /dev/null
> > > +++ b/drivers/pwm/pwm-mule.c
> > > @@ -0,0 +1,115 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +/*
> > > + * Mule PWM-over-I2C controller driver
> > > + *
> > > + * Copyright (C) 2024 Theobroma Systems Design und Consulting GmbH
> >=20
> > Is there a publicly available datasheet? I guess not. (I ask because
> > adding a link there to such a document would be nice.)
> >=20
>=20
> Unfortunately no. It's also only part of our product line and there's no
> plan to start selling it standalone or selling the IP.
>=20
> > > + */
> > > +
> > > +#include <linux/i2c.h>
> > > +#include <linux/module.h>
> > > +#include <linux/of.h>
> > > +#include <linux/pwm.h>
> > > +#include <linux/regmap.h>
> > > +
> > > +struct mule_pwm {
> > > +	struct mutex lock;
> > > +	struct regmap *regmap;
> > > +};
> > > +
> > > +static const struct regmap_config pwm_mule_config =3D {
> > > +	.reg_bits =3D 8,
> > > +	.val_bits =3D 8,
> > > +};
> > > +
> > > +#define MULE_PWM_DCY_REG	0x0
> > > +#define MULE_PWM_FREQ_L_REG	0x1	/* LSB register */
> > > +#define MULE_PWM_FREQ_H_REG	0x2	/* MSB register */
> > > +
> > > +#define NANOSECONDS_TO_HZ(x) (1000000000UL/(x))
> >=20
> > Don't introduce such a macro if you only use it once. Having the
> > division in the function results in code that is easier to read (IMHO).
> >=20
> > > +static int pwm_mule_apply(struct pwm_chip *chip, struct pwm_device *=
pwm,
> > > +			      const struct pwm_state *state)
> > > +{
> > > +	struct mule_pwm *priv =3D pwmchip_get_drvdata(chip);
> > > +	u8 duty_cycle;
> > > +	u64 freq;
> > > +	int ret;
> > > +
> > > +	freq =3D NANOSECONDS_TO_HZ(state->period);
> > > +
> > > +	if (freq > U16_MAX) /* Frequency is 16-bit wide */ {
> > > +		dev_err(chip->dev,
> > > +			"Failed to set frequency: %llu Hz: out of 16-bit range\n", freq);
> > > +		return -EINVAL;
> > > +	}
> >=20
> > You're supposed to configure the biggest possible period not bigger than
> > the requested period. So this should be:
> >=20
> > 	/*
> > 	 * The period is configured using a 16 bit wide register holding
> > 	 * the frequency in Hz.
> > 	 */
> > 	unsigned int period =3D min_t(u64, state->period, NSEC_PER_SEC);
> > 	unsigned int freq =3D DIV_ROUND_UP(NSEC_PER_SEC, period);
> >=20
> > 	if (freq > U16_MAX)
> > 		return -EINVAL;
> >=20
> > > +	if (state->enabled)
> > > +		duty_cycle =3D pwm_get_relative_duty_cycle(state, 100);
> >=20
> > This is wrong for two reasons:
> >=20
> >   - It uses rounding to the nearest duty_cycle, however you're supposed
> >     to round down.
> >   - It uses the requested period instead of the real one.
> >=20
>=20
> I assume you want:
>=20
> unsigned int real_period =3D ((u64) NSEC_PER_SEC * 100) / freq;
>=20
> which rounds down?

Yes. And then to calculate the duty_cycle setting use real_period.

> > I wonder why the hardware doesn't use the whole 8 bits here.
> >=20
>=20
> It's even a 16b register that the HW uses. I guess we just went with the
> most human-friendly API :) I believe it's something we should be able to
> change in the FW before releasing if this is something that really makes
> sense. FYI, the register stores the number of clock ticks for the signal =
to
> be high, once reached, put it low (or the opposite). So it's necessarily a
> fraction of the clock frequency. 100% was easy because we know that every
> clock frequency we support is a multiple of 100 so there's no issue around
> rounding for example since we definitely do not want to do float maths in
> MCUs :)

Interesting perspective. I'd still go for using the register completely.

> > > +	else
> > > +		duty_cycle =3D 0;
> > > +
> > > +	mutex_lock(&priv->lock);
> >=20
> > If you use the guard helper, you don't need to resort to goto for error
> > handling.
> >=20
>=20
> I would have liked a link or more precise hint at what this "guard helper"
> was, but found something myself so here it is for anyone wondering:
>=20
> https://lwn.net/Articles/934679/
>=20
> Had never heard of that one before, neat!

Right. A conversion example is available at
https://lore.kernel.org/linux-pwm/2102fe8189bdf1f02ff3785b551a69be27a65af4.=
1719520143.git.u.kleine-koenig@baylibre.com/

> > > +	ret =3D regmap_bulk_write(priv->regmap, MULE_PWM_FREQ_L_REG, &freq,=
 2);
> > > +	if (ret) {
> > > +		dev_err(chip->dev,
> > > +			"Failed to set frequency: %llu Hz: %d\n", freq, ret);
> > > +		goto out;
> > > +	}
> > > +
> > > +	ret =3D regmap_write(priv->regmap, MULE_PWM_DCY_REG, duty_cycle);
> > > +	if (ret)
> > > +		dev_err(chip->dev,
> > > +			"Failed to set duty cycle: %u: %d\n", duty_cycle, ret);
> >=20
> > Please document how the hardware behaves here in a "Limitations" section
> > as several other drivers do. Questions to answer include: Does it
> > complete a period when the parameters are updated? Can it happen that a
> > glitch is emitted while MULE_PWM_FREQ_[LH]_REG is updated but
> > MULE_PWM_DCY_REG isn't yet? Maybe updating MULE_PWM_FREQ_[LH]_REG isn't
> > even atomic? "Doesn't support disabling, configures duty_cycle=3D0 when
> > disabled is requested."
> >=20
>=20
> Updating MULE_PWM_FREQ_[LH]_REG is atomic (L is stored in SRAM until H reg
> is written, when LH are then written to the hardware IP).
>=20
> We use double-buffering (supported by the HW directly) for the period and
> comparator registers. I believe we still have a possible glitch during a
> small time-frame in the current version of the FW. Basically, trying to
> change the period AND duty cycle at the same time, the following could
> happen:
>=20
> - period A + duty-cycle AA
> - period B + duty-cycle AA
> - period B + duty-cycle BB
>=20
> Depending on what we consider a glitch, the second element in the list co=
uld
> be one. Even if we do a multibyte write to the actual HW, I'm not sure if
> this window can be eliminated.

I'd call that a glitch, yes.

> To give a bit more info on this, there are two possible flavors of the MC=
U,
> ATtiny 816 (datasheet: https://ww1.microchip.com/downloads/en/DeviceDoc/A=
Ttiny416-816-DataSheet-DS40001913B.pdf)
> and STM32F072CB (datasheet: https://www.st.com/content/ccc/resource/techn=
ical/document/reference_manual/c2/f8/8a/f2/18/e6/43/96/DM00031936.pdf/files=
/DM00031936.pdf/jcr:content/translations/en.DM00031936.pdf).
>=20
> FYI, on ATtiny, we use TCA in single-slope PWM generation mode and PERBUF
> and CMP2BUF as period and duty-cycle registers. On STM32, we use TIM15 in
> PWM mode and ARR and CCR1 as period and duty-cycle registers.

Wouldn't it be more natural with these to have duty in a base-2 register
for duty, in the assumption that your MCUs habe this, too?

> Re-reading both datasheets, and if I understand correctly, we could have
> glitch-free transitions by controlling the ARPE bit on STM32 and LUPD bit=
 on
> ATtiny816.
>=20
> @Farouk, please confirm but the above makes sense to me and I guess we co=
uld
> implement something in the FW. The question is how to detect if we want to
> change both the duty-cycle and period at the same time (we could decide to
> document this as a requirement for the API user though: "changes to
> MULE_PWM_FREQ_[LH]_REG are only applied when MULE_PWM_DCY_REG is written
> to").
>=20
> > Maybe write all three registers in a bulk write, then you might even be
> > able to drop the lock.
> >=20
>=20
> The bulk write wouldn't help with the glitch, but it's a good idea for
> getting rid of the lock.
>=20
> > Also please fail silently.
>=20
> Would dev_dbg() be fine here or would you rather see them gone entirely?

dev_dbg is silent by default, so that's fine for me.

Best regards
Uwe

--nnnntzeiyupavwi4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmaVO8EACgkQj4D7WH0S
/k5G8QgAo9i4tMthmPzEzcLp1iYlQD9EhlmLY3NS3iaEndMQdjs6Yn5g/X28jixs
S5EwD0OzoP2LziqgyOcsMqoQUZgtlZXcx7DyhzERsSPSAiGNUxRqTX4dIp4eqhaI
a5nL/kAEbSdl6cirkq97TUA6YSTjZlcFjYte9UkaARk6ZbWJpyAEcEg+4pjjs6OZ
cWrATM34nHeICcRxizIz6CakISP+g7H7fm1sUyoILDOlxS3mjbsrLOm4cbERuoKI
I+PvVIVwSJJ8ulWXXCeXJc6ilOYTH5NPJTkZG81AZT6PO4vs+6mMQMPX3Y+0d4cZ
E4TZB++66HrjjDhuL5mlJcammYkJng==
=wgn2
-----END PGP SIGNATURE-----

--nnnntzeiyupavwi4--


--===============9148379797253320465==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============9148379797253320465==--

