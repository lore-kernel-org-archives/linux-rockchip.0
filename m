Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFB5AC5321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 17:20:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QVKSDQSDJm4cVUT7tbC8euU1LoWJz6NDyQJ2tFzqSUo=; b=HjE34iGhAdZCYPrg6h/LkBQz3a
	SsLYIM/7jIcsAXqPKypi8N/bZEL0KujG4czLvTveSK7uWNjudCnhhcb0Kj19XoExTwBMBSJ0eOHgv
	MiAjqOXbQNDZ/TUnSRVATOAdznU+0Esprxea+akNY871X06nNGtsjKB57HMBiJ/8UxLvSuIaQhFCK
	uyzBY+rnwoY6otmtViMmx+HzC32er/0Kw++xo59lJzKDwFsb/c9cKP5Vb1v6o6giC6GGv1PdD82Nq
	08+eqUPON/ktEPhSZ9kQtyIBvIMvzfGPg/qXCZ+p27lTCOmT63PlsS3QoJJ1eBI+lMBypTbUa0qoO
	ZkIf6gzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sidO2-00000008B29-12Bq;
	Mon, 26 Aug 2024 17:20:14 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sidLW-00000008AZn-0Ek5;
	Mon, 26 Aug 2024 17:17:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 12571A4087C;
	Mon, 26 Aug 2024 17:17:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5FCCC58302;
	Mon, 26 Aug 2024 17:11:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724692291;
	bh=y/4dPSEOyJ4WNl4lVqE+yypC8OvAjsRRR2pzaixlZ0o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CivOqKT0lPqAmn7Jnv5SP6Ip2c3XsT0rVZzfHEFqEcz85oT0iQoB65byDEDFn/ZMK
	 oweCOJ0aqsKJsNQmcks6U0ve3s8LRjhBvEXm6i4frpYm5qwhP5LWr2ZxyWyDvurgPx
	 h9KjutZ00kEVwVCpxVy15mP1WHRUlIWQcaRU+yF9QAE92kUPyHJl7xuciRec4Twfcp
	 zW6om0rog3grPK69veYLFT77PfvUQUtcBxQNHVvOAvqHwVLpECw7WbkWuxCBCqvqnL
	 +Nrw+R8Zs+NtuHWvRtM6ZMIXCXkOwqeYmgAZeJOC/azso0wrZDPxW+vkVU9SmLGmVq
	 ijiCX2KoeTANw==
Date: Mon, 26 Aug 2024 18:11:26 +0100
From: Conor Dooley <conor@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org,
	krzk+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v1 9/9] dt-bindings: clock: rockchip: remove CLK_NR_CLKS
 and CLKPMU_NR_CLKS
Message-ID: <20240826-sworn-harvest-2f2b69d7e581@spud>
References: <416cdaf2-fef2-471d-a03a-837775d6e7dc@gmail.com>
 <a3292ed0-3489-4887-8567-40ea4983c592@gmail.com>
MIME-Version: 1.0
In-Reply-To: <a3292ed0-3489-4887-8567-40ea4983c592@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_101738_165167_CA8D5D19 
X-CRM114-Status: GOOD (  10.00  )
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
Content-Type: multipart/mixed; boundary="===============5608297935945602184=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5608297935945602184==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="asO5tklLM9gWvLJU"
Content-Disposition: inline


--asO5tklLM9gWvLJU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 26, 2024 at 06:39:46PM +0200, Johan Jonker wrote:
> CLK_NR_CLKS and CLKPMU_NR_CLKS should not be part of the binding.
> Remove since the kernel code no longer uses it.
>=20
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--asO5tklLM9gWvLJU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZsy3PgAKCRB4tDGHoIJi
0hEBAQCX/kAPZMuJaVhh13WZOsk8nCv7mOhsArnX8yi/BboXvwEAgPYP8fFH6XG5
EFKs1Y/jp+bcyJ68F83OE/srankNcA0=
=VkUa
-----END PGP SIGNATURE-----

--asO5tklLM9gWvLJU--


--===============5608297935945602184==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5608297935945602184==--

