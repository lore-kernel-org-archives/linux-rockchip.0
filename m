Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06CB5E77180
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 10:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=up+AxfPHqMgdyiHXUD2zYfTmXA7EST0bsXTcdovaLl4=; b=qIQ6aol3vKbD2e
	EtTGM9THYL/x++/xdjiIQiAKt9buQrjTuUUtMU9tDge2lnmuRVSJIDo/1P2TPPLDvaaiot0vG1cnH
	zBEOGzimsH9Vk2BNke/9B8uyj/rnVTz8YWaZBKYHtE5lBCtymh5tsJGceRWxgK+9F57A4/7tfP2hQ
	U2An1zQSuidCkCWNU3lsmOfa94JmI2L5JVYzj5q79m1ZDqCZNd/R0P9y+wP3oysgszK+DufY7KIw+
	r5YpYrclNCj8sp2mYr+MyJPvYyQjCZME9P2bHOqCgKKkm8lBuTEmQRalwBUYmyKvKBTkJ33h2l5Xn
	CidmTI4a3/3y9CK6tDsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN812-00000009dmF-2tiD;
	Mon, 16 Dec 2024 10:07:52 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN7yH-00000009d9G-14Qn
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 10:05:02 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2ffa49f623cso49008001fa.1
        for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2024 02:05:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734343499; x=1734948299; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=HLzU3OoGAZg1lvIIB2cj0SjgTHG2tkXZPV4oMUjorKM=;
        b=jXcy8H4j5shxWUZzhgEvSr2nhVuRTCZ+Tw32xVEgZr2eYL26fHo+0eoW+isemAJjlk
         oehjlVkteZMDAyVlt3+OYvgss/cYOV3UWqU8fpL+1kdb/iXxTXOb8rbkmBa147s0wkgn
         XLoYYVH3OXEvlMi44C2TJh6CvM4k6vRlCWR3dshY6AxZSNFh1pB5GOu3+SCRCL7ujdkI
         I4gAgPZzMMkZUenGwXQKKh7uf9CYhxC8kLIl1pFALCuPnv/P3nep5+TOEVIBku64G0PO
         3xZ+hBQz8zm9OZ3YRJEEhgBNLXczzKunq6TmoUX/pu1D4gbgnEEoZuqis2MqhOvgTsx/
         iI6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734343499; x=1734948299;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HLzU3OoGAZg1lvIIB2cj0SjgTHG2tkXZPV4oMUjorKM=;
        b=qF4fh3k7Rz3NlBhHhSzDCI7g7TUU2BGmmw8cAWDhuMID/nJ8bvXYP9s5GjCmsw3riB
         CbD02lfU4MD21xs8gI+qVg585aoWfA4RvEqGavPwsZuZxjvoVJsF8jhLU4Jwejiz+MeL
         lsKv6CfVRzoMCW/KtZi616/lst4g3DrO9GUfe9d3IFuCxxSCkJ4Qb6LD2nfCcNjMK/Ot
         d3on9kS/8XR7WyG7gjshfqF36kmz6jPGyj7dQBxppO9RZVC3QBJucXCiJKUOC3SQnXVc
         rDaEhazXE917otaGxSas1Uxb84L3pEMUgQvyoc8je7T3hZFs2w4NGKet4t7DS6YXCQBE
         HQkg==
X-Forwarded-Encrypted: i=1; AJvYcCWtgIuGBuw8oDL7IO7J9YoncmTvzqeG0YgSlYrzjwjU3e+tRbnVUcskU+TYTE6iFPOvw7up5ekbF99MBNhqkg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzAkkTgfbZpXQE38Fcz212xltAdX07J+6ixSa8CJVR440db479p
	/MBUqG+5EZON4KGWCTEiPhh/XePCQMT0RJ9z+9tfGm63l/vBEOK3zod5JOk1B+c=
X-Gm-Gg: ASbGncv1ZSkcfc2QS0duJ5sJagHJs/OolFgTKJP0kck9P/12hE8ONC6p8aCnN3IVj2r
	Jcc3MLXLGgU1M/pHerhmG87Zc8R7Prumf1kp+WIJnhutBxla6ohPPO3HL1yY8cWvv1voKWODOgE
	XA9dLOx7o8yvgTHqWjsRiGtKbJXQIg6+xZKt13Ma+9CQNPaTX990ZkCfjgQN/GgLM5x5RBmHprB
	8Bx3HHGmDQcILz2pzU8SMQ7uU00eBe5qv39U+V1SxQKhXxgLj7Py/Njvf6HYdoW/ovOIZaF7Q8u
	XuCSKAQNBLx9tp5QpXfHoATy2ws4ZJr6mkXn
