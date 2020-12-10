Return-Path: <SRS0=ULk2=FO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2AC4FC4361B
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Dec 2020 17:48:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A683823A33
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Dec 2020 17:48:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A683823A33
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=e7C1upONp1f9rFwW1ZvmIiieI+EX2X5QFIktxrquD3I=; b=1R/W1uj/0sOc4ykfFKKqUyLjs
	MDS1Kv10HoOok3XFhJ6sWRUdY3YXctK8Zie82XhzVSJVkVaCWAMiTelKESdFuDoSR7/9+AFrXjSWO
	DJyicrVHt/YF2Kv/Mzxq3sMv/RDyeTRjIt9ln36DK1tdeoFtgqLWz1l74w/kpcgc0HfwP68twM6oP
	8abpRl4gyQtOe9SuCPOQtw4zXArpRx3VBY/drhl2bc8XokZKrFoVfzetXjny/CXbag6Mue3D/qfGa
	XuSim5jQWphsZXZ3+SMg7U7LkmgbNSvLfQRES4qLGT8a0RXPAQFD3Dbxr76ZnBmo6c4qgrxrBXiVI
	31ODKa+Tg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1knQ3S-0004q3-6U; Thu, 10 Dec 2020 17:48:38 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knQ3O-0004nn-57; Thu, 10 Dec 2020 17:48:34 +0000
Received: by mail-ed1-x543.google.com with SMTP id v22so6439862edt.9;
 Thu, 10 Dec 2020 09:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MIPWP2OM1cbNjuKo30WB/tkf0M599p/rN0R+uQzvwuE=;
 b=XM/qN9JfODk94JDmh98OhsbR4f5+0jSlpfPrAM/AW26vqxsevXOdBA1inFj5pG6EkO
 Z9UpFyo6C/nJZdMjwQcqxeByiaWeNFTKodkmjV1Ek7vI4s07baK9C1U28iB20kxWVBlD
 3jedpEt+UJqIGGzUUI/lwavC2ssPz373KjTFWj0C04OxnbuoTH/AB+BTLbDJygGqtUf+
 65miDmrBT5aTAmRmJe36Xxx6UVCFm0cylddJO2FE1ij/24YDe/zDjR05V1mh6Ra2Nfc2
 YBntgHQEeZ7UavKT4I92fqPabbwepBzDpmMXAMuBL56HtO1ovrjwczLRndDxKCxbOvca
 yX9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MIPWP2OM1cbNjuKo30WB/tkf0M599p/rN0R+uQzvwuE=;
 b=gW06He5C0K5G3P0iQKqKMPO+rViVdES7ePMiRmOBYYuELYeqDi+mU6S8j1k1mApLFt
 qEDNCQ+mvF4Hc+ofYkEVL8FS8wXuZtUVyms5jF4v1KAbayFlkTWVoxGbo7oJt6AceQOy
 rrexqW8zppEdzNJw/UyIOkphiStSGmUkPcW3zUFDLloL1Qjs7RCPv2rJGgVnWhbr2oKR
 YnUD8zCqjZ+cmAGgyKkjPb1/voSD8Lk4HWwrkdcCvWBDTeVUqvpbc4OopfgMVT4bhNDM
 62OGsDEKQ1VdtAvmWkuqBabKWNOuXgeprZxLYRRTQ7ZP24/RHbaC6lwstt5w3vuPRx5k
 FJTg==
X-Gm-Message-State: AOAM531idL9RBdSd2WbR4fpDKsEvpPq2ow2vL/pGy6B88gCshc9jCz+Z
 yWPP39PFn+yeOZox/vmaPu4=
X-Google-Smtp-Source: ABdhPJwrC59HdIGVlua9Wwgr/XoPybTTNivOnXAaeGf6JlkpPnUvp21I5kj2NFTQLgHFYS/KyaqM1w==
X-Received: by 2002:a05:6402:4cf:: with SMTP id
 n15mr8012070edw.241.1607622512806; 
 Thu, 10 Dec 2020 09:48:32 -0800 (PST)
Received: from localhost ([62.96.65.119])
 by smtp.gmail.com with ESMTPSA id f24sm4750394ejf.117.2020.12.10.09.48.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Dec 2020 09:48:31 -0800 (PST)
Date: Thu, 10 Dec 2020 18:48:30 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Simon South <simon@simonsouth.net>
Subject: Re: [PATCH] pwm: rockchip: Eliminate potential race condition when
 probing
Message-ID: <X9JfbpTnfqUVk6iN@ulmo>
References: <875z5nof46.fsf@simonsouth.net>
 <20201130004419.1714-1-simon@simonsouth.net>
