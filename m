Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FC1CCD5BD1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 13:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PVS8Vje4ypdfvm/pDFJ6GF/9djIYkv7X0O8eUk96+hs=; b=QlDecNs/r8yan5pEHojpynWYEy
	qfycboDqdTDIYPmYOFQkE/L6J8mij7ICN/w0pl3Bi5HA53xGp/gh5VgiqZp3MiyU375nOf2MhTM2y
	2GF4Lfabe3bLiCcMzBufsdO88kTMx6uiop1l5ypc0yRGaqZQ08hNv+Iv3uGDrePK+Z7/sy0dtfo4s
	376w3cMUYO1PliSdD6sjud4f9j7ny33e9esGay2ybhEe2jGuxtUWZebj9PPThcxcTFo9QF1ZUWSGq
	ox6B2LOcP9SAOfr+tBu8tvE5fAuDThiHj+oFMyc6YfqvlrlPpsXArTkI4cWkZ02SphPnMVGfVpN/a
	uZq+2Kvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU2KR-0000000BBY1-3jex;
	Mon, 01 Jun 2026 13:05:15 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU2KO-0000000BBWx-3QkW;
	Mon, 01 Jun 2026 13:05:14 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1780319106; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=h/Xi+tV/IUstzM871zF6FXuh+mBGhWqnMR5DYXc8cOmtLj6+nZCsHHe/e60cJ4hr9fVRgDyEqJlq0AEjnaA0Tz54YHnpGLMOIm4om9fsAyuRTil5izjfyKovJMbfJgVFw1JGenmH158ff80l9OhnD2Pdoz8h5sENROwbH3Ntg3Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1780319106; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=IyP/e82RTDc5mjTrFGJGFCrf9IzlghgJ+xEuEuBH9+U=; 
	b=SN/YZr/icpVWicqemS4HR1Q9/BaTop1LQKef6LJtbZv4aW5TdrW8Olmqmufl41B888nW5mH9FuGloMIyZOw6xkexqcOiksb2fgiD/awFOjP87EtaWlEBjHWPVnIHumxYKAbMaLxaA0JsWIZKl4cxmdM0wvU/eU2Vn0zQQtNyTQA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1780319106;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=IyP/e82RTDc5mjTrFGJGFCrf9IzlghgJ+xEuEuBH9+U=;
	b=PUFBf+LcYyZHLDnAAcfAMKXsvhhGAK7TAOmO4AQmfWATDoY1CQ3W3obe4uR64I5E
	ZW6XBSRpFxYermPZpZffQiX6TxRiba9jYiIPhsof6GBwbR03xrgSJfaSDj3wLFJfYOO
	FCgxSicTrMonB5nvB1XCq0MR4vwBh45nEROf94hA=
Received: by mx.zohomail.com with SMTPS id 1780319103851321.1828931283135;
	Mon, 1 Jun 2026 06:05:03 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 0CF2A181D80; Mon, 01 Jun 2026 15:05:00 +0200 (CEST)
Date: Mon, 1 Jun 2026 15:05:00 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: ricardo@pardini.net
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] describe PCIe ethernet interfaces and alias
 ethernet0/1 on NanoPC-T6
Message-ID: <ah2BWZzNBn7pZubu@venus>
References: <20260529-rk3588-dts-rtl-eth-describe-dt-alias-v2-0-49700248143f@pardini.net>
MIME-Version: 1.0
In-Reply-To: <20260529-rk3588-dts-rtl-eth-describe-dt-alias-v2-0-49700248143f@pardini.net>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.2.1.5.2/280.300.36
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_060512_963066_158EAC48 
X-CRM114-Status: GOOD (  27.99  )
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
Content-Type: multipart/mixed; boundary="===============0931145623182014359=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0931145623182014359==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ow4s4qxj472swujp"
Content-Disposition: inline


--ow4s4qxj472swujp
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 0/2] describe PCIe ethernet interfaces and alias
 ethernet0/1 on NanoPC-T6
MIME-Version: 1.0

Hi,

On Fri, May 29, 2026 at 05:31:23PM +0200, Ricardo Pardini via B4 Relay wrot=
e:
> This describes the two on-board Realtek RTL8125BG PCIe Ethernet
> controllers on the FriendlyElec NanoPC-T6 (RK3588) board and aliases
> them to ethernet0/ethernet1.
>=20
> Many Rockchip boards have on-board RTL8125 PCIe NICs, wired to
> pcie2x1l0 and pcie2x1l2. The controllers were already enabled in the
> board DT, but the Ethernet function nodes themselves are not
> described, so the kernel (and u-boot) has no DT handle on the NICs.
>=20
> Adding the function nodes lets us:
> - expose stable ethernet0/ethernet1 aliases for the two NICs, the
>   same way other rk3588 boards alias their GMAC interfaces; and
> - let U-Boot's fdt_fixup_ethernet() patch mac-address properties in
>   at boot time from its ethaddr/eth1addr environment - useful on
>   boards (like this one) whose on-NIC EEPROM is not pre-programmed
>   with a unique MAC. The kernel and U-Boot then agree on the MAC,
>   which matters for network-boot setups.

