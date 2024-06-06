Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD7A9C25B75
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SOtv5MxFvYsU6ho4NGG5UJsR7MsZeJMhBW8O3HpPw24=; b=C8F1izPrGrNFUC
	DdEtYrDvnUNU/dnCSIkIWfaWW7kzQN62DdjKwxI9zCqROlY7a5azcqU2NDqZzkhmrhBsVxP7J9EGu
	fEJs8ubkPgHwh3DUUtDrexzkivMd/lhDRD1HVQ4jzrzHAFFjBrJhz4Qa+aSGW1L/CWe30ENqsdOO2
	Bw636pjPbcnUxsADyFQh98XBtGYz2IuVYitddZa6hFRE7TGj1jgRdIVA5Tbqc8N5P+2a9fsIuHTGT
	wAT5RBritzlvQ8SncEGxAc1KzS/k9NjGBMdWxJNPovrn4ypI/29dl65h5unulsig1IZqBLDXSLi0I
	Ct+ZKB5GlySdSmZteJuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFABW-00000009MQi-2ca7;
	Thu, 06 Jun 2024 10:17:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFABS-00000009MPS-36j5;
	Thu, 06 Jun 2024 10:17:28 +0000
Received: from i53875b65.versanet.de ([83.135.91.101] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sFAAx-0007vD-35; Thu, 06 Jun 2024 12:16:55 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH 13/14] drm/bridge: synopsys: Add DW HDMI QP TX controller driver
Date: Thu, 06 Jun 2024 12:16:53 +0200
Message-ID: <2491902.uoxibFcf9D@diego>
In-Reply-To: <25ba8753-b7e9-4f6f-a9ad-c5266540939a@collabora.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <2554679.TLnPLrj5Ze@diego>
 <25ba8753-b7e9-4f6f-a9ad-c5266540939a@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_031726_810568_12779E50 
X-CRM114-Status: GOOD (  29.78  )
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

Am Donnerstag, 6. Juni 2024, 11:53:23 CEST schrieb Cristian Ciocaltea:
> On 6/5/24 5:48 PM, Heiko St=FCbner wrote:
> > Am Samstag, 1. Juni 2024, 15:12:35 CEST schrieb Cristian Ciocaltea:
> >> The Synopsys DesignWare HDMI 2.1 Quad-Pixel (QP) TX controller supports
> >> the following features, among others:
> >>
> >> * Fixed Rate Link (FRL)
> >> * 4K@120Hz and 8K@60Hz video modes
> >> * Variable Refresh Rate (VRR) including Quick Media Switching (QMS), a=
ka
> >>   Cinema VRR
> >> * Fast Vactive (FVA), aka Quick Frame Transport (QFT)
> >> * SCDC I2C DDC access
> >> * TMDS Scrambler enabling 2160p@60Hz with RGB/YCbCr4:4:4
> >> * YCbCr4:2:0 enabling 2160p@60Hz at lower HDMI link speeds
> >> * Multi-stream audio
> >> * Enhanced Audio Return Channel (EARC)
> >>
> >> Add driver to enable basic support, i.e. RGB output up to 4K@60Hz,
> >> without audio, CEC or any HDMI 2.1 specific features.
> >>
> >> Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
> >> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> >> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> >> ---
> >>  drivers/gpu/drm/bridge/synopsys/Makefile     |   2 +-
> >>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 787 ++++++++++++++++++=
+++++++
> >>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h | 831 ++++++++++++++++++=
+++++++++
> >>  include/drm/bridge/dw_hdmi.h                 |   8 +
> >>  4 files changed, 1627 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/bridge/synopsys/Makefile b/drivers/gpu/dr=
m/bridge/synopsys/Makefile
> >> index ce715562e9e5..8354e4879f70 100644
> >> --- a/drivers/gpu/drm/bridge/synopsys/Makefile
> >> +++ b/drivers/gpu/drm/bridge/synopsys/Makefile
> > =

> >> +static int dw_hdmi_qp_i2c_read(struct dw_hdmi *hdmi,
> >> +			       unsigned char *buf, unsigned int length)
> >> +{
> >> +	struct dw_hdmi_i2c *i2c =3D hdmi->i2c;
> >> +	int stat;
> >> +
> >> +	if (!i2c->is_regaddr) {
> >> +		dev_dbg(hdmi->dev, "set read register address to 0\n");
> >> +		i2c->slave_reg =3D 0x00;
> >> +		i2c->is_regaddr =3D true;
> >> +	}
> >> +
> >> +	while (length--) {
> >> +		reinit_completion(&i2c->cmp);
> >> +
> >> +		dw_hdmi_qp_mod(hdmi, i2c->slave_reg++ << 12, I2CM_ADDR,
> >> +			       I2CM_INTERFACE_CONTROL0);
> >> +
> >> +		dw_hdmi_qp_mod(hdmi, I2CM_FM_READ, I2CM_WR_MASK,
> >> +			       I2CM_INTERFACE_CONTROL0);
> > =

> > Somehow the segment handling is present in the rest of the i2c code her=
e, but
> > not the actual handling for reads.
> > =

> > The vendor-kernel does:
> > =

> > -               dw_hdmi_qp_mod(hdmi, I2CM_FM_READ, I2CM_WR_MASK,
> > -                              I2CM_INTERFACE_CONTROL0);
> > +               if (i2c->is_segment)
> > +                       dw_hdmi_qp_mod(hdmi, I2CM_EXT_READ, I2CM_WR_MAS=
K,
> > +                                      I2CM_INTERFACE_CONTROL0);
> > +               else
> > +                       dw_hdmi_qp_mod(hdmi, I2CM_FM_READ, I2CM_WR_MASK,
> > +                                      I2CM_INTERFACE_CONTROL0);
> =

> Hmm, for some reason this is not present in the stable-5.10-rock5 branch =

> I've been using as an implementation reference:
> =

> https://github.com/radxa/kernel/blob/stable-5.10-rock5/drivers/gpu/drm/br=
idge/synopsys/dw-hdmi-qp.c#L760
> =

> Is there an updated fork?

I think the radxa code-base is quite old in terms of sdk-version it's based=
 on.
Grabbing a 6.1 branch from Radxa shows it in:
https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr1/drivers/gpu/drm/br=
idge/synopsys/dw-hdmi-qp.c#L995

> > Without this change, connecting to a DVI display does not work, and
> > reading the EDID ends in the "i2c read error" below.
> > =

> > Adding the segment handling as above makes the DVI connection
> > work (as it does in the vendor-kernel).
> > =

> > So it would be nice if you could maybe incorporate this in the next ver=
sion?
> =

> Sure, thanks for pointing this out!
> =

> Cristian
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
