Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97002C2BA18
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 11:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rQF2YWTm6NyY61Fe562YizZLtQguCS0dTG/U4OtuLY8=; b=AF6oU5rU27HfR6uhxl1EmTkDXG
	ZQYoPj2BJI/qDwvwZ8lSERx4DmiGog8Ub578bb5f50tz9F8r1gs1Az9MyUiBdmaYw5QuqIJPDlkfS
	DAXNfxUvG43uS3vtDaau06D67Nxp2FA/wqjX1eBiAXXzygFoPsEo6YDmaChak3kmAVdDzSoHh80n+
	wI4rj+kSZy0SkfMiXJSvkeCPlz4K4Ml6lPVDKqFq/B2LY1QdOcPQLbZuXME8VjF35cpBYyoteiYDa
	/osK18Ge3rev6H4u+8HowfKJMnhtrHeoPnzqxk9lrmXF5Mti2cU1TM8/ittNPBIfCPMOwVS7qci4H
	/kB4tBdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAZf-0000000AUfu-0c70;
	Mon, 17 Jun 2024 11:30:59 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAZc-0000000AUfC-0VQW
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jun 2024 11:30:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718623852;
	bh=HzBwIhrvBDEM5gpG4WaMTS01iW2I1HhXUnZuP86SIlY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hnqAzZCiyk1aGB6H02eNX0ndmijhYXmeo8UhmiPnvoqkJ/Z8oNxbyDYrr7gqz+U/8
	 FQaragdjVfcnexMovURVKJPysXA0KgPY4ysd/8kLXIdGkj/RIyTDh2Uu6ig6XEKQp0
	 YkjZx9CViut6Mp5jAbyw7+1j7dhozmCO9qJOlbb5h0fM7c1HZSZzbE2UnsEQw6aG7n
	 4BvNkU8cvT+9ACjNXIZPTgeUMHl9FlIFm5ngHbkec9vBYroVE4eIYBhFFHJYwxjsew
	 rGZEQ+auVWYN3Mdx9M5HoN523vzdbtKAuTMX3nMG03mH6OxTrenBH/fWtAVoqJKKyN
	 7QB1p2bjBYN6w==
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D73A137804C8;
	Mon, 17 Jun 2024 11:30:52 +0000 (UTC)
Received: by mercury (Postfix, from userid 1000)
	id 72F681060734; Mon, 17 Jun 2024 13:30:52 +0200 (CEST)
Date: Mon, 17 Jun 2024 13:30:52 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, 
	ezequiel@vanguardiasur.com.ar, frattaroli.nicolas@gmail.com, heiko@sntech.de, 
	kernel@collabora.com, krzk+dt@kernel.org, linkmauve@linkmauve.fr, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, robh@kernel.org
Subject: Re: [PATCH v6 4/6] media: hantro: Add RK3588 VEPU121
Message-ID: <o6iccgurpi7sraq7plxaccz37i44te4jaqicnp2nqbke2qtskh@4kboulg3zywx>
References: <20240613135034.31684-5-sebastian.reichel@collabora.com>
 <20240617025022.25122-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20240617025022.25122-1-liujianfeng1994@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_043056_358954_5524A583 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============7395488962253535689=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7395488962253535689==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4reipacbikci5md7"
Content-Disposition: inline


--4reipacbikci5md7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jun 17, 2024 at 10:50:22AM GMT, Jianfeng Liu wrote:
> Hi Sebastian,
>=20
> Thu, 13 Jun 2024 15:48:45 +0200, Sebastian Reichel wrote:
> >+	{ .compatible =3D "rockchip,rk3588-vepu121", .data =3D &rk3568_vpu_var=
iant, },
>=20
> rk3568_vpu_variant is decoder's data, typo?

See first sentence of the commit message.

-- Sebastian.

--4reipacbikci5md7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIyBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmZwHmgACgkQ2O7X88g7
+poayg/4kaCjw30iGYWhUbN3lrFew1L0jfg9s4DrgwLa4Mni+dk0QDVauaYcZPGg
BAEDHvhkwbFY8yBkzuQLu3UWBdXDwlj9BpOtVT25kHorgUe9ZKmUuiAeFkjWjYC6
66dNjUPhVtMcbrVvdw4iRTfX2ADxjYfF92yPMQ9uOqkMWThV7lshwWTRgOCbSsm7
zs8VH+RLwdYIAGm6GFVJsZsDG0sHnalPd3q/Jw6wwZvnaLP6d5rGsC3I56vOOH38
9vS/EuJxrKIL6cbWTrNkY8V4JHH0e83zoLcR+XdwVaJ2Yilqi7EK50JI4UyfIJ2L
/poeWNwHc57BigUlOjpCzNC8D9748NDMz+CqPnDXJlxGU3MK6ugq6e41nurC++DL
9uLk+mlGxoH0A+SuakrzYms+xD0NsybpA42/R5n/pYHq1+PwTezb9j3U6/b+blj/
GL5C7/dwV1MugPOfuWpzCaBWkfHZOZDU603CamBAAk/RmOgcvgvIlTOh9/JJBxVr
2zfmfnrcd38hGeOPIqdT3P451zmqKVBMaDdgJYvWxMt9pwu4M9/wRYIvJ8vAppad
LrBMtILqCCfj5zW4Lqmv72Fwn9DA+dJs8ca9OYZVt+G4b65RBbxQ/0gNKp2qWLXa
HAnDmSyVBsrP3tJq4BDCn236mYV8m0crsPmSOpmWXZv5NLjAPA==
=KuxJ
-----END PGP SIGNATURE-----

--4reipacbikci5md7--


--===============7395488962253535689==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7395488962253535689==--

