Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B122D2F7EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Dec 2025 13:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A36AdCCAuSZfPJ0z2pNZlf47u1+p8mWypLBLqKZ5/ho=; b=or2XIjCKHhOrtw877n1/AsYxAk
	dtl3efjzMc4UsPne/Ujgg71iwhMXClk1bauPwRQqWFa/a41Mci47Cm0wP3nJYVn+sWEy92utWpGKk
	S3oNEAIokSnrwSi7DIJ2FnjRuCGa6z5TFdBS88LMaY0FuJ4wJs+Djky1DCnkTS1HYK3ium8dPIqrB
	6Y3AgnD2/+KnravQX5LQG5+TDQqLLM86ZkiCiI2OAupkpsYpxhUQ1CXNv6toMnOf9GFjHOp4lyjVz
	3ELrNgtfywc57dw9la+M1p6fC680uzidJoq2wKC6MdRwBpg8uUs9YbWx1VT07rTsdIS58SVuIUlFe
	G4xEH0XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWFf-00000009YAO-3kJe;
	Fri, 05 Dec 2025 13:53:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWFd-00000009Y9q-3fye
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Dec 2025 13:53:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 52B9440210;
	Fri,  5 Dec 2025 13:53:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1585C4CEF1;
	Fri,  5 Dec 2025 13:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764942816;
	bh=/hC7rd6Y9Vayemn+Pbfyjg5j0j2kUQXBmQlPRF88pv8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cE6wwOerfX3UoSj7qH/joVItak7wgZUJHkz4saNXDBRE68r3bpyMVs9MIGAaG5gGK
	 kVSCHiFU5FQp0Hwq++iZuDsjk+oWuCPESMy0RTWg7XlgbnGeUWcXJaGShs3fjOQY8X
	 v34WXO7ugfQxY1V3adH6MYyqnmsy+c3rg+d/Fjyx03qZv952LRGyIZTXlE/ZVhgHXO
	 USllvUH/wYi7aZr+n7cAtLR4HDblMEfc6GcHTMKHylhDS8k8a0XbK/zpPIG+j5GR4s
	 F2keNltKuktIqOn0mzCAE+Ce/ds71Ig1Z+9OZbE//S0+984Y1fNJ51XvNnjfdoDe4I
	 I/SLuRHZHf75g==
Date: Fri, 5 Dec 2025 14:53:33 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	Linus Walleij <linusw@kernel.org>, Vicente Bergas <vicencb@gmail.com>, 
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, Marek Vasut <marek.vasut+renesas@mailbox.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>, Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Aradhya Bhatia <a-bhatia1@ti.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Aradhya Bhatia <aradhya.bhatia@linux.dev>
Subject: Re: [PATCH v6 4/4] RFT: drm/rockchip: Create custom commit tail
Message-ID: <20251205-strong-dandelion-newt-a776af@houat>
References: <20251202-mcde-drm-regression-thirdfix-v6-0-f1bffd4ec0fa@kernel.org>
 <20251202-mcde-drm-regression-thirdfix-v6-4-f1bffd4ec0fa@kernel.org>
 <5d6e8e0e-3129-49f1-8c5f-c2f837a36139@rock-chips.com>
 <CACRpkdZwgsbVezfQBRP6pX-o8TLvtFMt+M+rL7GrTmeuzN8xvQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACRpkdZwgsbVezfQBRP6pX-o8TLvtFMt+M+rL7GrTmeuzN8xvQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_055337_954083_80BDA35C 
X-CRM114-Status: GOOD (  17.16  )
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
Content-Type: multipart/mixed; boundary="===============3436001345821546050=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3436001345821546050==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="iiu34guk5mzq376l"
Content-Disposition: inline


--iiu34guk5mzq376l
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 4/4] RFT: drm/rockchip: Create custom commit tail
MIME-Version: 1.0

On Wed, Dec 03, 2025 at 10:54:45AM +0100, Linus Walleij wrote:
> On Wed, Dec 3, 2025 at 4:10=E2=80=AFAM Chaoyi Chen <chaoyi.chen@rock-chip=
s.com> wrote:
>=20
> > It seems that multiple drivers currently depend on the CRTC being
> > enabled and they implement the same atomic_commit_tail().
> >
> > Why not implement this in drm_atomic_helper_commit_tail_rpm() instead?
> > Or why not use another common helper function for this?
>=20
> So my v2 version of the patch series added a new special case
> helper tail function to do that:
> https://lore.kernel.org/dri-devel/20251118-mcde-drm-regression-v2-3-4fedf=
10b18f6@linaro.org/
>=20
> It was politely NACKed for complicating the helpers library (short story).

The longer story is that it wasn't NACKed at all, but if we want to do that:

- We need to figure out the bridge ordering mess in the first place

- Improve the commit_tail helpers doc to make it clearer what each are
  doing

- Probably change their name too, since the rpm suffix is a gross
  simplification of what is happening

- Create a few kunit tests to make sure whatever order they guarantee is
  properly implemented

- And maybe create a few helpers and convert drivers to that.

None of that have any place for a regression fix, so it wasn't a
reasonable ask.

Maxime

--iiu34guk5mzq376l
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaTLj1wAKCRAnX84Zoj2+
dtfvAYCK0e7SvjMsHWvvtqMA8laxNk1TCzat/WvSag5cJ2DIKG3nBapeYk829dYp
QxYNjv4BgNoX6fyZdnio672A2YVqlQlALPbN3Vl1yb6/Z0LaoBMuBgYSg1VnIeut
gSBrugWVcg==
=dmYT
-----END PGP SIGNATURE-----

--iiu34guk5mzq376l--


--===============3436001345821546050==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3436001345821546050==--

