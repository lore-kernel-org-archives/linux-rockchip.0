Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2F6FC04A95
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 12:02:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=V9WYWLBog0rZ7s2vSErnS3kRG4ZP1bWVriuLJDlKAkQ=; b=LfohDTpxrqyKU/XAwcK8av/1lV
	qFLXSrJcP16DAsQeqkMXQXO1Iw2ByI2WE1U9C3mkh7+moARyLrwHSVX+mJANyld6521DiUKF0T5RF
	/chXA4IPqahAwiryhJYcV/bhzJ9HFFxDOpC+lC6mx/9peV2sk7oMVRXTnil4uiVlurtodHCeo5Cxx
	tuRCK2nN6xChcLrfSxYPtN/7zVKah3lga3TloQkhO7ussRLRwPwqnwveuIW14uylPH/ucQRvgR9Vf
	CaqDK+/vGIESYLNJNY4Qv21MFGgzMN0y+TbtaevU2ISg6MhEXsPmzGT4w5Xy6RsvGkQBpypeoKSWF
	vKplJvPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odVlI-00G69L-3m; Wed, 28 Sep 2022 12:02:00 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odVl5-00G64F-0z; Wed, 28 Sep 2022 12:01:48 +0000
Received: by mail-ed1-x529.google.com with SMTP id z97so16903902ede.8;
        Wed, 28 Sep 2022 05:01:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date;
        bh=dxu2OvV7EkR74oImSWAPrEQpf5qWpS/N4G3imzt8Kwc=;
        b=HHhCI4hsQ/1Jg0qSAdwJQahZ4v0r/djosFNCZo+7gJjD8TDjTb797Ll+nplojKCnoI
         xNK0aCuPFMoqzotj1wtxmm7yYdMirHmqP0OkmdrWZ0uUGSRhoii6M6x/SsAadLtMq9YH
         7v8rh4ENnA7vPNAnYMj1Te476d9dcexdcCXyDQKPblnYZOP7PuQzNimZzXFBehYQSDhh
         z9r43ZPQYd5cAIrqo50yPFAn1fB0ScqOyDl9sTXVGWzosvaSH+KD/nZdR4wTVS4WGvGO
         nXeilgGK8DnjOAwuu/EJLMesTVGSQt8N/i9bk9QAJ6w4skiKgjKSny7TRdMSBMTAZLIl
         p0/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date;
        bh=dxu2OvV7EkR74oImSWAPrEQpf5qWpS/N4G3imzt8Kwc=;
        b=h10Phnmb376rr4QiKwmQT81LpQavtUMi08OfsBTYAtMgp6MFO0sBLJfUfbE3iUEAYS
         q5Zc6OMvvnBBscsBvFqB2YHMxPTJ5IaKZYYvHO5JwYquRoYBe42MH9+EIWdaRk9z0hTL
         bW285/DtkfGJPV76WC8pLGK8J4EUwzWAcaPh815avSB62bZDxtxqntGJlCxoKNIVqOLO
         8RyB4GxChctGc9rhZByVDVj6n8aBKGgKhUM3uWopgaDtYz7MOrIRx8SzJVYh1X9K2QZR
         DmWo9DuvljrxDjW3+WZh6IREHmjtAQ0XyyskGkoB8PgjVl6r/DBPEkpqo2oZ8MeyJfl9
         c9tA==
X-Gm-Message-State: ACrzQf3tV9FK3jSH78EtU9pHgQ9vNLQH+zy4Km6y9074yOYw2G0fSxmD
	NQFsFHZIKI1EGXsjsGFODQX4N+qnyxU=
X-Google-Smtp-Source: AMsMyM4dNSFiIdi46xobvaunWwBUgINlADlsibMnyAgKQil1xkGkAYqSRar+ptRCxG6+cAiwlxJg1g==
X-Received: by 2002:a05:6402:249f:b0:453:eb1b:1f8b with SMTP id q31-20020a056402249f00b00453eb1b1f8bmr32545025eda.235.1664366504775;
        Wed, 28 Sep 2022 05:01:44 -0700 (PDT)
Received: from orome (p200300e41f201d00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f20:1d00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id v2-20020aa7d9c2000000b00457c321454asm2914946eds.37.2022.09.28.05.01.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 05:01:43 -0700 (PDT)
Date: Wed, 28 Sep 2022 14:01:42 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: zhaoxiao <zhaoxiao@uniontech.com>
Cc: heiko@sntech.de, u.kleine-koenig@pengutronix.de,
	linux-pwm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATH v5] pwm: rockchip: Convert to use dev_err_probe()
Message-ID: <YzQ3puvqsnWgnVQs@orome>
References: <20220822081848.5126-1-zhaoxiao@uniontech.com>
MIME-Version: 1.0
In-Reply-To: <20220822081848.5126-1-zhaoxiao@uniontech.com>
User-Agent: Mutt/2.2.7 (2022-08-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_050147_092054_699C49E2 
X-CRM114-Status: GOOD (  13.18  )
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
Content-Type: multipart/mixed; boundary="===============6253377532526138170=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6253377532526138170==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zHYWCWBx7NmYQlRn"
Content-Disposition: inline


--zHYWCWBx7NmYQlRn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 22, 2022 at 04:18:48PM +0800, zhaoxiao wrote:
> It's fine to call dev_err_probe() in ->probe() when error code is known.
> Convert the driver to use dev_err_probe().
>=20
> Signed-off-by: zhaoxiao <zhaoxiao@uniontech.com>
> ---
>  v5: delete the redundant ret and %d.
>  drivers/pwm/pwm-rockchip.c | 18 ++++++------------
>  1 file changed, 6 insertions(+), 12 deletions(-)

Applied, thanks.

Thierry

--zHYWCWBx7NmYQlRn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmM0N6UACgkQ3SOs138+
s6Fd8w/+OgFefafybG6NdOA/Xib6VZJm2VIPFCndAetyNtEM+EgvkjFigNoSCYjS
x9BKfY4rMC+bqAdHLg+OLqHsYTH8hz7OiGHovIZMaTrF7A+sMkNzspjJeM7JdM+S
P1eQzcZbnWE/RQxk7eu4MXJtUxR66+quCkXAdQE1+HmXGECubjLG2j3aBXFDG3On
PMRc3p/gRZ/pbmwbv5K5dLDAbvb93xEjr+6TYPQBFSsM7N3Oxov8K29MkkrBDhAK
T8AbP7qF39Hkld+8CRVPIMO4ShYGoCF5F/boN/+LIRjyjHRRvVMZUf9OB6Z0Peed
nqORMItNM+YAuVGB/QWAAuU7n7GAMzH8IiMx112V2upFeArtKLnqvsTi+1GmCxXc
vCnAnZIJqZdJ0zF1G/aSY2ZreDUm4yUl1RO34soF9TrsaO7Mpw6oatqHsh/op0G2
lWWY3O38m/YW18XU5RD1TuU/+pEahfW4AUHCvB9khHe3o6lQev0nCZppM1UmyUmy
9ipeLbqDfyHzzqCOS75dDf/RpnY3ySKfXQgxzp8okbxBSba4PdKWGlL9Hdvo9CZ/
OZyIFso8paDKqTiW2jlpi8oZQr2YxAyhcm9qGRzUjHbK26VkF/IUNEr98IKva5uQ
t2lVXy2OCKdcm1xPzAoEUdTNw/w6H5HDwlm0icqapzWzlmt+JDI=
=IiTE
-----END PGP SIGNATURE-----

--zHYWCWBx7NmYQlRn--


--===============6253377532526138170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6253377532526138170==--

