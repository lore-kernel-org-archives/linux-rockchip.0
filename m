Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4232C43458
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jul 2026 11:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+veLnzzMMQq53OKmMJOg9GMeRQ8KFP9ZbhFgXqFw5H8=; b=BOOC2XjcjPXEfULRkVPLNEP31i
	MwYf1phtOXAVJsMOEMqwOgYDzuQf9VW+h4MrIo3QQdcVlqJSfYO+eVKMjDeEnt//kU7RLfHFYcJAd
	BhOgDNALLnhjoabuR9BlCnhFpMFnIUxjjxO6GIPpcbILuYGJNr9+yfRiQ88VrTJPm/0myToTWPmmb
	ly9HnLSjbAtfHLAAZfanobkglFCbYUpUdQXq8ysFpI1lvJq3QN1VZ/PNFjMqSbSTnMYVXH7V7w+LC
	56zWOH6wylDbxpYuhXrQC4Wx6TqWeWf6u48cEGYkvGEscF0W0VdWQ8aZ/MkoBNfEG+KamRhK1r4Xt
	+AQvXQfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi90M-00000004lnn-0Ggh;
	Fri, 10 Jul 2026 11:02:50 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wi90K-00000004lnY-2D43;
	Fri, 10 Jul 2026 11:02:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with UTF8SMTP id DF4A1600C3;
	Fri, 10 Jul 2026 11:02:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id 15F381F000E9;
	Fri, 10 Jul 2026 11:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783681367;
	bh=eVRsx3hBBJH/Va+OHfcN9cN1H7LyCaNlLfEaKAQnK3s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=f+4Sy4F9sL0hz+yEPS8HqKB/0afaTNBkCgQrHHJAEd1j27jzS3D8zxzNZpxU2Tai2
	 2r442TR4HOvLL+s00Yu9iAkKHO9skq4AGRDFO3Zm8KrYHCHVLoA7Il67yfSJ6vE7d2
	 3FK3ivhh/XEg/yzY5RV++aZWJj4YKI5WzUc0PocQLLejibOcPWSifNn8KfD9n0r/ZA
	 VcEm/lIj7jUZDP/wZYVhLslbau+0gq0BboStJVvBr2Q/T70moKwENeOBrM9atTJPEv
	 9lLgBWRvb2rc9R0B2E8nhA1N5DpqDfNkaaZlZqc3kBve9XFtwk0Wds/m6JfzoOhB+c
	 MifZ0UOzJHd/A==
Date: Fri, 10 Jul 2026 13:02:45 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>, 
	William Breathitt Gray <wbg@kernel.org>, Damon Ding <damon.ding@rock-chips.com>, kernel@collabora.com, 
	Jonas Karlman <jonas@kwiboo.se>, Alexey Charkov <alchark@gmail.com>, 
	linux-rockchip@lists.infradead.org, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org
Subject: Re: [PATCH v5 3/6] pwm: Add rockchip PWMv4 driver
Message-ID: <alDK7JahbqYpwQmZ@monoceros>
References: <20260420-rk3576-pwm-v5-0-ae7cfbbe5427@collabora.com>
 <20260420-rk3576-pwm-v5-3-ae7cfbbe5427@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20260420-rk3576-pwm-v5-3-ae7cfbbe5427@collabora.com>
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
Content-Type: multipart/mixed; boundary="===============6461840830345034475=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6461840830345034475==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zmapr4d5j6nd5icv"
Content-Disposition: inline


--zmapr4d5j6nd5icv
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Subject: Re: [PATCH v5 3/6] pwm: Add rockchip PWMv4 driver
MIME-Version: 1.0

Hello Nicolas,

On Mon, Apr 20, 2026 at 03:52:40PM +0200, Nicolas Frattaroli wrote:
> [...]
> +/**
> + * rockchip_pwm_v4_round_single - convert a PWM parameter to hardware
> + * @rate: clock rate of the PWM clock, as per clk_get_rate
> + *        Assumed to be <= 1GHz for overflow considerations
> + * @in_val: parameter in nanoseconds to convert
> + *
> + * Returns the rounded value, saturating at U32_MAX if too large
> + */
> +static u32 rockchip_pwm_v4_round_single(unsigned long rate, u64 in_val)

very picky: if you name this function rockchip_pwm_v4_ns_to_ticks it
becomes clearer what the purpose is.

