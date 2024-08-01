Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60E00C3DA64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 15:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PN4JWSnED5EGI/0WPlyK5KN3y2hC00S0Fwsr/9RPgEc=; b=e2Tjo9AeZzhoiRz6wTrCfEVnnc
	Rpe7P+r3kJehMBDLjczEmf34g7CtjK/Bff7TYRA7O1gSiju6SkSsPFXBwb5jotViHoyaMgJrDeJCM
	loelYSNM0DecePGOy46+TScT4TB+qpdspKWc0qLdHLkoIP2XSkFe8tcSamo+TAiL95wb2ykBJhLZG
	6xV1JrfvMV10r3nTXueOb3qjHk42x7kYEPHFEZYvQiI6L7I/b1Bp+EpmtVyVje4p0Dvp/GPxkR+5E
	ohrGrLghILqo9o5mhGTn5X5XFj6uxueLqPCU3iW4MimrwB8fJh6lzZHpsmjsTkyffxeg7xfzp2Bpx
	utZFJOmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZXdN-00000005qNZ-1MMJ;
	Thu, 01 Aug 2024 15:22:29 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZXdK-00000005qM1-3uzX
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Aug 2024 15:22:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722525744;
	bh=zWV9fwEvLkpA9pAeJ3oXXYHMJLMCa0NehNRH5O/nh8Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rUfvYyZsOxApkTth73GusmRQGJN5JbQZgYt/0D1/aWxoQ3Nt+bKxILAE34nC8yFxW
	 YrmqkM9sIUv152l8ePXuya1qxFIQvHalvOAPjyC3T/Tls0ckcaS/BzS+gH1mDnaQoN
	 JhFeoA4PyVB7brI689Ndzi7PU0gQQbzoo6ERWQgq0iNIALzmegacW2yM6k3msYRnCl
	 1FZbjC25KfTJvt/xIQL/8oPgoa1i31vTnX+DH6SoWNlz0B8ypmS0FtfDtScp6peiOD
	 Rbtuu+0FRrvFBH2ZTefICx0CtY55HwS3Vw8Ur+FFWByq3Hm9VBvNY4TeCP5vcpugM2
	 bxmGdQFEG1GXA==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id C6BF73782167;
	Thu,  1 Aug 2024 15:22:24 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 70DF5106097C; Thu, 01 Aug 2024 17:22:24 +0200 (CEST)
Date: Thu, 1 Aug 2024 17:22:24 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Lee Jones <lee@kernel.org>
Cc: Dmitrii Osipenko <dmitry.osipenko@collabora.com>, 
	Mark Brown <broonie@kernel.org>, Urja <urja@urja.dev>, Heiko Stuebner <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com, stable@vger.kernel.org
Subject: Re: [PATCH v1 1/1] mfd: rk8xx: Fix shutdown handler
Message-ID: <ih7hiojzuvqzpyipj66mgu5pmcderltabim7s5dnfzm6qpztbh@jqkst5tfw5ra>
References: <20240730180903.81688-1-sebastian.reichel@collabora.com>
 <20240801131823.GB1019230@google.com>
MIME-Version: 1.0
In-Reply-To: <20240801131823.GB1019230@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_082227_129993_34D80AC4 
X-CRM114-Status: GOOD (  21.11  )
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
Content-Type: multipart/mixed; boundary="===============7980438713913174507=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7980438713913174507==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5ij2xz22fzghfnfr"
Content-Disposition: inline


--5ij2xz22fzghfnfr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Lee,

On Thu, Aug 01, 2024 at 02:18:23PM GMT, Lee Jones wrote:
> > +	/*
> > +	 * Currently the Rockchip SPI driver always sleeps when doing SPI
> > +	 * transfers. This is not allowed in the SYS_OFF_MODE_POWER_OFF
> > +	 * handler, so we are using the prepare handler as a workaround.
> > +	 * This should be removed once the Rockchip SPI driver has been
> > +	 * adapted.
> > +	 */
>=20
> So why not just adapt the SPI driver now?

This patch is simple and thus can easily be backported, so that the
Acer Chromebook shutdown is fixed in the stable kernels. SPI based
rkxx has been using SYS_OFF_MODE_POWER_OFF_PREPARE from the start,
so it's not a regression.

As far as I could see the SPI framework does not have something
comparable to the I2C .xfer_atomic handler. So fixing up the
Rockchip SPI driver probably involves creating some SPI core
helpers. I'm not yet sure about the best way to deal with this.
But I guess it will be better not having to backport all of the
requires changes to stable.

In any case I think the next step in this direction is discussing
how to handle this in general for SPI.

> What's the bet that if accepted, this hack is still here in 5 years time?

Even if I don't work on this now, I would expect somebody to have
issues with broken shutdown on RK3588 boards before 5 years are
over :)

Greetings,

-- Sebastian

--5ij2xz22fzghfnfr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmarqCsACgkQ2O7X88g7
+prvRA//QpziJs2zje1Qs5sT0QdiKwVULJnHSVmN2UsJp8Nw8PlCA7Mroafv8j9l
rrWa+8tAEtNgwOrjqKJQRt3wDg5kIK/w1MOJ+JN1Du+miRL1Wa8c2TB51E8dLjZC
gFPg5jZMcqon5+36cDEOn7x8nNv5rZyWcYf6PKtdtz1/88KhFPX55J9uX7rR9WGR
hRci+TllwouFpCAXe5CI2TSUWE69Bma3hrzpuFC8iqTesC6K42qqaV74JkuKMRLx
uoJ3zwBMChMZsrPjf8sFQpl/DQc3/kGOJsf19QjvYa+IOyDYUAWsxDDURyyifiXG
dQhXNyWe93tXKtqwqO1aQ9n/faqMvfN22mpUM/9/XRy7E9OZ62x4pW7CgspIDRUD
DN5CntPyOdGOAvY0v87PwwGo17LMH5BHP/TycsCAjBV1Euld8JAwK5VXBdZehYs0
Wf3TJ32Vu6dNugbXthA5p+l+auW8cFw9mYujAo5N++ao0VoVRYh8XdzUj6EcuYDn
v38wN8S8nzqoH9qgrjsopJ5e936s7uw5soeLnjtHPZmXxopFaXo82ky1MUBLeQeW
1gjeYMSqwicmW/XruQy5mm+8SCzI95d9l9GiJXavEmyBWBC1R2J1cory+m2KOvEZ
IZACNzdWQwXOyjzKtG0wLkxqB+6UsNg2NUebLYUO5div78AcDnQ=
=6MRC
-----END PGP SIGNATURE-----

--5ij2xz22fzghfnfr--


--===============7980438713913174507==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7980438713913174507==--

