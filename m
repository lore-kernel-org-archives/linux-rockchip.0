Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F1E1C47258
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jan 2024 13:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nTbv4caKPQCJ8FF0xY+/qYA9zPBrpALAT47S1GuSaUI=; b=Xn7/qhGgj67aldGlShN0cVBOo8
	I1IIXWYqu7rFd5E4fs6vWbuLmymxdW5Z3ErnUTvBVnFtKUKtK/medethHZllqscO/Ynr5sQjZ1Y9j
	EX8k8BxmGlZovj4ucIWcksD4uWfwslWXhEM9mdsvwD1C8fNM7o1dAD2kFlAR0fJb1wcOwt6o9nhz3
	g/OYuOslFdEUezR3NU2AqKjg5UVZLO+xh2JoinHjLNmBOa9APywYHswIriKyHkXX40JvSo6MKmk64
	FbOaAi2U7z44mNrZCdUDqyxDU4RLogFql98HtzA9mNXPnN2VLzeTlM/HKQwiM0d5dbmoS35Kto70O
	Jh07QUrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rOI45-002yhv-12;
	Fri, 12 Jan 2024 13:59:17 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rOI42-002ygo-1m;
	Fri, 12 Jan 2024 13:59:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A9F20CE2253;
	Fri, 12 Jan 2024 13:59:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 128A9C43390;
	Fri, 12 Jan 2024 13:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705067947;
	bh=oMZ81G+ISx28UspkijwH23mXsSLB67wCS+jmcXwB6yY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GtVdOY5/OXfe3N1BykNwp68hEIs60DIJYDyl+AlX0nCj9eJxFKR5OiAS5jEmtiai7
	 Lh5w0lq3TuoU/0QWJcTlMBDth5cQc4SoeFJDSX0C2hMy34NA6bN0e+zQOVxHqu2mrU
	 gkS7MFmC0XPxQ0PWhdoksLauX9kABC5Tujy2/8RWZ/uwbnusqCBH/mlViwVJmNO3X7
	 /BCC/5yZTFcUJhuCGADzM8KoVYAH3Lt6XgnvyGwV3XGEAj/POqc2S9bd+Y2kmOgl7i
	 H0F2Zo4xgYbBckgUw41Ctigvb4MImw8NBqvdZBO/qk7zPZaEn3Sg+iuAshdqiTOdkm
	 eLurRwbq/0TRQ==
Date: Fri, 12 Jan 2024 14:59:04 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, Hans Verkuil <hverkuil@xs4all.nl>, 
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Subject: Re: [PATCH v5 08/44] drm/connector: hdmi: Add Broadcast RGB property
Message-ID: <337mubsn42zlpuoqqvqmsjtdww4kg3x6lo6brdos5o6xgwjdwo@cxfad2pk2so2>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-8-6538e19d634d@kernel.org>
 <CAPY8ntCs9EAYsxwjkscms3kqoC0N8+CcTHoyrG+gFMc0Mh=cwg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPY8ntCs9EAYsxwjkscms3kqoC0N8+CcTHoyrG+gFMc0Mh=cwg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240112_055914_787878_DF2B45DB 
X-CRM114-Status: GOOD (  21.03  )
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
Content-Type: multipart/mixed; boundary="===============8382507604834289109=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8382507604834289109==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qktymaok2b34jnq7"
Content-Disposition: inline


--qktymaok2b34jnq7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Dave,

On Thu, Dec 14, 2023 at 02:43:37PM +0000, Dave Stevenson wrote:
> On Thu, 7 Dec 2023 at 15:50, Maxime Ripard <mripard@kernel.org> wrote:
> >
> > The i915 driver has a property to force the RGB range of an HDMI output.
> > The vc4 driver then implemented the same property with the same
> > semantics. KWin has support for it, and a PR for mutter is also there to
> > support it.
> >
> > Both drivers implementing the same property with the same semantics,
> > plus the userspace having support for it, is proof enough that it's
> > pretty much a de-facto standard now and we can provide helpers for it.
> >
> > Let's plumb it into the newly created HDMI connector.
>=20
> To have such a significant proportion of the patch being kunit tests
> when there was no reference to such in the commit text was slightly
> unexpected.

Thanks for your review. Does that mean that you would prefer the tests
to be in a separate patch?

Maxime

--qktymaok2b34jnq7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZaFFqAAKCRDj7w1vZxhR
xaVsAQCQvfIMIrKA7nqrSHokMD20be4Xcm2T84v3PW9kS4jdiAD/Qli9xSKrx6Q9
1g/aGgxA2VDLSgq0Ag5FVT+HFhvA9gE=
=hMit
-----END PGP SIGNATURE-----

--qktymaok2b34jnq7--


--===============8382507604834289109==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8382507604834289109==--

