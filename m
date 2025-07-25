Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C36FC87FCE
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jul 2025 05:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dXRUG8D8j7vwLnFXdsAlCcbFpxz7Sbzbi2cd79T+Lho=; b=wxbVmWo8dh9h5SNLkjH1/UkpvU
	+Cb54xIcjb2RBGpUu8BlxucMQpWVqgnhjPEgLxv+lVzkqAUrQS4SM818e/vzaza6TVUJJVOnTLVOe
	gerykeaJlG4FASOFxQs6yTSoktKKhdtqAKGIuDsJ0EwhqBNFu85LcAEW35orLkeQ75/qojAGfqFcR
	JMio0u0XWz/g8GtB+ds0mS3WxeYlsTfEAsbTrNNeftEedKpL+iiydX2kqKWy8O60cu82OQRsd05+g
	251h9FxMzoQG9ScCJeVVAP/U6TlySAd2UWg6in23vHUAwaKVcUlJ5i8v+6LpgmlF77gp1OwCo8LUL
	9bPnVfmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufBFg-000000096d8-3GT1;
	Fri, 25 Jul 2025 05:45:52 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufBDD-000000096WE-0nPz;
	Fri, 25 Jul 2025 05:43:20 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1753422176; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=X6T5K9b59OcEuy6D3a/S44mZW3GGdNYw8Gufv8RJ5UZDpnCghUPn2aQMh4toeI/HMTn//nvDLrKoPrVJUzquIs74tmT2fRs4/bsz7TKrZ1iMXfBHY65GaR5P1CTZEu+enmiCKYY0lbU6oL8/HvTuJCcBJDeA+XnNarW9yXL0PIg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1753422176; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ysYazy/LRGJb0wKw+3gmcme2ba0l4p0LDUlWdYrxHpg=; 
	b=TfPW8rt2gxRmQIkiMXGJ9hOUe4rf7cdR26RWNeOf+CgjhQ6h0XRVtyR8Ar6v++D68/gf7YEtjmlxELQmLaYoiGTYpUG4TIPkGxkBGKVuhjpfImDF/szDPWiaAwYm/tyl/azM2I2PuszY8twcF/SwvgEKL7BTS9MsnXul0kAaof4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1753422176;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=ysYazy/LRGJb0wKw+3gmcme2ba0l4p0LDUlWdYrxHpg=;
	b=GZosuZAWwNAl3VlQdZli/CCQx9r8Fl/Q06Uku7fF6qXeF3mWyGMqwxPNtF0J2FT3
	P1TsY0TFuF5RQJcd7TTF+xaKDii8t3a20a7OtbrED6jHNTWhKayjklW+g4AJka7rrXC
	P2HC4xer5LM/KA6sHd1JCI6ucpmY1T9MZNHEn/ws=
Received: by mx.zohomail.com with SMTPS id 1753422173179745.4463992506141;
	Thu, 24 Jul 2025 22:42:53 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 53072180761; Fri, 25 Jul 2025 07:42:49 +0200 (CEST)
Date: Fri, 25 Jul 2025 07:42:49 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew@lunn.ch>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com
Subject: Re: [PATCH] arm64: dts: rockchip: use MAC TX delay for ROCK 4D
Message-ID: <zhxmfhvc55wgsmbgynzyu7wskn2xeypqviedc5tdtbycnn2dit@bu3nvc2jouuj>
References: <20250724-rk3576-rock4d-phy-timings-v1-1-1cdce2b4aca4@kernel.org>
 <aIJ4lZgfTiNmHaXF@shell.armlinux.org.uk>
MIME-Version: 1.0
In-Reply-To: <aIJ4lZgfTiNmHaXF@shell.armlinux.org.uk>
X-Zoho-Virus-Status: 1
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.4.2/253.413.66
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_224319_291963_7BE13194 
X-CRM114-Status: GOOD (  22.32  )
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
Content-Type: multipart/mixed; boundary="===============6009984062099634371=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============6009984062099634371==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="h6ksxzq3t5azkbsx"
Content-Disposition: inline