X-Google-Smtp-Source: AGHT+IEANV1rjeOcZD+mfElWFOCdmwQitk5ard7G/sdmw/kgz+ZvJnKtp9SusUqTBt+TDbtuy27Lww==
X-Received: by 2002:a2e:a99e:0:b0:302:16da:a052 with SMTP id 38308e7fff4ca-302544ae804mr44008281fa.27.1734343499432;
        Mon, 16 Dec 2024 02:04:59 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30344045239sm8283241fa.36.2024.12.16.02.04.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 02:04:58 -0800 (PST)
Date: Mon, 16 Dec 2024 12:04:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2 03/11] drm/rockchip: analogix_dp: Add support for
 RK3588
Message-ID: <25bh2uy6wg3kcoqmnzt5dwfamc32bjyjlivkqq4cvne6kryj3z@svlz45bbaoy7>
References: <20241216031225.3746-1-damon.ding@rock-chips.com>
 <20241216031225.3746-4-damon.ding@rock-chips.com>
 <gwogudb5vae7wu452zwuqmdlyaibenoso4f5pjmu3uttckhy2w@shndol4mz5n4>
 <4395748.ejJDZkT8p0@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4395748.ejJDZkT8p0@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_020501_319506_DB553678 
X-CRM114-Status: GOOD (  32.60  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, hjc@rock-chips.com, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Dec 16, 2024 at 10:11:54AM +0100, Heiko St=FCbner wrote:
> Am Montag, 16. Dezember 2024, 09:57:41 CET schrieb Dmitry Baryshkov:
> > On Mon, Dec 16, 2024 at 11:12:17AM +0800, Damon Ding wrote:
> > > RK3588 integrates the analogix eDP 1.3 TX controller IP and the HDMI/=
eDP
> > > TX Combo PHY based on a Samsung IP block, and there are also two
> > > independent eDP display interface on RK3588 Soc.
> > > =

> > > Add just the basic support for now, i.e. RGB output up to 4K@60Hz, wi=
thout
> > > the tests of audio, PSR and other eDP 1.3 specific features.
> > > =

> > > Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> > > =

> > > ---
> > > =

> > > Changes in v2:
> > > - Add support for the other eDP output edp1
> > > ---
> > >  .../gpu/drm/rockchip/analogix_dp-rockchip.c   | 82 ++++++++++++++++-=
--
> > >  include/drm/bridge/analogix_dp.h              |  3 +-
> > >  2 files changed, 74 insertions(+), 11 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/driver=
s/gpu/drm/rockchip/analogix_dp-rockchip.c
> > > index 871606a31ef1..4c9a55776ada 100644
> > > --- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > > +++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
> > > @@ -51,10 +51,12 @@ struct rockchip_grf_reg_field {
> > >  /**
> > >   * struct rockchip_dp_chip_data - splite the grf setting of kind of =
chips
> > >   * @lcdc_sel: grf register field of lcdc_sel
> > > + * @edp_mode: grf register field of edp_mode
> > >   * @chip_type: specific chip type
> > >   */
> > >  struct rockchip_dp_chip_data {
> > >  	const struct rockchip_grf_reg_field lcdc_sel;
> > > +	const struct rockchip_grf_reg_field edp_mode;
> > >  	u32	chip_type;
> > >  };
> > >  =

> > > @@ -134,12 +136,21 @@ static int rockchip_dp_poweron(struct analogix_=
dp_plat_data *plat_data)
> > >  		return ret;
> > >  	}
> > >  =

> > > +	ret =3D rockchip_grf_field_write(dp->grf, &dp->data->edp_mode, 1);
> > > +	if (ret !=3D 0)
> > > +		DRM_DEV_ERROR(dp->dev, "failed to set edp mode %d\n", ret);
> > =

> > Is it to be called for non-eDP hosts too? Or for older hosts?
> =

> The implementation of rockchip_grf_field_write (in patch1) seems to
> take care of checking if that field actually exists and doing nothing if
> not.
> =

> I think eDP/DP is more a naming thing, the Analogix controller is called
> an eDP controller in all documentation things.
> =

> Even back on rk3288, the Analogix-DP, still is called an eDP controller in
> documentation, with the only difference being that it does not contain
> another additional "dedicated" DP controller

At the very least this should be mentioned in the commit message.

> > > +	i =3D 0;
> > > +	while (is_rockchip(dp_data[i].chip_type))
> > > +		i++;
> > > +
> > > +	if (id >=3D i) {
> > > +		DRM_DEV_ERROR(dev, "invalid edp id: %d\n", id);
> > > +		return -ENODEV;
> > > +	}
> > =

> > Is it applicable to non-eDP case?
> =

> same as above, it's always called eDP in all pieces of documentation,
> (Compliant with DP 1.2 and eDP 1.3)

Ack

> =

> Heiko
> =

> > > +
> > >  	dp->dev =3D dev;
> > >  	dp->adp =3D ERR_PTR(-ENODEV);
> > > -	dp->data =3D dp_data;
> > > +	dp->data =3D &dp_data[id];
> > >  	dp->plat_data.panel =3D panel;
> > >  	dp->plat_data.dev_type =3D dp->data->chip_type;
> > >  	dp->plat_data.power_on =3D rockchip_dp_poweron;
> > > @@ -464,19 +507,38 @@ static int rockchip_dp_resume(struct device *de=
v)
> > >  static DEFINE_RUNTIME_DEV_PM_OPS(rockchip_dp_pm_ops, rockchip_dp_sus=
pend,
> > >  		rockchip_dp_resume, NULL);
> > >  =

> > > -static const struct rockchip_dp_chip_data rk3399_edp =3D {
> > > -	.lcdc_sel =3D GRF_REG_FIELD(0x6250, 5, 5),
> > > -	.chip_type =3D RK3399_EDP,
> > > +static const struct rockchip_dp_chip_data rk3399_edp[] =3D {
> > > +	{
> > > +		.lcdc_sel =3D GRF_REG_FIELD(0x6250, 5, 5),
> > > +		.chip_type =3D RK3399_EDP,
> > > +	},
> > > +	{ /* sentinel */ }
> > > +};
> > > +
> > > +static const struct rockchip_dp_chip_data rk3288_dp[] =3D {
> > > +	{
> > > +		.lcdc_sel =3D GRF_REG_FIELD(0x025c, 5, 5),
> > > +		.chip_type =3D RK3288_DP,
> > > +	},
> > > +	{ /* sentinel */ }
> > >  };
> > >  =

> > > -static const struct rockchip_dp_chip_data rk3288_dp =3D {
> > > -	.lcdc_sel =3D GRF_REG_FIELD(0x025c, 5, 5),
> > > -	.chip_type =3D RK3288_DP,
> > > +static const struct rockchip_dp_chip_data rk3588_edp[] =3D {
> > > +	{
> > > +		.edp_mode =3D GRF_REG_FIELD(0x0000, 0, 0),
> > > +		.chip_type =3D RK3588_EDP,
> > > +	},
> > > +	{
> > > +		.edp_mode =3D GRF_REG_FIELD(0x0004, 0, 0),
> > > +		.chip_type =3D RK3588_EDP,
> > > +	},
> > > +	{ /* sentinel */ }
> > >  };
> > >  =

> > >  static const struct of_device_id rockchip_dp_dt_ids[] =3D {
> > >  	{.compatible =3D "rockchip,rk3288-dp", .data =3D &rk3288_dp },
> > >  	{.compatible =3D "rockchip,rk3399-edp", .data =3D &rk3399_edp },
> > > +	{.compatible =3D "rockchip,rk3588-edp", .data =3D &rk3588_edp },
> > >  	{}
> > >  };
> > >  MODULE_DEVICE_TABLE(of, rockchip_dp_dt_ids);
> > > diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/an=
alogix_dp.h
> > > index 6002c5666031..54086cb2d97d 100644
> > > --- a/include/drm/bridge/analogix_dp.h
> > > +++ b/include/drm/bridge/analogix_dp.h
> > > @@ -15,11 +15,12 @@ enum analogix_dp_devtype {
> > >  	EXYNOS_DP,
> > >  	RK3288_DP,
> > >  	RK3399_EDP,
> > > +	RK3588_EDP,
> > >  };
> > >  =

> > >  static inline bool is_rockchip(enum analogix_dp_devtype type)
> > >  {
> > > -	return type =3D=3D RK3288_DP || type =3D=3D RK3399_EDP;
> > > +	return type =3D=3D RK3288_DP || type =3D=3D RK3399_EDP || type =3D=
=3D RK3588_EDP;
> > >  }
> > >  =

> > >  struct analogix_dp_plat_data {
> > =

> > =

> =

> =

> =

> =


-- =

With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
