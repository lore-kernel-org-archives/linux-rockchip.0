Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1724ACD11DD
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Mar 2024 18:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k9ezNKXVGTf3lFlN4rnThAbDxpOtCuJyaboP7ML0DRk=; b=fKCnEwLL5oKpGYWjAZ/beAJinH
	FyFhWyDMA+tEJ2hp7XN8s/DCGJ0f7xyti1e+VeMAASNY5EnXWRdXdoKuAiWw383tn1pSlaby5m6Rf
	D84wbB0psqPRr/zfKDraSNYgbfBJJSScHfuqbOu/qRpz7PQEhQDL4QCgTNKvWRxfuPqkIA1Dwpgk5
	u+9V4LM6IltHLyUvTzjZBhlVi90YdsFwmpIdC0QiH/OfojCfXLXXsrkb1b187FxZKMwy8S1tVN6gI
	3WF4ux/N6LXCKYTVoBw/K7xec4waBI6QF7/wMWFYXeeAVzALfoaGWhym/l6ZPMmxN+PwyfSSATt/9
	LrP6GAaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpu43-0000000F4Tn-1jez;
	Thu, 28 Mar 2024 18:01:23 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpu3y-0000000F4RY-2YoF;
	Thu, 28 Mar 2024 18:01:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C7E41CE1E6D;
	Thu, 28 Mar 2024 18:01:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CCBBC433C7;
	Thu, 28 Mar 2024 18:01:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711648875;
	bh=4phPWnWO8U4B+6/tBTg6onrt6txt5QrNdPVtLs0pEDE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PTHB7ySpnSsjWLu+d154b3fd84Utt8K81WByU29Xe3bUphIcvK390k1jGFjvAua5Z
	 7SKYtrvWfSkCIdR3LkiUos2WstAbh+N7vyzUqY+8ZxVlO3z0Yd+pqPcnA1H5yCrh11
	 CnbF3bPD6RgCjKDvXuxMkaDK8vS+LeyZSRL8YzNsMXkt2g8/ji8cqHtWlV10VI2843
	 UVNb+TpojYuVYqzBqsMTKWuBR53awurPsxp3DPQGvnLMXXlqJF36xukiu4gUShLtla
	 kD44XW1mgkhd+z9i83+af/HBfFnL5TWj1lFlwp8rTDNFC/OkYPdG/SaenG+h6eTkBR
	 sZnQGqT/S8ykA==
Date: Thu, 28 Mar 2024 18:01:09 +0000
From: Conor Dooley <conor@kernel.org>
To: Alban Browaeys <alban.browaeys@gmail.com>
Cc: dev@folker-schwesinger.de, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Ruehl <chris.ruehl@gtsys.com.hk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Doug Anderson <dianders@chromium.org>,
	Brian Norris <briannorris@chromium.org>,
	Jensen Huang <jensenhuang@friendlyarm.com>,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] phy: rockchip: emmc: Enable pulldown for strobe line
Message-ID: <20240328-unnatural-unsorted-e53a13f5e87e@spud>
References: <20240326-rk-default-enable-strobe-pulldown-v1-0-f410c71605c0@folker-schwesinger.de>
 <20240326-rk-default-enable-strobe-pulldown-v1-1-f410c71605c0@folker-schwesinger.de>
 <20240326-tactical-onlooker-3df8d2352dc2@spud>
 <871f0b24a38208d9c5d6abc87d83b067162c103e.camel@gmail.com>
MIME-Version: 1.0
In-Reply-To: <871f0b24a38208d9c5d6abc87d83b067162c103e.camel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_110119_025882_344CC5FD 
X-CRM114-Status: GOOD (  36.83  )
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
Content-Type: multipart/mixed; boundary="===============5776005315086527920=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5776005315086527920==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="8F3JqEr12hAqS6Zr"
Content-Disposition: inline


