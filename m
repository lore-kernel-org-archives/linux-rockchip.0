Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CB39CD98D0
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 19:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hwhTE3OIJEodO0kdj+rYtS7JlfHlV3FY15mHKbMnh0A=; b=EUwgC9p9CfkOBjASi2Rt4zpoSC
	mjO2bKrbwTQqiEsJf0K4x1EtZzGR3exmrLY+K8r8TsDDIg3tJ57r1iAszG8YDAY85N4rbrbzka8iu
	VnPT3u91lkosNdsrrpnRurPPgv7WA/xnjJf+sNp1iysl+sdK/LaeALrpcr8oa8MDOVWpQecwBNoQA
	/TaGX+fRRP6Yw51FZmokt5NAdVcvwmZowBmIJnVFnUOrqx20rars6CYJKiGib1IoLDadw+Vj83CL7
	VTPPfYtGhBwdIYkBhp3HnfNIpOWNBcc+Jx9Ii65hKfXUIY0beC43xQpPfPtCiNd35dyqLm4mrnVUr
	vk5q3W2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJdB1-0000000B1XJ-46cg;
	Thu, 13 Nov 2025 19:40:15 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJdAz-0000000B1WU-3nNJ;
	Thu, 13 Nov 2025 19:40:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8881260120;
	Thu, 13 Nov 2025 19:40:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 913BFC4CEF7;
	Thu, 13 Nov 2025 19:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763062809;
	bh=Wx342tcBgfqE+WH1ARcF9gyNKVzvRv5eqMrGaiw/ROs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kTr8te+MVreiJnoFzSWj3UpJCBxpwzTLfo6ifCcdmYQ9cR5x78YbiS3SWKoSoQXMF
	 p7yfF0Rt0WuvBYOZRHhvMOaC3QQmBm2iYpYc6U6Lq9v4uXNEi66/T4ZK2RVC3eM8pS
	 b3QJZnRzFqL5Q5U2zSkeiwaZJx1RB4j9gJQAB0360Jsv+iOctGCJHmoU1wYmGypk4b
	 ncnesRwZp9O+atmoIZZD6rrCV9is0LhQfJ6eRLlFWqnNRb9NtlqfNIEpj6vctbTr4l
	 7O/oiJ9AelGVmYz+inme4ufh8TESqhccG5m2sroUMNcfxWoX8cE5yAAVAR5aKa2jKY
	 /Tn1Bdrk9psng==
Date: Thu, 13 Nov 2025 19:40:04 +0000
From: Conor Dooley <conor@kernel.org>
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: mkl@pengutronix.de, kernel@pengutronix.de, mailhol.vincent@wanadoo.fr,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, cl@rock-chips.com, linux-can@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v9 1/3] dt-bindings: can: rockchip_canfd: add rk3576 CAN
 controller
Message-ID: <20251113-bullfrog-destiny-977deea729e1@spud>
References: <20251113075419.482940-1-zhangqing@rock-chips.com>
 <20251113075419.482940-2-zhangqing@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <20251113075419.482940-2-zhangqing@rock-chips.com>
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
Content-Type: multipart/mixed; boundary="===============6411623245021472879=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6411623245021472879==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WjU9NJgo+2A7qyol"
Content-Disposition: inline


--WjU9NJgo+2A7qyol
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 13, 2025 at 03:54:17PM +0800, Elaine Zhang wrote:
> Add documentation for the rockchip rk3576 CAN controller.
>=20
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--WjU9NJgo+2A7qyol
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaRY0FAAKCRB4tDGHoIJi
0sGfAP4wgwh6tZ6Pso8QvqsrTodV7+0O41gzAmmQLMmy7bTcFwD+JqWVf+a/DlRc
6qanJhzv1AANWatqUmDD8yh7hQX58gM=
=y8U3
-----END PGP SIGNATURE-----

--WjU9NJgo+2A7qyol--


--===============6411623245021472879==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6411623245021472879==--

