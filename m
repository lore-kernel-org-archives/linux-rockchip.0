Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32D6BCCF9EB
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 19:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JG+RQjvVr4nPWu6hGHpNn//EA9E5sR4qrdyVRhRW3G8=; b=sYyecoznoc7vhjjJqtVuTueCJ7
	utgQoZKgdM22vYMs8r4MpK/5u9b9H7/pOHKlE08Dc04UwAxbcR1TVx2BliTD+gbOQt6Lg8Monqqo9
	uoSwP3tAT1mJ7tN/CkXa8QznLZDzS1RDe1SKn/IRocOXNP6RqDZowagfx3iY+988ypEFdyAD+ihIg
	Tl2ICrVIbBQnkzY4x51ymWV+V/5vWQckQ+akuEfbdrVpinQvo+qgSuEUOhsE6mCTfa+7j3TVq757O
	vyZNl5WuGn5KfmeRnBrQ53yXODe0ZVUJT4Mfa/EOdt0PgUbEwHPaFV2PSm33VpRz2SGSeTbTyGzwv
	9pIYaD+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDpJh-0000000GYAI-1erH;
	Tue, 28 Oct 2025 19:25:13 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDpJf-0000000GY9o-3Pm0;
	Tue, 28 Oct 2025 19:25:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A18DF6117F;
	Tue, 28 Oct 2025 19:25:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C818FC4CEE7;
	Tue, 28 Oct 2025 19:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761679510;
	bh=XzkzbGZFJX7fWGHnbE/Y5oGhVPC5GuyUzPdnHmqzKb0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GrLIAFo837yv+OWNyDu2d7MfcVLAIEW1OGZDv4EX/FNQrHRPhEHQqqadlnFzzWtbP
	 pN6M2yGl+gQB88R+iroqnT2AlMq8biC3DoeyZ+uljYwqUIneHquhv29cbQZvEXcKu4
	 ACazwHy3RZlY96Dfaseqoa9pF2FiAxEMvs7fjak2Xbf+2PalNuQDUCa6SmcoIUExaz
	 Dd8Mef7vf09/9VhSGzDewGXOFDXKZGBht9veqw1xiqKow6c4c1KclcYhyaCClWtqks
	 i8NU6u9vULZaqPSZDOj1ylhaYG+E+CQesRtsfboIF7pcycyey9qxpWSxPN7wyJ4Muv
	 Chs3znba4NPSw==
Date: Tue, 28 Oct 2025 19:25:05 +0000
From: Conor Dooley <conor@kernel.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: rk3588-dw-hdmi-qp: Add
 frl-enable-gpios property
Message-ID: <20251028-villain-baboon-a52e54d46050@spud>
References: <20251027222641.25066-1-laurent.pinchart@ideasonboard.com>
 <20251027222641.25066-2-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
In-Reply-To: <20251027222641.25066-2-laurent.pinchart@ideasonboard.com>
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
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>, Rob Herring <robh@kernel.org>, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6537528494402663709=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6537528494402663709==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="iclSnaj8umiVc3sR"
Content-Disposition: inline


--iclSnaj8umiVc3sR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 28, 2025 at 12:26:40AM +0200, Laurent Pinchart wrote:
> From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
>=20
> Add an optional property to RK3588 HDMI TX Controller binding describing
> a GPIO line to be asserted when operating in HDMI 2.1 FRL mode and
> deasserted for HDMI 1.4/2.0 TMDS.
>=20
> This is used to control an external voltage bias for HDMI data lines.
>=20
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Co-developed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--iclSnaj8umiVc3sR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaQEYkQAKCRB4tDGHoIJi
0piUAP9EBL9wyve+A7DplHmvD/iHMXkse+rSUiPoBFdlzDNptAEAvqsaVjGlt25G
KP2c82RyKgToVpl0b7ZzHc5UWZ26bQ4=
=a3Iy
-----END PGP SIGNATURE-----

--iclSnaj8umiVc3sR--


--===============6537528494402663709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6537528494402663709==--

