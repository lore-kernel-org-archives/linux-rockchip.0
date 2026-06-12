Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BE16CD98CF
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jun 2026 16:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pTuedNt1EDdEiLTRz7f4U0YOE/vJON5Vjo2yO4+Hl4Q=; b=PMOjZaqsynFCQiH+JQrqWl+2pz
	kG3NZmZD+1Ab6nXqBVNPzy0snlqLWiwhPgUHUbTVTdRv7jpYdAwgYjmVGoLaXuRHgGMXXVndQFZdN
	8sJQC9ZxZVgNIBDW/faJSOyfpYQSYGdh62DmkLxnZnDkQnto3qahzN9gDlQS8lumZhuzYvKnwSL3m
	4tbv3zhcqT8KX/yQlPO2jq4SeaZ7hgaHBRX1vS8FPqZG9Bz6vbZujybgkr+TEpbzESCgwoSzeETGI
	eSJ6ZQp3IKKQJcC97v49fEPlfNNARcvz5JdgGdoZoAibQuh6i8YEN2P4IPX6IN5lfebJGdkYqJzKp
	tsfnBfQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY4tt-0000000BIG3-0T9U;
	Fri, 12 Jun 2026 16:38:33 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY4tr-0000000BIFS-13La;
	Fri, 12 Jun 2026 16:38:32 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1781282271; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=eZbpZFrHare2ZkdyH2mlS82J2OCdJQ4FvrBiaxu5MQloDqfweBtlqgapAo2lvzBt/VsowUDAujoDmKh65ObWl2o9FTfqFbJmFX64Py2iap5xUUjw2P9BmhpSmHjdqLxJi20fVF60QhdEAJSM9/j+mXPmTwVNjlA8khCCJNdtaoU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1781282271; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=cz0JvF5PqRn4+AvgydKR6qxMt5tufCqZlm71fI/zQJE=; 
	b=U1OSMKMnKPRcdT3LGdJ9VC6S/CrZw9aAwSXQDBEYAuJ7e64Csg2DoHKybxTI6IexcBZqopKtLYW5JwhhFIWckO3jyg2dLeluzcISdClCsJT2kYJDH2vJa7O3dur70uX6BMsPHc0Xl4hMPjSPswZlIWAjQwFwAXDwKEvOnIHu2wA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1781282271;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=cz0JvF5PqRn4+AvgydKR6qxMt5tufCqZlm71fI/zQJE=;
	b=NrYnVgKTaiUOijL3nFNPT0GRc59JHJygJH2GXurDQ5WU52i418+IzzG+cEvPYoFN
	7wHye0F8/N56hPz0k3y9yYCWJuFbkwsvM1vBOEi7wwMnrtnA3Tq/o9ioKDM8LwQ7yZj
	fesFoG4rCqM5kfcfuRp9ZlpxUwEpeG0dKw9fuqj8=
Received: by mx.zohomail.com with SMTPS id 1781282268882444.94252128935307;
	Fri, 12 Jun 2026 09:37:48 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 137D8180674; Fri, 12 Jun 2026 18:37:42 +0200 (CEST)
Date: Fri, 12 Jun 2026 18:37:42 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: [PATCH v2 07/12] drm/rockchip: dw_dp: Implement out-of-band HPD
 handling
Message-ID: <aiw0VKuj6Y6tpr9f@venus>
References: <20260501-synopsys-dw-dp-improvements-v2-0-d7e7f6bac77f@collabora.com>
 <20260501-synopsys-dw-dp-improvements-v2-7-d7e7f6bac77f@collabora.com>
 <4f4ff085-80ae-4144-b040-be9b136574ee@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <4f4ff085-80ae-4144-b040-be9b136574ee@rock-chips.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.10.1.5.2/281.270.71
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_093831_354289_B7EF7E97 
X-CRM114-Status: GOOD (  21.89  )
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
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, linux-rockchip@lists.infradead.org, Luca Ceresoli <luca.ceresoli@bootlin.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, Neil Armstrong <neil.armstrong@linaro.org>, Dmitry Baryshkov <lumag@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Alexey Charkov <alchark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: multipart/mixed; boundary="===============0389317457212992041=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============0389317457212992041==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p2h2tj3fgjiazqvf"
Content-Disposition: inline


