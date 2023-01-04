Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08D9BC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Jan 2023 12:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r8w7m9iZnpB1lAJarTAetApvfZtp6gZzFgg2v7d/M9Y=; b=JPPyMEsMBMKT5y
	5D+0LligdXDretfIPWG6m5TcFKNuW3JviEfTZL+fX7dVSbEzTri+HFsIiHwAGOBHgqzLFCXwmnuWL
	DXzwhh/fGKAiil7uE5LWc/gaZPVdLvACkqT1XuwwmpoLszPoyuyCBeQQOUl3aRgwfwHJhjc75nm6I
	Icab4oIBcYogS0miiZSePkro0BDn4gc3oofznEhMiCb8Snd5vgflU+yJavKHixGNeJBvkXNdZl1AA
	aOF1/yJ4rW51TSvG8MszNXG9TTk5oGiSONEwVL0Enx9088s9i1LVtBxSao6bqqQKqIyUk3nOU1UnY
	1B/k2bSdFpo3so4lB0Og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD3Ez-0099bp-4Z; Wed, 04 Jan 2023 12:51:34 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pD342-0095AF-H2
	for linux-rockchip@lists.infradead.org; Wed, 04 Jan 2023 12:40:16 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 84FCB5C01B4;
	Wed,  4 Jan 2023 07:40:13 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Wed, 04 Jan 2023 07:40:13 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:cc:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1672836013; x=
	1672922413; bh=gdQGu+69jkJCD5m36m0FsHULAMVy6bJCZt8Vjz//wA0=; b=b
	o8GBFbKrBcDEzrgnYODD4e+7NvnX1GZYZUEwsOngnIVUbKqIgtr7AACOw1vQeZry
	tz5dqLZCJg0lK5cBUZW4ufV2lR9kD2JtC1Jd1ZCYabVIJ2TYSUQquaDf8+DTNsZ4
	OCaWn+oAET88j2A09/CBbK++mesngUyzoL3VQEwEshUYcwynjSeMYf2E8fic0mj+
	138FSGfyeIyD0rnpZqruCc8ShWEvxD52VRuDps3ei5F6oAbbY9yFnC7oRkyVGmxt
	SJbVJtaEhf2oTLK5sJNqQ1LZ+oKfIOqyUGaqqUT8eujPwmKIp6DAeS+k81RlfLCp
	Cm3FqYO8QhYd5OtMtahuQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1672836013; x=
	1672922413; bh=gdQGu+69jkJCD5m36m0FsHULAMVy6bJCZt8Vjz//wA0=; b=Y
	oecdIStarLJpMj4nNaSjAXRYuMhkhS4soe26f0V6suGDoE769kIp1htRMrF7DQsh
	+nkkEBQ2bHPN1vO6g8OmR/JfiR3tUevIN/mkbnw6+XnGAixMNygjfWwXfR+yLB8s
	AUt0SMCJyS+8DwXviw/gqPt2GajcsA/5bfLthYs/wbXa1ihwD6x0vr+DMHVx1ZSX
	jiRzxVJWhoPy7KrHSB0y6rPcFRV/e6A+J77z1j6tbyBy/XWA4e+nznz/KKC2Uc8J
	yBBMgwE3z79ywE7nKyGkjPfoFifaNgWgGOCGbbmeTU2h6Gs/OnrWBq5Cq3UYyH80
	X7fjKV3R17x4smlMDNO/g==
X-ME-Sender: <xms:rXO1Y959pzKVudUeDUsD8CEA_TkwckhxEKzbDj_6R4fD_un-U3rk8g>
    <xme:rXO1Y64nBOHa8HFAeyluzvzZomVH52uc375DU2Sjyh0hQ1fo1DUiT9-UMJ-n4WGIZ
    uuDq-TQE5hxMhImcBE>
