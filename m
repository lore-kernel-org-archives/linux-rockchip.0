Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D740DC43458
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 16:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eiMmRJcrt89V+dDK6AkB+hb34svWW6Ora0sKHb8QZvM=; b=yGbTbSGoTYuOQc0WFFDOcYrAJa
	2sLo1Kg5u2jJaS/74vh40BLq8u3qklrwXcMEbjQvN89BiOrKI+GfB2hNDDsqecR2kTg9KbA48N4ZE
	PWfrB78oYnrlTqLdaeqolCMcwWQuTs9fdgIC4B3XuvLQMfKct+Ktq93eBsvCcPp5TloZVGZJavAmy
	X5o8eHi+1S8V7kdiRfFQDas3K4HfhGcoLLdBQCJ3TpGB4f0Mi9qepUXlwwOYMTG5lZFG+f05Lv8v1
	5+95jkV4b6ekVD7F9zrqpttoRTBA/P30QHXB4sbrptRyZT4UU6QZvFxI5DvqjfOH7ZmPo64ON3UtX
	HRU8gaaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh8Ft-0000000FPri-28Yx;
	Tue, 07 Jul 2026 16:02:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh8Fr-0000000FPrC-49yo;
	Tue, 07 Jul 2026 16:02:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 672B143215;
	Tue,  7 Jul 2026 16:02:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 803721F000E9;
	Tue,  7 Jul 2026 16:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783440159;
	bh=qS/G2jnbuz6aDr3pHhkWT5dB/EtkmjXHCvwPoXLiFZA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eG3WVHPPhvwUbO4WsW0YMnKc/lqQF/VHbOm5mgnU3GfuIPW6CppfW7CsmpuXWDbie
	 jmdC1TC0XkIDGAQNgV13b1DxYmtvOoBUY412GbEJ/W34Na1mii5JMHXzF91tRtcIc2
	 zoChLBqsCtsAlCLB0YwdBgvKpCjPtsLog/NOP/7E0BuSuUdTC7DLOgDh6v+g04pcif
	 mO0AwmcEC27eypILST4D5b5guaqkwUdb2vzujbrN28Xc352VjDZu4I8zrQfRJQ5+pa
	 4DIsXalQHHPXk/q3TcpoLZBObOB9HNQGTKoPwHk/xmkYw2BDvZiBhHV16j6XhmDuUj
	 IsljfQRFRYnBw==
Date: Tue, 7 Jul 2026 17:02:35 +0100
From: Conor Dooley <conor@kernel.org>
To: Pufan Jin <2254650260@qq.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 4
 board
Message-ID: <20260707-extinct-hedging-ed99e6ad296d@spud>
References: <20260705135014.1004166-1-2254650260@qq.com>
 <tencent_B1442A024A02EFD704ECC0F098F663588209@qq.com>
 <20260705-palatable-hardening-48f73a84244c@spud>
 <20260705-matriarch-epic-37add5cb97b8@spud>
 <tencent_3C137FCC795067C558C9C8BD86C03C180006@qq.com>
MIME-Version: 1.0
In-Reply-To: <tencent_3C137FCC795067C558C9C8BD86C03C180006@qq.com>
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
Content-Type: multipart/mixed; boundary="===============0026873957344869397=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0026873957344869397==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lk3aXiOGRUZx46ct"
Content-Disposition: inline

--lk3aXiOGRUZx46ct
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 07, 2026 at 05:24:28AM +0800, Pufan Jin wrote:
> On Sun, Jul 05, 2026 at 03:38:00PM +0100, Conor Dooley wrote:
> > On Sun, Jul 05, 2026 at 03:37:00PM +0100, Conor Dooley wrote:
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > pw-bot: not-applicable
> >
> > Actually no, I just noticed you're not using your real name/a known
> > identity. un-acked until you sort that out.
>=20
> Apologies for the confusion. My real name is Jin Pufan.
> In v2 I will change the author identity to:
>=20
>     From: Pufan Jin <2254650260@qq.com>
>     Signed-off-by: Pufan Jin <2254650260@qq.com>
>=20
> (family name Jin, given name Pufan; using given-name-first Latin
> order as is customary on the list.) The Copyright line in the

> DTS will be updated to match.
>=20
> Thanks for the review, and sorry for the noise.

No worries, you can retain my ack with these changes.

Thanks,
Conor.

--lk3aXiOGRUZx46ct
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCak0jGwAKCRB4tDGHoIJi
0g/LAP4kuu9HfHTz4b2qBWOQcAxJHN0H8xq6/CHpk20mHbQfSAD+Kz5WgR2WyhuA
Gx1j08VZtnRmq5XiFsTHznuzkRH4ewo=
=ZnFp
-----END PGP SIGNATURE-----

--lk3aXiOGRUZx46ct--


--===============0026873957344869397==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0026873957344869397==--

