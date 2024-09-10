Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7DD1EDE9AD
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 19:08:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YytK4BAyjDPSgNIiy0H4RBTQrbdSG/5UlznBYN17I6E=; b=FYvg3VRAKzFaWW
	WeGuqmzfPWyHovvm/1zQuVKsZ5ROQza8CTPHc01gouInQ4+Wrk0BxZTBBHpiLU5/n47ZbxmErfROX
	icRjVJPIF6fZH8bq4YU0FlQxqd3mJlGOSqDAkD+SlzOo3QQTB5HGpL3XjZkcmrdr1FyNkbaA0tM1I
	UnaVMPdmpNgikJ4y4nf/7PnLFKNRe0PAudqK3LKsd1zDAD15ZbnbTBZ3lqtuTE77O7XSRBsxEphXv
	mQF0yRLLajUHsWxy6yYKY/ZbQmgRm7loXMRK2MkUasxbTZePD+ikrGQ5bz7MaXgCyTwIO2X+yANec
	0oXvaj+5lmxXRUCpu0pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so6Db-00000006qSf-3Bur;
	Tue, 10 Sep 2024 19:08:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1so6C7-00000006q0l-3KxJ;
	Tue, 10 Sep 2024 19:06:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=ChL/YEahALI4OeYSLmEr7fBrkTltEQI0iMrMHT81QuU=; b=TVPqYnYthS2I29wCxwNXXM0YdA
	U1NvRPJPMQcaART58a7jWuA+lDhRIwnQe3C7R1Lwj9Vjo2FVA667DBIx902lcf40SnfF3OvWf629j
	+VFFytIrLhw2VxbkDoPoq0EF5ySWnV/x4V3thix2tixCliiQfhVFGyNT7thCwypi6AjkQ2mfG7AJC
	uOIA3yyQ1S9dRyXxbyjmApbcJHVwdF73Iy45QsSHaeUtP/31HJye/lWhxrmcQVL6DFIEot0SaJFSW
	As9ZP4Rhy6mNAs9eTQUuqBs2boAb+vMqbsoKRD+D0yndIAUVPBNhWYJxYUz25dz3pGTMZ772MW4pZ
	l8JWwkHw==;
Received: from i53875a02.versanet.de ([83.135.90.2] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1so6Ba-0007jv-So; Tue, 10 Sep 2024 21:05:58 +0200
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
 Sascha Hauer <s.hauer@pengutronix.de>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH v6 3/3] drm/rockchip: Add basic RK3588 HDMI output support
Date: Tue, 10 Sep 2024 21:08:26 +0200
Message-ID: <2376712.1SvkZsmPdQ@diego>
In-Reply-To: <20240906-b4-rk3588-bridge-upstream-v6-3-a3128fb103eb@collabora.com>
References: <20240906-b4-rk3588-bridge-upstream-v6-0-a3128fb103eb@collabora.com>
 <20240906-b4-rk3588-bridge-upstream-v6-3-a3128fb103eb@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_120631_876803_A7246721 
X-CRM114-Status: GOOD (  20.30  )
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

Am Freitag, 6. September 2024, 03:17:42 CEST schrieb Cristian Ciocaltea:
> The RK3588 SoC family integrates the newer Synopsys DesignWare HDMI 2.1
> Quad-Pixel (QP) TX controller IP and a HDMI/eDP TX Combo PHY based on a
> Samsung IP block.
> 
> Add just the basic support for now, i.e. RGB output up to 4K@60Hz,
> without audio, CEC or any of the HDMI 2.1 specific features.
> 
> Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

[...]

> diff --git a/drivers/gpu/drm/rockchip/Makefile b/drivers/gpu/drm/rockchip/Makefile
> index 3ff7b21c0414..3eab662a5a1d 100644
> --- a/drivers/gpu/drm/rockchip/Makefile
> +++ b/drivers/gpu/drm/rockchip/Makefile
> @@ -11,6 +11,7 @@ rockchipdrm-$(CONFIG_ROCKCHIP_VOP) += rockchip_drm_vop.o rockchip_vop_reg.o

> +static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
> +				    void *data)
> +{
> +	static const char * const clk_names[] = {
> +		"pclk", "earc", "aud", "hdp", "hclk_vo1",
> +		"ref" /* keep "ref" last */
> +	};

[...]

> +	for (i = 0; i < ARRAY_SIZE(clk_names); i++) {
> +		clk = devm_clk_get_enabled(hdmi->dev, clk_names[i]);
> +
> +		if (IS_ERR(clk)) {
> +			ret = PTR_ERR(clk);
> +			if (ret != -EPROBE_DEFER)
> +				drm_err(hdmi, "Failed to get %s clock: %d\n",
> +					clk_names[i], ret);
> +			return ret;
> +		}
> +	}
> +	hdmi->ref_clk = clk;

How about using devm_clk_bulk_get_all_enable() for everything except the
refclk and a separate call to devm_clk_get_enabled() for that refclk .

That hdmi->ref_clk just accidentially falls out of that loop at the end
looks somewhat strange, so getting and keeping that refclk
separately would make this look cleaner.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