X-ME-Received: <xmr:rXO1Y0eRM_o2-_78p4VmxsEbuRRLQuOxvBubiwWtROe7JDS6TporbB7ooyzFxxm0cbs0jswzrAqYOZ1Cpm0u-vXLPDelI8xB0ucnz2RUaqAbDg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrjeeigdegvdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvvefukfhfgggtugfgjgesthhqredttddtvdenucfhrhhomhepofgrgihi
    mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
    htthgvrhhnpeetgfelgefggeekkefggfeludeiudffjeffgeevveekjedukedtudeuteef
    teefgfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:rXO1Y2IR0qCK07R9DD9lSoqDdwf66H13wy2WyMKhIyj4jQz0Sey3zw>
    <xmx:rXO1YxI3q3O8mzFjpgziO7Mb4Nw2mlsdW7Qap1TWO4uJ5R46Y0aDew>
    <xmx:rXO1Y_w63_SqsGyP8rY3dJXI6WekQvOPFUdqmJjIATiTc-9sJmE4MA>
    <xmx:rXO1YwVgjpkyv38jB4bhJINlMoJsijMn2sgtVAKx2n10NXePMHz4GA>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 4 Jan 2023 07:40:12 -0500 (EST)
Date: Wed, 4 Jan 2023 13:40:10 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
	tzimmermann@suse.de, maarten.lankhorst@linux.intel.com,
	heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
	sam@ravnborg.org, thierry.reding@gmail.com,
	linus.walleij@linaro.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V7 1/4] drm: of: Add drm_of_get_dsi_bus helper function
Message-ID: <20230104124010.6rambtw7mzg7sycv@houat>
References: <20230103190707.104595-1-macroalpha82@gmail.com>
 <20230103190707.104595-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230103190707.104595-2-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_044015_124331_D192B47B 
X-CRM114-Status: GOOD (  19.46  )
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

Hi,

On Tue, Jan 03, 2023 at 01:07:04PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add helper function to find DSI host for devices where DSI panel is not
> a minor of a DSI bus (such as the Samsung AMS495QA01 panel or the
> official Raspberry Pi touchscreen display).
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> ---
>  drivers/gpu/drm/drm_of.c | 62 ++++++++++++++++++++++++++++++++++++++++
>  include/drm/drm_of.h     | 11 +++++++
>  2 files changed, 73 insertions(+)
> 
> diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
> index 7bbcb999bb75..7d89ac164069 100644
> --- a/drivers/gpu/drm/drm_of.c
> +++ b/drivers/gpu/drm/drm_of.c
> @@ -10,6 +10,7 @@
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_encoder.h>
> +#include <drm/drm_mipi_dsi.h>
>  #include <drm/drm_of.h>
>  #include <drm/drm_panel.h>
>  
> @@ -493,3 +494,64 @@ int drm_of_get_data_lanes_count_ep(const struct device_node *port,
>  	return ret;
>  }
>  EXPORT_SYMBOL_GPL(drm_of_get_data_lanes_count_ep);
> +
> +/**
> + * drm_of_get_dsi_bus - find the DSI bus for a given device
> + * @dev: parent device of display (SPI, I2C)
> + * @dsi_host: DSI host to be populated
> + * @info: DSI device info to be updated with correct DSI node

Why aren't we returning the dsi_host through an ERR_PTR? All the DRM
accessors with get return the pointer directly, I'd rather stick to
that.

> + * Given a panel device parented to a non-DSI device, follow the
> + * devicetree to find the correct DSI host node and populate the
> + * dsi_host with the correct host and info with the correct node.

I think we could make that a bit clearer using something like:

Gets parent DSI bus for a DSI device controlled through a bus other than
MIPI-DCS (SPI, I2C, etc.) using the Device Tree.

> + * Returns zero if successful, -EPROBE_DEFER if the DSI host is
> + * found but not available, or -ENODEV otherwise.
> + */

> +int drm_of_get_dsi_bus(struct device *dev,
> +			      struct mipi_dsi_host **dsi_host,
> +			      struct mipi_dsi_device_info *info)

The arguments are not aligned.

Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
