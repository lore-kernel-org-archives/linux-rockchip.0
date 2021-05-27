Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7AF4C4707F
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 13:06:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 924DC61073
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 13:06:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 924DC61073
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wm3i4EGXf8bQjg4El12pNflLNCZTiDAk7qvolciRALs=; b=XQsC4qWZYyKQ2c594XB9fW++q3
	hPHzYo6okpRxWz+W09Y3bJR7Ej73mSfHesbRbNtfEWgMuqXBBZP95PIPC2sRMvCSacdH7iPVsCNwG
	2WwARSO13W4jWa++INZtoULQ1CI5BhXYmdZ0wmfu/bMP1acZKlA1OuXzw4SdX/C74wfLTRx9DletG
	as2PWp02Zw0jsTU+p4JjmU5IdknDtaFBnYp+RRS463vPHnd/pj4PwY9CMbwHncxo1zMnPCTHQfmSg
	8KPOX1kTpgvklKFFt3kDzqXerv3wVX7jvXWih1c0MM8GhUjad+jMjc5QuuzQGH1WnQbgkqN+D4nbA
	iWYByOpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmFiY-00626c-Ol; Thu, 27 May 2021 13:06:30 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmFiW-00624c-BM
 for linux-rockchip@bombadil.infradead.org; Thu, 27 May 2021 13:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=UXGNIaSzoW/C0FndVcq3C1mNY97nbWGbAJ+OPbR6xYY=; b=HJoRakQ6gpGjNFB+KZqScXqinX
 y6sD/3iks1DhrptgsRIJVQwizi5VQPkgXSqe71o0hrd/U8LKmI0oUVwXl/2QOgL+NAK/VyhErKu8S
 97c/nnSNeecEssDDyXbUAXDL6U5k6K5YfAzAiWWn1g7dB5DQPUhLRbJRW4cFDPU2pu7su4V7c9L+f
 xIejpwWye5tOArJjqnQ7BbuMxFmmzNyKrxn+11g03zfbXY/o3qS/nGl5iTGM6pRxKlW7Y8E3X0QON
 rk9a7dWOrykBFl5EvbP39glDkOJc8pCSHxRcrU4rcF1fNgo31LmBE6lP4XVePiGzMznEsqcSqk69O
 l9J2NMiQ==;
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lmFiE-005YXt-4H
 for linux-rockchip@lists.infradead.org; Thu, 27 May 2021 13:06:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UXGNIaSzoW/C0FndVcq3C1mNY97nbWGbAJ+OPbR6xYY=; b=GTWa8l9C5zkrPNxJlOYo7Hcxy+
 sxlKtTMD2sjrnxzrzqm69B0IMVgd/fflUJPk9clctfyXy4ceG/M16kogIT6FfB8kwFoXsg7B9uYj2
 CY+DdYz7iwBSilGJFFAT61J6JNVR9qZGkijAPgAoVxWFgTQcKroVaDxPR+0YSkloPXzQ=;
Received: from 94.196.90.140.threembb.co.uk ([94.196.90.140]
 helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <broonie@sirena.org.uk>)
 id 1lmFhy-006O7I-Kt; Thu, 27 May 2021 13:05:54 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 1D2C1D0EA33; Thu, 27 May 2021 14:05:53 +0100 (BST)
Date: Thu, 27 May 2021 14:05:53 +0100
From: Mark Brown <broonie@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Rudi Heitbaum <rudi@heitbaum.com>, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 chenjh@rock-chips.com
Subject: Re: [PATCH] regulator: fan53555: add back tcs4526
Message-ID: <YK+ZMdD+7uqQwCow@sirena.org.uk>
References: <20210526162342.GA20@8bbba9ba63a4>
 <CAMdYzYpZoKs3P62j02RW-+5BEpqC9JL3apjucTWLWmvNFrOrCg@mail.gmail.com>
 <20210527105943.GA441@7698f5da3a10>
 <462b8d80447efb6c00e93704914169bceb5adc4d.camel@collabora.com>
MIME-Version: 1.0
In-Reply-To: <462b8d80447efb6c00e93704914169bceb5adc4d.camel@collabora.com>
X-Cookie: A penny saved has not been spent.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_140614_759604_B9464E71 
X-CRM114-Status: GOOD (  12.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: multipart/mixed; boundary="===============2169076294525034662=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2169076294525034662==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NyUceJCoDarUvku8"
Content-Disposition: inline


--NyUceJCoDarUvku8
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 27, 2021 at 08:51:27AM -0300, Ezequiel Garcia wrote:
> On Thu, 2021-05-27 at 10:59 +0000, Rudi Heitbaum wrote:

> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0reg =3D <0x1c>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0vin-supply =3D <&vcc5v0_s=
ys>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0regulator-compatible =3D =
"fan53555-reg";

> I can be wrong, but I think regulator-compatible is deprecated.

Yes.

> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0regulator-ramp-delay =3D =
<1000>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0fcs,suspend-voltage-selec=
tor =3D <1>;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0regulator-always-on;
> > +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0regulator-boot-on;

> Just out of curiosity, is regulator-boot-on really needed for the GPU?

It should only be used if it's not possible to read the state of
the regulator enable from the hardware.

Please delete unneeded context from mails when replying.  Doing this
makes it much easier to find your reply in the message, helping ensure
it won't be missed by people scrolling through the irrelevant quoted
material.

--NyUceJCoDarUvku8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmCvmTAACgkQJNaLcl1U
h9CX9ggAgzyzUvDEBdNIyiQB7N7iaoLnBcDf4WWsOC8pOpOinrfXGplncFDVXzcz
jirCOSxb0jLmCwKEMbFrSaOYw2SZuDbVtDDnYwsFBXBmL4wedkU8n0c5eJ5DK88L
bJ5gToio6MmqIL1Yb9QPI7XsQeEvF/LxN/QzwXr3KqTZeB6hATgg4EqrRNyLjbvS
Ra7dmlehkgQ6Ym6aL5cTaxFPkffpASi1MnvaUhyEEsbiXTbC+dWmLGovVMRrf6GY
g4/vglOQe0uuMBGRpoy1s2SRLOSeKcCwZOKoLITxpTsT6YhZw1BDw48o2Vaxzcdb
up/35XqdtRuBzEDTd/sC9Fv2raCEzQ==
=vK9F
-----END PGP SIGNATURE-----

--NyUceJCoDarUvku8--


--===============2169076294525034662==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2169076294525034662==--

