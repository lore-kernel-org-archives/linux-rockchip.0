Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558F0606A326
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2026 12:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=SYr12Da9;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=E5XUhljX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=G6saAANiW8QS3Qd5mPHiGOlrp7V4LC12dGpLWa5NNhg=; b=SYr12Da9lXU1NCGpnyIbtvNOIC
	F3ROHm49NuTHVzfMI6EqpjEvyZYaA9Hj6J+WHF125y33eqHI6cEuAhJY2cVrFAjgjNWXGXw/dmtzw
	kIQwVNHgiaaPn0BbW6JdP5fcSxr4qi6qvNOdpp22TV9HlMlY2smWC9PMVf5fg9P83lu1pLtELwTmM
	ca9NnQvvyCJLr9eLmRkiUWBsERAKcbBJa1myuUsANAczxKNO7PXB2V4L8jUoIDS2Jl4wuRGB2Ofm9
	ue+5Aaqxedg+pC9gn/bpvEXkW6vQcOJtvqyuFOzLYd1+2kA5wO2THVSoKAkHuik/3zpdI/mYqhk1L
	sJQyM2Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPfc0-0000000EgOV-1xHG;
	Sat, 07 Nov 2026 12:33:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPfbw-0000000EgOG-3w0Q
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Nov 2026 12:33:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 599EC40565;
	Sat,  7 Nov 2026 12:33:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1490E1F0089F;
	Sat,  7 Nov 2026 12:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794054812;
	bh=jaMPW1tyP+uJf07r00aX8sEiYPtJLiXioKEigkez23Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=E5XUhljXyhWR1BvtH94HoQv+cz74b3lwKGuthd8UZLkDg4+pTQa0+Bqjkevz2ezXn
	 0vtRMNzoEjZEYHQMIaymkSxjFLBcNbBPWCIV9aylCVyTvSTL9Zvsnky994ASpzqBfe
	 MCh/PCHeviFzG/uVTSr28Z0w7Y341n7fvugm1YBVM6uVppLWxlILIq/93zTQDrHPO7
	 w1v1VRmxsUJ9zgD+Rtq1ntVhSOktYpz+vmR5Fb1BTtnNeJ0EBH7YrLBnHsMbKdDf8B
	 pQkBcVcy6HYEiaQsuFsujGnFXh1XbUdBxEVVWjwIznF7yGiULFVB81l6sS6hvUmBJF
	 6tMVafXp2qHxA==
Received: by traversing.sirena.org.uk (Postfix, from userid 1000)
	id E6CEC294E593; Sat, 07 Nov 2026 12:33:29 +0000 (GMT)
Date: Sat, 7 Nov 2026 12:33:29 +0000
From: Mark Brown <broonie@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	linux-spi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] spi: rockchip: Fix runtime PM underflow on CS error paths
Message-ID: <837464e1-ea38-4f41-990d-876711128e97@sirena.org.uk>
References: <20260806191854.922530-1-eagle.alexander923@gmail.com>
 <179397711825.3231166.14531785924256368148.b4-review@b4>
 <au6LMNctO1fx_Kcl@venus>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <au6LMNctO1fx_Kcl@venus>
X-Cookie: Whoever dies with the most toys wins.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0575349975408851109=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============0575349975408851109==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bibToZSqeWfQi63X"
Content-Disposition: inline


--bibToZSqeWfQi63X
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Nov 07, 2026 at 03:35:51AM +0100, Sebastian Reichel wrote:

> I haven't found the time to investigate more closely, check for a
> proper Fixes references e.t.c., hence it has not yet been send. So
> take this with a grain of salt, but it seems to be not Rockchip
> specific:

That looks entirely plausible - could you post it as a regular patch
please?  It's probably more important to fix the bug than to work out
the Fixes.

--bibToZSqeWfQi63X
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQReagvpf3TrrA7BoYYv73Ows9A4iQUCau8amQAKCRAv73Ows9A4
iYMsAQCQi7R5dv9+DhClm3dOkK6Qfg5ON0frbPavWRIh5njRAgEAj+/xkLjxUOrJ
F3H17y45oLE90NvyNnaf4ikP/MFCcAM=
=dfxK
-----END PGP SIGNATURE-----

--bibToZSqeWfQi63X--


--===============0575349975408851109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0575349975408851109==--

