Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20808C5DF6D
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 10:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DbvZ+OmpwaQbJstZpnh6yekTvC/XnUlwIWNHsbimtBI=; b=Y5oTymdtZxBaxQ
	8Z+Y731h2DtdBLaMeSYwJ18JoQVWx/cz0z1IXqvjmfKZnBVIpd007oKrolF4AUz+mOKts6qnVIy38
	qm6rw2lANbVQr01KfotmD5tEBP71lH63cvYHE4V/R6NIb+xzPilP8bGE0T+MqQ6HmOj7Za9Wniygk
	L5XuVpOBbgr5nJ/KebK06z0abXfNm2RQw52Bij5cx77ujifCfed7Y72r23xIi9QZVAYvxjd3kHTRi
	8EVASH3euCxd0qCvbNJzZ/U2CrZnPzBntb/Eg1ngquuQH7O11/TP59l1RRpjNaXBx4kYNMAEB/Prd
	q2o3J//gm6ixmqhIqZUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwdCB-00000009Tge-2wi9;
	Wed, 19 Aug 2026 10:06:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwdCA-00000009TgD-3B0A;
	Wed, 19 Aug 2026 10:06:54 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 82C4C60A59;
	Wed, 19 Aug 2026 10:06:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4C8A1F000E9;
	Wed, 19 Aug 2026 10:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787134013;
	bh=1WYn3c161YZqw3fFtuIGc8EghhdEQghHW6rnKSB7sxc=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc;
	b=gAQdG2YpwkhluiX/Prxa6DtqdZ8Kq6BX4zzVJ5JwnkS+vXEYDgukALQ6n3LzOEk36
	 SLeeO0Zf07FOF84TyXbP6vMtDCn4uP7J4lpJgYbLP88vGT6lSG2piv1G+hsAWtR3f2
	 b7dM9nfIUrL7yT5vt0cBDVA8EZxyloS25XCYNJLBLkc3HbnTfnQ3V1js1Gj8MGp+WI
	 Q/gUiJGbcZNsuKkCskKZN1UW3gsn7pXc/32zgvy009ULGSpcFvRTf3J/mKwW8I+9YE
	 Zlt/tcvrqJ6vjT/TqRmd2cCBHdbsLnGgG+6OCex47bGseObwKyrvccANBOpc4gmgYB
	 QbBJxgeYj/IiQ==
Message-ID: <9a87ecb22b23e51d3b755d8591bbd0f9@kernel.org>
Date: Wed, 19 Aug 2026 10:06:50 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH v10 05/69] drm/display: bridge_connector: Convert to
 drmm_connector_hdmi_init()
In-Reply-To: <20260731-dw-hdmi-qp-scramb-v10-5-294364b2cf15@collabora.com>
References: <20260731-dw-hdmi-qp-scramb-v10-5-294364b2cf15@collabora.com>
Cc: dri-devel@lists.freedesktop.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, "Algea
 Cao" <algea.cao@rock-chips.com>, "Andrzej Hajda" <andrzej.hajda@intel.com>, "Andy
 Yan" <andy.yan@rock-chips.com>, "Chen-Yu Tsai" <wens@kernel.org>, "Daniel
 Stone" <daniels@collabora.com>, "Dave Stevenson" <dave.stevenson@raspberrypi.com>, "David
 Airlie" <airlied@gmail.com>, "Diederik de Haas" <diederik@cknow-tech.com>,
 =?utf-8?b?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, "Jonas
 Karlman" <jonas@kwiboo.se>, "Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>, "Liu
 Ying" <victor.liu@nxp.com>, "Luca Ceresoli" <luca.ceresoli@bootlin.com>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maud Spierings" <maud_spierings@hotmail.com>, "Maxime
 Ripard" <mripard@kernel.org>, =?utf-8?b?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, "Neil
 Armstrong" <neil.armstrong@linaro.org>, "Phong LE" <ple@baylibre.com>, "Raspberry
 Pi Kernel Maintenance" <kernel-list@raspberrypi.com>, "Robert Foss" <rfoss@kernel.org>, "Samuel
 Holland" <samuel@sholland.org>, "Sandy Huang" <hjc@rock-chips.com>, "Simona
 Vetter" <simona@ffwll.ch>, "Thomas Zimmermann" <tzimmermann@suse.de>
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, 31 Jul 2026 19:19:12 +0300, Cristian Ciocaltea wrote:
> Switch drm_bridge_connector to the new drmm_connector_hdmi_init()
> signature.  The vendor, product, supported_formats and max_bpc values
> now live in struct drm_connector_hdmi_funcs instead of being passed as
> separate arguments.  This allows future HDMI 2.x capabilities to be
> plumbed without growing the function's argument list.
> 
> [ ... ]

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