> +{
> +	u64 tmp;
> +
> +	tmp = mul_u64_u64_div_u64(rate, in_val, NSEC_PER_SEC);
> +	if (tmp > U32_MAX)
> +		tmp = U32_MAX;
> +
> +	return tmp;
> +}
> +
> +/**
> + * rockchip_pwm_v4_round_params - convert PWM parameters to hardware
> + * @rate: PWM clock rate to do the calculations at
> + * @wf: pointer to the generic &struct pwm_waveform input parameters
> + * @wfhw: pointer to the hardware-specific &struct rockchip_pwm_v4_wf output
> + *        parameters that the results will be stored in
> + *
> + * Convert nanosecond-based duty/period/offset parameters to the PWM hardware's
> + * native rounded representation in number of cycles at clock rate @rate. Should
> + * any of the input parameters be out of range for the hardware, the
> + * corresponding output parameter is the maximum permissible value for said
> + * parameter with considerations to the others.
> + */
> +static void rockchip_pwm_v4_round_params(unsigned long rate,
> +					 const struct pwm_waveform *wf,
> +					 struct rockchip_pwm_v4_wf *wfhw)
> +{
> +	wfhw->period = rockchip_pwm_v4_round_single(rate, wf->period_length_ns);
> +
> +	wfhw->duty = rockchip_pwm_v4_round_single(rate, wf->duty_length_ns);
> +
> +	/* As per TRM, PWM_OFFSET: "The value ranges from 0 to (period-duty)" */

Have you tried what happens if you break this rule? That seems like a
very arbitrary restriction that might just originate from the
documentation author.

> +	wfhw->offset = rockchip_pwm_v4_round_single(rate, wf->duty_offset_ns);
> +	if (!wfhw->period) /* Don't underflow when pwm disabled */
> +		wfhw->offset = 0;
> +	else if (wfhw->offset > wfhw->period - wfhw->duty)
> +		wfhw->offset = wfhw->period - wfhw->duty;

You don't enforce wfhw->period >= wfhw->duty, which however seems like a
reasonable restriction. When knowing that you can drop the explicit
check for !wfhw->period and just keep the else-if branch.

> +}
> [...]
> +static int rockchip_pwm_v4_write_wf(struct pwm_chip *chip, struct pwm_device *pwm,
> +				    const void *_wfhw)
> +{
> +	struct rockchip_pwm_v4 *pc = to_rockchip_pwm_v4(chip);
> +	const struct rockchip_pwm_v4_wf *wfhw = _wfhw;
> +	bool was_enabled;
> +	int ret;
> +
> +	ret = mfpwm_acquire(pc->pwmf);
> +	if (ret)
> +		return ret;
> +
> +	was_enabled = rockchip_pwm_v4_is_enabled(mfpwm_reg_read(pc->pwmf->base,
> +								PWMV4_REG_ENABLE));
> +
> +	/*
> +	 * "But Nicolas", you ask with valid concerns, "why would you enable the
> +	 * PWM before setting all the parameter registers?"
> +	 *
> +	 * Excellent question, Mr. Reader M. Strawman! The RK3576 TRM Part 1
> +	 * Section 34.6.3 specifies that this is the intended order of writes.
> +	 * Doing the PWM_EN and PWM_CLK_EN writes after the params but before
> +	 * the CTRL_UPDATE_EN, or even after the CTRL_UPDATE_EN, results in
> +	 * erratic behaviour where repeated turning on and off of the PWM may
> +	 * not turn it off under all circumstances. This is also why we don't
> +	 * use relaxed writes; it's not worth the footgun.

I wonder if it's worth however to delay setting PWMV4_CTRL_UPDATE_EN
until after the clkrate is handled to (maybe) prevent glitches?

> +	 */
> +	if (wfhw->rate)
> +		mfpwm_reg_write(pc->pwmf->base, PWMV4_REG_ENABLE,
> +				FIELD_PREP_WM16(PWMV4_EN_BOTH_MASK,
> +						PWMV4_EN_BOTH_MASK));
> +	else
> +		mfpwm_reg_write(pc->pwmf->base, PWMV4_REG_ENABLE,
> +				FIELD_PREP_WM16(PWMV4_EN_BOTH_MASK, 0));
> +
> +	mfpwm_reg_write(pc->pwmf->base, PWMV4_REG_PERIOD, wfhw->period);
> +	mfpwm_reg_write(pc->pwmf->base, PWMV4_REG_DUTY, wfhw->duty);
> +	mfpwm_reg_write(pc->pwmf->base, PWMV4_REG_OFFSET, wfhw->offset);
> +
> +	mfpwm_reg_write(pc->pwmf->base, PWMV4_REG_CTRL, PWMV4_CTRL_CONT_FLAGS);
> +
> +	/* Commit new configuration to hardware output. */
> +	mfpwm_reg_write(pc->pwmf->base, PWMV4_REG_ENABLE,
> +			PWMV4_CTRL_UPDATE_EN);
> +
> +	if (wfhw->rate) {
> +		if (!was_enabled) {
> +			dev_dbg(&chip->dev, "Enabling PWM output\n");
> +			ret = clk_enable(pc->pwmf->core);
> +			if (ret)
> +				goto err_mfpwm_release;
> +			ret = clk_set_rate_exclusive(pc->pwmf->core, wfhw->rate);
> +			if (ret) {
> +				clk_disable(pc->pwmf->core);
> +				goto err_mfpwm_release;
> +			}
> +
> +			/*
> +			 * Output should be on now, acquire device to guarantee
> +			 * exclusion with other device functions while it's on.
> +			 *
> +			 * It's highly unlikely that this fails, as mfpwm has
> +			 * already been acquired before, and this is just a
> +			 * usage counter increase. Not worth the added
> +			 * complexity of clearing the PWMV4_REG_ENABLE again,
> +			 * especially considering the CTRL_UPDATE_EN behaviour.
> +			 */
> +			ret = mfpwm_acquire(pc->pwmf);
> +			if (ret) {
> +				clk_rate_exclusive_put(pc->pwmf->core);
> +				clk_disable(pc->pwmf->core);
> +				goto err_mfpwm_release;
> +			}
> +		}

Can it happen that we have

	wfhw->rate && was_enabled && wfhw->rate != clk_get_rate()

?

> +	} else if (was_enabled) {
> +		dev_dbg(&chip->dev, "Disabling PWM output\n");
> +		clk_rate_exclusive_put(pc->pwmf->core);
> +		clk_disable(pc->pwmf->core);
> +		/* Output is off now, extra release to balance extra acquire */
> +		mfpwm_release(pc->pwmf);
> +	}
> +
> +err_mfpwm_release:
> +	mfpwm_release(pc->pwmf);
> +
> +	return ret;
> +}
> [...]
> +static int rockchip_pwm_v4_probe(struct platform_device *pdev)
> +{
> +	struct rockchip_mfpwm_func *pwmf = dev_get_platdata(&pdev->dev);
> +	struct rockchip_pwm_v4 *pc;
> +	struct pwm_chip *chip;
> +	struct device *dev = &pdev->dev;
> +	int ret;
> +
> +	/*
> +	 * For referencing the PWM in the DT to work, we need the parent MFD
> +	 * device's OF node.
> +	 */
> +	dev->of_node_reused = true;
> +	device_set_node(dev, of_fwnode_handle(dev->parent->of_node));
> +
> +	chip = devm_pwmchip_alloc(dev, 1, sizeof(*pc));
> +	if (IS_ERR(chip))
> +		return PTR_ERR(chip);
> +
> +	pc = to_rockchip_pwm_v4(chip);
> +	pc->pwmf = pwmf;
> +
> +	ret = mfpwm_acquire(pwmf);
> +	if (ret)
> +		return dev_err_probe(dev, ret, "Couldn't acquire mfpwm in probe\n");
> +
> +	if (!rockchip_pwm_v4_on_and_continuous(pc))
> +		mfpwm_release(pwmf);
> +	else {
> +		dev_dbg(dev, "PWM was already on at probe time\n");
> +		ret = clk_enable(pwmf->core);
> +		if (ret) {
> +			dev_err_probe(dev, ret, "Enabling pwm clock failed\n");
> +			goto err_mfpwm_release;
> +		}
> +		ret = clk_rate_exclusive_get(pc->pwmf->core);
> +		if (ret) {
> +			dev_err_probe(dev, ret, "Protecting pwm clock failed\n");
> +			goto err_clk_disable;
> +		}
> +	}
> +
> +	platform_set_drvdata(pdev, chip);

This is unused.

> +
> +	chip->ops = &rockchip_pwm_v4_ops;
> +
> +	ret = devm_pwmchip_add(dev, chip);
> +	if (ret) {
> +		dev_err_probe(dev, ret, "Failed to add PWM chip\n");
> +		if (rockchip_pwm_v4_on_and_continuous(pc))
> +			goto err_rate_put;
> +
> +		return ret;
> +	}
> +
> +	return 0;
> +
> +err_rate_put:
> +	clk_rate_exclusive_put(pwmf->core);
> +err_clk_disable:
> +	clk_disable(pwmf->core);
> +err_mfpwm_release:
> +	mfpwm_release(pwmf);
> +
> +	return ret;
> +}

Best regards
Uwe

--zmapr4d5j6nd5icv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmpQ0VMACgkQj4D7WH0S
/k69Qwf6AyqNQlbHdAGwyu6A+raBNgAyVC7XDQIzx5BWj1Cd8NCNT88Bij7SPu2Z
nOf7fFzlSl4mnbEW76bJxTM4/eowUyhnsL5Ml4Vqdu2qmUeuCeDsFfFiOvbSbERk
O1fFf+xb8aVtNPwSmDBa+E4FW23I7n6+odYUZ2ooWBaARv0r6HF5f2CazdfVP5qL
eDSV1+ezGU3h90Ocs4uYBZtkhlBMO4Ucz4ypbk5/DWkhH+Pp25GLZkdzkrPyfuOO
ulkdT76++QD3uu+AelwsF23yW8KH3NMWkomaed/N+iWFC4R4RJqLbSWcxSJxfPl9
twerZ2j85gHUQGzI8QOIgsxIhfzq+Q==
=WOc0
-----END PGP SIGNATURE-----

--zmapr4d5j6nd5icv--


--===============6461840830345034475==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6461840830345034475==--

