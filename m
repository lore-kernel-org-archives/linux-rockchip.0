Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26D3FE7719C
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jan 2025 10:31:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J7qGh4bWiW1/3KCFCNc3p9pKHuUbiEqB4V0H/2zxW0c=; b=Npgbo/nbaNzQFydDAhtY8TeC4o
	87dMr2gPMIWcHNwloe2GYU5SV+4vlhc2KmwEc1CaH5Zj393Z8fHFYkMImUm7mepcSOsggmSI7Tag2
	MonaRV4qbAlH1lGqb+3GUpsfWMoR4rGoiOD7MXXuVEvkLOMddSSld4NO8Xebvn6ZsK3TjGyoXmAnH
	rUwEruviPd17ZBl3WbJL8iJ36BuBIPGtGTB1DWZnXRwaRkZpUQHkSLw3Y2ySsLYI6rtJs0Dsigaoi
	lH62jguP3RfYlxAqdcor1WHvy+1LMRy26ecSfdi7ADP39kX+HaNdpGyZQDbwS8G3QnKfH3DN99rin
	hH7hmPNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWCIP-0000000Exo3-1BCp;
	Fri, 10 Jan 2025 10:31:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWC9R-0000000EvX6-2XAZ;
	Fri, 10 Jan 2025 10:22:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 998195C1498;
	Fri, 10 Jan 2025 10:21:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E14C4C4CED6;
	Fri, 10 Jan 2025 10:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736504520;
	bh=KZFaGRzO42N3iOtxZMGsNXlcKOn51BtlCOw1JMLOfhM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PPTcRcZdS96583Dr6442J01etvfZD9Xg4Bt4ehvfEsqcBE7vSMZtvh1uX6yQToUD6
	 nCOhSaXTJUu9gwLxvxmm+sPGrCJrRMEi9Sys6x7jO8IxNUSPZ/llnMtLkTKrA8sxND
	 ygfDKMoMztaMpX2KLQ1V37yBiXFNhpxEQc8hhkujKcnUki2TGp+ItFR+IeokIWZN+F
	 tYOs4wKQZbl9y6bcoo5/BlSWT0Yj1S2xKNZSQrS3uZ+oojnH2EcZrUyTryJlzHSdKk
	 ijGQ2CPBWuC4XZ4OBLlJLOHKezxnXwlymf+qZ64EgTkLIXL4qXd/LUqLBtT+hVdk1H
	 3FGRefYZa6+GA==
Date: Fri, 10 Jan 2025 11:21:57 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	linux-pwm@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 11/17] dt-bindings: pwm: rockchip: Add
 rockchip,rk3562-pwm
Message-ID: <qtcyfcdgrtyjtwaexxkspbvncdckpzentq4nmxthr4hgtfzqvx@x44hdqzkisqv>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-12-kever.yang@rock-chips.com>
 <qvr7x4anlxxtpxjywrqjihxyxejw4i73wrh2ibl3hasayew4s2@obyuxce4ez4g>
 <46372c17-d317-4477-9635-36564c73cc6a@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <46372c17-d317-4477-9635-36564c73cc6a@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_022201_723938_DF09FB60 
X-CRM114-Status: GOOD (  24.54  )
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
Content-Type: multipart/mixed; boundary="===============5216743443532315208=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============5216743443532315208==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gt6eakxipv7gzido"
Content-Disposition: inline


--gt6eakxipv7gzido
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 11/17] dt-bindings: pwm: rockchip: Add
 rockchip,rk3562-pwm
MIME-Version: 1.0

On Fri, Jan 10, 2025 at 06:09:24PM +0800, Kever Yang wrote:
> Hi Uwe,
>=20
> =A0=A0=A0 Thanks very much for your review.
>=20
> On 2024/12/27 15:24, Uwe Kleine-K=F6nig wrote:
> > On Tue, Dec 24, 2024 at 05:49:14PM +0800, Kever Yang wrote:
> > > Add rockchip,rk3562-pwm compatible string.
> > >=20
> > > Signed-off-by: Kever Yang<kever.yang@rock-chips.com>
> > What is your merge plan here? From my POV merging the pwm update via my
> > pwm tree would be the easiest. But if you want to let it go via (say)
> > arm-soc to have it all in a single tree soon and then base new
> > development on top of that, that would be fine for me, too.
> I send this in a patch set for a new soc and board because there is
> no driver change needed, and I think it would be more clear for the new s=
oc
> support. It will be great if maintainers like you can pick the patches
> for the module which I guess is preferred way in the kernel maintain rule?
> Or else I have to follow the comments fromKrzysztof to send patches one
> by one separately.

Sometimes it's sensible to let a complete machine/SoC support go in
together via a single tree, but if there are no such necessities, that's
fine for me.

In that case it's a good idea to explicitly mention dependencies between
the patches in the cover letter and ask for individual application.

Best regards
Uwe

--gt6eakxipv7gzido
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmeA9MMACgkQj4D7WH0S
/k5D1wf9HrQkx97o93w9Uwklb5T1csbudprqqwZx1eOhIrwaVPLb2LUqjKdW/ZKC
jKJYsEIuw908eaNx9TpTt4eFqyataXJzcEvi0s2PnqjRygAfQR4zML5yA9U4C4jU
KlsNtfCei41fD8u7G1CW+OwYI2cUUC7NtYrrZ3VndVaHpJlo8NXdRYpcI/U3pHIG
hUi4SNniHkpyWgFlxu0pLUcjjhHe9ur6kX1TMjUXQcSShWa7Iv2j7ZZzErRuJCPM
ZAP3v3z0YPM9rXl/TofONk4W53rmvyiATSVmJwieHYPq8o63oGdau10dmkfIHy2t
+jciLqLZ+v2JB1lJfD7hvzqPbL3BIw==
=v+BO
-----END PGP SIGNATURE-----

--gt6eakxipv7gzido--


--===============5216743443532315208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5216743443532315208==--

