Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C65D5C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 08:48:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Obmb9ERBRGsPnmZLkz4h8T1ba7AvKyyzoXns7AJ9tQE=; b=Q8wB4HbxhJjjiXpNLsyK3fJh2W
	618CPqy3I6NaJB/IWaN1Z+nYTpog1c5hIOG+M643MDzqo+mYwIj11eR/zKaGnkoE8sjWOl0OamqLA
	44fzH65r97u3chnnX4k2tYc3HE4Don7X85/flQfeHl5R/0L3nR4tUHc7P0ys4XmRTqEjPNmpEiEa/
	SnyNH+fFDh448UYEUtBnUuiNZiIlLzWGIyD/NXgXY51wri4n86zaC0KY9DXmspi2u5IBZ+TzumeGs
	vGzNJimSgRaBMTnp0WLI3WguFxpBfPB9YWGHwNGky0wfX8J5jEdi29EhtJe86Q1peoxya+5gJCmwU
	65dWYncQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhO5-00HHOC-0T;
	Thu, 14 Dec 2023 08:48:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDhO2-00HHNj-1C;
	Thu, 14 Dec 2023 08:48:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6023161D65;
	Thu, 14 Dec 2023 08:48:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2380C433C8;
	Thu, 14 Dec 2023 08:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702543685;
	bh=bWHJ2nEewYvkEMXif5fsymjDtt1zbVHkI49YReVBsDQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pPD0dHulfnGTLBExOIGRTAfiqj1Qk7C1wGbXEFFA+Pt+rXyiZAj7vbwEaxmbG0WwT
	 fXFFyJk+4cXRjuEuZOaIW2zJfaQWQVhtRrRRMs9UBCIfoOA/vwGoNjuOsMobs2oBCm
	 /x6JnOvRPji6GrvOos2Yw0oUNQ7Twg7kRtElj5s2rVwBJyXcyMMHWXpshWSCkkceSt
	 DYWU1oSq1eOTpMnCRdiI6PV+tNisgz0AazAxpQrLs1AbDcui/7JAAaAoEKbqsOi4RV
	 TbFefK+3/aSdO1enpIiXwv3fnydWvBXHZc2tXzUZCp7iO2AVsS4o+JMKrdmlVqf3VR
	 5MriRhjZBtS9w==
Date: Thu, 14 Dec 2023 09:48:02 +0100
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
Subject: Re: [PATCH v5 18/44] drm/vc4: hdmi: Create destroy state
 implementation
Message-ID: <rr5wvkunjglkxozfsvf5zvffwzznq6zt5mzvxw5rx2rpyfzecb@kauuy72x43gj>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
 <20231207-kms-hdmi-connector-state-v5-18-6538e19d634d@kernel.org>
 <CAPY8ntBe9RfSjdnd5Smx23La5gQaR9WqY8ehXQyp=4D_11N55Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAPY8ntBe9RfSjdnd5Smx23La5gQaR9WqY8ehXQyp=4D_11N55Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_004806_476005_171B3148 
X-CRM114-Status: GOOD (  15.96  )
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
Content-Type: multipart/mixed; boundary="===============8434930038625383112=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8434930038625383112==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="34euckmdvwkupler"
Content-Disposition: inline


--34euckmdvwkupler
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Dave,

On Tue, Dec 12, 2023 at 11:40:26AM +0000, Dave Stevenson wrote:
> On Thu, 7 Dec 2023 at 15:50, Maxime Ripard <mripard@kernel.org> wrote:
> >
> > Even though we were rolling our own custom state for the vc4 HDMI
> > controller driver, we were still using the generic helper to destroy
> > that state.
> >
> > It was mostly working since the underlying state is the first member of
> > our state so the pointers are probably equal in all relevant cases, but
> > it's still fragile so let's fix this properly.
> >
> > Signed-off-by: Maxime Ripard <mripard@kernel.org>
>=20
> Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>

Thanks for the review, I've applied that patch now.

Could you also review the framework changes (patches 6 to 16) ?

Thanks!
Maxime

--34euckmdvwkupler
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZXrBQgAKCRDj7w1vZxhR
xRk8AQDdN5Neajg11B6buyB2iqOXxDC3Ad8XCWlmcjkK9I1jTQEAv+RIYp6M3cV0
8PQqOi1QiT/3hX+WMjreXGSqFUgQCg8=
=hVnz
-----END PGP SIGNATURE-----

--34euckmdvwkupler--


--===============8434930038625383112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8434930038625383112==--

