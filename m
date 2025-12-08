Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0B93D3B7E2
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Dec 2025 10:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3JyksbeO2xTaGaKRuEy0cefzFvMH0xVUlCAuoBL0sR0=; b=pEVOMFsWBFM7pZ9qcaH7to14cJ
	Bpx7YnWa8ytNE/GAjgq2DqQb2F8vuo/0SyUw6sLDl1ZzIPmsm7sN4A5+R5L5za91qf25b2FWeh+0T
	s6SacxVTzByVSYywBsNvtmyPYkj/ULO0wYnOiTfNcHduq2aWUAG6T7PUEyTed1ajliBRqH8DJ4Ph3
	WOVp9Vw4KAnN6GM5mNymfyewLrGoKkVfrjCyD6S0+525/GdnxY7ZOn4t4PRusvLrpRg+LN/ZWTg+a
	U1yG6CG+UBXiEtsQUVQehtdwEd2mxpN5JTT9ULQX/p4Uyfn23dou9CH226eWleZHbndcCUBR82APn
	z9/L60eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSYsL-0000000Cyf6-3nbt;
	Mon, 08 Dec 2025 10:53:53 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSYsK-0000000Cyew-3laG
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Dec 2025 10:53:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id EBEE060147;
	Mon,  8 Dec 2025 10:53:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CC10C16AAE;
	Mon,  8 Dec 2025 10:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765191231;
	bh=itfWHF3hQ3r6lG6FL0DO3ku0sYKhYu4kPhpKMcbklTY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Dz9+bBmmcn7i4CITSs/ntOeAk/ZrBaqZZfSxZFM9QW/BWW+eugb814i8jVHpfiiFn
	 RMb5vE/HVvN/VgtAf+bH1dI2XyEn+PWf7SzJnHx7ZRoID884w53QlA/mkkFh9ugijd
	 6aY5BckQ0WEbZC08NVsjVDuwlIjHWPWJDrAkMDHjQjOhWL7pLHVypvZIgJgd9QMjHK
	 OQ6VQTv9Brw3vvPDJg/ZFm/MWKuSluSshnfrH0IDLl0OdUEsZxgoMv+OPqYFTt5nV4
	 0GDr1Ba9xBP3iziypINQwRpiYW+TFXWaBoo3AK7+QbIZt6x4+AyoB7qGrVuCQSRUSW
	 TZ7zMdV40qDJw==
Date: Mon, 8 Dec 2025 11:53:48 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
	Chaoyi Chen <chaoyi.chen@rock-chips.com>, Vicente Bergas <vicencb@gmail.com>, 
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
Message-ID: <20251208-sceptical-wolverine-of-grandeur-7bcf8f@houat>
References: <20251202-mcde-drm-regression-thirdfix-v6-0-f1bffd4ec0fa@kernel.org>
 <20251202-mcde-drm-regression-thirdfix-v6-4-f1bffd4ec0fa@kernel.org>
 <5d6e8e0e-3129-49f1-8c5f-c2f837a36139@rock-chips.com>
 <CACRpkdZwgsbVezfQBRP6pX-o8TLvtFMt+M+rL7GrTmeuzN8xvQ@mail.gmail.com>
 <20251205-strong-dandelion-newt-a776af@houat>
 <CAD++jLkjMRQ3piayZYdKEMDmiwzARfxY36b3=PVUepw0PqUyTA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD++jLkjMRQ3piayZYdKEMDmiwzARfxY36b3=PVUepw0PqUyTA@mail.gmail.com>
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
Content-Type: multipart/mixed; boundary="===============5355250495300851206=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5355250495300851206==
Content-Type: multipart/signed; micalg=pgp-sha384;
	protocol="application/pgp-signature"; boundary="daozjir5beio7yqw"
Content-Disposition: inline


--daozjir5beio7yqw
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v6 4/4] RFT: drm/rockchip: Create custom commit tail
MIME-Version: 1.0

On Fri, Dec 05, 2025 at 03:11:06PM +0100, Linus Walleij wrote:
> On Fri, Dec 5, 2025 at 2:53=E2=80=AFPM Maxime Ripard <mripard@kernel.org>=
 wrote:
>=20
> > - We need to figure out the bridge ordering mess in the first place
>=20
> I was thinking about what we can do here, adding various flags was
> discussed and deemed too kludgy.
>=20
> What exists in the kernel are things such as the MMC power sequencer
> which can be found in
>=20
> drivers/mmc/core/pwrseq_simple.c
> drivers/mmc/core/pwrseq_emmc.c
> drivers/mmc/core/pwrseq_sd8787.c
>=20
> with some DT bindings in
>=20
> Documentation/devicetree/bindings/mmc/mmc-pwrseq-simple.yaml
> Documentation/devicetree/bindings/mmc/mmc-pwrseq-emmc.yaml
> Documentation/devicetree/bindings/mmc/mmc-pwrseq-sd8787.yaml
>=20
> So here the approach is that the specific sequencing requirements
> are added to the hardware description (the device tree) but there the
> resources are really flat, then the driver for each type of sequence
> takes care of the semantics, i.e. the actual sequencing and ordering.
>=20
> Maybe we want to look into something like this?

It's much more complicated than that, and it has nothing to do in the
device tree. The DSI bus has different power states, and DSI devices
have various requirements depending on the power state (in particular,
when you can send commands to the device).

Thus, there needs to be some synchronization between the DSI controller
driver and the DSI device driver to allow the device driver to perform
something in an expected power state.

It's been shoehorned into the bridge API (with pre_enable vs enable) and
hacked a bit with pre_enable_prev_first, but it really should be fixed
once and for all.

Maxime

--daozjir5beio7yqw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iJUEABMJAB0WIQTkHFbLp4ejekA/qfgnX84Zoj2+dgUCaTauPAAKCRAnX84Zoj2+
dmz4AX0XKtwdSoAwh+t9DigQkc8ZQajElAV7XieU8wYCMFVs7Nygtevvo1OepRbr
VPRpdpgBf2QMwTql5B2ViLTRcDHt6iuCvGF/dDLwIg8XQgJIp8/iN9Gs7rUR/qWG
dDba8i3DWg==
=xrEh
-----END PGP SIGNATURE-----

--daozjir5beio7yqw--


--===============5355250495300851206==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5355250495300851206==--

