Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 237C0CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 17:58:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=w0QuCAsQWv1FP4JB5Q7zQ7Q007prBlubpGdzoIfUlCY=; b=Pp78S+qJXQxMRg26uhz33PqtYR
	sYmuLgsjzGtGZrmaAfORTbicbGgsNERph6iVHTHzAkYbXjFzESD82sXLXJpEW93Xk6MO4cRMoTXZe
	1TiDC1H89X1kYnq6FQ5H6Qc0w0LryEnO28kz8jlJIiRMU2rQ2slYUxKT+A9SchV6v6z45Zc3iggNX
	AzQIqcCdgcTVQZ5t9KdGhc3MYebODG05EnlVk0zNf1ad3Ac1RZrBmn31LVbTii5c3/b2ImwoeITjC
	Lq/C9kOUajYmQpWu1EAsGX6LRXOhLlENeIUW3KZFvDYALnPBMTSBqWTwaQE3+JTOzMlorwzz+C2wK
	Cvrj9oXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBd6M-00000003unj-0IJP;
	Wed, 22 Oct 2025 17:58:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBd6L-00000003un9-0qcO;
	Wed, 22 Oct 2025 17:58:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 9EAFE629A4;
	Wed, 22 Oct 2025 17:58:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F244C4CEE7;
	Wed, 22 Oct 2025 17:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761155900;
	bh=ccO/t/BtCHXvn4ZRBxoKZibXBq2KpTEqZXudSnpgJmE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qo7Q1I4FLhMu2+TeUtzSwzNw5nuaWtQU8vmBaH557lkvL193SZuZBA41zf8fivwgP
	 HtiGRgm1lRm77MTbmA/m9TgBTBwr0n+IP5XewxwuleX5L9rMasn2K6x9aw8OBQj0BL
	 b90d/KGeQ7iCAPniFm/FMSdDfypWNlmV6YvJYRLuveyMhMVXeeKAp8aCBl4vcaACjS
	 eD5tjJaMmPlTT9BOj2HIpNABtgi+COzAaivx7mGerScffl91NOlZ1PMPhgYzlQr3oi
	 XHRq/ksQHXW7/hG0NL/0/qJGxe2L0G/CnwO0ngC7eGtIU7mFD6B0HCyRcwCwEWR/Ut
	 VZfg6mljRc86g==
Date: Wed, 22 Oct 2025 18:58:16 +0100
From: Conor Dooley <conor@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: andi.shyti@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: i2c: i2c-rk3x: Add compatible string for
 RK3506
Message-ID: <20251022-cathedral-radiantly-eeb2b291e149@spud>
References: <20251021222853.193224-1-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20251021222853.193224-1-heiko@sntech.de>
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
Content-Type: multipart/mixed; boundary="===============3524114570982158019=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3524114570982158019==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GPMty0wyvpr3P0oy"
Content-Disposition: inline


--GPMty0wyvpr3P0oy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 22, 2025 at 12:28:53AM +0200, Heiko Stuebner wrote:
> The i2c controller in the RK3506 is compatible to the variant first found
> in the RK3399 SoC, so add the RK3506 to that variant list.
>=20
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--GPMty0wyvpr3P0oy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaPkbOAAKCRB4tDGHoIJi
0uRjAQCnlRdeNOobAiqzp5bycfsrdIiBO/pmTWkV+MPDBieUoQD7BBBSwxDDgdqt
BBIHWUU3mXYojkFeBziXRveyq9LJcAw=
=LC/v
-----END PGP SIGNATURE-----

--GPMty0wyvpr3P0oy--


--===============3524114570982158019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3524114570982158019==--

