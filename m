Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C973FC25B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 May 2024 15:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WMzydUPYWmffLZKR0RGZSyoswxpIqs8a8u4Lt+FOFHs=; b=vv+CTNytVWfqLyigoJqU2meilQ
	IQQhayWpi+bidKFd6t51Gcm5y+6xHZwPLeIS+zL1nx5Wmweiz7lP7f87w5KlyonAUk+KwED5GcGbD
	KmRhBKk2rRYPI8vv9Xw8akRH1zo35gygsJ0wtZEAMR/7KKxqk+jA5R/duwdbVLxwf+DJmKApHJLQt
	hF35RIRSIlGPDsXpOygLnm3pEXFtNcs63KqY0wSi98Hjb5CiwAusdbI3SwlYLenH8JoQtlQC3EEty
	SxEzf0movkonYTRghWkKRL0D9AAYcXvmlyFnXEvuOGlVVqGCmM8otsvWx8yfsq5N02P+e+CUhlUtV
	+rj5ZtvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9o0T-00000003O4u-1DKI;
	Wed, 22 May 2024 15:35:57 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9o0P-00000003O3j-15rL;
	Wed, 22 May 2024 15:35:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 57ECA62A2A;
	Wed, 22 May 2024 15:35:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6DE9C2BD11;
	Wed, 22 May 2024 15:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716392151;
	bh=Qd+NDxGOZ2bJf9sIDqREHnfFavqyfD7ddBDGDAxcjbk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fJCaiQjLOSkJeC8737kXYulTF1E8kx+viQmK6R8A79ohnS0Ia2oKO7niWQO25ldGP
	 YcrmWJcjzgvYYamWATddny5NL8foEzHP71g5oKW+oZV2cvD+IbmF/V50RAHLsngVuW
	 8T6ALDPEmvK1nPQML2+v2HFyWk40+BCuyzs1d7AFmd7wuIRr9poXzP7qvb3kGF5LA7
	 k3x18K6WyK0m64ECtrMbp0YEnAQ1NR5l1clMI2yrI91yteJvWEX4i9zH6bLxnWIz8d
	 6yzROBcTARIC05vmq7n0pwnrFEtY8Rk4mGhd5bjzNdXdFWL2JL9AbLdWWc5sMj7OYr
	 0Q+7VSasTFxdw==
Date: Wed, 22 May 2024 16:35:44 +0100
From: Conor Dooley <conor@kernel.org>
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: display: vop2: Add VP clock resets
Message-ID: <20240522-slimness-dullness-bb807f053c89@spud>
References: <20240514152328.21415-1-detlev.casanova@collabora.com>
 <13628421.uLZWGnKmhe@arisu>
 <20240521-silver-exciting-bb3725dc495d@spud>
 <3334403.5fSG56mABF@arisu>
MIME-Version: 1.0
In-Reply-To: <3334403.5fSG56mABF@arisu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240522_083553_409049_4984E1BB 
X-CRM114-Status: GOOD (  28.46  )
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
Content-Type: multipart/mixed; boundary="===============6651506736540008929=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6651506736540008929==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="O1xKPYmQ4qbvZFbX"
Content-Disposition: inline


--O1xKPYmQ4qbvZFbX
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 22, 2024 at 11:31:36AM -0400, Detlev Casanova wrote:
> On Tuesday, May 21, 2024 2:31:51 P.M. EDT Conor Dooley wrote:
> > On Tue, May 21, 2024 at 01:15:46PM -0400, Detlev Casanova wrote:
> > > On Wednesday, May 15, 2024 12:33:22 P.M. EDT Heiko St=FCbner wrote:
> > > > Am Mittwoch, 15. Mai 2024, 18:19:29 CEST schrieb Conor Dooley:
> > > > > On Tue, May 14, 2024 at 11:19:47AM -0400, Detlev Casanova wrote:
> > > > > > Add the documentation for VOP2 video ports reset clocks.
> > > > > > One reset can be set per video port.
> > > > > >=20
> > > > > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > > > >=20
> > > > > Are these resets valid for all VOPs or just the one on 3588?
> > > >=20
> > > > Not in that form.
> > > > I.e. rk3588 has 4 video-ports (0-3), while rk3568 has 3 (0-2).
> > > >=20
> > > > So the binding should take into account that rk3568 also has the
> > > > SRST_VOP0 ... SRST_VOP2.
> > >=20
> > > That is what is set in the example and the reason why I set minItems =
to 3
> > > in the main bindings.
> > > Then, the rk3588 specific part sets it to 4.
> > >=20
> > > Isn't that enough ?
> >=20
> > Not quite - you need to restrict maxItems to 3 for the other devices if
> > the clocks are not valid. What you've got says that 4 clocks are
> > possible but not needed on !rk3588.
> >=20
> I don't understand what "properties: resets: minItems: 3" means then. I=
=20
> thought it means that all devices should have at least 3 resets. Then the=
=20
> allOf below specifies the special case of rk3588 which has a minimum of 4=
=20
> resets.

The change you made to the bindings allows someone to define either 3
(because of minItems 3) or 4 (because there are 4 items in the list) resets
for the rk3568.

> Do I need to add=20
>         resets:
>           minItems: 3
>         reset-names:
>           minItems: 3
> in the "else:" ?

No, you need to add maxItems: 3 to the else.

> So in that case, I can remove "properties: resets: minItems: 3" above ?
>=20
> Also, what do you mean "If the clocks are not valid" ?

s/clocks/resets/ ;)

--O1xKPYmQ4qbvZFbX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZk4Q0AAKCRB4tDGHoIJi
0s0DAQDoOkPVLDr+HE00hhznKtcPPj+CcSSPyDVA/6sDIBivXQEAsVedCSlfxbXc
k7i+X+yRjsbEqstU9Tavi7c6NTEiuQI=
=aFFV
-----END PGP SIGNATURE-----

--O1xKPYmQ4qbvZFbX--


--===============6651506736540008929==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6651506736540008929==--

