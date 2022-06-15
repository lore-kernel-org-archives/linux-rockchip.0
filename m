Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD7A2C43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 10:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=roWiuJzJHKoL5JbHLpkV3LcgQcpsFsbbFGt5Zf65EaA=; b=ZwmrEH5woF/6aOc949k2XwkTpi
	BLTl1HgPF5ioSJyNtpD9j3mAtUMYT+j0jX8DXSeORtunM7x1kWf2d2nUcrKUJsHAlr5pBp4mZQNyA
	tAnwwYuMb9Add+mSsNgKHAStEolLNc0sKV3TqfDIMCjtQdXBsTs+28e7nUiQMeQZMCdkQUBbqJeyX
	UNVEh/N4L+7ZVF4aaXbXBwqNcgSrRaQS1p0txv0pjX/0La88CX7/y+SGV/ZvrlD5/GkTt60mW4bPP
	2MOqWqRzG+1s7COziN19zO5cw6zGb7/vDReEzzTL/rgkkw0hIfD9UlF4TPTBe306Ob6kUPsIbU4Ep
	PEgLS3BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1QSk-00DuTz-HV; Wed, 15 Jun 2022 10:41:26 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1QL6-00Drat-BV; Wed, 15 Jun 2022 10:33:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id B348FB81D68;
	Wed, 15 Jun 2022 10:33:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F4D6C3411C;
	Wed, 15 Jun 2022 10:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655289209;
	bh=1J5FIdCXMTdaAREzoK9hwYKt1T9ZVL6B+SZnop3VnVg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=I+w70pC8ZPbD1S9qVrTDD7WcD736w3zQdRkBEPv95DCFnodoajia8Xr41uPX+V0+9
	 So0HZEsWVReh4bJirWgS9hKoVNkkBE4p9nQ/rQMJhQow7i0YoxF/Lv6Ie6GDrJMTG/
	 RF/T7zxQT6/P0fKIhYGTtltc3XNkG5FPOvh1/sMJABLfsI1Ymp+QMc1r1xxCiMtRKn
	 XKiNTulrj1supnwV+t+VJ9/X36BcRCyJtS4fF/qdlwq7APXtrXCrwiI7Mb7ERdDq7c
	 CCsL01YTqaJarU1wU94lgizcQqMVgg3w+Tm9WnGyCVgzdfAShAUWcUmYFNtcUfE2vq
	 v3jQU9qY2uppA==
Date: Wed, 15 Jun 2022 11:33:21 +0100
From: Mark Brown <broonie@kernel.org>
To: Judy Hsiao <judyhsiao@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [v1] ASoC: rockchip: i2s: switch BCLK to GPIO
Message-ID: <Yqm1cTfq1AA/mAV5@sirena.org.uk>
References: <20220615045643.3137287-1-judyhsiao@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20220615045643.3137287-1-judyhsiao@chromium.org>
X-Cookie: byob, v:
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_033332_590146_38E52B09 
X-CRM114-Status: GOOD (  17.77  )
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
Content-Type: multipart/mixed; boundary="===============5055734601073476338=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5055734601073476338==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4CmsN/CfvM2oLYC0"
Content-Disposition: inline


--4CmsN/CfvM2oLYC0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jun 15, 2022 at 04:56:43AM +0000, Judy Hsiao wrote:

>  	i2s->bclk_ratio = 64;
> +	i2s->pinctrl = devm_pinctrl_get(&pdev->dev);
> +	if (IS_ERR(i2s->pinctrl))
> +		dev_err(&pdev->dev, "failed to find i2s pinctrl\n");
> +
> +	i2s->bclk_on = pinctrl_lookup_state(i2s->pinctrl,
> +				   "bclk_on");
> +	if (IS_ERR_OR_NULL(i2s->bclk_on))
> +		dev_err(&pdev->dev, "failed to find i2s default state\n");
> +	else
> +		dev_dbg(&pdev->dev, "find i2s bclk state\n");
> +
> +	i2s->bclk_off = pinctrl_lookup_state(i2s->pinctrl,
> +				  "bclk_off");
> +	if (IS_ERR_OR_NULL(i2s->bclk_off))
> +		dev_err(&pdev->dev, "failed to find i2s gpio state\n");
> +	else
> +		dev_dbg(&pdev->dev, "find i2s bclk_off state\n");

This should really validate that it's got both on and off states before
we start using these, especially if we only have off, since we might end
up being able to do one side of the switch but not the other which won't
work.  I'm also wondering if it's better to just use audio active/idle
states rather than saying purely something for the BCLK - effectively
that's what this is doing and it feels like it might be cleaner and more
future proof for people to disable all the audio pins rather than just
BCLK and then switch them together.

--4CmsN/CfvM2oLYC0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmKptXEACgkQJNaLcl1U
h9DonQf/TZGhSlKwJZPQlFmypY1sEE1OjAFYsmr7k+A+owQ3xj2wv9RAPQrb2s5W
No05azxh5PaZe5ZbGA64pH7iDbDcGuffc2QxlnJZgA0vg+02kuZd3lSdcsXcaiDj
oq6oFh0qPN19Fftie3BNVhQ6NLIclG3fszY0eLn+O2VfSIPSb5BrwQJuEKUth1yR
GFAGoVg3kpU+7Vk3apesZhhqrvNLy8MtQ65h2Rn73tGJxPhsrWcqnLQ7dsg+seVO
U4go/CaOBnSS8Cm8zFoxdG9o6xGyPgabb6+uWVAR8ssRkvv4FqCWSl1IBxrSRDpC
XhYLgerh8VFllC0Rgb+v2CW81EFB5w==
=uIhh
-----END PGP SIGNATURE-----

--4CmsN/CfvM2oLYC0--


--===============5055734601073476338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5055734601073476338==--

