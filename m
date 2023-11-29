Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3693C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 13:26:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=m/mt9TfLd8wTcFIIip3Cmr9K8sTGlfwbS+kRk0Dhkp8=; b=JIoCrL+qxmCIAFguaOPtAEvlIY
	qKbBefzTgGFOLf7vUABNd1Jofs4b+PMORTD43gP/tLxKt62qY3Pndg8v0/aQDLBGVkrjiF2mYlae3
	NrtKLNZWBjzvuxPNMyMQ/DBDhbuM8jdK0r+aq4J2v1eKKScJXuicfYBeP977qOPOtRrZNZ7bHDD9E
	eYjJWwHHTD1WqHHWSYQjcl6U1oyKmTUynhhfOAWILQHDW56BHviYPrRYi6T/Zz3hYb09ZjWR6H7Yw
	4QW+NH18HweLQwgkWKHerYRY12lnkwau8iaDauocIDbal4/VL6yNp7TTJBL4MDAzxthuOahIS5jzd
	+U8jGaXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8KZx-008S8Y-08;
	Wed, 29 Nov 2023 13:26:13 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8KZt-008S7M-0P;
	Wed, 29 Nov 2023 13:26:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 684C461B57;
	Wed, 29 Nov 2023 13:26:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB338C433C7;
	Wed, 29 Nov 2023 13:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701264368;
	bh=TUtFqUYMxnqyBPs9bbVQmVM4vqhJdSRfDfGOD1whTY4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=udDTPg/QJRBP5QkpTiMeh9UGd3LbkIMJ6OSPtVr20lXV2I0dSmD487VSLmr4+dqmS
	 vJlRP0vpDsNw7Iwl4FU3MqaW+PIcEuvFqVcO5vM7Om6rCkZ8ccS7B5TBf3SnzFQ+lx
	 Gb+zwkl+A0q2bPQy4qnxPBJdhuZ16ezAceq6u74P8hwadHT3y+T6sS2sBzEVBkkbZv
	 ZYMnNWDnUJgkFyAN0fyACMe9PDIsBSIDt/UK+Bu+rGG8Nalg/o+G3M2fn/JbbzNtC6
	 6jCaKByn83ISVpSAPlJHtjfOUqJQyuN2HnQzcer9cY8HAL4qMIm9SG9Vsl/PCPUywk
	 G7B81I+QbUNpQ==
Date: Wed, 29 Nov 2023 14:26:05 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>, 
	linux-kernel@vger.kernel.org, Samuel Holland <samuel@sholland.org>, 
	Sandy Huang <hjc@rock-chips.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	linux-doc@vger.kernel.org, Hans Verkuil <hverkuil@xs4all.nl>, 
	linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>, dri-devel@lists.freedesktop.org, 
	linux-media@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 05/45] drm/connector: Check drm_connector_init
 pointers arguments
Message-ID: <xnhbd52q3sicro6heheu6fb3zo3g342njbz67dki44wumhy57i@aaovlbqhojan>
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
 <20231128-kms-hdmi-connector-state-v4-5-c7602158306e@kernel.org>
 <87h6l66nth.fsf@intel.com>
 <v3hplco5fdedv6bnc6mwx2zhhw4xxdiekha26ykhc5cmy7ol77@2irk3w4hmabw>
 <ZWXv1Oi_sH0BRWao@intel.com>
 <2mnodqvu2oo674vspiy4gxhglu3it5cq47acx5itnbwevgc4cf@c7h2bvnx3m2n>
 <8734wo7vbx.fsf@intel.com>
 <kygezdrfz56zj6lmq6l5s5yyys2urgq3id7r5n4mb3afn5kc5q@eswnd6a2ihqc>
 <87ttp46b49.fsf@intel.com>
MIME-Version: 1.0
In-Reply-To: <87ttp46b49.fsf@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_052609_252426_D274979B 
X-CRM114-Status: GOOD (  55.85  )
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
Content-Type: multipart/mixed; boundary="===============1932311342385718949=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1932311342385718949==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7y6ja2ijtruwy6p6"
Content-Disposition: inline