--8F3JqEr12hAqS6Zr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 28, 2024 at 06:00:03PM +0100, Alban Browaeys wrote:
> Le mardi 26 mars 2024 =E0 19:46 +0000, Conor Dooley a =E9crit=A0:
> > On Tue, Mar 26, 2024 at 07:54:35PM +0100, Folker Schwesinger via B4
> > Relay wrote:
> > > From: Folker Schwesinger <dev@folker-schwesinger.de>
> > > -	if (of_property_read_bool(dev->of_node, "rockchip,enable-
> > > strobe-pulldown"))
> > > -		rk_phy->enable_strobe_pulldown =3D
> > > PHYCTRL_REN_STRB_ENABLE;
> > > +	if (of_property_read_bool(dev->of_node, "rockchip,disable-
> > > strobe-pulldown"))
> > > +		rk_phy->enable_strobe_pulldown =3D
> > > PHYCTRL_REN_STRB_DISABLE;
> >=20
> > Unfortunately you cannot do this.
> > Previously no property at all meant disabled and a property was
> > required
> > to enable it. With this change the absence of a property means that
> > it
> > will be enabled.
> > An old devicetree is that wanted this to be disabled would have no
> > property and will now end up with it enabled. This is an ABI break
> > and is
> > clearly not backwards compatible, that's a NAK unless it is
> > demonstrable
> > that noone actually wants to disable it at all.
>=20
>=20
> But the patch that introduced the new default to disable the pulldown
> explicitely introduced a regression for at least 4 boards.
> It took time to sort out that the default to disable pulldown was the
> culprit but still.
> Will we carry this new behavor that breaks the default design for
> rk3399 because since the regression was introduced new board definition
> might have expceted this new behavior.
>=20
> Could the best option be to revert to =E9not set a default enable/disable
> pulldown" (as before the commit that introduced the regression) and
> allow one to force the pulldown via the enable/disable pulldown
> property?
> I mean the commit that introduced a default value for the pulldown did
> not seem to be about fixing anything. But it broke a lot. ANd it was
> really really hard to find the description of this commit to understand
> that one had to enable pulldown to restore hs400.
>=20
> In more than 3 years, only one board maintainer noticed that this
> property was required to get back HS400  and thanks to a user telling
> me that this board was working I found from this board that this
> property was "missing" from most board definitions (while it was not
> required before).
>=20
>=20
> I am all for not breaking ABI. But what about not reverting a patch
> that already broke ABI because this patch introduced a new ABI that we
> don't want to break?
> I mean shouldn't a new commit with a new ABI that regressed the kernel
> be reverted?

I think I said it after OP replied to me yesterday, but this is a pretty
shitty situation in that the original default picked for the property
was actually incorrect. Given it's been like this for four years before
anyone noticed, and others probably depend on the current behaviour,
that's hard to justify.

> Mind fixing the initial regression 8b5c2b45b8f0 "phy: rockchip: set
> pulldown for strobe line in dts" does not necessarily mean changing the
> default to the opposite value but could also be reverting to not
> setting a default.

That's also problematic, as the only way to do this is make setting
one of the enabled or disabled properties required, which is also an ABI
break, since you'd then be rejecting probe if one is not present.

> Though I don't know if there are pros to setting a default.

What you probably have to weigh up is the cons of each side. If what you
lose is HS400 mode with what's in the kernel right now but switching to
what's been proposed would entirely break some boards, I know which
I think the lesser of two evils is.

It's probably up to the platform maintainer to weigh in at this point.

Hope that helps?
Conor.

--8F3JqEr12hAqS6Zr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZgWwZQAKCRB4tDGHoIJi
0jB0AQC8/xsQZ9aSVUyDP+TLrTxN1T6WpnZxDmZ0RytuJJKcagEAs1IkEDW1WV+R
Vn4E8r+DK3CUYvmFu6xKJKaLOoafAwY=
=YhMf
-----END PGP SIGNATURE-----

--8F3JqEr12hAqS6Zr--


--===============5776005315086527920==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5776005315086527920==--

