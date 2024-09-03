Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3969CD3447
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 16:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hTBnLk4QACoLryXmr1VyFec2O3VJezeTMs1CC8xxFK0=; b=BqeFelvULz4EOHKqeZ1QOa2RkB
	WfU1N9fjPntLS0qqKSYRey4iCtvNWdWo6yLQ9wA9nhjxd6RDiLW8aKoSA04nsU6w2RMP7XrcCAmrE
	PTNQJ4xjuNDF7w85WE5aSSBAPNIYUuqilSt3fBJKKj2Y19YLZIuf8Cs7wUXZSItgTJFA1F3SGX2wz
	FDDNr42yOE8HV3dx5sRB0DL9Cw0Uskm+KcVp+DQ7t5AShSBXx+k1Z7WkptTQrFz4OS821OACpWRKY
	RGxctyjtXDs17rEqXHA0c3qo/Ftf9Y6JBf2LdtjCBn6fLwblECwZ6gFrHpOrXuWJhOgJCwL5/N9Yk
	HzqrERHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slW05-000000010OK-24tA;
	Tue, 03 Sep 2024 16:03:25 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVpQ-00000000xkN-35gz
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Sep 2024 15:52:26 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5c26311c6f0so2174305a12.3
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Sep 2024 08:52:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725378742; x=1725983542; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=DuEfnvjjt6m1/doYMjeYKF5Vb/dLCWma3sPSNO69eh8=;
        b=m9KFAAwELq8iMNvJB+h7KCRA5j7UDX3uyhhLoEUog6i3+yAlW/xE/35bU2lK83qlDf
         YJ4+5DAPIm//cIqqdXZ3OiLhBjjOVjDsy2aHzCAScSttm9/xj4OaPWJ5BJydd3oOif+K
         9kfb2kzb3i94EoHMn1LI8R4IokcK9YobmycMd0VPG58Ib4dpgg+H32COAM11mNIZiga2
         7VXngP4evxRSo9Seac2bdx0ztZwtGcuAduzi1gadM/Eb26CcXTnah2HJwpw6Ci2CtDqj
         9YHo+pJ/cCZ2daQvTof4t0lVm0IFQWCnci3IQPddcdyT6WzmVDU2Wv2UmXRRD9Iv9XG3
         2KUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725378742; x=1725983542;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DuEfnvjjt6m1/doYMjeYKF5Vb/dLCWma3sPSNO69eh8=;
        b=Rj0FVdoD8sx+3mysbhPnNpyqjhZL+UckjWmBgnpsXxxzknMKsujW+u1sz13SScDJZy
         /TWcXFKHZN/77RqP+DGeG/r4KZ31+VpDmKwT75vT2XZCgzWcfK6Gr+y3aRyQW2przuwX
         4bGM6lVZi/5NJkHePVBWLBxk1LiQzgEt9D2/ONcj+7wNpkSZxb0Le3xYAA1pOK3HDPWh
         Ff3NsC+sIDrrsHMDO+cgxAWfgsEMk4TIsrWESc2lKxVeJv7bVHrWu0U8wJOwjdWrzmq5
         PxCpQ/uWkRYdzJODVrd81dEQyQNhN5HOD82a4pJq4K2wLck1D56ZsBUh8wqsUgRDzdEq
         2Vsw==
X-Forwarded-Encrypted: i=1; AJvYcCWyxVVVrJ79vmSUn1DMfwxWMevk9ckX8ceN9nYBBdi7KDnMhgNrSX9c+XmHYI3+x+HKM9RF7bbLefdqjOGDxg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxwV1u+XOP0lplqvaDWrvlgCslYOwlwKgIwtv5aCBgAFLdprcQN
	V3C0GyaNn9dePGYhM5MXMCKJ0jGbAYrp4aIMo8rq+oLvSyAMdSQLMC0bk/4Zb3w=
