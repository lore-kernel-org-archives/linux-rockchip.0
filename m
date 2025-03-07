Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD292C282D1
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 00:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G7INisDSkSuqUbcCxiL0IKIYdEZgnj+AB4hjVrXpHZc=; b=VzwrWmWzvF5Dljk8foBRJ77S/e
	vl/fnkQFicMuIF6Mm8hxzfG2aAR5c+WPP3X5A2kvQ3YQNlSUq8H9b0o5ATN28ocsSD3nxSsfe7KPH
	1sS/ivVb93H58FrPWu7eka4HeVZJOGa2ts8kBqUZ5iqMaK1HbB8roXwYiCP5Hg764yX69cPxB7T3A
	tiBRJ6EypIJY9mxzOvMMmooQhS3FNuwuJ7glj1OmHnv9tsQMF06JQHGiimBdsUS78uz5/v6Bvd2ly
	R/jUtFthFwNPBouCn3yu2k81ennDqz4SBkXMwLkJXSzneZY/pTMLn29MqGdLsExpGXpRzBjCsSR7B
	QL/1Rncw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqLxU-0000000ChCC-0N2L;
	Fri, 07 Mar 2025 00:53:00 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqLti-0000000CgKI-0wva;
	Fri, 07 Mar 2025 00:49:07 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741308510; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=fDBTJhinHdTlSpSH3MYpzEfEF6DFRAiHWSWw5JfeoHmjLxG7vVW6DxYj1F5mehhAH6VUa+v6uSuUIvxHCDzfzdmBJM9I9hbT5ZZHBl5AgsTdiiCVPCrL5Ez2VMyg1NcnS8UL9oUt42V0j+JiN71Gw+4uN8xhhFY4KFISFRymoio=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741308510; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=h8rRhlaMIsLXodKw1Q1H9pitBk0/63QeWI3gE5xZArE=; 
	b=Jk/bUElkg2chwiMbrAOCtLc1UTwkUgR5f0CWK0bRUL0d9Zti0XPJMwQi1iHsXxODILH1zu/JA/wg1yvKWSN6CNC4gVNrG7spyHmwao7oZwrvRMhxEVimbPfmoiLgUW7N9T/Niixy5lpLpaZgMtOfKxbSk49YmVLoNHjnIKasR90=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741308510;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=h8rRhlaMIsLXodKw1Q1H9pitBk0/63QeWI3gE5xZArE=;
	b=iwmd/f2pIkqdP0YMHqbjz1g5Q7sh+sb2H3vrbiiGX4rWy0+2dXYeKzC7X3pqrcKY
	a/Jmie4G7MYI/1hkaz/uafpW98wzeXDMrfYf3NnxxpGORNujntMGGAQ4C5KXvsurwZL
	jV5YGtpNXrBNc5Cfet1/HMgaDgha/wh9uS6O5Ti4=
Received: by mx.zohomail.com with SMTPS id 1741308507900364.38915076979447;
	Thu, 6 Mar 2025 16:48:27 -0800 (PST)
Received: by venus (Postfix, from userid 1000)
	id 89085180CAC; Fri, 07 Mar 2025 01:48:22 +0100 (CET)
Date: Fri, 7 Mar 2025 01:48:22 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, David Wu <david.wu@rock-chips.com>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH 3/3] net: stmmac: dwmac-rk: Use DELAY_ENABLE macro for
 RK3588
Message-ID: <7pzama5c5u2voshlkougczic3mnqn4ezotdaqyflcjtb6k7myh@6biehccwcizx>
References: <20250306203858.1677595-1-jonas@kwiboo.se>
 <20250306203858.1677595-4-jonas@kwiboo.se>
 <8323ba9aba1155004bcd201b4fd7b2fa@manjaro.org>
MIME-Version: 1.0
In-Reply-To: <8323ba9aba1155004bcd201b4fd7b2fa@manjaro.org>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.4.2/241.192.19
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_164906_310403_6E4676C2 
X-CRM114-Status: GOOD (  21.06  )
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
Content-Type: multipart/mixed; boundary="===============3575156956964704948=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============3575156956964704948==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ki57npegzizchtuo"
Content-Disposition: inline


--ki57npegzizchtuo
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 3/3] net: stmmac: dwmac-rk: Use DELAY_ENABLE macro for
 RK3588
MIME-Version: 1.0

Hi,

