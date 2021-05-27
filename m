Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35D65C47089
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 13:05:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ECC8361132
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 13:04:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ECC8361132
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jKni091XzqamJCb0X8W9UoMmjVIY6AYDzxisbQz+FxE=; b=gWYiTMPGlyZzgyljWsZBSGZdew
	N9RdstGVx5gTE5NdZpuV2yZrMCR27F1ktZCF4lJHsrDluXS1glTOJ79VWLGlQunDz5GBJuXMHezht
	m/yI8fuSllQCvc25y98DdRnhcxL5s6jQrrTR/WqxqVPOkRzuZ41F2999WgG3/VC3rRpUtEDeNmKdd
	NOHjyjfgGI+rzLSaZOwNiulmx+Tq/mVvy9oF9l6Uv2kvAK1HXxbAc4aDbgSmyY6zNZJozvnR+vnhS
	GG1BUVYK6YfiG+bkHZskgI/mS3j6JstmYZq0KLgN9MpuGzMPgsAR31dViO9A/qH7eQV1sk72RLHkb
	jYMxD5kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmFh0-0061Am-H4; Thu, 27 May 2021 13:04:54 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmFgx-00618T-Ml
 for linux-rockchip@bombadil.infradead.org; Thu, 27 May 2021 13:04:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=IzFJwCBpTBHNAHayZpbaaG+HYYYb9w6NPRI7Eu3O+2Y=; b=Qt3Hsn66k76O7TSrop10l4at8e
 cpiD7uET4ZW5jgQ68ZgR72vyGyzEDfXXBn2CiUDab7V8gzVm9HAF4kiYKACEAPiWzu6pbkw2JwtjO
 nXFM/dX4yurz58ZdZctIQk9zww93a4+/QhoTCP6xk3SdhxU1Xhm21nJQEFCXdbzm8lordesxIVWsw
 BndRJZaKslNUQfSJW+pCL7ey0/IVSzHQz74LbNBqWEZ58EyJJrzTqqUqzeioXCOb6maTvudJolgyi
 Mdib/1J4CWoifGhiL6q8gLWCjlE+EQfeKL3V9Dqn0Ap1civqZm7BA+r1Mz1hEmCcs5x1rs4ALFrlv
 +wrx7T4g==;
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lmFfv-005YJ9-W2
 for linux-rockchip@lists.infradead.org; Thu, 27 May 2021 13:04:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IzFJwCBpTBHNAHayZpbaaG+HYYYb9w6NPRI7Eu3O+2Y=; b=QYIoOTUC1Uf9t0jIpRtLHdxQtP
 hf71Z3sVUCWNONwBhD9oT2cretWZl0b0tTem2h43+wRpF6BJgiw3qFjK+PAfF9+XidbBVWSt5Gqf8
 RL3oxbQT/Lxv+QCO5TzSnZKbqUK6DLt5wCC3byG8n8qmJoDWPor1ClGMAW6UyPm0zM+o=;
Received: from 94.196.90.140.threembb.co.uk ([94.196.90.140]
 helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <broonie@sirena.org.uk>)
 id 1lmFfi-006O36-7e; Thu, 27 May 2021 13:03:34 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 7FF78D0EA1D; Thu, 27 May 2021 14:03:32 +0100 (BST)
Date: Thu, 27 May 2021 14:03:32 +0100
From: Mark Brown <broonie@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Rudi Heitbaum <rudi@heitbaum.com>, devicetree@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Ezequiel Garcia <ezequiel@collabora.com>, chenjh@rock-chips.com
Subject: Re: [PATCH] regulator: fan53555: add back tcs4526
Message-ID: <YK+YpBm9M2GbFGec@sirena.org.uk>
References: <20210526162342.GA20@8bbba9ba63a4>
 <CAMdYzYpZoKs3P62j02RW-+5BEpqC9JL3apjucTWLWmvNFrOrCg@mail.gmail.com>
 <20210527105943.GA441@7698f5da3a10>
 <CAMdYzYq8c4=D6_LxG2jPfbtPkOp5tN8oRA0zKt_OM6HLbnfFTw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMdYzYq8c4=D6_LxG2jPfbtPkOp5tN8oRA0zKt_OM6HLbnfFTw@mail.gmail.com>
X-Cookie: A penny saved has not been spent.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_140357_204180_EA0DBE40 
X-CRM114-Status: GOOD (  21.10  )
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
Content-Type: multipart/mixed; boundary="===============8450625439265115570=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8450625439265115570==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nVOdrmUDn/PExWf2"
Content-Disposition: inline


--nVOdrmUDn/PExWf2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 27, 2021 at 07:26:01AM -0400, Peter Geis wrote:
> On Thu, May 27, 2021 at 6:59 AM Rudi Heitbaum <rudi@heitbaum.com> wrote:

> > > Since you aren't adding any functional code, is there a particular
> > > reason you can't just add the chip id and simply use the tcs4525
> > > compatible?
> > > This will prevent you from needing to modify the dt-bindings as well.

..

> > I chose to follow the example of silergy,syr827 and silergy,syr828 for
> > tcs4526 (given I made the mistake in assuming that support for tcs4525
> > meant support for tcs4525.) This would maintain consistency of naming of
> > tcs4526 throughout the source. Is that ok?

> It's fine to have both compatibles (and avoids confusion in
> device-trees), just remember to update the dt-bindings as well.
> It's funny to see drivers with both schemes, so we really have to
> decide which path we want to go down.
> Considering the syr827/syr828 as convention, we should probably just
> go down that route for consistency within the driver.

It is generally safer for the DT to be explicit about exactly
what the hardware is and then double check that this matches the
actual hardware, this gives more room for handling things with
quirks if needed in future and makes the life of people writing
DTs for boards easier since they don't need to remap part
numbers from the schematic to the DT.

> > +&gpu {
> > +       mali-supply = <&vdd_gpu>;
> > +       assigned-clocks = <&cru ACLK_GPU>;
> > +       assigned-clock-rates = <200000000>;
> > +       status = "okay";
> > +       /delete-property/ operating-points-v2;

> Removal of the operating points kind of makes the gpu regulator moot,
> don't you think?

It's still better to say what the supply is even if it can't be
changed - that stops you getting warnings about substituting in a
dummy regulator and allows the consumer to read the current state
of the regulator in case that's useful.

--nVOdrmUDn/PExWf2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmCvmKAACgkQJNaLcl1U
h9AS5gf+MyXoR1SRd4piOK0UplV96s3jVB5W+Nu4kZPj7iNbaUP7Mpj/yHR6Bm53
rjwUbCpnDJpt+Kjf3uJrSTHim8VYXidXiTykeEYyZTX9SFPRELLatDCd+lxyJSBT
aAGGOMyOX0tQR8+0IqHjS3iFX4/C7KoUcDVeMRILQGJj3x+QGZonSFssqrjjOnbv
L1LE/qJ/AhA8MNYdh027mDk2GcT6Pkv7nVTrf0qubDJNffLVA6NwjR3/xe4IKBph
DqWIj4LZeJGGH8XLp5yOab05BOvBQRFE0UX117GRvfvogOuOSmSzS/EeWS5sC9tS
YLW8k4v4p1yHrpDNwQ4YsE4X6XcorQ==
=smBU
-----END PGP SIGNATURE-----

--nVOdrmUDn/PExWf2--


--===============8450625439265115570==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8450625439265115570==--

