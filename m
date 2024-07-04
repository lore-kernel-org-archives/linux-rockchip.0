Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1304C3065C
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 10:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b11O/Uo2fdtw7A6g4j4vNx1EoJido4hGZmTF+HUuNso=; b=HttxX+kNwr1zxd
	dYuFoyVhZCShjSS8sWaz/NZr/LRnq6BmR4Rklua+IRPnKc4BgZNMcaJ2FwFNxPKxCq5lSn6Oc8Apf
	dpIR6JacRvnWLtJtJQ7T6iOIun9sPYjod41ytFzzAvBsY6ageG1AHGdZdPlXDGzX8JJr4mdLg6Va+
	1jPNE3AFAFdN+SV4YAUWYkEn7QKXZf2Ym+OL4SIMyTdf9PPQay+dT6MM7I2dyrH1dfiRpP1txcQZg
	dlFm7zyu8aL5TWaxUkXDMqFpe2OMecO3eH22EYl7RYwFA+7iazfKvgL3HHsOu7RDV+KpufZQ/Ohfs
	jfesLHrQNsmCgDSjP9/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPJGy-0000000CoZj-0Pgv;
	Thu, 04 Jul 2024 10:01:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPJGj-0000000CoXP-0kxO;
	Thu, 04 Jul 2024 10:00:50 +0000
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sPJGe-0007a4-4D; Thu, 04 Jul 2024 12:00:44 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
Subject: Re: [PATCH v11 09/24] drm/rockchip: dw_hdmi: add regulator support
Date: Thu, 04 Jul 2024 12:00:43 +0200
Message-ID: <3615926.LM0AJKV5NW@diego>
In-Reply-To: <16078476.GIfNKF0EQE@bagend>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-10-s.hauer@pengutronix.de>
 <16078476.GIfNKF0EQE@bagend>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_030049_254956_58562893 
X-CRM114-Status: GOOD (  29.61  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Donnerstag, 4. Juli 2024, 11:09:00 CEST schrieb Diederik de Haas:
> On Friday, 22 April 2022 09:28:26 CEST Sascha Hauer wrote:
> > The RK3568 has HDMI_TX_AVDD0V9 and HDMI_TX_AVDD_1V8 supply inputs needed
> > for the HDMI port. add support for these to the driver for boards which
> > have them supplied by switchable regulators.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> > ---
> >  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 41 +++++++++++++++++++--
> >  1 file changed, 38 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c index
> > b64cc62c7b5af..fe4f9556239ac 100644
> > --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> > @@ -9,6 +9,7 @@
> >  #include <linux/platform_device.h>
> >  #include <linux/phy/phy.h>
> >  #include <linux/regmap.h>
> > +#include <linux/regulator/consumer.h>
> > 
> >  #include <drm/bridge/dw_hdmi.h>
> >  #include <drm/drm_edid.h>
> > @@ -76,6 +77,8 @@ struct rockchip_hdmi {
> >  	struct clk *ref_clk;
> >  	struct clk *grf_clk;
> >  	struct dw_hdmi *hdmi;
> > +	struct regulator *avdd_0v9;
> > +	struct regulator *avdd_1v8;
> >  	struct phy *phy;
> >  };
> > 
> > @@ -226,6 +229,14 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi
> > *hdmi) return PTR_ERR(hdmi->grf_clk);
> >  	}
> > 
> > +	hdmi->avdd_0v9 = devm_regulator_get(hdmi->dev, "avdd-0v9");
> > +	if (IS_ERR(hdmi->avdd_0v9))
> > +		return PTR_ERR(hdmi->avdd_0v9);
> > +
> > +	hdmi->avdd_1v8 = devm_regulator_get(hdmi->dev, "avdd-1v8");
> > +	if (IS_ERR(hdmi->avdd_1v8))
> > +		return PTR_ERR(hdmi->avdd_1v8);
> > +
> >  	return 0;
> >  }
> > 
> > @@ -566,11 +577,23 @@ static int dw_hdmi_rockchip_bind(struct device *dev,
> > struct device *master, return ret;
> >  	}
> > 
> > +	ret = regulator_enable(hdmi->avdd_0v9);
> > +	if (ret) {
> > +		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd0v9: 
> %d\n", ret);
> > +		goto err_avdd_0v9;
> > +	}
> > +
> > +	ret = regulator_enable(hdmi->avdd_1v8);
> > +	if (ret) {
> > +		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd1v8: 
> %d\n", ret);
> > +		goto err_avdd_1v8;
> > +	}
> > +
> >  	ret = clk_prepare_enable(hdmi->ref_clk);
> >  	if (ret) {
> >  		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI 
> reference clock: %d\n",
> >  			      ret);
> > -		return ret;
> > +		goto err_clk;
> >  	}
> > 
> >  	if (hdmi->chip_data == &rk3568_chip_data) {
> > @@ -594,10 +617,19 @@ static int dw_hdmi_rockchip_bind(struct device *dev,
> > struct device *master, */
> >  	if (IS_ERR(hdmi->hdmi)) {
> >  		ret = PTR_ERR(hdmi->hdmi);
> > -		drm_encoder_cleanup(encoder);
> > -		clk_disable_unprepare(hdmi->ref_clk);
> > +		goto err_bind;
> >  	}
> > 
> > +	return 0;
> > +
> > +err_bind:
> > +	clk_disable_unprepare(hdmi->ref_clk);
> > +	drm_encoder_cleanup(encoder);
> > +err_clk:
> > +	regulator_disable(hdmi->avdd_1v8);
> > +err_avdd_1v8:
> > +	regulator_disable(hdmi->avdd_0v9);
> > +err_avdd_0v9:
> >  	return ret;
> >  }
> > 
> > @@ -608,6 +640,9 @@ static void dw_hdmi_rockchip_unbind(struct device *dev,
> > struct device *master,
> > 
> >  	dw_hdmi_unbind(hdmi->hdmi);
> >  	clk_disable_unprepare(hdmi->ref_clk);
> > +
> > +	regulator_disable(hdmi->avdd_1v8);
> > +	regulator_disable(hdmi->avdd_0v9);
> >  }
> > 
> >  static const struct component_ops dw_hdmi_rockchip_ops = {
> 
> Is it possible to probe for those avdd_0v9 and avdd_1v8 regulators only on 
> devices that should have them?
> 
> On a Rock64 (rk3328), but probably for all VOP1 devices, they're not present 
> and that results in the following warnings:
> dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using dummy regulator
> dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, using dummy regulator

counter-argument, why not define them in the dts?
I.e. looking at the rock64 schematics, you want the dvideo_avdd_1v8 (from
LDO1) and dvideo_avdd_1v0 (from LDO3) if I'm not mistaken. Why this stuff
is called dvideo and not hdmi in there I have no clue ;-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