X-Google-Smtp-Source: AGHT+IGX8n0w2RrQgN7NxW87zoP0ZbH3F+TZlJRkbLUatpnJln6Op8KzPk3dbNz6NHkJ9YOZ5PBNdQ==
X-Received: by 2002:a17:907:86a9:b0:a86:73cb:99ef with SMTP id a640c23a62f3a-a89faf0fc8dmr584529166b.39.1725378742211;
        Tue, 03 Sep 2024 08:52:22 -0700 (PDT)
Received: from localhost (p5dc68f76.dip0.t-ipconnect.de. [93.198.143.118])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8988feb2a3sm701051566b.3.2024.09.03.08.52.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Sep 2024 08:52:21 -0700 (PDT)
Date: Tue, 3 Sep 2024 17:52:20 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Li Zetao <lizetao1@huawei.com>
Cc: florian.fainelli@broadcom.com, andrew@lunn.ch, olteanv@gmail.com, 
	davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, 
	wens@csie.org, jernej.skrabec@gmail.com, samuel@sholland.org, heiko@sntech.de, 
	yisen.zhuang@huawei.com, salil.mehta@huawei.com, hauke@hauke-m.de, 
	alexandre.torgue@foss.st.com, joabreu@synopsys.com, mcoquelin.stm32@gmail.com, 
	wellslutw@gmail.com, radhey.shyam.pandey@amd.com, michal.simek@amd.com, 
	ajay.kathat@microchip.com, claudiu.beznea@tuxon.dev, kvalo@kernel.org, 
	jacky_chou@aspeedtech.com, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-wireless@vger.kernel.org
Subject: Re: [PATCH net-next 05/12] net: ftgmac100: Convert using
 devm_clk_get_enabled() in ftgmac100_setup_clk()
Message-ID: <7mfqy5mcwxrppb25j57za7jzk6d5llexfgnngl66tle3ic32yy@63cj63tsh3xh>
References: <20240831021334.1907921-1-lizetao1@huawei.com>
 <20240831021334.1907921-6-lizetao1@huawei.com>
 <nyfm5mxrrvfeu7s25qzjxbatvgnppq7exmca3sccmm6lz7nxan@xxsdgcrueoen>
 <0becf4e0-2f66-4c26-b0b3-59ee232eaaef@huawei.com>
MIME-Version: 1.0
In-Reply-To: <0becf4e0-2f66-4c26-b0b3-59ee232eaaef@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_085224_804138_28B6ADE5 
X-CRM114-Status: GOOD (  31.16  )
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
Content-Type: multipart/mixed; boundary="===============1197903639126344115=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============1197903639126344115==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="se74eiqu42ro53lu"
Content-Disposition: inline


