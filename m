Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26E01C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jul 2022 13:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SX1n4yCgCtKdl5hOGyE3Am21hUs2FN5Xq89lg2L1svw=; b=ihSSNVTO6Pe2SFwNNvnl7aU1BO
	XO65F70ClIkUViI3Eu6L4OB+Q2yup747Bsevd1q3j1LVTioFUC/kp0wtUNy6q1tBzvxs+DTDPiCVq
	BZwe4TluirSPH0sWGm/kJT7wrp2R910f8ABYe8Pd9iMfndc90XzIUgQxQQOtDqp1t7HZM6PdfRb8Z
	6m0vgP0H1x9iy/q0ZUkYZOEVR4nSr9ZODbVgF+GxeSrHupqN7/slomj0/zuWd+DM/SyA10pw0BHzG
	54WWIwc01E47/Ci1ZvgNGtGiSejSLiSR+FyxfkbkthRr4D6gwOOBdLqFWV7AFdiJMZSlfF53aM6HC
	ilIs17XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAtOc-001t0m-D0; Mon, 11 Jul 2022 13:24:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAtOR-001sxU-55; Mon, 11 Jul 2022 13:24:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 63F2D6143F;
	Mon, 11 Jul 2022 13:24:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 459DFC34115;
	Mon, 11 Jul 2022 13:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657545845;
	bh=G70xBG379C6f8fJ4Hi2cSSohFChcI3TzIWyJTrOHcRU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jP1Zn0WWw4060K6LRNqkqIVb0fNrKWYIEtemq9b7lxU2Ed4QbszNV7H9tImg57LBp
	 lknP1pVJza3KXF4mLs6Zqd9J8gJ3KXmXg0RBqnwEttJVGSSzptaIp70UbREzJPAykq
	 3vo1gyzOkb6msiZdQfLwQa9ENLvwiduGQF/XSY7FhWkvPU84dFjygQNP61SZf29BPp
	 n/exw/dSDqizck/dAA/hmQrqfP/a8e3OvxIf8i2yutOWJnzW+zZLjZ+vBYl9H6+HER
	 BhcxlUFEW7TUqPRnI0r6fLKjAFEXTexuIROV8fIZD06D4Cat84xiR1A7NToT8sWBeb
	 Dn7953VK+tAVw==
Date: Mon, 11 Jul 2022 14:23:59 +0100
From: Mark Brown <broonie@kernel.org>
To: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: lgirdwood@gmail.com, perex@perex.cz, tiwai@suse.com, heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org, judyhsiao@chromium.org
Subject: Re: [PATCH] ASoC: rockchip: i2s: Fix NULL pointer dereference when
 pinctrl is not found
Message-ID: <Yswkb6mvwUywOTLg@sirena.org.uk>
References: <20220711130522.401551-1-alexandru.elisei@arm.com>
MIME-Version: 1.0
In-Reply-To: <20220711130522.401551-1-alexandru.elisei@arm.com>
X-Cookie: I am NOMAD!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_062407_259008_B9416F22 
X-CRM114-Status: GOOD (  13.78  )
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
Content-Type: multipart/mixed; boundary="===============7707202677763304730=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7707202677763304730==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8nxuGyPlmzXFliIn"
Content-Disposition: inline


--8nxuGyPlmzXFliIn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 11, 2022 at 02:05:22PM +0100, Alexandru Elisei wrote:
> Commit a5450aba737d ("ASoC: rockchip: i2s: switch BCLK to GPIO") switched
> BCLK to GPIO functions when probing the i2s bus interface, but missed
> adding a check for when devm_pinctrl_get() returns an error.  This can le=
ad
> to the following NULL pointer dereference on a rockpro64-v2 if there are =
no
> "pinctrl" properties in the i2s device tree node:
>=20
> [    0.658381] rockchip-i2s ff880000.i2s: failed to find i2s default state
> [    0.658993] rockchip-i2s ff880000.i2s: failed to find i2s gpio state
> [    0.660072] rockchip-i2s ff890000.i2s: failed to find i2s default state
> [    0.660670] rockchip-i2s ff890000.i2s: failed to find i2s gpio state

Please think hard before including complete backtraces in upstream
reports, they are very large and contain almost no useful information
relative to their size so often obscure the relevant content in your
message. If part of the backtrace is usefully illustrative (it often is
for search engines if nothing else) then it's usually better to pull out
the relevant sections.

--8nxuGyPlmzXFliIn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmLMJG4ACgkQJNaLcl1U
h9B/nAf+Kvf5A4KB+uPO75jiVyCWYLkssKsw3HPjAgF8EBe+8IPSH4bMdRcdnkQH
/pZO3j8srxvMN1ABFQcuRSwjkxGjKYw6JGKo7W0BjV20qZ8PwLWPIOb9VVEROFiP
ky6OFpD3u5KGXVx95J8syIOrgskyM+CQ+eczZQCezEVti0W/WeysP2nm96HChhQB
9CogIqhh3ta5E7G7aq74o2o9reistKq1WNh94UfjDGGmj62d8RWdCVkLTrHjqY5n
sMAZHBBjIFybtao7r1NtcwUwTsvGcUWqX1u5xFhBx8i3T8aWbC5M9a1wdNGGzAtM
dGv7Ol9LRhreIVWgVe63OzthpynCSg==
=AqBY
-----END PGP SIGNATURE-----

--8nxuGyPlmzXFliIn--


--===============7707202677763304730==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7707202677763304730==--

