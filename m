Return-Path: <SRS0=Qwjt=NK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27973C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 14:17:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BB8D9610FA
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 14:17:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org BB8D9610FA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9hBydon7lEJqQ2P+ANnjuK6KqHJYe9Kx6EnhlwuV7SY=; b=A7pZGp5YwLBXMNEu0glKH0C0EC
	XW0VSXSFLRPCvQoLC1Ixgw43Ye+VHZZteuu3NCqzoAdnKMGfJceKMAxp2B4xjP0Pm1F6PgY90aGWs
	pwd3PXUqxL/k5P35yugV91ZrFBhzE4nsYoJWSCDtyYQndURkpnDl+3GLbOM86XlfrxQUiG6vZzh7h
	n0NV6H4HqsPGGYFrP1mwVmCI9t9NVeYfXdxpYRlULz9fUeYk9bDVFITyGx505EaBJ/3Baj/9qcIlL
	TveRCFYzijusaJcpMAjHYnL3bMNpXqLp6BNgfWlJuPUSnDLGTjc9lHnB6fW5b3VaL7uAYr6vYmUSl
	R4S+ECfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGiqs-008cgd-Qn; Thu, 19 Aug 2021 14:17:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGiqY-008cbT-E0; Thu, 19 Aug 2021 14:16:43 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 93D20610FF;
 Thu, 19 Aug 2021 14:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629382602;
 bh=0uMlC15O+oh23cQEELPSg5hsjxTkiutg1Dl14TuNA2s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uFfLWw0XVYjN0YeCEeOw9d34neLFdGyTTycyb0AKBzkKwvJw0RaJfoxI34JSe3WL1
 r7GynOaqWvGHOGOvkhdR9yJ3VjEseQ8pGl1iwhmQ2ZVJwwnIkEojsezZkpmygbrq1i
 tU0zLeemaItq2qGwl4K/aWVCqzotZmIj21bza5ql2ZhSMAQw4Lych1rGy7qrZ5k9x+
 i0249dOb5mCdV+lZ9eACZkjoYtTEEFCSo7DrjEYv56L9+y5jHdva/0+A6an8OgIpby
 zGnrg0Hhvmjh5dk9JY0eln2pqlu+HrE9B8y+I1r0cIkLuaOnyfZQisIMx6ph2kOnpN
 Tay5NsPYPQRcA==
Date: Thu, 19 Aug 2021 15:16:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Robin Murphy <robin.murphy@arm.com>, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: sound: add rockchip i2s-tdm binding
Message-ID: <20210819141617.GM4177@sirena.org.uk>
References: <20210817101119.423853-1-frattaroli.nicolas@gmail.com>
 <20210817101119.423853-3-frattaroli.nicolas@gmail.com>
 <deb50900-fcfd-23d0-ab8a-0e64b2abb063@arm.com>
 <2412250.zZEsDtmPgG@archbook>
MIME-Version: 1.0
In-Reply-To: <2412250.zZEsDtmPgG@archbook>
X-Cookie: She sells cshs by the cshore.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_071642_549885_44961E2C 
X-CRM114-Status: GOOD (  21.82  )
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
Content-Type: multipart/mixed; boundary="===============3336944658982303205=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3336944658982303205==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yklP1rR72f9kjNtc"
Content-Disposition: inline


--yklP1rR72f9kjNtc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Aug 19, 2021 at 03:52:55PM +0200, Nicolas Frattaroli wrote:
> On Donnerstag, 19. August 2021 14:08:36 CEST Robin Murphy wrote:

> > > +  rockchip,no-dmaengine:
> > > +    description:
> > > +      If present, driver will not register a pcm dmaengine, only the dai.
> > > +      If the dai is part of multi-dais, the property should be present.
> > > +    type: boolean

> > That sounds a lot more like a policy decision specific to the Linux
> > driver implementation, than something which really belongs in DT as a
> > description of the platform.

> I agree. Should I be refactoring this into a module parameter or
> something along those lines? I'm unsure of where this goes.

Why is this even required?  What is "multi-dais" and why would
registering the DMA stuff cause a problem?

> The particular configuration may even vary per-board; an I2S/TDM
> controller may be connected to an external codec which does not
> support capture, whereas on another board it may be connected to
> one that does.

If the external device doesn't support both directions then why does the
driver for the I2S controller in the CPU care?  The constraint handling
code in the core will ensure that nothing tries to start something that
isn't supported

--yklP1rR72f9kjNtc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmEeZ7EACgkQJNaLcl1U
h9BLTQf+NFP6G5gxloO6mI1KjGRABdmwB01kioQ+Wrt6Vw3VwRA/5Obtl1XcwDU6
sMmqKjIMhNgfSvDKESHfSDL7E32hYMKUMOXCpEYW2pCEjN2hEbdxVwP+hbIdsmel
z+z+ISyW3zl6K1ndvLbeniqwEZOsGNiz1EUvTygFCMvHdd9Yuory3/nufj92owBJ
RgRiuIZJ52nPD1hdPQY1MRpP+Us3DaP8RNHLrF+FlZVtaj/hPftEwt62oTCNI0KO
iQv81p2ueGYvqIVzD50HGC7sSc5pB2iU3VQ72XlWusgkLYdU22rbVvXGZWSRoaq1
w8aXvCnwvc8ml4d7ZG4ROXBHzoY2oQ==
=/YEY
-----END PGP SIGNATURE-----

--yklP1rR72f9kjNtc--


--===============3336944658982303205==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3336944658982303205==--