--se74eiqu42ro53lu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Tue, Sep 03, 2024 at 06:46:48PM +0800, Li Zetao wrote:
> =E5=9C=A8 2024/9/3 16:09, Uwe Kleine-K=C3=B6nig =E5=86=99=E9=81=93:
> > On Sat, Aug 31, 2024 at 10:13:27AM +0800, Li Zetao wrote:
> > > Use devm_clk_get_enabled() instead of devm_clk_get() +
> > > clk_prepare_enable(), which can make the clk consistent with the devi=
ce
> > > life cycle and reduce the risk of unreleased clk resources. Since the
> > > device framework has automatically released the clk resource, there is
> > > no need to execute clk_disable_unprepare(clk) on the error path, drop
> > > the cleanup_clk label, and the original error process can return dire=
ctly.
> > >=20
> > > Signed-off-by: Li Zetao <lizetao1@huawei.com>
> > > ---
> > >   drivers/net/ethernet/faraday/ftgmac100.c | 27 ++++++---------------=
---
> > >   1 file changed, 7 insertions(+), 20 deletions(-)
> > >=20
> > > diff --git a/drivers/net/ethernet/faraday/ftgmac100.c b/drivers/net/e=
thernet/faraday/ftgmac100.c
> > > index 4c546c3aef0f..eb57c822c5ac 100644
> > > --- a/drivers/net/ethernet/faraday/ftgmac100.c
> > > +++ b/drivers/net/ethernet/faraday/ftgmac100.c
> > > @@ -1752,13 +1752,10 @@ static int ftgmac100_setup_clk(struct ftgmac1=
00 *priv)
> > >   	struct clk *clk;
> > >   	int rc;
> > > -	clk =3D devm_clk_get(priv->dev, NULL /* MACCLK */);
> > > +	clk =3D devm_clk_get_enabled(priv->dev, NULL /* MACCLK */);
> > >   	if (IS_ERR(clk))
> > >   		return PTR_ERR(clk);
> > >   	priv->clk =3D clk;
> > > -	rc =3D clk_prepare_enable(priv->clk);
> > > -	if (rc)
> > > -		return rc;
> > >   	/* Aspeed specifies a 100MHz clock is required for up to
> > >   	 * 1000Mbit link speeds. As NCSI is limited to 100Mbit, 25MHz
> > > @@ -1767,21 +1764,17 @@ static int ftgmac100_setup_clk(struct ftgmac1=
00 *priv)
> > >   	rc =3D clk_set_rate(priv->clk, priv->use_ncsi ? FTGMAC_25MHZ :
> > >   			  FTGMAC_100MHZ);
> > >   	if (rc)
> > > -		goto cleanup_clk;
> > > +		return rc;
> > >   	/* RCLK is for RMII, typically used for NCSI. Optional because it'=
s not
> > >   	 * necessary if it's the AST2400 MAC, or the MAC is configured for
> > >   	 * RGMII, or the controller is not an ASPEED-based controller.
> > >   	 */
> > > -	priv->rclk =3D devm_clk_get_optional(priv->dev, "RCLK");
> > > -	rc =3D clk_prepare_enable(priv->rclk);
> > > -	if (!rc)
> > > -		return 0;
> > > +	priv->rclk =3D devm_clk_get_optional_enabled(priv->dev, "RCLK");
> > > +	if (IS_ERR(priv->rclk))
> > > +		return PTR_ERR(priv->rclk);
> > > -cleanup_clk:
> > > -	clk_disable_unprepare(priv->clk);
> > > -
> > > -	return rc;
> > > +	return 0;
> >=20
> > You're changing semantics here. Before your patch ftgmac100_setup_clk()
> > was left with priv->clk disabled; now you keep it enabled.
> Before my patch, ftgmac100_setup_clk() was only left with priv->clk disab=
led
> when error occurs, and was left with priv->clk enabled when no error occu=
rs
> because when enabling priv->rclk successfully, it will return 0 directly,
> and when enabling priv->rclk failed, it will disable priv->clk.
>=20
> It turns out that the code logic is a bit counter-intuitive, but the
> readability has been improved after adjustments.

Indeed. This is IMHO worth mentioning in the commit log to prevent the
next reviewer stumble over the same code construct.

Best regards
Uwe

--se74eiqu42ro53lu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmbXMLEACgkQj4D7WH0S
/k5L/wf9Gs22UgHjYPS/+O96Cu4w4UcP3q7nPHpOoDSXi2BXtkrd7ABWKXFV2G9v
0DkiId7UylOmQ86aa7znTZywltkTX8AItXV6lq02kZPov3/57jw8RcpHRc694mrH
PxmFxBPFAtoh5SlzCoBzgViqv+dfxcd9r4yniENbBn1gH2j1SH/XsJRypXr8PaUy
HHvPiIhlO4ylM2U3QM3ojnUNGER5I5Oq2Ge8PYhd7B118KogrbcAlMm52+cN+Emt
M+kDaR5zXhRN/Xlknj3YnVNtzyYxfF6iNjOLSVQue1CxjbsHXwYWt+gUMwZ9U7mi
M/GMHgxWenCtKXfzEgHtrXqAzvSsNA==
=H+qA
-----END PGP SIGNATURE-----

--se74eiqu42ro53lu--


--===============1197903639126344115==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1197903639126344115==--