MIME-Version: 1.0
In-Reply-To: <20201130004419.1714-1-simon@simonsouth.net>
User-Agent: Mutt/2.0.3 (a51f058f) (2020-12-04)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201210_124834_209609_D9913190 
X-CRM114-Status: GOOD (  26.74  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-pwm@vger.kernel.org, heiko@sntech.de, bbrezillon@kernel.org,
 linux-rockchip@lists.infradead.org, u.kleine-koenig@pengutronix.de,
 tpiepho@gmail.com, lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1763101167377241085=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1763101167377241085==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="gaMZ9YjfFCQG1Hdo"
Content-Disposition: inline


--gaMZ9YjfFCQG1Hdo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Nov 29, 2020 at 07:44:19PM -0500, Simon South wrote:
> Commit 48cf973cae33 ("pwm: rockchip: Avoid glitches on already running
> PWMs") introduced a potential race condition in rockchip_pwm_probe() by
> having it disable the clock of a PWM already registered through a call to
> pwmchip_add().
>=20
> Eliminate this possibility by calling clk_enable() for a probed PWM's clo=
ck
> only when it appears the PWM itself has already been enabled (by a
> bootloader, presumably), instead of always enabling the clock and then
> disabling it after registration for non-enabled PWMs.
>=20
> Fixes: 48cf973cae33 ("pwm: rockchip: Avoid glitches on already running PW=
Ms")
> Fixes: 457f74abbed0 ("pwm: rockchip: Keep enabled PWMs running while prob=
ing")
> Reported-by: Trent Piepho <tpiepho@gmail.com>
> Signed-off-by: Simon South <simon@simonsouth.net>
> ---
>  drivers/pwm/pwm-rockchip.c | 45 ++++++++++++++++++++++++++------------
>  1 file changed, 31 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
> index 77c23a2c6d71..7efba1d0adb4 100644
> --- a/drivers/pwm/pwm-rockchip.c
> +++ b/drivers/pwm/pwm-rockchip.c
> @@ -289,6 +289,7 @@ static int rockchip_pwm_probe(struct platform_device =
*pdev)
>  	struct rockchip_pwm_chip *pc;
>  	struct resource *r;
>  	u32 enable_conf, ctrl;
> +	bool enabled;
>  	int ret, count;
> =20
>  	id =3D of_match_device(rockchip_pwm_dt_ids, &pdev->dev);
> @@ -299,6 +300,8 @@ static int rockchip_pwm_probe(struct platform_device =
*pdev)
>  	if (!pc)
>  		return -ENOMEM;
> =20
> +	pc->data =3D id->data;
> +
>  	r =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	pc->base =3D devm_ioremap_resource(&pdev->dev, r);
>  	if (IS_ERR(pc->base))
> @@ -326,21 +329,38 @@ static int rockchip_pwm_probe(struct platform_devic=
e *pdev)
>  		return ret;
>  	}
> =20
> -	ret =3D clk_prepare_enable(pc->clk);
> +	ret =3D clk_prepare(pc->clk);
>  	if (ret) {
> -		dev_err(&pdev->dev, "Can't prepare enable bus clk: %d\n", ret);
> +		dev_err(&pdev->dev, "Can't prepare bus clk: %d\n", ret);
>  		return ret;
>  	}
> =20
> +	/*
> +	 * If it appears the PWM has already been enabled, perhaps by a
> +	 * bootloader, re-enable its clock to increment the clock's enable
> +	 * counter and ensure it is kept running (particularly in the case
> +	 * where there is no separate APB clock).
> +	 */
> +	enable_conf =3D pc->data->enable_conf;
> +	ctrl =3D readl_relaxed(pc->base + pc->data->regs.ctrl);
> +	enabled =3D (ctrl & enable_conf) =3D=3D enable_conf;

Given that we don't enable the bus clock before this, is it even safe to
access registers on the bus if the clock is disabled? I've seen a lot of
cases where accesses to an unclocked bus either lead to silent hangs or
very noisy crashes, and I would expect something like that (or something
in between) to happen on Rockchip SoCs.

Have you tested this for cases where the bus clock is initially
disabled?

Thierry

--gaMZ9YjfFCQG1Hdo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl/SX2sACgkQ3SOs138+
s6HrOQ//dVpAbZnq8fWIuaU83TUbuUj/vtYcX/nMDI++3suUf/tvrcvmoYdvQXk2
Sq4B8FsiHiGCjOvpiNub1Frwx1GFsnhBbORC9xUah32F9Liu37STXOGP7pDK9ZGG
mZ9A2QPSNDGwOii5OfvubSUbPCJdPBzW00Nn0D3VUvxyvsle6HZfWPnoWIwW1oXP
yH/Lsh9fM5j01AznCmz3DvSVv7UH7e+1BpPL06Z6EIa669BiNLeMjTJYz4AREcWp
nvgOxpbSd6i2QPUnCsW/I9ghFrRN6oHniDcrwHgZ1BF3z+BfR06Iul8jI8Ucge0S
KxAeZ5IeAjEHo1itjl2OqgtRjKWFgBYUM3/waDyLHm8y4E7oGuH6BsBIMm5Y+XtM
EchvYZ6oNXURWObnw63ZL4pBEYuAMGutrug6VuhUWsMD68CaGLhm1lfW5ANDDp+e
Fhs33uwTJou43k4+bysezc9ejuyevdZ/crg30ttYiT/x+W5jMhcDNI/xn85gcPOx
bVKzo6QyYnEm0eUVB1PMRFDFFuJY9ShN0df0oe8h0heMPMbZP3qKoOS6OU+CDCcl
ljLVfJ+MMFdrNVDd+v5SIXkQiY27xfQufKNUIB1hJsjKzPM6XbxscHH/y1bUTv5g
mbXTDQZvPWx7rt+b5mJvoh0AuwS1uYw4IGofWhsXK50pLwTWTJ8=
=NKWq
-----END PGP SIGNATURE-----

--gaMZ9YjfFCQG1Hdo--


--===============1763101167377241085==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1763101167377241085==--

