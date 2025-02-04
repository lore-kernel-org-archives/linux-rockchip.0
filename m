Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B66B0C02193
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Feb 2025 19:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0hgHOl1sPStxZHkcfL35c0ONS9/Xqvd7MJr+Vdxix1Y=; b=aT3KaFfvX142wxuVe7S5IrMa3J
	dpUt44q47VJuF0+rk0/04RHa6xxi8UZ2KMLZnNCjE4z5GpaYjy0wmwjbs+ZpoeeCD27XOYOlfavnh
	QTa4zTlpEFjx0xS3gK1aJN5KUMxkB25S6DFal5A7X07rk+jmBqqqPppHPCOfLSoHOBnlWRCE5/jIs
	ihwI9tBGpLOdhLoO9LOHaTpaxFiIcchX0pQWQ/AGGGE7owmih4bCXThR+KCDZMZPdDwmUAEswinPF
	1KqroUWgJM1zCgMX4/0B6vJ0tCR5Jga3yil5HUF7Cq3KVmuhz2Egdi9f+Z9yf/Xuxu3Vl7J4fdLVx
	lvzjYZtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfOdJ-00000001Msg-1Jfa;
	Tue, 04 Feb 2025 19:30:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfOZW-00000001MDu-2tXt;
	Tue, 04 Feb 2025 19:26:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=CUugQ4UB8ewPvEhGFpWRj7jO44gq3NLTzSwK4Ta4SAY=; b=a0nQ900J90mUJUfWahXfoaYR0M
	N/vEYya5P3EKnn0ePtGIiFbibuqaWYEdOHy/31OEDp6Yr2Fk6l/vQeceQ3dut0X1fkSaY3q49IxBO
	fH+Y6WwwLVy18Q75hY3TfFACt8YJ+QZJKbzf1BPfOZO+/IBjZhGXHzDxuDxc6S4X/UB4+IRKlQTRR
	ljOE00enmUkcSmgHgTtpo4jeXmGSim/tnLZHwfxsnUWQmbVXkUWx0PeiSx9xNk+sxNX1zvnLGe/kR
	ws0Exehqq+unVifdSWkXEWyiJ9hPuvSbPX9BpbBTeo9Hm44OUDxHvxzt1qudoeMudSk+Sydf/rm+h
	nQXtcyeQ==;
Received: from nyc.source.kernel.org ([147.75.193.91])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfOZT-0000000GPF0-41IC;
	Tue, 04 Feb 2025 19:26:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 701EFA42C78;
	Tue,  4 Feb 2025 19:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E16DC4CEDF;
	Tue,  4 Feb 2025 19:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738697212;
	bh=CUugQ4UB8ewPvEhGFpWRj7jO44gq3NLTzSwK4Ta4SAY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=If/fF4qyzjOA0+yCmOfYWkWbEyXoVZvtmd/BWQJb/Z9Whx5AQd32XjDQEApfnoCas
	 uK3WEjCmaJeTXU24HtocZuLB4vDzq1o3Xb9xZ0cdS7rGqx4L30j4zsUloD+1vJ2I1w
	 oKYn16tFe+PvCkqe9oBJV+aGSNoaBr8735ZQVvNMOvEqSIyB1T8WMkXoLNhbqrsDA8
	 Sxv6YIJjBuOTPPhtnVQtwRak96ircyn28PQ92eB5lF9nfzNN6M2t92hcV4sBLoyP7/
	 92MFLyUW39LLt7ffwe5qaRZphEFKIRW4PeguGrxNaZFsNxGZYQh75+dWpDhhu/N7/G
	 V3vnVHAl4jlFg==
Date: Tue, 4 Feb 2025 19:26:46 +0000
From: Conor Dooley <conor@kernel.org>
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Daniel Golle <daniel@makrotopia.org>,
	Aurelien Jarno <aurelien@aurel32.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org
Subject: Re: [PATCH v2 2/7] dt-bindings: rng: add binding for Rockchip RK3588
 RNG
Message-ID: <20250204-monologue-throng-c6772c089404@spud>
References: <20250204-rk3588-trng-submission-v2-0-608172b6fd91@collabora.com>
 <20250204-rk3588-trng-submission-v2-2-608172b6fd91@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20250204-rk3588-trng-submission-v2-2-608172b6fd91@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_192656_162584_AA4C45DF 
X-CRM114-Status: GOOD (  14.59  )
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
Content-Type: multipart/mixed; boundary="===============8147315046832809306=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8147315046832809306==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3oc7PGcIEvdR+5za"
Content-Disposition: inline


--3oc7PGcIEvdR+5za
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 04, 2025 at 04:35:47PM +0100, Nicolas Frattaroli wrote:
> The Rockchip RK3588 SoC has two hardware RNGs accessible to the
> non-secure world: an RNG in the Crypto IP, and a standalone RNG that is
> new to this SoC.
>=20
> Add a binding for this new standalone RNG. It is distinct hardware from
> the existing rockchip,rk3568-rng, and therefore gets its own binding as
> the two hardware IPs are unrelated other than both being made by the
> same vendor.
>=20
> The RNG is capable of firing an interrupt when entropy is ready.
>=20
> The reset is optional, as the hardware does a power-on reset, and
> functions without the software manually resetting it.
>=20
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--3oc7PGcIEvdR+5za
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ6Jp9gAKCRB4tDGHoIJi
0sZwAPwNeNLYaxfWC1AxcDB1tYjKebikVvcKzjwoZADBtieSSQEA6/BVaYCQIuCs
363NNSW6ibIXN0SYog0H3t+JFHlysQ4=
=mXHF
-----END PGP SIGNATURE-----

--3oc7PGcIEvdR+5za--


--===============8147315046832809306==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8147315046832809306==--

