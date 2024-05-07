Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DFF3C10F1A
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 May 2024 16:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e5REIw7rBtNNm4oC3kwwOcuVnIKFPAKJmpsizMo7aRU=; b=dnVU9ynCABb0IDo3ykeyT0uyaE
	5VMD2htnxIpVev3GAvkirgw6SUdLFmYrvvWCw2MAbfv0s+CKDRDB36O0EEomw8SZPl1wsSMQSsShz
	iVkx9QluchY8uR3orYfnjqahkV1N1YCBv6L08A3feqGPOrJ9DMIIdrWhR17QNOTVi2Vpz+tX3w8HD
	EpI2h17qrzKq7DagoqzHV+C9ZldwzFYkrqSw1oyuUGBvn2Ftm8oOaoke6GOvy9yIt+fuHGJHBVhfa
	l9+PxIgezgJn3948sf3TB1Wo+69/L2f2iXbn/f/08dIZl8lJ44yFecFXU9k/DPGrQ0A9F5sGSppbf
	nCbaijfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4O3P-0000000C5oD-2Kla;
	Tue, 07 May 2024 16:52:35 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s4O3L-0000000C5ll-2Y2a;
	Tue, 07 May 2024 16:52:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id DB027CE1387;
	Tue,  7 May 2024 16:52:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55EF0C2BBFC;
	Tue,  7 May 2024 16:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715100749;
	bh=EBegyrKIs9IsYSSriyOSaPz8FbhxduoJLnhVxNryoTk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XO7XZgIzvemyxCi2RURGMKL6uGpqeJtc/aJvHHs2u9K20CkJcikHjNrg/ok2fO8Le
	 8aVtSyMBrnRfjPxx7X3xsZr+EITGhnVcZbF+xUmpnRfGOEEcNvE/ucs2WDEElZ7VSL
	 2k8XXthmphV5XhVO/hY9P9GGrwU/sT/Os0219QiCGySo7Dmn8nt17SKNRyvedI8ilt
	 0I+r/gXx8mDSfO0u0DnLdXlluPJHmGQh/5M82UaiPX0Og6fneW3kz2ZqUBYAeQwYGE
	 Cpbvu+H9cjjlv4sSOwZhYJEBvBOGQgsiik/YSOHYGD65Sl7HUfi/UoRDp4u6gPyyL7
	 mF9IpH/v2OE/g==
Date: Tue, 7 May 2024 17:52:23 +0100
From: Conor Dooley <conor@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH 1/7] dt-bindings: display: rockchip,dw-mipi-dsi: Document
 RK3128 DSI
Message-ID: <20240507-buddhism-revivable-3cb51e6dbe96@spud>
References: <20240506194343.282119-1-knaerzche@gmail.com>
 <20240506194343.282119-2-knaerzche@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240506194343.282119-2-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240507_095231_980528_FD48C68C 
X-CRM114-Status: GOOD (  10.02  )
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
Content-Type: multipart/mixed; boundary="===============6440222899770590352=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6440222899770590352==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ggiKIBO6YyUKyAXI"
Content-Disposition: inline


--ggiKIBO6YyUKyAXI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 06, 2024 at 09:43:36PM +0200, Alex Bee wrote:
> Document the MIPI DSI controller for Rockchip RK3128. The integration is
> similar to PX30 so it's bindings-constraints can be re-used.
>=20
> Signed-off-by: Alex Bee <knaerzche@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.


--ggiKIBO6YyUKyAXI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZjpcRwAKCRB4tDGHoIJi
0lM7AQCvbplIJz/h1RX6+gLccUZy7DZiRifU7S/pEFYX0WnQqwD7BNLAxWiT95Tt
FkeFbO2gnRBBmZX4oS2RXJeiz1OEtgo=
=r4ma
-----END PGP SIGNATURE-----

--ggiKIBO6YyUKyAXI--


--===============6440222899770590352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6440222899770590352==--