This is the patch rationale and thus should be part of the commit
message in the first patch.

> Checkpatch warnings:
> -  WARNING: DT compatible string "pci10ec,8125" appears un-documented
> -  WARNING: DT compatible string vendor "pci10ec" appears un-documented
> Both are expected. "pciVVVV,DDDD" is the Open Firmware PCI Bus
> Binding spelling, where VVVV/DDDD are the PCI vendor and device IDs
> allocated by the PCI-SIG (10ec =3D Realtek, 8125 =3D RTL8125). It is not a
> DT vendor prefix.

No, it is not expected. We need some binding for it :) This is
similar to USB, see e.g.

Documentation/devicetree/bindings/net/microchip,lan95xx.yaml

Greetings,

-- Sebastian

> If this is seen as a good thing, it would apply very similarly to
> the Radxa Rock 5 series and others.
>=20
> While at it, rename regulator vcc3v3_pcie2x1l0 to l1, since that is
> what is actually powers; since only cosmetic, I did not include
> a Fixes tag.
>=20
> ---
> Changes in v2:
> - fix: pcie2x1l0, not pcie2x1l1; indirectly caught by Sashiko's review [1]
> - while-at-it: rename regulator vcc3v3_pcie2x1l0 to l1
> - Link to v1: https://patch.msgid.link/20260525-rk3588-dts-rtl-eth-descri=
be-dt-alias-v1-1-a6fcda563ac7@pardini.net
>=20
> [1] https://sashiko.dev/#/patchset/20260525-rk3588-dts-rtl-eth-describe-d=
t-alias-v1-1-a6fcda563ac7%40pardini.net
>=20
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> To: Heiko Stuebner <heiko@sntech.de>
> Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
>=20
> ---
> Ricardo Pardini (2):
>       arm64: dts: rockchip: describe PCIe Ethernet controllers on NanoPC-=
T6
>       arm64: dts: rockchip: fix PCIe regulator name on NanoPC-T6
>=20
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 36 ++++++++++++++++=
++++--
>  1 file changed, 33 insertions(+), 3 deletions(-)
> ---
> base-commit: e7ae89a0c97ce2b68b0983cd01eda67cf373517d
> change-id: 20260524-rk3588-dts-rtl-eth-describe-dt-alias-c1ed187b7c50
>=20
> Best regards,
> -- =20
> Ricardo Pardini <ricardo@pardini.net>
>=20
>=20

--ow4s4qxj472swujp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmodg3sACgkQ2O7X88g7
+prTPA/+LoQ3/r6pNqOp+H5gXGvl4tIIwz+BjMfIi9faHWgiRvomSoH7ql+R2rIB
u0um5aMTELDbQvn2dRLa6yM0lCC1ve2cunI9WysPcLJ4dc+bsL9mH2Wd1UgipQ1v
Pj1/ycyPdm9q79Y3kR6aSH3MTfsT8W2AK2Rf1RffmUhfbkz0fL4NySTIUQpBygiy
oFyWnR3s2Ha/PJAxp46XYMuibij1SCRTlmqvxx/OR4HQsayBWlyTNNOOV7scKLnb
fhCyAJ4+TPnr4QkIWQvo+VdMkixSsZ0Sr85eemlNnvqQuAJYbEJKwM4rYnuQQm1f
AWo4bhz8igprUtgAwcxpxhsbnILwqaibVERLtbkwgZDC5F7n1xQDwWZStHoHp4bG
52MC6A4QQPSmnshfnRWFI31UJnxswRAaW7aB7I7dLgp50aA6LPuWOstX+hr2Ude3
YDRNCXU6rcVk6L9mCnKidCqjpchPxkNqNypFnWNZGLV0b67bzhs6wyMEPgbkxJmG
NX2y0azewYMp5Vbjc5nNWcwqhLz/R5Ll2DDrBXJ20r8kHdnT3rOoYLNoAhTLZneF
Ax0ufjlTjSwfQtmXyUP5Z4VWVOHUWqfmZS6i1TzdrLOAJpOrftv8qglMulfqneIJ
2iAG6hGoYFlAa6nRCv2nUw2syUohJzYCLeYZ8k5heurOXH9gZpg=
=HYxk
-----END PGP SIGNATURE-----

--ow4s4qxj472swujp--


--===============0931145623182014359==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0931145623182014359==--

