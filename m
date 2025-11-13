Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67D25CD98F6
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Nov 2025 22:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJz0gvL2ebxZivkiJidpNomS1y426/PviCgnrcsoNVI=; b=XJkYTbnXLBZfTM
	2E6kZSofrNy81ZLpSX4SjrfFJHstHOJnzWY7CN1n9l4WftT37Xs5DNiG6UeNFVU/s/31/5y8E6W6T
	AiBykhXqw2YRU/GLNgSYy2Jwd9Pj5WjuEae7iNlVj1D7uzj08Amp3NdYLeiVZEPr0pdRx2uujsiPE
	9x4wQuRyhOvHGdU8vsJcQEUtcrsKtcyedS21zKrga+uVlo4G5rLnnacI3igApRQgH6G9TtHjvGEZz
	64wtkIEQ0yQf3ocPoaNSaegp03oN2U19QChIo7GxGlGLL+y97aWT2CaMXjDSpHr2Or7n3gV8QUVym
	cRzHwvBjbMBRjyeuATkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJfk3-0000000BBTi-3YJ4;
	Thu, 13 Nov 2025 22:24:35 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJfk0-0000000BBSa-1cOX
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Nov 2025 22:24:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1763072669;
	bh=0A7E6p3NyGvGxRZwbuJeOguXiJ/TAcxI4gw35WC8eBU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=bNnsW5w1L4nQ6M9iOKcAXFQjUiKR2YfkTIPtMRbV39ThZ7InueAuUT1nKwbCFUVyP
	 TvW7zfAG6WX75ibRfEaHl/NWPJbjipufjj5id0Qe8nIA2mEEzLTt6ZcQo7mS+/6jlJ
	 5qAqZoAIMsrOfbbSZHQ8xCn1Aqu51EpXoFDFg0AC5IShn1LAzZttY89ZSUgneo8ZXU
	 fQOGxjy7OvcWDWtA2X9lqryhECIQYh71l3shPFMIS6xu7fjiYnVkbh8ulOO3KxEp9g
	 pyuTysqb+Xs2B4O6hTWQ8ou4QtNabnPAilxWe6IJEYkLis7CZn3n2wDAlcgzQz1bu9
	 z7byeOWHmTBcg==
Received: from [192.168.1.90] (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 4C54A17E00B0;
	Thu, 13 Nov 2025 23:24:28 +0100 (CET)
Message-ID: <684723a1-50f4-4645-ab6e-52e69d1fc96a@collabora.com>
Date: Fri, 14 Nov 2025 00:24:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] drm/bridge: dw-hdmi-qp: Add support for missing
 HPD
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org
Cc: mripard@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>, rfoss@kernel.org,
 tzimmermann@suse.de, jonas@kwiboo.se, neil.armstrong@linaro.org,
 heiko@sntech.de, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com,
 dri-devel@lists.freedesktop.org, andrzej.hajda@intel.com,
 andy.yan@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org,
 Laurent.pinchart@ideasonboard.com
References: <20251113192939.30031-1-macroalpha82@gmail.com>
 <20251113192939.30031-3-macroalpha82@gmail.com>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <20251113192939.30031-3-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_142432_607984_78B7F55D 
X-CRM114-Status: GOOD (  23.09  )
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

On 11/13/25 9:29 PM, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the dw-hdmi-qp driver to handle devices with missing
> HPD pins.
> 
> Since in this situation we are now polling for the EDID data via i2c
> change the error message to a debug message when we are unable to
> complete an i2c read, as a disconnected device would otherwise fill
> dmesg with i2c read errors.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c | 32 +++++++++++++++++---
>  1 file changed, 28 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> index 39332c57f2c5..a2b1a4821714 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c
> @@ -145,6 +145,7 @@ struct dw_hdmi_qp {
>  	struct regmap *regm;
>  
>  	unsigned long tmds_char_rate;
> +	bool no_hpd;
>  };
>  
>  static void dw_hdmi_qp_write(struct dw_hdmi_qp *hdmi, unsigned int val,
> @@ -520,6 +521,11 @@ static int dw_hdmi_qp_i2c_read(struct dw_hdmi_qp *hdmi,
>  		i2c->is_regaddr = true;
>  	}
>  
> +	/*
> +	 * Mark errors as debug messages when using no_hpd so no device
> +	 * attached does not fill up dmesg.
> +	 */
> +

Using the *_ratelimited() variant - see below - would make this comment kind of
redundant.  Moreover, you've already explained the rationale behind the change
in the commit description.  Hence I'd rather drop it.

>  	while (length--) {
>  		reinit_completion(&i2c->cmp);
>  
> @@ -535,14 +541,20 @@ static int dw_hdmi_qp_i2c_read(struct dw_hdmi_qp *hdmi,
>  
>  		stat = wait_for_completion_timeout(&i2c->cmp, HZ / 10);
>  		if (!stat) {
> -			dev_err(hdmi->dev, "i2c read timed out\n");
> +			if (hdmi->no_hpd)
> +				dev_dbg(hdmi->dev, "i2c read timed out\n");

I think it's worth switching to dev_dbg_ratelimited() in this case.

> +			else
> +				dev_err(hdmi->dev, "i2c read timed out\n");
>  			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
>  			return -EAGAIN;
>  		}
>  
>  		/* Check for error condition on the bus */
>  		if (i2c->stat & I2CM_NACK_RCVD_IRQ) {
> -			dev_err(hdmi->dev, "i2c read error\n");
> +			if (hdmi->no_hpd)
> +				dev_dbg(hdmi->dev, "i2c read error\n");

Same here.

> +			else
> +				dev_err(hdmi->dev, "i2c read error\n");
>  			dw_hdmi_qp_write(hdmi, 0x01, I2CM_CONTROL0);
>  			return -EIO;
>  		}

[...]

Regardless,

Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
