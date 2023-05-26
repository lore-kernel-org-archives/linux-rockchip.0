Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8337C77B7E
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 May 2023 00:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/FsqbG2iVyAeTPGzVKrBBNefrPsT3iG2LHPkWet+2lI=; b=bzS8OM5fZu3D16pZaddkbJ9GhD
	iZLE+aajoypWv+/S6sMp7gW+qFptfAtpMJp27hc8WwmFdPLcf2hrcBBywIKZwxH6VEBiwy1P+DDN0
	/KMZ40vQCO/jHkJvmTIRkthhJ1WQpNt5Va8ucx6XXLfT4mJkz87FC1ED0DhN+88RnIoFlY2N+w5HP
	VDo1URM3uTNGjeMGjSQQCACsAKtIlqKQkeuYNtCbhgwBsL9atmTV9vmaaU4Y1mMSaa9F9fEtjBo+E
	pSTzHMofhLSU9wquNJNvceNOhzwixrUHtkA1IKxYqhzZH+0bioCH5jKc8O3cW7L8AFTQAhj55PQCB
	VbXztABA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2KsV-000SRU-0y;
	Fri, 26 May 2023 00:00:19 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2KsR-000SPz-2H
	for linux-rockchip@lists.infradead.org;
	Fri, 26 May 2023 00:00:17 +0000
Received: from mercury (unknown [185.254.75.28])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 504FF6606E63;
	Fri, 26 May 2023 01:00:10 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685059210;
	bh=SJiEXd6/8oMzmDefTMLfhXe8tjYP1lEXfOKt07RVh+U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ouQrKVkPYOoksse8vSJLLilFmm3rUE5tAp0uH/QPgCx0r7KOXq1mdDZMEhJsZEvkv
	 LnVhDac9w2ZN+kR7QZYKuabi5VmIRirjwaKpEJZb9wgYfcsy214O+32o7aQilmYk82
	 235JnKj6taV6USIumqXUUt4CFN/rsV1v19Jhav0vXbChJ2KaIHs76PtOdwSRk4P596
	 vVuCiJajLFZQ7V3b3pmoM7ZpqFk3K4bXIkW9bpPxlXfjFN4ov8WohO6+c0Z9bzy5Yl
	 K8ACV30Qq0WY2312YFcfejFnVtfu6Z2fNg9BrLVeTLCutG9K0iRPQw7HEP/k2M73Jx
	 jvhaoHuWZNd3g==
Received: by mercury (Postfix, from userid 1000)
	id 2FA031060A51; Fri, 26 May 2023 02:00:07 +0200 (CEST)
Date: Fri, 26 May 2023 02:00:07 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Milo Spadacini <milo.spadacini@gmail.com>
Cc: heiko@sntech.de, lee@kernel.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] driver: mfd: admit rk805 driver registration without
 interrupt support
Message-ID: <20230526000007.mt3opbr4zocm5j7r@mercury.elektranox.org>
References: <20230525070011.23761-1-milo.spadacini@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20230525070011.23761-1-milo.spadacini@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_170015_968204_0D474B42 
X-CRM114-Status: GOOD (  12.62  )
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
Content-Type: multipart/mixed; boundary="===============3288630869397156225=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3288630869397156225==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nbwy45zghn6666mw"
Content-Disposition: inline


--nbwy45zghn6666mw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, May 25, 2023 at 09:00:11AM +0200, Milo Spadacini wrote:
> rk805 use interrupt only for "rk808-rtc" and "rk805-pwrkey" drivers.
> On custom board these drivers could be not used and the irq gpio
> could be not connected.
> Force the usage of a not used gpio, that could be floating, could cause
> spurious interrupt.
>=20
> Signed-off-by: Milo Spadacini <milo.spadacini@gmail.com>
> ---
>  drivers/mfd/rk808.c | 39 +++++++++++++++++++++++++++------------

This will not apply to for-mfd-next, since the file has been renamed
to rk8xx-core.c in my patchset adding rk806/spi support.

Greetings,

-- Sebastian

--nbwy45zghn6666mw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmRv9oMACgkQ2O7X88g7
+po2qg//bDED4zrnREwdImHOlhboonEKRrrBCkRwOsISToq+lwXai2TC7JGZCseU
Le7IpJNssGuZ0TC8bUblZc+5JUv9JKzFORjeIdUAWnHGMcTC0TtS6rR2toiE11Yu
+vnAht13ybz3ljIm5ysiclGdbZbe0mRTrCgRwthrC+q7aqDObXEwDuzcUlnLkATV
ambH5yWQcA8yTGQ1tP+hPeYE6QN9c7S3cPJUgVpI0dME5P4jLq84ycqhU8eH646D
QsoKWSOCoAjOslLVwss7tzuZYmwG36cAgYR6i69hlRUQbY6/TlhIeN45cnTs+EQ/
ucyRpRR3QVm7YAptFSfoWe0XUCh/f00YnpClmPbYmgyYvhE3BQE4W/3sS1RLST9x
FBGPEwe6YkjAoS+tsR+VtZBD3CjZkAwY5giwS2Fs0KXxqDqKGLq21Yn0hi9wRERb
y0aoHpW80H9uVO/WwxfIKKmTE1MobEXYSjYypc8VhvHpsRB68fjhNEg/FDm/fTsT
tiPfL3dYdHikRQlb8hQFENgLGoyUeR9rjHORJMpXw1YXM4xnYh8aa/lrwYcKR8ZD
/BSqIhuk5Af8vo+WIWKlrEAjkptp3laqY46vHGAzkrtXQOnWc+jS8ACuV9kuTYcp
WKKvWbzRBVU8JpmzGDjMIhXzQCJG1XAUf1Cxh9etNNcAm+7Cjo8=
=uJKS
-----END PGP SIGNATURE-----

--nbwy45zghn6666mw--


--===============3288630869397156225==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3288630869397156225==--

