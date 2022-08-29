Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D50E8ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Aug 2022 15:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FF5Dsaoj9pg/czJnBLNrEDIMJ2LKMEjgu5zJpyA/Ax8=; b=Wo/2TBPK0iTi7kb8x7W3W+TSW9
	5Yy8qTbjCo157750Cuqc7Y4O6a/NgSIMDkHwxho4QouUZydYndewlYPbRJa2B4J+XoQBX8IzmBZK5
	0y22AMr0SeyUGfu6Y3fyGaoOagPMk9q5h/eT8J2NE5WJ1Dxu8iAIqqQ2hZzsqq9RuYUkanPeD3LsD
	6uR/p76n/SJmRG7UVXnVq6pBtcdu6rRWC13CU2Qi8Qj4ZaBKTnfrlPrtkT4tbsb2fkkN5LWI2/yDW
	yFHNd1hgRmyWPb8DTQkoPeNUq5qxE98LGe7tHitHpNZXHAAOgZJGxDN6y6TwEHLNGGN2PTNtoKvHp
	ieVfbaMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSgvj-00BRGe-8V; Mon, 29 Aug 2022 15:44:03 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSgvR-00BR8D-Gx; Mon, 29 Aug 2022 15:43:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0B9EE6119E;
	Mon, 29 Aug 2022 15:43:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CFEFC433C1;
	Mon, 29 Aug 2022 15:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661787824;
	bh=4PNAQAvCUsFccSS7sDfDcRqqhjiiTiNWG27WrEY28OI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NKiPFxEX8ubsQZXf3x3GDEhZKfzWFkDh/W8D6dA3aCQiLFZBB/J7N/q+PjVnbJ1/V
	 L9K/kqa3TDPoVUGTviXCoQyiCj/cF38wUL6/mnz1t7aleC50cJ0uRCf7I3oB9aLeAy
	 bNZYUt+P3Wqr7OqFnaOUL6FolVKD5oJjqr6pQQDEz53J5lcVBGqzaO6H2kE59mNJvC
	 QedDom7+52MdJePLmkk6OgVWwrvyxQI8b7xrz8D13R1U0momnloSeT9hbClgkcS3h1
	 O1opywiXcmanWyhAhWh95j4QigAq1JuMcJM9ntUZbroudSSkuMEpC8OuZPKpTlPbkr
	 RYl50BMuZmeDQ==
Date: Mon, 29 Aug 2022 16:43:40 +0100
From: Mark Brown <broonie@kernel.org>
To: Christian =?iso-8859-1?Q?Kohlsch=FCtter?= <christian@kohlschutter.com>
Cc: m.szyprowski@samsung.com, heiko@sntech.de, lgirdwood@gmail.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org,
	m.reichl@fivetechno.de, robin.murphy@arm.com,
	vincent.legoll@gmail.com, wens@kernel.org
Subject: Re: [PATCH v5] regulator: core: Resolve supply name earlier to
 prevent double-init
Message-ID: <YwzerCnjvTKsEyIi@sirena.org.uk>
References: <932DEB17-70FB-4416-80B3-C48A7C31848F@kohlschutter.com>
 <20220825212842.7176-1-christian@kohlschutter.com>
MIME-Version: 1.0
In-Reply-To: <20220825212842.7176-1-christian@kohlschutter.com>
X-Cookie: Necessity is a mother.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_084345_623976_F782D53F 
X-CRM114-Status: GOOD (  15.14  )
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
Content-Type: multipart/mixed; boundary="===============2131095469107580346=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2131095469107580346==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7tSS3dt8q5rPP2p4"
Content-Disposition: inline


--7tSS3dt8q5rPP2p4
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 25, 2022 at 09:28:42PM +0000, Christian Kohlsch=FCtter wrote:
> Previously, an unresolved regulator supply reference upon calling
> regulator_register on an always-on or boot-on regulator caused
> set_machine_constraints to be called twice.

Please do not submit new versions of already applied patches, please
submit incremental updates to the existing code.  Modifying existing
commits creates problems for other users building on top of those
commits so it's best practice to only change pubished git commits if
absolutely essential.

Please don't send new patches in reply to old patches or serieses, this
makes it harder for both people and tools to understand what is going
on - it can bury things in mailboxes and make it difficult to keep track
of what current patches are, both for the new patches and the old ones.

--7tSS3dt8q5rPP2p4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmMM3qsACgkQJNaLcl1U
h9BzXgf+KnfusKtcsjB9ILjjP2+jZth8EOVUrcSQ1eWVsI26muwHmEE91v4C7YFv
EtgzW4cRU0k9M766Mk6UaZUqToxKcmAvfP2sUg/VzHrlXljLq5+B8a+3SSGNNoe+
G2adSxucfxIpqqn9HXAJJTcpPuVUUX53LpYdXdw7yxrQr8jmVqGCR1YfrRnfgIgW
nG+n2JowmobA5H8B2nT3GA5QYyrsCwWUXJEjytf0JEGEEPOCXlylTcsBAE3Yr+RG
6FsUXXRlLaz0rlpWjCSjIgQNiYfhE0rW6KSLSiaaLJ0ZtVAoHonnpsxWWXVgXdXP
aLJ5Jp+VPK36CkS8Yjx6Ds25ptvv8Q==
=CJmJ
-----END PGP SIGNATURE-----

--7tSS3dt8q5rPP2p4--


--===============2131095469107580346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2131095469107580346==--