--h6ksxzq3t5azkbsx
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] arm64: dts: rockchip: use MAC TX delay for ROCK 4D
MIME-Version: 1.0

Hi,

On Thu, Jul 24, 2025 at 07:16:53PM +0100, Russell King (Oracle) wrote:
> On Thu, Jul 24, 2025 at 04:31:25PM +0200, Sebastian Reichel wrote:
> > According to the Ethernet controller device tree binding "rgmii-id"
> > means, that the PCB does not have extra long lines to add the required
> > delays. This is indeed the case for the ROCK 4D.
> >=20
> > The problem is, that the Rockchip MAC Linux driver interprets the
> > interface type differently and abuses the information to configure
> > RX and TX delays in the MAC using (vendor) properties 'rx_delay' and
> > 'tx_delay'.
> >=20
> > When Detlev Casanova upstreamed the ROCK 4D device tree, he used the
> > correct description for the board ("rgmii-id"). This results in no dela=
ys
> > being configured in the MAC. At the same time the PHY will provide
> > some delays.
>=20
> So why can't the MAC be fixed to conform to the requirements that are
> well documented for RGMII?

Fixing the MAC driver without introducing regressions is not so
easy. It currently abuses the RGMII mode to detect if MAC delays
should be applied:

PHY_INTERFACE_MODE_RGMII =3D> apply MAC delays
PHY_INTERFACE_MODE_RGMII_ID =3D> do not apply MAC delays
PHY_INTERFACE_MODE_RGMII_RXID =3D> apply TX MAC delay
PHY_INTERFACE_MODE_RGMII_TXID =3D> apply RX MAC delay

As the delay values are sourced from DT, in theory in would be
possible to just always apply the MAC delays. The problem with
that is, that the default (missing DT properties) is not 0. So
this would result in regressions.

Greetings,

-- Sebastian

--h6ksxzq3t5azkbsx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmiDGVUACgkQ2O7X88g7
+ppLOg//Wkef6fxjtFlZTiceEfJGxEySQxKATkZilhxfrl05afVd7wWRv6V+cAP7
fJUBV8f1uIRMDlgIJ2vyPOn3YykfbY1AVNDN4TziDforKzEWSszleo5QBsTTda8M
Cab/BvT10XcKHWo/TPvcTsQ+OMVUFqP7FZG7s+lGbZA6PUeIpZ+kFgrpB47aXPuq
dK9N7J3kYcx1fdX/AR+jgyhrtR5ZjIcGYbeoHLWgYs7SQl3tCcQ5jtftDg6k0H+j
RoWGrZOsCoWAb6oIc1jPEPZL9BCLk6Az+ai1Q1rnWrtHZmM1c7/HqNXnIY/pAJeW
ckPzN3McsLiRbTiBE8aBO9GCUD1QLpz4qNQX5W1Z4i4S+C8jOWYLaKhUpGHyhOwV
2Y9XNT1y/JYmtt4kZ5Nw1oSgsH8C+kNKD6wyxEqW9lCmY9ggAXqKjayEQP09Uj70
OEo5hccVgnDok5BnqCcnbydXeukxm3weO5oIXMoWZ4sGLtFfoe+BlMm9J2rOKkOg
xZR2JdY0srqLoQ5szV2a/B2tzu7Bp7mWAmsdEQheIi0fu6gUur5UzMUHpydXSChi
ZayUblEuZKt7AWaEuA6b1WcNl7HVXBV/46k8di2bKlZHIx9xDCDeInosc9q6oJLY
8uFEfpZ/8+RgLKRzvlTZO/fWnaTMo9pHiwPSIICKoTf+cEghIHQ=
=Pje5
-----END PGP SIGNATURE-----

--h6ksxzq3t5azkbsx--


--===============6009984062099634371==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6009984062099634371==--

