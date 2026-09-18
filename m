Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0F60C982D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2026 17:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1v8cZNqQ2DC8z29tg3HbGsxu1oHAjzHwUtCf1edPDcM=; b=RDLMhMxDqfI1APUuiDGQuGedKG
	DHm2wO3w7/fpG6ZgKMSGMFSbfPJeja1ZRrZ/x+vCMhgRgoNW8BweN1n9SGcR4gPQhzEPJOh84Scoi
	4L93NEjxR+ZU2Ul9ALPKMtDRn57s3fjESxa6Sfc4UHmJLJTCS52ho5vbu2WlmWU3G7RFRkdciuZrN
	dATlv2Gnbuijuvy7oz7VARCOzgk1wksG3nNK0vnx6NfMaTSGlwC83Fx5vxholLzuzaOIWm058xL7q
	Ur5Jxe0H7BXNexW1GOWEskUTrR7P/d27ocsH1+5TuL1xgS327GQDUgNtID+2NHpAFKJpC3QE1Oyit
	qWKeVy1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7cE8-0000000FA7F-0zaX;
	Fri, 18 Sep 2026 17:18:20 +0000
Received: from sender6-op-o11.zoho.com ([165.173.180.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7cE5-0000000FA6t-2iqY
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Sep 2026 17:18:18 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1789751892; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=AKQIVUtce15rN7YtbUkY+oIv0+pQQo8yYTXfO9Bpv43QOfXGTrk/gD2wIocWi1SiAnVz4SSP+S0qLkDeL1UwLuPB0eXbvowabXiefTUIuTq+uFfjG41YG7QZbOjc5/eBtve7XvrNHXg6l25O7gjUATpcjWDPyuNpHAl6Qp6zC0A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1789751892; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=cqGV5TncVBfqRBfIGHqaR/O3l9aJDP51aY7gB/A23dY=; 
	b=HqCeWoQ6oW3NJT2sc+BE9rCB1eAAkKN7G4B5R3tm2d5dO9zVCDuNSRm1+V9XAvC7dnQlL+3A0rC5u4UmFUfC4dXEV/dTALRoHOlW2kCpze180kgDul/ZsLmpyn81kaghckuVyvNoavYhH/piz7YKvwZ8Hb6fw89zc4LTC+83NQk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1789751892;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=cqGV5TncVBfqRBfIGHqaR/O3l9aJDP51aY7gB/A23dY=;
	b=XdoP3s1gDSGFwRVPCa9OJrL8O0SMEtxMdg9dkI621FY+rYyJJzIua23vrOYckqfo
	SA5TlvVmN5X9CGoSiI/x+P8HOfB1dNZ6uDDqf8tM6qXHTNdZrH8Wd+x44FqaPa5Wbtt
	Vu797YGs4tuTXT4xC/E4RHZBc3udvewDzgUm26N4=
Received: by smtp.zohomail.com with SMTPS id 1789751891867230.6014382620166;
	Fri, 18 Sep 2026 10:18:11 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id C8949180608; Fri, 18 Sep 2026 19:18:08 +0200 (CEST)
Date: Fri, 18 Sep 2026 19:18:08 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Ulf Hansson <ulfh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/4] pmdomain: rockchip: propagate subdomain add errors
Message-ID: <aq1xu_BpTn8its-c@venus>
References: <1789733258-10133-1-git-send-email-shawn.lin@rock-chips.com>
 <1789733258-10133-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <1789733258-10133-2-git-send-email-shawn.lin@rock-chips.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.13.1.5.4/289.731.60
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_101817_736104_ABA1FB96 
X-CRM114-Status: GOOD (  18.23  )
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
Content-Type: multipart/mixed; boundary="===============3365618099415693897=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3365618099415693897==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rvy76fgiuogebomc"
Content-Disposition: inline


--rvy76fgiuogebomc
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/4] pmdomain: rockchip: propagate subdomain add errors
MIME-Version: 1.0

Hi,

On Fri, Sep 18, 2026 at 08:07:35PM +0800, Shawn Lin wrote:
> rockchip_pm_add_subdomain() ignored the return value of its recursive
> call, so a failure deeper in the hierarchy was silently dropped and
> probe still succeeded with an incomplete domain tree.
>=20
> Fixes: 6be05b5ec161 ("soc: rockchip: power-domain: add support for sub-po=
wer domains")
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> ---

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Greetings,

-- Sebastian

>  drivers/pmdomain/rockchip/pm-domains.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/ro=
ckchip/pm-domains.c
> index ba66ae7..068dd4b3 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -1018,7 +1018,9 @@ static int rockchip_pm_add_subdomain(struct rockchi=
p_pmu *pmu,
>  				parent_domain->name, child_domain->name);
>  		}
> =20
> -		rockchip_pm_add_subdomain(pmu, np);
> +		error =3D rockchip_pm_add_subdomain(pmu, np);
> +		if (error)
> +			return error;
>  	}
> =20
>  	return 0;
> --=20
> 2.7.4
>=20
>=20

--rvy76fgiuogebomc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmqtckQACgkQ2O7X88g7
+ppUmw/8CQ6n/lH7j9AfTxWcl0JELNNq0EdQ/G5E0lrhCX75yfPFm87ujCTclW7H
+0oneEZusiJ+S4wsdaSplWmLxCHsQj1J8kwHGA1m7ujfj7909RIYZPe9XIffHGAI
BFt3ixnyoBaFb/atRra1PfxRrZCROR8/Ma+hMif7YqwHpp+3EKkbdZ47iryN8mzn
DwEAZXe3tVUi1KXLMDAmWuwtK3giR1qbhWZr+jiP4pLuf50J1rRNVD0SXIU9cf1C
BeWdy8Doqla6LEDE94jNZHf3xziLnnOl0KnlNaDvKVPv3tXEDko30YNpQclQ44nS
utMqRyvsBINDfzYI43gPZqtdj6l5oLXF7+xQKr/dOsshlCM7ZYt7wNyW6i1Br4+c
48J0sgMt2ksT9mqw0u0Txo2ovp1YCNoUarIWE1EnUTKplo0y7mfF+av2S0RJE4Ne
TCFkx9q6Husnvo5x7WgPCjv9gqu4a7u5j4ezlo1I/BKRVln2XiElvlk5XD1UdXRa
h6AMC1aa8ej+RROIxnc7V69qWSOlRQ0Vzd3pRtZvCpgzIrY7xQVfiOuMWWZppqPZ
0cr1UVKXKkfE57GDfQRbWMhZ/gq2zC8ya84UrryNUDNtDpieKSpeI2aZZvTnAbXK
SQrDO9H0bPnzNVSMvHMi/dao9qtbL4p7jmDPG9OPQwRNs4UuRwA=
=DhDc
-----END PGP SIGNATURE-----

--rvy76fgiuogebomc--


--===============3365618099415693897==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3365618099415693897==--

