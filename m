Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5645C00140
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Aug 2022 11:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kj/OlAmTL0J4sbncLDrpFVBP4IUdf/ID4sPIoafuqAQ=; b=voOI6OlsWnMZVeZ1lAbU73goII
	PxZUhVb/vhSbkYEe4/gtpDk12hHDbA7l2D1h4vHhgb8dEcMwC8xy5X1gQvD8B73GZTKOfhdbx5xJl
	4iblkAgvOn1NPvtagfLig7eMwEgAf+0gg0Z4gZAb2RW9IJEWF7o/OQKx4AfFcdwFKIKFex/Gc01el
	rRk74Hp9EqO6PPpQB6BGz3VjHu/Ik9MYqPkzEl8/xNVBL2rPMjYRurLM5oNwPgD9xuT+pZavWvPRT
	1ey7P8FUdrKkf4vBIDErGhlB4oQRSOFllfxpTsFbuA7rmhvVQvUuIAUjUPWUXK4I3u69dBZy7ladi
	tsT7iNqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNYAD-00FIS5-BR; Mon, 15 Aug 2022 11:21:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNY5t-00FF8O-Co; Mon, 15 Aug 2022 11:17:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E7C7561160;
	Mon, 15 Aug 2022 11:17:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21F09C433C1;
	Mon, 15 Aug 2022 11:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1660562234;
	bh=W/yaUD8H8osi7PCA/66K+FamhQo0vP2gI8ZlpSabsTU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gHYYImmej84M4LXH8eqS+5hGIRxVDwEtUkFtyAxqB0WiaqZrrSs9EI96GWgMLA2wR
	 kxPGeOGj3+Xg1KKroysyEjX4adZdkIZvFgs2ql+p7Crva3yqjiQjNeYle3zcSjYplz
	 tvHPd0Re2MdtoUR/g0MFJJ5TBrO5Hqb8cE39+5VBfiFh2LFhY1G+/X9nbbwtTMpQma
	 zLcVw/f59vNWR4hUG7Z5rM5yEhUJXL7UyltUQparIRyMCHA1EG4KhJgKxUJdCUoVUI
	 eGGL/PDv1KakBpc+188Z61aSMoVYhB654nWpviweRn0n0laFgcZdds8yS3mc7hI/Ue
	 E1fx9OnTtb/NA==
Date: Mon, 15 Aug 2022 12:17:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Christian =?iso-8859-1?Q?Kohlsch=FCtter?= <christian@kohlschutter.com>
Cc: Vincent Legoll <vincent.legoll@gmail.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	Linux MMC List <linux-mmc@vger.kernel.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	Markus Reichl <m.reichl@fivetechno.de>,
	Robin Murphy <robin.murphy@arm.com>, wens@kernel.org
Subject: Re: [PATCH v3] regulator: core: Resolve supply name earlier to
 prevent double-init
Message-ID: <YvorNPDQQr2SH/NF@sirena.org.uk>
References: <CAEwRq=qe+Frwpe=Zr4n_8A6vjOJnV3noegdnHSN7NTazkKejBA@mail.gmail.com>
 <EC5FFA28-21D3-4FBB-B188-7DB1C9E1AA9E@kohlschutter.com>
MIME-Version: 1.0
In-Reply-To: <EC5FFA28-21D3-4FBB-B188-7DB1C9E1AA9E@kohlschutter.com>
X-Cookie: I'm rated PG-34!!
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_041718_214863_379C3DAF 
X-CRM114-Status: GOOD (  11.31  )
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
Content-Type: multipart/mixed; boundary="===============3465378258332703529=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3465378258332703529==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BS4sURjwakEpPU/r"
Content-Disposition: inline


--BS4sURjwakEpPU/r
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 04, 2022 at 12:44:29PM +0200, Christian Kohlsch=FCtter wrote:
> Previously, an unresolved regulator supply reference upon calling
> regulator_register on an always-on or boot-on regulator caused
> set_machine_constraints to be called twice.

This doesn't apply against current code, please check and resend.

--BS4sURjwakEpPU/r
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmL6KzQACgkQJNaLcl1U
h9DrAwgAhaRSjo1ExkJa1YbJUMKKn/otOtBO7eNxVvWSciwG/IAiYAXEJ87HPXmS
HzfPMs5fyoix7TsGJenFDKFWIrVdURL6piTK4buR81ysMXuWTuHljsEZvMAS2fBp
aj7d67yUUfrlReiCowW5+ELF6ni1jKhbOM6mDJXCS7tA3V7HAy8+nht6Z68D/INA
p9y8+BXf+nyMRHZrGVU2l+HXApp8AmfAtqd3TDyJFrHygLZdEgWND/hmsVUAuWwI
s1gdUbg/ZjMB5QOB8LjnId6QApoNuVOcVJhMj1QiuxcUsRauCRiQTKHv8cdVCr8g
yIzW2N5bCkTkbK8elVvDSowLpjxTVQ==
=L30m
-----END PGP SIGNATURE-----

--BS4sURjwakEpPU/r--


--===============3465378258332703529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3465378258332703529==--

