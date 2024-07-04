Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BE16C3271F
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 09:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ooyH+CMZoS2DC2VALK06W8ZikRVaZecM7lrQJz6KlO4=; b=S15EF0n8KqYwML2VByW3YFKWIH
	3AJf5D7v4F5Fu7kw1TBifUWd+rsbqmLi1XPrNFSyTHH6Lz2It/8gZ5zX66XPxER6pfru3q6LtrwgW
	tc1bLYhVEDhQLV6B+q6eOue86FR319pXiqe8Z46q/dBPSuFR7QBxHN5nweS2Q/z/e8m9I3zqPLhlK
	jjkiVIy3imJekXmh5h8QvtOYfr7kvuOgl071b9MMBNdsUyGLV4AZGyYvVa2NFivbxjPamDFDtoo0b
	Wkz9Ejxrt1cnaSx9oNkJMzwz7+0fPkrLRUkMQ+CKexxcX/UbvyNSPSa4ybTdfFSKd5V3aWIhIjOYl
	PuHZgcYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPISu-0000000ChtS-2TqS;
	Thu, 04 Jul 2024 09:09:20 +0000
Received: from out-179.mta1.migadu.com ([95.215.58.179])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPISr-0000000Chru-2Q3b
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jul 2024 09:09:19 +0000
X-Envelope-To: dri-devel@lists.freedesktop.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720084151;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=KC61pWdXwZrmIIucHf8/SOh6wlKbm/uUH0pdpGEOCRg=;
	b=KpyxZLqOAG/5dsv1nUoc3OjUQ2JVIikIYzIoAH1VK6Lqw/gGTOFopP8F+FkJgxR47ogz+b
	I2W3qQvXVMBpSWd2ivT4+6XiZ00aglhJg6UIPf3sg1TV1dNoavpm7BUHloQGQsHI2hC1Px
	QUAbZlr31vlhMDjtPE/X227+/Q1vpdIPM+QjOubdPBCn2M9ocxnwwpP0wsW1xNbGt95mG5
	ek8W7o5Z4HIK1zFJQUIT0WoohTPlRcwpOz1/aFS6xkvGMv0CsOm0+qseBe6SFySRQJXazm
	p+g3WQhxeFuYo41+XcNv6aVX3yMjI5G6vDYRB/NQON97wqD4pqUiFCLfqEGxBg==
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: kernel@pengutronix.de
X-Envelope-To: andy.yan@rock-chips.com
X-Envelope-To: benjamin.gaignard@collabora.com
X-Envelope-To: michael.riesch@wolfvision.net
X-Envelope-To: hjc@rock-chips.com
X-Envelope-To: heiko@sntech.de
X-Envelope-To: pgwipeout@gmail.com
X-Envelope-To: s.hauer@pengutronix.de
X-Envelope-To: dmitry.osipenko@collabora.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>
Subject: Re: [PATCH v11 09/24] drm/rockchip: dw_hdmi: add regulator support
Date: Thu, 04 Jul 2024 11:09:00 +0200
Message-ID: <16078476.GIfNKF0EQE@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20220422072841.2206452-10-s.hauer@pengutronix.de>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-10-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_020917_783166_94A02E42 
X-CRM114-Status: GOOD (  24.12  )
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
Content-Type: multipart/mixed; boundary="===============4879834592265127960=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4879834592265127960==
Content-Type: multipart/signed; boundary="nextPart1778036.H1nxkmP1m4";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart1778036.H1nxkmP1m4
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Thu, 04 Jul 2024 11:09:00 +0200
Message-ID: <16078476.GIfNKF0EQE@bagend>
Organization: Connecting Knowledge
In-Reply-To: <20220422072841.2206452-10-s.hauer@pengutronix.de>
MIME-Version: 1.0

