Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6052C27C4F
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 08:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uEG57gibsGs6ZpJlHqekfdowzIJ066apmi13Rqjz8vY=; b=nnLbEe3V3N52A7
	98uxdMc/wVEU6yYLFHW3uDb8Elp1bulaXmni7h86kPVwD3nFvt02FdnKI+n5BCwcCYBCmolrDTe1w
	VdM5n8mp9UaBEolzS6nkvcEpKxFQKBedt8md2xHPt0krRbQhDK/IjtbyNquapv9ENz3B/fnNvlcQr
	iVkLV0DRV/d0dkG7X0NvaSCc9uM+0BSeJ6LjxDJkf+ZBBDU2phwc9+buYCtfF5Op3HNWH4GWL2CMs
	YPFzIYjSNYPq5pn2/TJHA10H06g06fqzlS4q7F350ozeog+T7AyxG4KGn1MmeTdEDzLRiPleXzrMu
	sDjMqjKwMo+0BxK4eflg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHfOa-0000000FbOd-0kQM;
	Thu, 13 Jun 2024 08:01:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHfOW-0000000FbOA-2qhU
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jun 2024 08:01:18 +0000
Received: from i53875be5.versanet.de ([83.135.91.229] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sHfOQ-0007fB-G8; Thu, 13 Jun 2024 10:01:10 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jianfeng Liu <liujianfeng1994@gmail.com>,
 Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
Subject: Re: [PATCH v5 3/5] media: hantro: Add RK3588 VEPU121 support
Date: Thu, 13 Jun 2024 10:01:09 +0200
Message-ID: <14943967.O6BkTfRZtg@diego>
In-Reply-To: <g3zzuwv2pti6oudc5xlab3cdjpqbhjsdxdsphzch4mtcaisqxl@iwkxgillwi2f>
References: <20240612173213.42827-1-sebastian.reichel@collabora.com>
 <1739853.izSxrag8PF@diego>
 <g3zzuwv2pti6oudc5xlab3cdjpqbhjsdxdsphzch4mtcaisqxl@iwkxgillwi2f>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_010116_751544_98B8EF93 
X-CRM114-Status: GOOD (  33.75  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Donnerstag, 13. Juni 2024, 00:44:38 CEST schrieb Sebastian Reichel:
> Hi,
> =

> On Wed, Jun 12, 2024 at 08:08:51PM GMT, Heiko St=FCbner wrote:
> > Am Mittwoch, 12. Juni 2024, 19:15:43 CEST schrieb Sebastian Reichel:
> > > Avoid exposing each of the 4 Hantro H1 cores separately to userspace.
> > > For now just expose the first one.
> > > =

> > > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > > ---
> > >  .../media/platform/verisilicon/hantro_drv.c   | 38 +++++++++++++++++=
++
> > >  1 file changed, 38 insertions(+)
> > > =

> > > diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/driver=
s/media/platform/verisilicon/hantro_drv.c
> > > index 34b123dafd89..b722a20c5fe3 100644
> > > --- a/drivers/media/platform/verisilicon/hantro_drv.c
> > > +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> > > @@ -722,6 +722,7 @@ static const struct of_device_id of_hantro_match[=
] =3D {
> > >  	{ .compatible =3D "rockchip,rk3399-vpu", .data =3D &rk3399_vpu_vari=
ant, },
> > >  	{ .compatible =3D "rockchip,rk3568-vepu", .data =3D &rk3568_vepu_va=
riant, },
> > >  	{ .compatible =3D "rockchip,rk3568-vpu", .data =3D &rk3568_vpu_vari=
ant, },
> > > +	{ .compatible =3D "rockchip,rk3588-vepu121", .data =3D &rk3568_vpu_=
variant, },
> > >  	{ .compatible =3D "rockchip,rk3588-av1-vpu", .data =3D &rk3588_vpu9=
81_variant, },
> > >  #endif
> > >  #ifdef CONFIG_VIDEO_HANTRO_IMX8M
> > > @@ -992,6 +993,39 @@ static const struct media_device_ops hantro_m2m_=
media_ops =3D {
> > >  	.req_queue =3D v4l2_m2m_request_queue,
> > >  };
> > >  =

> > > +/*
> > > + * Some SoCs, like RK3588 have multiple identical Hantro cores, but =
the
> > > + * kernel is currently missing support for multi-core handling. Expo=
sing
> > > + * separate devices for each core to userspace is bad, since that do=
es
> > > + * not allow scheduling tasks properly (and creates ABI). With this =
workaround
> > > + * the driver will only probe for the first core and early exit for =
the other
> > > + * cores. Once the driver gains multi-core support, the same techniq=
ue
> > > + * for detecting the main core can be used to cluster all cores toge=
ther.
> > > + */
> > > +static int hantro_disable_multicore(struct hantro_dev *vpu)
> > > +{
> > > +	const char *compatible;
> > > +	struct device_node *node;
> > > +	int ret;
> > > +
> > > +	/* Intentionally ignores the fallback strings */
> > > +	ret =3D of_property_read_string(vpu->dev->of_node, "compatible", &c=
ompatible);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	/* first compatible node found from the root node is considered the=
 main core */
> > > +	node =3D of_find_compatible_node(NULL, NULL, compatible);
> > > +	if (!node)
> > > +		return -EINVAL; /* broken DT? */
> > > +
> > > +	if (vpu->dev->of_node !=3D node) {
> > > +		dev_info(vpu->dev, "missing multi-core support, ignoring this inst=
ance\n");
> > > +		return -ENODEV;
> > > +	}
> > > +
> > > +	return 0;
> > > +}
> > > +
> > >  static int hantro_probe(struct platform_device *pdev)
> > >  {
> > >  	const struct of_device_id *match;
> > > @@ -1011,6 +1045,10 @@ static int hantro_probe(struct platform_device=
 *pdev)
> > >  	match =3D of_match_node(of_hantro_match, pdev->dev.of_node);
> > >  	vpu->variant =3D match->data;
> > >  =

> > > +	ret =3D hantro_disable_multicore(vpu);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > =

> > I think this might be better as two patches?
> > =

> > As this patch stands, the disable-multicore handling is done for _all_
> > hantro variants, so part of me wants this to be labeled as such.
> > =

> > The whole reasoning is completely ok, but somehow having this under
> > the "add rk3588" umbrella feels strange ;-)
> =

> I can do that, but the 'rockchip,rk3588-vepu121' part is only needed
> because of the multicore handling. If the kernel already had this bit
> in the past, the RK3568 compatible could be used for RK3588 (as a
> fallback compatible), just like for VPU121.

I meant, you're doing hantro_disable_multicore() here also for everyone
else (i.MX etc), hence I'd like that to be a separate commit in this
series like:

----- 8< ------
media: hantro: Disable multi-core handling for the time being

The VSI doc for the Hantro codec describes the grouping of up to 4 instance=
s.
The kernel currently doesn't handle multi-core processing .... foo bar ....
----- 8< ------

And then add rk3588 support on top of that.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
