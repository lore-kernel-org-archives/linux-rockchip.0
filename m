Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 312EAC4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 09:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LiwpkhtP14LgYra+QZQ5/qUuafx3ykEHDssKnkBstyo=; b=m3Biogy+CUhPgVKMT3uDauLGAf
	Qr9dcoIj7Uj0ERN+hnsYydMUQtWS+X/pkwJsXNrpGEnjQ76u6BZWFIHPcQmW97k4JD51fgDamTkYw
	NfdToT96ji1KJ4AkjIeYAYr6C23yyjWjlRrwVdadw2Yaup/J+7IBLbldJ2r+CY0AcCUaYu7vX53vD
	gDK00GPBIygozcy+hh88vSAZsPT3MZXPBj+GiMREkRCBvGFRkgb5kn4p8nLPwBbl7OqDg30Fd5JA1
	htccg2CslL9kL8t6/uUyOJ3z1NnUSgsAX6wJCwnVOHikOnammFaJUWqhTifDTYoQdMuUqLyLNVeix
	Fdsh5qHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8GbV-007a7q-25;
	Wed, 29 Nov 2023 09:11:33 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8GbS-007a6Z-0X;
	Wed, 29 Nov 2023 09:11:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A300A61909;
	Wed, 29 Nov 2023 09:11:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0045CC433C7;
	Wed, 29 Nov 2023 09:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701249089;
	bh=cAQDm1OHi6AwpFtu2oyoP4lirQiWSiJNR9l7GsKXbG0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Nwbfrj7Pk2t2Z7wByu0jHudFVV4zAocI0bejf4VNuJ94Gv2F5DMNrfE6wB3QNldRG
	 z7A40mmCnCiugGuIop83o5nbsu/un4/gm+L4OOyqOZJplUGWVy/fy/5V0Ah0fTKds9
	 uirW/8qj7vfQGn5bztbUXZUFHO0buy0PYmdbSucg5HbE2qjcBV261rqO1/NFYhSkkL
	 e0on0p9J42TspyvoUFNBGMB/Ol6v34YBgC3waQmjoDLU7fUO4D4w9YGZ09qh7H51YI
	 z5suLwGP2CTJLldp9JIdJfUJghx2Nxbf1Dp07okJGX4uvEwzQQOFvu+Xv1trZEo4hX
	 sKILXaByCcPog==
Date: Wed, 29 Nov 2023 10:11:26 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>, 
	linux-kernel@vger.kernel.org, Samuel Holland <samuel@sholland.org>, 
	Sandy Huang <hjc@rock-chips.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	linux-doc@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>, 
	linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 05/45] drm/connector: Check drm_connector_init
 pointers arguments
Message-ID: <2mnodqvu2oo674vspiy4gxhglu3it5cq47acx5itnbwevgc4cf@c7h2bvnx3m2n>
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
 <20231128-kms-hdmi-connector-state-v4-5-c7602158306e@kernel.org>
 <87h6l66nth.fsf@intel.com>
 <v3hplco5fdedv6bnc6mwx2zhhw4xxdiekha26ykhc5cmy7ol77@2irk3w4hmabw>
 <ZWXv1Oi_sH0BRWao@intel.com>
MIME-Version: 1.0
In-Reply-To: <ZWXv1Oi_sH0BRWao@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_011130_287980_1C67149A 
X-CRM114-Status: GOOD (  30.72  )
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
Content-Type: multipart/mixed; boundary="===============2942959922356643288=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============2942959922356643288==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5yeernlclvkai5mu"
Content-Disposition: inline


--5yeernlclvkai5mu
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Ville,

On Tue, Nov 28, 2023 at 03:49:08PM +0200, Ville Syrj=E4l=E4 wrote:
> On Tue, Nov 28, 2023 at 02:29:40PM +0100, Maxime Ripard wrote:
> > On Tue, Nov 28, 2023 at 02:54:02PM +0200, Jani Nikula wrote:
> > > On Tue, 28 Nov 2023, Maxime Ripard <mripard@kernel.org> wrote:
> > > > All the drm_connector_init variants take at least a pointer to the
> > > > device, connector and hooks implementation.
> > > >
> > > > However, none of them check their value before dereferencing those
> > > > pointers which can lead to a NULL-pointer dereference if the author
> > > > isn't careful.
> > >=20
> > > Arguably oopsing on the spot is preferrable when this can't be caused=
 by
> > > user input. It's always a mistake that should be caught early during
> > > development.
> > >=20
> > > Not everyone checks the return value of drm_connector_init and friend=
s,
> > > so those cases will lead to more mysterious bugs later. And probably
> > > oopses as well.
> >=20
> > So maybe we can do both then, with something like
> >=20
> > if (WARN_ON(!dev))
> >    return -EINVAL
> >=20
> > if (drm_WARN_ON(dev, !connector || !funcs))
> >    return -EINVAL;
> >=20
> > I'd still like to check for this, so we can have proper testing, and we
> > already check for those pointers in some places (like funcs in
> > drm_connector_init), so if we don't cover everything we're inconsistent.
>=20
> People will invariably cargo-cult this kind of stuff absolutely
> everywhere and then all your functions will have tons of dead
> code to check their arguments.

And that's a bad thing because... ?

Also, are you really saying that checking that your arguments make sense
is cargo-cult?

We're already doing it in some parts of KMS, so we have to be
consistent, and the answer to "most drivers don't check the error"
cannot be "let's just give on error checking then".

> I'd prefer not to go there usually.
>=20
> Should we perhaps start to use the (arguably hideous)
>  - void f(struct foo *bar)
>  + void f(struct foo bar[static 1])
> syntax to tell the compiler we don't accept NULL pointers?
>=20
> Hmm. Apparently that has the same problem as using any
> other kind of array syntax in the prototype. That is,
> the compiler demands to know the definition of 'struct foo'
> even though we're passing in effectively a pointer. Sigh.

Honestly, I don't care as long as it's something we can unit-test to
make sure we make it consistent. We can't unit test a complete kernel
crash.

--5yeernlclvkai5mu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZWcAPgAKCRDj7w1vZxhR
xdiAAP9/Y3QZYC3QOV7WWulwxqeWACuHSjmA+KHPl8qOdVnh+AD9HTqYM7+ypKLa
CFZu3zXCIPjDPQmXptfe2oXEaBjpwQA=
=KUBI
-----END PGP SIGNATURE-----

--5yeernlclvkai5mu--


--===============2942959922356643288==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2942959922356643288==--

