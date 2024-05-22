Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDD0FC25B78
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 May 2024 15:32:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z7+Hk2fW9oE6oV/OjFWceAl2aOIJKwr4r55QiViKn3s=; b=DKah1zORo5JqXqbd6LgbIzsLIX
	EKCQDhSNsFhnwDdQ44rS+fcjNPVv8amo+1fOjuAnVXoppOiSoHD9i3uw6cj5n5we4gr6qZOywBlGm
	J0xxsujPHp/HMW/4ws/g7nSGAHk+fy058kwOZF7pbCsGUL0em+sdN13TMPwZYt9idQRYkzMW0qiAS
	SBHmKk2DChxWTCdqPg7IYz77EX9MAbhizhZZgF1Ma9FtTy6z9BIIZQiTdNLH8BVhARi0lLArw7/As
	3FRyjAaU1F9CbKuCK32k2WCV15SUxc0/4/emDVMFjrL3nKnoL0MiNGY0xy9hAlPUXSJJrSHp+XFgi
	hxr+btJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9nwl-00000003NQs-0dgc;
	Wed, 22 May 2024 15:32:07 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9nwh-00000003NPB-13m9;
	Wed, 22 May 2024 15:32:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1716391918;
	bh=kUTVaEv+CluhtL7Oa3Hy8QzRC+vL3NJAb+fI1CqZcJE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=4NYcg31OsYHSC+HF3tIyiUc8hndE22wxc7pw+Q//fSm65c4ZbKpBNGiXNEakYxEKh
	 kFWIaK4OWeKsH84HGAYssMKq5MBRpgzAoN1s03GfYY7LGjcjXBPiiVrMAD8HqMxS7q
	 viLAhoCr/Nz8JNU7TxFJ0vq2SkqG3bLvrrb+seTGVSE3CRBVotdfU6equ9jLzrF5Bn
	 Am5+q5tl0byg9K2Sn+vTLN20ze4856ucuQbsxGdS5+X56VQmtzLdUY1hg6YUGAzqjo
	 ozxWLSPJUKpRuDwxk24x483I5nOEfa9oUMRoUr7AZ006YwG2xkAqMZMkJO6GKoV9Ja
	 /GxF7YCrLeABQ==
Received: from arisu.localnet (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id BE6243782170;
	Wed, 22 May 2024 15:31:55 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Conor Dooley <conor@kernel.org>
Cc: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko.stuebner@cherry.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Dragan Simic <dsimic@manjaro.org>, Chris Morgan <macromorgan@hotmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: display: vop2: Add VP clock resets
Date: Wed, 22 May 2024 11:31:36 -0400
Message-ID: <3334403.5fSG56mABF@arisu>
Organization: Collabora
In-Reply-To: <20240521-silver-exciting-bb3725dc495d@spud>
References: <20240514152328.21415-1-detlev.casanova@collabora.com>
 <13628421.uLZWGnKmhe@arisu> <20240521-silver-exciting-bb3725dc495d@spud>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240522_083203_474059_45820361 
X-CRM114-Status: GOOD (  23.94  )
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
Content-Type: multipart/mixed; boundary="===============3999636615728603519=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============3999636615728603519==
Content-Type: multipart/signed; boundary="nextPart6053228.MhkbZ0Pkbq";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart6053228.MhkbZ0Pkbq
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; protected-headers="v1"
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Conor Dooley <conor@kernel.org>
Date: Wed, 22 May 2024 11:31:36 -0400
Message-ID: <3334403.5fSG56mABF@arisu>
Organization: Collabora
In-Reply-To: <20240521-silver-exciting-bb3725dc495d@spud>
MIME-Version: 1.0

On Tuesday, May 21, 2024 2:31:51 P.M. EDT Conor Dooley wrote:
> On Tue, May 21, 2024 at 01:15:46PM -0400, Detlev Casanova wrote:
> > On Wednesday, May 15, 2024 12:33:22 P.M. EDT Heiko St=FCbner wrote:
> > > Am Mittwoch, 15. Mai 2024, 18:19:29 CEST schrieb Conor Dooley:
> > > > On Tue, May 14, 2024 at 11:19:47AM -0400, Detlev Casanova wrote:
> > > > > Add the documentation for VOP2 video ports reset clocks.
> > > > > One reset can be set per video port.
> > > > >=20
> > > > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > > >=20
> > > > Are these resets valid for all VOPs or just the one on 3588?
> > >=20
> > > Not in that form.
> > > I.e. rk3588 has 4 video-ports (0-3), while rk3568 has 3 (0-2).
> > >=20
> > > So the binding should take into account that rk3568 also has the
> > > SRST_VOP0 ... SRST_VOP2.
> >=20
> > That is what is set in the example and the reason why I set minItems to=
 3
> > in the main bindings.
> > Then, the rk3588 specific part sets it to 4.
> >=20
> > Isn't that enough ?
>=20
> Not quite - you need to restrict maxItems to 3 for the other devices if
> the clocks are not valid. What you've got says that 4 clocks are
> possible but not needed on !rk3588.
>=20
> Cheers,
> Conor.

I don't understand what "properties: resets: minItems: 3" means then. I=20
thought it means that all devices should have at least 3 resets. Then the=20
allOf below specifies the special case of rk3588 which has a minimum of 4=20
resets.

Do I need to add=20
        resets:
          minItems: 3
        reset-names:
          minItems: 3
in the "else:" ?

So in that case, I can remove "properties: resets: minItems: 3" above ?

Also, what do you mean "If the clocks are not valid" ?

Detlev.


--nextPart6053228.MhkbZ0Pkbq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEonF9IvGrXNkDg+CX5EFKUk4x7bYFAmZOD9gACgkQ5EFKUk4x
7bY7TQf+JupJtDv/HvUIX8L38oBOIr0TEHcquMrWumq4ACE/y2HjwxHAhYw7NufO
qC1OuNVis+e3pQ5kqoy5z9iNiyvA8weC2Uu2Ig0UgtdLPwhf88oj9IxHr9OtzY0J
Z1019PaHyov5yb3copVh66aW8rtadOKfNCio2F+zSNITxfwzdFJJ3pbk5JqHf4de
06zd16nvuYlQ6IUoony8xKi+NfJICvmo8XvR/UR5EEtlYPto8SnLPhqRw+vbRe4U
Bia87NTBM9o7bkq8kk00EOyO+PDEYlg3AU5mGLnnf0ES5kZPa10EDHJQZ1SHeM8k
sUP3VPs8I/S9Jk1QMusS6foYdtbshQ==
=vt+N
-----END PGP SIGNATURE-----

--nextPart6053228.MhkbZ0Pkbq--





--===============3999636615728603519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3999636615728603519==--