--p2h2tj3fgjiazqvf
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 07/12] drm/rockchip: dw_dp: Implement out-of-band HPD
 handling
MIME-Version: 1.0

Hello Chaoyi,

On Tue, Jun 02, 2026 at 04:30:59PM +0800, Chaoyi Chen wrote:
> On 5/1/2026 6:20 AM, Sebastian Reichel wrote:
> > Implement out-of-band hotplug handling, which will be used to receive
> > external hotplug information from the USB-C state machine. This is
> > currently handled by the USBDP PHY, which brings quite some trouble
> > as the register being accessed requires the power-domain from the DP
> > controller and also requires custom TypeC HPD info parsing in the
> > USBDP PHY driver.
> >=20
> > In contrast to the USBDP PHY this does not just enable the hotplug
> > signal when a DP AltMode capable adapter is plugged in, but instead
> > properly detects if a cable is plugged in for things like USB-C to
> > HDMI adapters.
> >=20
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>=20
> [...]
>=20
> > +static void dw_dp_rockchip_hpd_sw_cfg(void *data, bool hpd)
> > +{
> > +	struct rockchip_dw_dp *dp =3D data;
> > +	u32 hpd_reg =3D dp->pdata->hpd_reg[dp->id];
> > +
> > +	dev_dbg(dp->dev, "Force HPD connected=3D%s\n", str_yes_no(hpd));
> > +
> > +	dp->hpd_cfg =3D hpd;
> > +
> > +	regmap_write(dp->vo_grf, hpd_reg,
> > +		     FIELD_PREP_WM16_CONST(ROCKCHIP_VO_GRF_DP_SINK_HPD_CFG, dp->hpd_=
cfg));
>=20
> FIELD_PREP_WM16() should be used here because "dp->hpd_cfg" is not
> a constant expression.
>=20
> Other patches in this series have similar issues. Doesn't your
> compiler warn you about this? Thanks.

The code builds warning free for me. Also FIELD_PREP_WM16_CONST
requies that the mask is constant, which is the first argument
(i.e. ROCKCHIP_VO_GRF_DP_SINK_HPD_CFG in this case). The second
argument should be fine as a variable as far as I can tell.

But since FIELD_PREP_WM16 is shorter anyways, gives better error
handling and can be used for all occuances in the dw-dp rockchip
glue I will use that instead.

Thanks,

-- Sebastian

--p2h2tj3fgjiazqvf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmosNdIACgkQ2O7X88g7
+pr0qRAAj815LPOHnJWGnjzNNkUa/kzLFB4bzesaxqb+wG3aeeh0mPO+oeA95BCm
SAJ+4pmlt2gMl+ubhV57wIpAqet9TkklmWL1mJjItmbqTWUYO4juygwWu/BuqMBx
fXdKK6ypbX6wXEfKSA2dfXsjIdAWI1U0w3Ur/tUbWHoaf/18RczSbqaQZo1djjBm
oszzKbkhNm+y4IN+FgKWKwTWsEjuPU3dO21LwSNU2BU2SwZKXuPeFC+oBOJgikpe
CtNKqtrU+IRnZTM0G8J00BthrRYV1wCT9e/LxMkEKXDcu1Y20UPoN9FIOvDKkjHZ
XgilvLd+sd05hogeeTyWHGZsJxj3hIjFQiHGzlxi9TU8/r/m/cVyMDIKfdWWYVVA
o83o7A1MSDm41PopcT1Ig1x/4EISnG5vl2hgXa6YPEEyc35SJc9p9ONxKx+q4V8z
uASra69imY+fuQumXJdBFFvKxw2JnGWqvgFWL2J5P6CI7tdhTQEf1FeJbg4JKMxN
+4iHaKWIkwvBni35M2cqX05bm2CXTXgMQfN8Y3PuBGdeB9tY+n2n8sCFB9CTJbRR
Z9FyB3EQdld6e2/X/dScExJyHuG4UBgbvys58QuoOd6F8XCFmxoIGpbCedQRMtJH
eFzckHF+qJfPxAYUfdtEkEK8VAFYb/8BFXBQPCxc0590XvbGvdI=
=qoV1
-----END PGP SIGNATURE-----

--p2h2tj3fgjiazqvf--


--===============0389317457212992041==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0389317457212992041==--

