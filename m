Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94862CD4F24
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 May 2026 17:13:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I5NCHxd79L55rpj8cDpCf1h0hooE9RW4S9ldLn25lx8=; b=htsE3+wAXn92xW2MfQCygpKG0/
	XNyTA3vMZcrbHkIXEZCrjtM9ZLf0iwt/tnOyJPsrtK/Kv+5vq9Ir9c88SHQbbA2DFcvGAZVifu7Xx
	VEbxfgvIsqf81SaYLqURizJqacx24CnYLBO/UyFE09CzTbtAvjGfkPdujfOv6t0+iAC5xcbVhDXG/
	5fDN11z/Jb1p6+vcs5HeKY1Wr8iulo9fPGqnBJoNMQJ68xoXqADzPzH5Za6QBmrGN2bTc75BNpFiV
	etvHZUHUgLeQjbiydOuUkyzYkn71x7oYSuyc6U/i1SxOKrkqBrpZRIC2QZ6QNGANl3PoNsEM6omiq
	QYFviTAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMqfc-0000000HVqI-23HZ;
	Tue, 12 May 2026 17:13:24 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMqfa-0000000HVpE-02v8;
	Tue, 12 May 2026 17:13:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id AE7BC43259;
	Tue, 12 May 2026 17:13:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51735C2BCB0;
	Tue, 12 May 2026 17:13:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778606000;
	bh=8dJ437SwzWerjVhp2FPxWDg3Khh2qq97aoIYw1v5qC4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PgYYVw9Ln1aTB+ILwFsfNGPuJv+Fr+qMEWe7B84d5OM/+cyn9Xc8HvsmLRXYmUXG8
	 hZ1atECGinAhohzrV9wykd98LaCvDKwdAP33oEA+hJe2El5BbeTANxxJUFMNxuQZuz
	 bRuOPQ/zpjOBtvFn/bfaSzD2RwFuWRNcwMKNq6hJEm6bLpozuytw3m2KbTcyLikvJz
	 8kESW0dRPS8pdorYfn9hdCaBsdVHBgeTAASmzIK4/GqjkP3hMDt9NfgArQZnxTL5sM
	 5bBhgl3/fSA44gTNlA+QAyQHqdu5uWoViuuvtWWP7u5IZXZsIbTPS5rQ0kLRF7wIBX
	 3CyM5X2C7qlgg==
Date: Tue, 12 May 2026 18:13:13 +0100
From: Conor Dooley <conor@kernel.org>
To: Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v4 06/10] dt-bindings: display: rockchip: analogix-dp:
 Add support for RK3576
Message-ID: <20260512-grandma-traverse-5dad619eaeb3@spud>
References: <20260512095644.1946084-1-damon.ding@rock-chips.com>
 <20260512095644.1946084-7-damon.ding@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20260512095644.1946084-7-damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_101322_070719_B5E5ACF1 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, m.szyprowski@samsung.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Type: multipart/mixed; boundary="===============8979190957741226054=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8979190957741226054==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DR4aWqEz4ku+XB0E"
Content-Disposition: inline


--DR4aWqEz4ku+XB0E
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 12, 2026 at 05:56:40PM +0800, Damon Ding wrote:
> RK3576 integrates an eDP TX controller compatible with the existing
> RK3588 hardware design, reuse the same binding configuration directly.
>=20
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--DR4aWqEz4ku+XB0E
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagNfqQAKCRB4tDGHoIJi
0h8RAQCJTlZsXRmNLgBlSs928sr0deie257zWwDqaX3AsCGzkgEA0OcwIc3s0QD+
JJvyYNtUuzeP8VU4GtaHEx5Y25VqQgA=
=g0FX
-----END PGP SIGNATURE-----

--DR4aWqEz4ku+XB0E--


--===============8979190957741226054==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8979190957741226054==--

