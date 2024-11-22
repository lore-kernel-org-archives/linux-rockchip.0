Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 407EBE69186
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Nov 2024 18:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AVfgU9XzMNn3bKZ5tuwTux8s35ZGLCyO89rDQT7CdSI=; b=k99kKif5dSMSfCxzwHkhC97wRQ
	V9v+rd0dw6Ln7L4Ld+rJvInX0QjTy7sYgxQKlMNPRbQuVuhb7K2c4e0z6RR0jZoDeF0f6smPTW5Wk
	rIMbm15UCEv9Rq2Ig71zse9+qKShFDYfTyOKv6QY9Wp0GIU2d4PmzG1oPUh2883DRKYCRdlFa+rG1
	E7yUhQ4tIe3szhbFi4kXZuwgMsi4nXHugVZyTmp9zynXFnAwnSTxT979RLUA6SSzK6fOa4Z5bbW+m
	/Sd0VKqwZSts8p4cW+ZcLTLxqvUbffzJLRTrwDLP2TS/iF/t+Ovx1d0YhzjLCR04nFKPLdYwS2dkY
	B4zwVkqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEYDl-000000035q0-1nuc;
	Fri, 22 Nov 2024 18:17:33 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEYCo-000000035ds-1LrQ;
	Fri, 22 Nov 2024 18:16:35 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1732299385; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=mWrR/MIIKZNZpZ/6AdRpQLm0JkRVejo7tOKMih3WC6BlYMNy8dZHjhYTz5das4bdLRGL78LyIgDOWIt9flw9jLDXYvEFDmR55jm+fOnh7jNWYjmLPVlVxgTbiAxZJh9KEWusQ6kKxRVe/c8AwIggDicXX88i83sQrtV0CnYyhlk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1732299385; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=t9pP/PHvr2gDzzkISxCFjGDZOpY33IndDzzlRxuzxkQ=; 
	b=oCp3eeZD4WUeQ879DZYzGLtozGj360keC4hRwBG35JYsFrUE8QxyaxKuhs4Wa2md4ACMRPOsOTAEPv8jyygw4tJmE/jmRbma/WKpS1uy15PsV3FICLsqaDXSpr2JMddrz+xdzr8JCnyHPe/dWwyGEenHLnHoWsTQ5li6WH6LpjM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1732299385;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=t9pP/PHvr2gDzzkISxCFjGDZOpY33IndDzzlRxuzxkQ=;
	b=XfoqYq5M7uwqyIpsohWgrhRdlWGFrMP+UuAr0PvWE1OTZZM7TtKZrEfQeAoezQjN
	BRu9QY+lNYf7mo5pysaAv67aEt8oxi3JCecT3UaqpRG8Sfqesv57edcyls6laO8dM8u
	0TZmV33+/Agq1Yu+pvlRgu5QuUpLqahmD0ZKJl/w=
Received: by mx.zohomail.com with SMTPS id 1732299383586840.2282759601966;
	Fri, 22 Nov 2024 10:16:23 -0800 (PST)
Received: by mercury (Postfix, from userid 1000)
	id 26BDC10604B0; Fri, 22 Nov 2024 19:16:19 +0100 (CET)
Date: Fri, 22 Nov 2024 19:16:19 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quentin.schulz@cherry.de, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/2] MIPI DSI phy for rk3588
Message-ID: <iwmyaf3ygr6kpjfrspox52yt32xbw4vjuwg2ggqi7knr75b542@yldac2lh6dhy>
References: <20241113221018.62150-1-heiko@sntech.de>
MIME-Version: 1.0
In-Reply-To: <20241113221018.62150-1-heiko@sntech.de>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/232.230.92
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_101634_432056_5E4DFBD0 
X-CRM114-Status: GOOD (  22.35  )
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
Content-Type: multipart/mixed; boundary="===============7912580935904068678=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7912580935904068678==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uvan6vjaye2so442"
Content-Disposition: inline


