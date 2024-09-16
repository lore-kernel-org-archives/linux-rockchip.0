Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1402AC3ABA2
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Sep 2024 16:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8wklL4/G+FyxE7n+/27xWKM3fMHfRDMJXQGka+sGL7c=; b=uKy4hWCKnGLzBJxRCUII1Tivsk
	ytf13QsWSI/VOEaiwdiK8Rsnk6B75x03gz1gZvh6MdHG5tEWX5NyPXjsmoI0Mwecc1WCqg2hxHOQ7
	E0E42KHE1e6rrSFzrGxYsK7dh04oGp1pIQJC5RBofr2/25cbNWJE+aMsrisC+Gcj7GJyAguYx7+pH
	EiBzIWO0Q36aj2MiP6Xvzx6ULAibkat7S1arJ/kXEnrqviR8f78BqMDdaIFtbnHs6AfrnxDko78b/
	e+Gk8Sla2nNSCzfrQFa3b/tBJkxwUIx12O6En8BCpI+yqZwh8mBYH/iZFKV6NbyKwjxFGrtBo1UMY
	fYDWdHBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqEkk-00000004UIl-3410;
	Mon, 16 Sep 2024 16:39:06 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqEfj-00000004Tbi-2mfJ;
	Mon, 16 Sep 2024 16:33:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E30DBA4319E;
	Mon, 16 Sep 2024 16:33:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 085B2C4CEC4;
	Mon, 16 Sep 2024 16:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726504434;
	bh=QqNjHfV+bL/edqLFl7taMwluNBafAR8LxONwNNjOAcU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dCtmew8RuqFe0tIQcMcetN0cyzAHNDgdFZ96zEVYKfPmrkzcqwxb+1XhE7mAjR4uI
	 RxKQ7chmm1h6BYcrJXRsxT9njZjF6rjVr0+FErjNGqUjkGMgLomRcrQxQHUOufoZJK
	 Q56W8acdw/sfpxF1s6kcXcgR8FGgDk6g+4J46bIvaZvjNqkg6QWpFrERfBpIDB/XcV
	 E/fo1OC8fdawkQS+t1f6RjqYhvTh85RgAYOKLCkZYpFZm0daWBK6XVkr3QJR6wOdPB
	 TaLIt9sTOdxyZSoRXm/ItCMVC4RyphBNSwbYFAbtvvNYR+Sf4AIy7i2/X5hFkFSFTX
	 9HSjvaOEucs7w==
Date: Mon, 16 Sep 2024 17:33:49 +0100
From: Conor Dooley <conor@kernel.org>
To: Yao Zi <ziyao@disroot.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: Possible misleading information in rockchip,rk3588-cru.yaml
Message-ID: <20240916-neuron-surfer-32db6440e1ad@spud>
References: <ZuIJgiN2xp6oPrHD@pineapple>
MIME-Version: 1.0
In-Reply-To: <ZuIJgiN2xp6oPrHD@pineapple>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_093355_791623_759C1754 
X-CRM114-Status: GOOD (  15.52  )
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
Content-Type: multipart/mixed; boundary="===============4557875856580231669=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============4557875856580231669==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="762l3reB4+o5LV48"
Content-Disposition: inline


--762l3reB4+o5LV48
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 11, 2024 at 09:20:02PM +0000, Yao Zi wrote:
> Hi,
>=20
> rockchip,rk3588-cru.yaml, dt-binding for RK3588 clock and reset module,
> contains description of customized property "rockchip,grf",
>=20
>   rockchip,grf:
>     $ref: /schemas/types.yaml#/definitions/phandle
>     description: >
>       phandle to the syscon managing the "general register files". It is
>       used for GRF muxes, if missing any muxes present in the GRF will
>       not be available.
>=20
> But after doing some searching, I found that clk-rk3588.c actually
> defines no clock hardware with MUXGRF type. This is also true in in the
> vendor code[1], it seems there is actually no GRF mux on RK3588
> platform.

Have you been able to check the datasheet/register map for this piece of
hardware? Does it have a grf register region?
Wouldn't be surprised if it didn't, and the cause of it being in the
binding was nothing more than copy-paste.

--762l3reB4+o5LV48
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZuhd7QAKCRB4tDGHoIJi
0sfLAP4rUDigw1FDwiNdvnZREugTaL9WpuIT1BHZHS4TrWxCZgEApyjlEt72BdfD
fapeDQzlfMZjPRcI/2jXPFZkPzGcuw8=
=2kPB
-----END PGP SIGNATURE-----

--762l3reB4+o5LV48--


--===============4557875856580231669==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4557875856580231669==--

