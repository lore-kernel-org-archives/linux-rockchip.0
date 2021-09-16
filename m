Return-Path: <SRS0=2I9J=OG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33850C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 12:26:51 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E50F260EE0
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Sep 2021 12:26:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E50F260EE0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t+25Q3Pryisx26iiCkkUus4+yfFrJDGUmGm0VJuyqww=; b=wyKqeoHyO3glMzCjSVzXYcc2IH
	VmKUcH7bT1OVoO+aq60cIDok8Km+JVc0wPHKmPD8VzZQ/eb51W7veDZU3TVhJn+/oCvH6t9d0fI/V
	wTPqiYERIlyp4ZgEQDNEgF0N6yen6ngePCw65TKk1l0MgdK2lmjx4s61ClgeCnwVsK6nVlvlsVLLZ
	iJdb1TirgM1HxdX922W7I9ef+xz9vUxN4Un2VUAWCjzhHW9VvpKuJCctuJ9IImMe1wsnJHEhM96i7
	AP8rg0K9c5IhcWgkhxxubjv60SJP2PntDgmKzeAkcx8wVO+7eNYsxhpkzDGWZwKkx1CY6HTptuHo7
	jGc7J9yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQqTV-00B69Q-BZ; Thu, 16 Sep 2021 12:26:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQqTG-00B665-VB; Thu, 16 Sep 2021 12:26:32 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 26EA360F25;
 Thu, 16 Sep 2021 12:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1631795190;
 bh=mfX29/di/xilhJPTUe/47Dt9l+sLXh8n1/Bzm8nigXo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dot7UTFG9z5RDoKt9YwghU4gkD4y/1MEbPdmOHoSGOeFeQji17JwBeN4q3v3btsll
 KjYI9NO8L81+jJYoA3/jm81mU0MgfS6GoThC/wrSXbfjXVWKnyEt3ACq6ylbFiw+Oa
 2dd/mbMaYaFyYpP0cwWTNRGJcZnoZY+YOrDEybg5aEKgEflxSVHSycN1NW3s98A17/
 QEb7g5+IoM+MrG/lX8TzMEELRy7gCn6wvNQMN6MComagWtYo/VixmF8TN+o00lA0I5
 dG9SGeD13axlKcBfB7jyvb68L8mgCHFwQLw2oqTuBOB+6rZnOUbJdwNj1qistYfVzG
 0gwbWdMYlARow==
Date: Thu, 16 Sep 2021 13:25:49 +0100
From: Mark Brown <broonie@kernel.org>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/4] dt-bindings: sound: add rockchip i2s-tdm binding
Message-ID: <20210916122549.GF5048@sirena.org.uk>
References: <20210903231536.225540-1-frattaroli.nicolas@gmail.com>
 <20210903231536.225540-3-frattaroli.nicolas@gmail.com>
 <20210915141012.GC12513@sirena.org.uk>
 <42974939.Tn3hggVSkZ@archbook>
MIME-Version: 1.0
In-Reply-To: <42974939.Tn3hggVSkZ@archbook>
X-Cookie: We've upped our standards, so up yours!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_052631_078428_965FF06E 
X-CRM114-Status: GOOD (  21.19  )
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
Content-Type: multipart/mixed; boundary="===============6519213167740473795=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6519213167740473795==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hUH5gZbnpyIv7Mn4"
Content-Disposition: inline


--hUH5gZbnpyIv7Mn4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 15, 2021 at 07:06:14PM +0200, Nicolas Frattaroli wrote:
> On Mittwoch, 15. September 2021 16:10:12 CEST Mark Brown wrote:

> > Why is this not part of the normal bus format configuration?  I don't
> > know what this is but it sounds a lot like I2S mode...

> This affects all TDM I2S modes, i.e. TDM Normal, TDM Left Justified and T=
DM=20
> Right Justified.

> Without tdm-fsync-half-frame, we purportedly get the following output in =
TDM=20
> Normal Mode (I2S Format):
> (ch0l =3D channel 0 left, ch0r =3D channel 0 right)

> fsync: 	_____________________________
>                      	            \____________________________
> sdi/sdo: ch0l, ch0r, ..., ch3l, ch3r,  ch0l, ch0r, ...
>=20
> With tdm-fsync-half-frame, we purportedly get the following:
>=20
> fsync: 	_____________________________
>                      	            \____________________________
> sdi/sdo: ch0l,  ch1l,  ch2l,  ch3l,   ch0r,  ch1r,  ch2r,  ch3r

> At least, according to the TRM. I do not have an oscilloscope to verify t=
his=20
> myself, and in the following paragraphs, I will elaborate why this seems=
=20
> confusing to me.

fsync-half-frame is just normal TDM for I2S, the default mode is how DSP
mode normally operates.  I don't know that there's any pressing need to
support mix'n'match here, you could but it should be through the TDM
configuration API.

> So to answer the question, it's not part of the bus format because it app=
lies=20
> to three bus formats, and I'm completely out of my depth here and wouldn'=
t=20
> define three separate bus formats based on my own speculation of how this=
=20
> works.

It is part of the bus format really.  I suspect the hardware is the kind
that only really implements DSP mode and can just fake up a LRCLK for
I2S in order to interoperate.

--hUH5gZbnpyIv7Mn4
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmFDN8wACgkQJNaLcl1U
h9AhiAf/ZlfcZ9ejEekSn1zn4A88+/ZgbySK7f6ieclZDuSJ0PyYj0x6VN5f+p8U
UrfT02ie6+dpCTcQHVQtFcJx5+BN5N8WoBidKDS0gAN3W8R2i9LvWGw8z9wT6tKS
KCnSoIL4Gr0ZQ/556y5vIocYG7waZMOckP6/ZuIjBewEH+j0iV34b7uT54kDbfXA
JLi2Y6LDveRJbnVsJ4EK4cLgmxHDfjmirUiAjvrWvTcVUXXZDQ1qXalGDFX/ZEFq
RzP18+TUX33qEgF1UApmZEIOqSCHst3po+sy1xkpZlOvTzcQAQLaZXMm9PulSx41
Aq2b/PrIEwOcL8Kc4GfCeW9YoGOm3w==
=u+Qx
-----END PGP SIGNATURE-----

--hUH5gZbnpyIv7Mn4--


--===============6519213167740473795==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6519213167740473795==--

