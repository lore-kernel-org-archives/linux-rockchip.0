Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1768C3DA42
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jul 2024 16:40:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wOggX8lp5FrLUOk6jKZikhEWQw2oBRS6zIYOniWkvUQ=; b=u+lvZZSdhEOT9e6gAfwrLuU0+7
	PXkJ+aRhRBjHAEOF9RbUqyeOukMkN05Oq8LsHaRKOtUxliYcYzD5zHmqvbKPYh5ksHpFDKCk49saV
	hWLt91L2r5MNnGqJeKz7OlMqqvVWxs5Fq1waaSgLwC69Rax8rDS/j5UtiBN6nvUvs9UDD87as992Q
	+V3M+QvJ9r45suJKQIXyVBZe+rPs4udtUnk4PGSPsQSzbCI00pXJxm1GVU4iR7UbnkSAv5qlRuBr0
	a6XcxMaQR4utgy+puEUKhMP6zUOQoaLLA/S7LQj/BIMzlzQIWsgN++nssj0fc1opJEh+aCrEvlHe+
	deh1V7sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU7hB-0000000ENab-12ZC;
	Wed, 17 Jul 2024 16:40:01 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sU7gp-0000000ENWK-0f0v;
	Wed, 17 Jul 2024 16:39:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 13863CE17B3;
	Wed, 17 Jul 2024 16:39:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B36AC2BD10;
	Wed, 17 Jul 2024 16:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721234369;
	bh=YH/ejPCzozWh3/5AWbT/wAkKuaoN0u4W+macH1mMRsc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O04iYQcHPl5FL6N8sUdE+q+FxTnXMHv1ATmczRdlil8B/W2PQm7sAL1AIzB5XEOAO
	 P0kqoQmjdD/m5QpdXW1fpweEZ3LiWrlPkyeXlDDR6oHczma/MVRYvHHYjlqsW3pl4z
	 X/BhkhsxdHoGYaquZ78lyq6hQo0jcufT9NWzuhtxg2KmqwiRIUwHJHK6E8zFGp+aWO
	 v327eLhiEMDNCP/ZVe5LFr9/YAI67NjFUmK4OFsxwdCAtP0lWx7/ka5ahwtlWUvgKd
	 tmq7jt7E7euAtjvs7lx5+WcXrCAHl4x8uZbOWzxDZNZOWL78eSdYgyvexuG3H4jBYp
	 8mRPh0OnODKSA==
Date: Wed, 17 Jul 2024 17:39:23 +0100
From: Conor Dooley <conor@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: Otavio Salvador <otavio.salvador@ossystems.com.br>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	Otavio Salvador <otavio@ossystems.com.br>,
	Conor Dooley <conor.dooley@microchip.com>,
	Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Huacai Chen <chenhuacai@kernel.org>,
	WANG Xuerui <kernel@xen0n.name>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, imx@lists.linux.dev,
	loongarch@lists.linux.dev
Subject: Re: [PATCH v1 2/4] ARM: dts: rockchip: remove unlikly-to-exist DAC
 from elgin-r1
Message-ID: <20240717-gracious-canning-6ff715cd1b1f@spud>
References: <20240717-anvil-ashy-544e80a1317c@spud>
 <20240717-parrot-malt-83cc04bf6b36@spud>
 <3870188.FjKLVJYuhi@diego>
 <CAP9ODKrpKDY91AFDYj7s++kU+=CSLw=F9mXyLZ621Mqq-8S6bw@mail.gmail.com>
 <CAOMZO5C7JknQaftquRWDetLs4W0CHMvs5PiJWBLyo0G1oo4rCA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAOMZO5C7JknQaftquRWDetLs4W0CHMvs5PiJWBLyo0G1oo4rCA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240717_093939_379455_6A7C4516 
X-CRM114-Status: GOOD (  16.41  )
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
Content-Type: multipart/mixed; boundary="===============3647037538961660250=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3647037538961660250==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="OWGW13PXE3KVG+an"
Content-Disposition: inline


--OWGW13PXE3KVG+an
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 17, 2024 at 12:34:03PM -0300, Fabio Estevam wrote:
> On Wed, Jul 17, 2024 at 11:38=E2=80=AFAM Otavio Salvador
> <otavio.salvador@ossystems.com.br> wrote:
>=20
> > @Fabio Estevam can you check this patch?
>=20
> Correct, the rv1108-elgin-r1.dts board does not contain the DAC.
>=20
> There is an LCD controlled via spidev though.
>=20
> Conor,
>=20
> If spidev is needed, what is the recommended way to describe it in the
> devicetree?

Describe the device you actually have in a binding, and add that
compatible to the spidev driver. In this case, given there's a
particular LCD there, that'll work. There's nothing wrong with using
spidev, it's just lying about what hardware that is there that's
problematic.

Otherwise, when it is an open connector where you can put anything, it's
a wee bit messier... A connector binding is required then, something
like the WIP mikrobus stuff that the beagle lads are working on. That's
far from ready, at least on the devicetree side of things, though so
you need to apply an overlay in your bootloader in that case.

--OWGW13PXE3KVG+an
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZpfzuwAKCRB4tDGHoIJi
0iuDAPwPEHiBf+CrFLYviCQhgaXSwg21qh0Iy2VX/LcKcPGr+QD+JGr9aUClwsTX
KBS41ljoVPgMP9F/i3+On6b1MOR7iw0=
=uuYV
-----END PGP SIGNATURE-----

--OWGW13PXE3KVG+an--


--===============3647037538961660250==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3647037538961660250==--