On Friday, 22 April 2022 09:28:26 CEST Sascha Hauer wrote:
> The RK3568 has HDMI_TX_AVDD0V9 and HDMI_TX_AVDD_1V8 supply inputs needed
> for the HDMI port. add support for these to the driver for boards which
> have them supplied by switchable regulators.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 41 +++++++++++++++++++--
>  1 file changed, 38 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c index
> b64cc62c7b5af..fe4f9556239ac 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
> @@ -9,6 +9,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/phy/phy.h>
>  #include <linux/regmap.h>
> +#include <linux/regulator/consumer.h>
> 
>  #include <drm/bridge/dw_hdmi.h>
>  #include <drm/drm_edid.h>
> @@ -76,6 +77,8 @@ struct rockchip_hdmi {
>  	struct clk *ref_clk;
>  	struct clk *grf_clk;
>  	struct dw_hdmi *hdmi;
> +	struct regulator *avdd_0v9;
> +	struct regulator *avdd_1v8;
>  	struct phy *phy;
>  };
> 
> @@ -226,6 +229,14 @@ static int rockchip_hdmi_parse_dt(struct rockchip_hdmi
> *hdmi) return PTR_ERR(hdmi->grf_clk);
>  	}
> 
> +	hdmi->avdd_0v9 = devm_regulator_get(hdmi->dev, "avdd-0v9");
> +	if (IS_ERR(hdmi->avdd_0v9))
> +		return PTR_ERR(hdmi->avdd_0v9);
> +
> +	hdmi->avdd_1v8 = devm_regulator_get(hdmi->dev, "avdd-1v8");
> +	if (IS_ERR(hdmi->avdd_1v8))
> +		return PTR_ERR(hdmi->avdd_1v8);
> +
>  	return 0;
>  }
> 
> @@ -566,11 +577,23 @@ static int dw_hdmi_rockchip_bind(struct device *dev,
> struct device *master, return ret;
>  	}
> 
> +	ret = regulator_enable(hdmi->avdd_0v9);
> +	if (ret) {
> +		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd0v9: 
%d\n", ret);
> +		goto err_avdd_0v9;
> +	}
> +
> +	ret = regulator_enable(hdmi->avdd_1v8);
> +	if (ret) {
> +		DRM_DEV_ERROR(hdmi->dev, "failed to enable avdd1v8: 
%d\n", ret);
> +		goto err_avdd_1v8;
> +	}
> +
>  	ret = clk_prepare_enable(hdmi->ref_clk);
>  	if (ret) {
>  		DRM_DEV_ERROR(hdmi->dev, "Failed to enable HDMI 
reference clock: %d\n",
>  			      ret);
> -		return ret;
> +		goto err_clk;
>  	}
> 
>  	if (hdmi->chip_data == &rk3568_chip_data) {
> @@ -594,10 +617,19 @@ static int dw_hdmi_rockchip_bind(struct device *dev,
> struct device *master, */
>  	if (IS_ERR(hdmi->hdmi)) {
>  		ret = PTR_ERR(hdmi->hdmi);
> -		drm_encoder_cleanup(encoder);
> -		clk_disable_unprepare(hdmi->ref_clk);
> +		goto err_bind;
>  	}
> 
> +	return 0;
> +
> +err_bind:
> +	clk_disable_unprepare(hdmi->ref_clk);
> +	drm_encoder_cleanup(encoder);
> +err_clk:
> +	regulator_disable(hdmi->avdd_1v8);
> +err_avdd_1v8:
> +	regulator_disable(hdmi->avdd_0v9);
> +err_avdd_0v9:
>  	return ret;
>  }
> 
> @@ -608,6 +640,9 @@ static void dw_hdmi_rockchip_unbind(struct device *dev,
> struct device *master,
> 
>  	dw_hdmi_unbind(hdmi->hdmi);
>  	clk_disable_unprepare(hdmi->ref_clk);
> +
> +	regulator_disable(hdmi->avdd_1v8);
> +	regulator_disable(hdmi->avdd_0v9);
>  }
> 
>  static const struct component_ops dw_hdmi_rockchip_ops = {

Is it possible to probe for those avdd_0v9 and avdd_1v8 regulators only on 
devices that should have them?

On a Rock64 (rk3328), but probably for all VOP1 devices, they're not present 
and that results in the following warnings:
dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using dummy regulator
dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, using dummy regulator

And those get repeated a number of times. In my last 6.10-rc5 boot it was 5 
each and in my last 6.10-rc6 boot it was 9 each. It seems the number varies 
per boot and is not connected to the specific kernel version.

In [1] I got 36 "dummy regulator" warnings, but some were from others.

[1] https://lore.kernel.org/linux-rockchip/2528743.FZeJfPzi8P@bagend/

Cheers,
  Diederik
--nextPart1778036.H1nxkmP1m4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZoZmrAAKCRDXblvOeH7b
bpE6AP9JmF962eoq9QTZo9Unls/1Ob+XfH95r6BWNtb34b9xSgD/Yeq7kP4RyaXH
HYDpxbMk7ZRrqIBWNLKRKU7cII3f0AU=
=g+Dz
-----END PGP SIGNATURE-----

--nextPart1778036.H1nxkmP1m4--





--===============4879834592265127960==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4879834592265127960==--