--uvan6vjaye2so442
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 0/2] MIPI DSI phy for rk3588
MIME-Version: 1.0

Hi,

On Wed, Nov 13, 2024 at 11:10:16PM +0100, Heiko Stuebner wrote:
> This adds the phy driver need for DSI output on rk3588.
>=20
> The phy itself is used for both DSI output and CSI input, though the
> CSI part for the whole chain needs a lot more work, so is left out for
> now and only the DSI part implemented.
>=20
> This allows the rk3588 with its current VOP support to drive a DSI display
> using the DSI2 controller driver I'll submit in a next step.
>=20
> Only generic phy interfaces are used, so the DSI part is pretty straight
> forward.
>=20
> changes in v3:
> - add Krzysztof review tag to the binding
> - address Sebastian's review comments
>   - better error handling
>   - dropping empty function
>   - headers
>   - not using of_match_ptr - this should also make the
>     test-robot happier
>=20
> changes in v2:
> - fix error in dt-binding example
> - drop unused frequency table
> - pull in some more recent improvements from the vendor-kernel
>   which includes a lot less magic values
> - already include the support for rk3576
> - use dev_err_probe
>=20
> Heiko Stuebner (2):
>   dt-bindings: phy: Add Rockchip MIPI CSI/DSI PHY schema
>   phy: rockchip: Add Samsung CSI/DSI Combo DCPHY driver
>=20
>  .../phy/rockchip,rk3588-mipi-dcphy.yaml       |   82 +
>  drivers/phy/rockchip/Kconfig                  |   12 +
>  drivers/phy/rockchip/Makefile                 |    1 +
>  .../phy/rockchip/phy-rockchip-samsung-dcphy.c | 1647 +++++++++++++++++
>  4 files changed, 1742 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,rk3588=
-mipi-dcphy.yaml
>  create mode 100644 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c

The series works for me on the RK3588 EVB1:

Tested-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

--uvan6vjaye2so442
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmdAym8ACgkQ2O7X88g7
+poztw//Q8nMPJS+hjF2Kk1qa3Q6fvMbFbG6oEuQmaFHMvJRRXZ0bS2H8DXEi75o
D6XHgJTAsk05z6NXwMa8kGwVhL5YYzUHvBlVbDuRmFfVBsCvl+ETVKGnpebcXxkS
jzn9UcyE+Qt1yrhJ/Q8oAWOHRgbkR+2PvVPsj/mwLNOFejFD1JSil9O+GOjUbFBH
LETPO0PDdVjRUJUcWF3T31mWOfgFW3njT5tzFx56EX3Nsvrz1aIx9RsD/c1GWN35
919EZBuXoT7E7nxFAlNEQ/VUtwPbuexd7ejtdoezJaoCHgK8vn3sZckHUjQgMllk
m9s/V8ILJv/wyDoTkk3Ywn9DgIeWAgFNInCw0fi8/kGlF6Ju9AfIanGD7BHa0WxK
3JfARYErXMllyv3V/zWjBkKPOrHSg/npZ6bnzC44VVHthoHvkJUez1Vifeh3Nmmr
k/1VmCmIeBATIK92K8gcsj0tsiIBITDNyrbZsX1jZ+DAI/4jHz1NbOSw0gzezy7e
WiyqB857c2S3caWftU8nfuFSGk5aKnhB9FZG7SGlQ/ln2jKmmTxmggVu/rBJZwh1
KzONElwB2FyODDKuxnnQR0sBS30V/nhyovM45tMa5/5nfisut8b1i56lWx1KwmWg
ey1nGl0SAkZLX4SdWDZd6shlm4+WWrBVfgwBzy2Pp+74P9qvi2U=
=LZU3
-----END PGP SIGNATURE-----

--uvan6vjaye2so442--


--===============7912580935904068678==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7912580935904068678==--