On Thu, Mar 06, 2025 at 10:33:23PM +0100, Dragan Simic wrote:
> Hello Jonas,
>=20
> On 2025-03-06 21:38, Jonas Karlman wrote:
> > Support for Rockchip RK3588 GMAC was added without use of the
> > DELAY_ENABLE macro to assist with enable/disable use of MAC rx/tx delay.
> >=20
> > Change to use a variant of the DELAY_ENABLE macro to help disable MAC
> > delay when RGMII_ID/RXID/TXID is used.
> >=20
> > Fixes: 2f2b60a0ec28 ("net: ethernet: stmmac: dwmac-rk: Add gmac
> > support for rk3588")
> > Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> > ---
> >  drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > index 37eb86e4e325..79db81d68afd 100644
> > --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
> > @@ -91,6 +91,10 @@ struct rk_priv_data {
> >  	(((tx) ? soc##_GMAC_TXCLK_DLY_ENABLE : soc##_GMAC_TXCLK_DLY_DISABLE) |
> > \
> >  	 ((rx) ? soc##_GMAC_RXCLK_DLY_ENABLE : soc##_GMAC_RXCLK_DLY_DISABLE))
> >=20
> > +#define DELAY_ENABLE_BY_ID(soc, tx, rx, id) \
> > +	(((tx) ? soc##_GMAC_TXCLK_DLY_ENABLE(id) :
> > soc##_GMAC_TXCLK_DLY_DISABLE(id)) | \
> > +	 ((rx) ? soc##_GMAC_RXCLK_DLY_ENABLE(id) :
> > soc##_GMAC_RXCLK_DLY_DISABLE(id)))
> > +
> >  #define PX30_GRF_GMAC_CON1		0x0904
> >=20
> >  /* PX30_GRF_GMAC_CON1 */
> > @@ -1322,8 +1326,7 @@ static void rk3588_set_to_rgmii(struct
> > rk_priv_data *bsp_priv,
> >  		     RK3588_GMAC_CLK_RGMII_MODE(id));
> >=20
> >  	regmap_write(bsp_priv->grf, RK3588_GRF_GMAC_CON7,
> > -		     RK3588_GMAC_RXCLK_DLY_ENABLE(id) |
> > -		     RK3588_GMAC_TXCLK_DLY_ENABLE(id));
> > +		     DELAY_ENABLE_BY_ID(RK3588, tx_delay, rx_delay, id));
> >=20
> >  	regmap_write(bsp_priv->grf, offset_con,
> >  		     RK3588_GMAC_CLK_RX_DL_CFG(rx_delay) |
>=20
> Thanks for this patch...  It's looking good to me, and good job
> spotting this issue!  Please, free to include:
>=20
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

-- Sebastian

--ki57npegzizchtuo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmfKQlIACgkQ2O7X88g7
+pqmUQ/+Pwe2OzjCoW17WKQbluD9itbsu6/qTK/72qQxcnuYYRWGr7jwxff62Xas
0ocMSrO7kTdcbgVUXF9oeURevU/kv0xvLaUK98zXfXAU3nDVDdZJcp9MHQV2e2lZ
U7SQkX+/SG5QWMJlQnj7ds73kZfSHBhXW5smWDt+r84OMSLOyWf1PgASH/WhP1MP
VMlp78mMl34DUh8cIKWywg0SlGeEETPd2QJgrLDQDBc4oYz2MMbNDU1+NkVc+bmb
30kGT/MbjUc/KfGwTK2P8l2JO8N3MuV16+0GLAU+CcGJyoMYPQEbz3lv+WW1ZDa5
hNAgydbYtgjqxJPtlJs2ywrF6aZeIcHSapMGDAuzqNkrauMVYNE0x1C40KTcrbT8
JEurU9KVGqiazUrNcFsrlqLBCSDok17GmJIsRXcaxIHiRVHkeEFawGUNCj71IX9A
MTPnOauFJmc4EDf8qwnEAQeLlWzahjsvt4eAHJHczr5Qjje4x4Gei6X49crQmkWb
Kmb0WlwJv1tNMRaluwCLHXSunGQd39WRJ9Ujl/JDpwwyi7xSBZikK2aLS9vtSW99
UzIAbnWaAT1qO90FqXjlnDcU1KZHR7GJjAMxz23KXRKAOdT+rViZ268aKTRf23HM
5pFgSMuptSxKMkBdUa/+SCYSo3+BRKI9M1xOoVWHlrqq4ZpCxQU=
=L1gX
-----END PGP SIGNATURE-----

--ki57npegzizchtuo--


--===============3575156956964704948==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============3575156956964704948==--