--7y6ja2ijtruwy6p6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 29, 2023 at 01:40:38PM +0200, Jani Nikula wrote:
> On Wed, 29 Nov 2023, Maxime Ripard <mripard@kernel.org> wrote:
> > On Wed, Nov 29, 2023 at 11:38:42AM +0200, Jani Nikula wrote:
> >> On Wed, 29 Nov 2023, Maxime Ripard <mripard@kernel.org> wrote:
> >> > Hi Ville,
> >> >
> >> > On Tue, Nov 28, 2023 at 03:49:08PM +0200, Ville Syrj=E4l=E4 wrote:
> >> >> On Tue, Nov 28, 2023 at 02:29:40PM +0100, Maxime Ripard wrote:
> >> >> > On Tue, Nov 28, 2023 at 02:54:02PM +0200, Jani Nikula wrote:
> >> >> > > On Tue, 28 Nov 2023, Maxime Ripard <mripard@kernel.org> wrote:
> >> >> > > > All the drm_connector_init variants take at least a pointer t=
o the
> >> >> > > > device, connector and hooks implementation.
> >> >> > > >
> >> >> > > > However, none of them check their value before dereferencing =
those
> >> >> > > > pointers which can lead to a NULL-pointer dereference if the =
author
> >> >> > > > isn't careful.
> >> >> > >=20
> >> >> > > Arguably oopsing on the spot is preferrable when this can't be =
caused by
> >> >> > > user input. It's always a mistake that should be caught early d=
uring
> >> >> > > development.
> >> >> > >=20
> >> >> > > Not everyone checks the return value of drm_connector_init and =
friends,
> >> >> > > so those cases will lead to more mysterious bugs later. And pro=
bably
> >> >> > > oopses as well.
> >> >> >=20
> >> >> > So maybe we can do both then, with something like
> >> >> >=20
> >> >> > if (WARN_ON(!dev))
> >> >> >    return -EINVAL
> >> >> >=20
> >> >> > if (drm_WARN_ON(dev, !connector || !funcs))
> >> >> >    return -EINVAL;
> >> >> >=20
> >> >> > I'd still like to check for this, so we can have proper testing, =
and we
> >> >> > already check for those pointers in some places (like funcs in
> >> >> > drm_connector_init), so if we don't cover everything we're incons=
istent.
> >> >>=20
> >> >> People will invariably cargo-cult this kind of stuff absolutely
> >> >> everywhere and then all your functions will have tons of dead
> >> >> code to check their arguments.
> >> >
> >> > And that's a bad thing because... ?
> >> >
> >> > Also, are you really saying that checking that your arguments make s=
ense
> >> > is cargo-cult?
> >>=20
> >> It's a powerful thing to be able to assume a NULL argument is always a
> >> fatal programming error on the caller's side, and should oops and get
> >> caught immediately. It's an assertion.
> >
> > Yeah, but we're not really doing that either. We have no explicit
> > assertion anywhere. We take a pointer in, and just hope that it will be
> > dereferenced later on and that the kernel will crash. The pointer to the
> > functions especially is only deferenced very later on.
> >
> > And assertions might be powerful, but being able to notice errors and
> > debug them is too. A panic takes away basically any remote access to
> > debug. If you don't have a console, you're done.
> >
> >> We're not talking about user input or anything like that here.
> >>=20
> >> If you start checking for things that can't happen, and return errors
> >> for them, you start gracefully handling things that don't have anything
> >> graceful about them.
> >
> > But there's nothing graceful to do here: you just return from your probe
> > function that you couldn't probe and that's it. Just like you do when
> > you can't map your registers, or get your interrupt, or register into
> > any framework (including drm_dev_register that pretty much every driver
> > handles properly if it returns an error, without being graceful about
> > it).
>=20
> Those are all dynamic things that can fail.
>=20
> Quite different from passing NULL dev, connector, or funcs to
> drm_connector_init() and friends.
>=20
> I think it's wrong to set the example that everything needs to be
> checked, everything needs to return an error, every call needs to check
> for error return, all the time, everywhere. People absolutely will cargo
> cult that, and that's what Ville is referring to.
>=20
> If you pass NULL dev, connector, or funcs to drm_connector_init() I
> think you absolutely deserve to get an oops.
>=20
> For dev, you could possibly not have reached the function with NULL
> dev. (And __drm_connector_init() has dev->mode_config before the check,
> so you'll get a static analyzer warning about dereference before the
> check.) If you have NULL connector, you didn't check for allocation
> failure earlier. If you have NULL funcs, you just passed NULL, because
> it's generally supposed to be a pointer to a static const struct.
>=20
> >> Having such checks in place trains people to think they *may* happen.
> >
> > In most cases, kmalloc can't fail. We seem to have a very different
> > policy towards it.
>=20
> Again, dynamic in nature and can fail.
>=20
> >> While it should fail fast and loud at the developer's first smoke test,
> >> and get fixed then and there.
> >
> > Returning an error + a warning also qualifies for "fail fast and loud".
> > But keeps the system alive for someone to notice in any case.
>=20
> But where do you draw the line?

This also applies to static things then.
drm_connector_attach_scaling_mode_property() or
drm_mode_create_colorspace_property() (or plenty of others) will check
on the value of the supported scaling modes colorspaces, even though
they are static.

It looks like we have that policy of "just assert and roll with it" for
pointers, but not for other static values passed to those initialization
functions.

> If we keep adding these checks to things that actually can't happen,
> we teach developers we need to check for impossible things. And we
> teach them not to trust anything.

Well, I certainly don't trust drivers to get things right.

> I scroll down the file and reach drm_connector_attach_edid_property().
> Should we NULL check connector? Should we change the function to int
> and return a value? Should the caller check the value? Then there's
> drm_connector_attach_encoder(). And
> drm_connector_has_possible_encoder(). And so on and so forth.
>=20
> Where do you draw the line?

If things can fail, we should expect the caller to handle the failure
somehow. The documentation of drm_connector_attach_encoder() states that
it can fail, so we should expect it.
drm_connector_has_possible_encoder() doesn't so we can assume it can't
fail.

If the function can fail but wasn't designed or documented as such, then
it's on the function. If it was but the caller didn't handle the error
case, then that's on the caller.

Maxime

--7y6ja2ijtruwy6p6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZWc77AAKCRDj7w1vZxhR
xcPrAQDQgezjaCRFLrm1ci7OMYB0pviCvKKwSrlxIJ/UMQY1KAEA8KhoH2NL0IXS
+jKammOWS5C+nAavD5K9RVEDaU4Cpw8=
=E2qM
-----END PGP SIGNATURE-----

--7y6ja2ijtruwy6p6--


--===============1932311342385718949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1932311342385718949==--

