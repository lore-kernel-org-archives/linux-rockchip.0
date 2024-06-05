Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B7D0C25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 14:49:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajTSo0Uj3Oa1aENRWVIcCrfjZhh9njWuMInNiz7n7+4=; b=l8RXVHpWKmBCYb
	0+Rvzwr05Agf0jWT91rWNx3VzR0J7U/ynSv5d5Vj1IoRBjLpdK/BBj8eiV3L5XeQqHLeoCnL2nfe1
	dtoZtVVoKtuDoO2KEiDWeMyH7wAKIv7XJPxRQ/NOmrQ39n9QLU7bzqJIS7wK1VHPtpY/HlOXsDqrz
	jtegh4N9w2pVIv4IwXbPbOv3eJx0lCGYhfVouwTuhqFTemMYCidIQAgYukg5AXz8j/AtMQ9NERGyW
	spNILuYV0MMydP/A0sBgCjbvtZRvu2yrk07kI39mXYGrvYdkTrzr32vW0QaknorzX8I4/gFcaY9DL
	3GSUem4eDOwAXmqkxuUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sErx8-00000006VMc-22ux;
	Wed, 05 Jun 2024 14:49:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sErx4-00000006VJv-05ji;
	Wed, 05 Jun 2024 14:49:23 +0000
Received: from i53875b65.versanet.de ([83.135.91.101] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sErwP-00012r-Mi; Wed, 05 Jun 2024 16:48:41 +0200
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
Date: Wed, 05 Jun 2024 16:48:40 +0200
Message-ID: <2554679.TLnPLrj5Ze@diego>
In-Reply-To: <20240601-b4-rk3588-bridge-upstream-v1-13-f6203753232b@collabora.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <20240601-b4-rk3588-bridge-upstream-v1-13-f6203753232b@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_074922_066415_2F6CD0D2 
X-CRM114-Status: GOOD (  26.07  )
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

Am Samstag, 1. Juni 2024, 15:12:35 CEST schrieb Cristian Ciocaltea:
> The Synopsys DesignWare HDMI 2.1 Quad-Pixel (QP) TX controller supports
> the following features, among others:
> 
> * Fixed Rate Link (FRL)
> * 4K@120Hz and 8K@60Hz video modes
> * Variable Refresh Rate (VRR) including Quick Media Switching (QMS), aka
>   Cinema VRR
> * Fast Vactive (FVA), aka Quick Frame Transport (QFT)
> * SCDC I2C DDC access
> * TMDS Scrambler enabling 2160p@60Hz with RGB/YCbCr4:4:4
> * YCbCr4:2:0 enabling 2160p@60Hz at lower HDMI link speeds
> * Multi-stream audio
> * Enhanced Audio Return Channel (EARC)
> 
> Add driver to enable basic support, i.e. RGB output up to 4K@60Hz,
> without audio, CEC or any HDMI 2.1 specific features.
> 
> Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/bridge/synopsys/Makefile     |   2 +-
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 787 +++++++++++++++++++++++++
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h | 831 +++++++++++++++++++++++++++
>  include/drm/bridge/dw_hdmi.h                 |   8 +
>  4 files changed, 1627 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/Makefile b/drivers/gpu/drm/bridge/synopsys/Makefile
> index ce715562e9e5..8354e4879f70 100644
> --- a/drivers/gpu/drm/bridge/synopsys/Makefile
> +++ b/drivers/gpu/drm/bridge/synopsys/Makefile

> +static int dw_hdmi_qp_i2c_read(struct dw_hdmi *hdmi,
> +			       unsigned char *buf, unsigned int length)
> +{
> +	struct dw_hdmi_i2c *i2c = hdmi->i2c;
> +	int stat;
> +
> +	if (!i2c->is_regaddr) {
> +		dev_dbg(hdmi->dev, "set read register address to 0\n");
> +		i2c->slave_reg = 0x00;
> +		i2c->is_regaddr = true;
> +	}
> +
> +	while (length--) {
> +		reinit_completion(&i2c->cmp);
> +
> +		dw_hdmi_qp_mod(hdmi, i2c->slave_reg++ << 12, I2CM_ADDR,
> +			       I2CM_INTERFACE_CONTROL0);
> +
> +		dw_hdmi_qp_mod(hdmi, I2CM_FM_READ, I2CM_WR_MASK,
> +			       I2CM_INTERFACE_CONTROL0);

Somehow the segment handling is present in the rest of the i2c code here, but
not the actual handling for reads.

The vendor-kernel does:

-               dw_hdmi_qp_mod(hdmi, I2CM_FM_READ, I2CM_WR_MASK,
-                              I2CM_INTERFACE_CONTROL0);
+               if (i2c->is_segment)
+                       dw_hdmi_qp_mod(hdmi, I2CM_EXT_READ, I2CM_WR_MASK,
+                                      I2CM_INTERFACE_CONTROL0);
+               else
+                       dw_hdmi_qp_mod(hdmi, I2CM_FM_READ, I2CM_WR_MASK,
+                                      I2CM_INTERFACE_CONTROL0);

Without this change, connecting to a DVI display does not work, and
reading the EDID ends in the "i2c read error" below.

Adding the segment handling as above makes the DVI connection
work (as it does in the vendor-kernel).

So it would be nice if you could maybe incorporate this in the next version?


Thanks
Heiko


> +
> +		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
> +		if (!stat) {
> +			dev_err(hdmi->dev, "i2c read timed out\n");
> +			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
> +			return -EAGAIN;
> +		}
> +
> +		/* Check for error condition on the bus */
> +		if (i2c->stat & I2CM_NACK_RCVD_IRQ) {
> +			dev_err(hdmi->dev, "i2c read error\n");
> +			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
> +			return -EIO;
> +		}
> +
> +		*buf++ = dw_hdmi_qp_read(hdmi, I2CM_INTERFACE_RDDATA_0_3) & 0xff;
> +		dw_hdmi_qp_mod(hdmi, 0, I2CM_WR_MASK, I2CM_INTERFACE_CONTROL0);
> +	}
> +
> +	i2c->is_segment = false;
> +
> +	return 0;
> +}




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
