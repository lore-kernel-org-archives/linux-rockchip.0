Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94DDDC25B78
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jun 2024 20:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDug0CubHb3KgdMVoKXcpze3IFqgjpwnrM6KCCktRGs=; b=FTWUZP7vI3dnrB
	pMPcf5zgkf2OWhL8iwzQzEUC4s9RgC/CakW6kVldcsOgAQjK/DrZG7o6fXoU+oy2uwDLGXsc10UJC
	2HHA/WGsmfywJa1Jjs739AVpR/m3pYKgVCYLYLJpsWLbtABFwOOJfgCr0mU5GaCO8ezXwG1SPbJYb
	bx1Ixxip6wE1fcg/mYdi+MKuH+dIQKOWBM0DYoi36Mzq9qzUioEbn2KFO+svD8Itaji2qVqNt2gPp
	Or2FvStSbwZliAAAoME5lp/mDJTcvfiizoZq492ySTdXk0DmABSxSAPZUxzPPs85a+GJRPms/cEMi
	uQRrZ4QGOBxZNH6gyw4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEayE-00000003jwa-0sLH;
	Tue, 04 Jun 2024 20:41:26 +0000
Received: from mailrelay1-1.pub.mailoutpod3-cph3.one.com ([2a02:2350:5:420::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEay8-00000003juW-2NI9
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Jun 2024 20:41:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=Dk4sfgI36ZWaPJ+eBS/GI/TZ8w55X9bgUEDY5cQtdtU=;
	b=N61vra7CHLZfKe5uIUlYx3GQv9YGIc7bLyEhl3+9zNcLfrg/064TgGMDdyq/ZA10mlYXb06vgNF0h
	 qwxtSmeWRmsmmd3wrCCBBvUY+SFythORAs9pyE4otLatq0n/0MIHh8STbOiAKmU9DUOex9d1E4YSfX
	 x8KwPBxjY/1bPXa3W4ZVzNJZE8vyRU4ysM0VrCOe55RkF7hCRcl+V9ySXs0kbLERYnt8ZjSy6kIePK
	 853Zbg7dZnTvyDX2GrBxleUad6prFsi1lEZKiKL68eW9CCm5QisalqofZTtORQWuI1bSEXtwK7zLcI
	 Xu0tUkNa02dSjD3QS04pgnpBnbZ1OSQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
	 from:date:from;
	bh=Dk4sfgI36ZWaPJ+eBS/GI/TZ8w55X9bgUEDY5cQtdtU=;
	b=r4JvKN3MaF/e09yO6vz7gW/+Vs/xVKV1CvUIVwJnko5Bqds84IFN0/PUeYg4Zdo1itqPMmJMDSrRa
	 fTI/wgXCg==
X-HalOne-ID: c619a21d-22b2-11ef-9886-bf3d7f4c9d3b
Received: from ravnborg.org (2-105-16-150-cable.dk.customer.tdc.net [2.105.16.150])
	by mailrelay1.pub.mailoutpod3-cph3.one.com (Halon) with ESMTPSA
	id c619a21d-22b2-11ef-9886-bf3d7f4c9d3b;
	Tue, 04 Jun 2024 20:41:12 +0000 (UTC)
Date: Tue, 4 Jun 2024 22:41:10 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mark Yao <markyao0591@gmail.com>, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
	Luis de Arquer <ldearquer@gmail.com>,
	Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH 13/14] drm/bridge: synopsys: Add DW HDMI QP TX controller
 driver
Message-ID: <20240604204110.GA84949@ravnborg.org>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <20240601-b4-rk3588-bridge-upstream-v1-13-f6203753232b@collabora.com>
 <20240601143226.GA2003970@ravnborg.org>
 <59519381-2729-4839-9882-65a981a0c551@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <59519381-2729-4839-9882-65a981a0c551@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240604_134121_237582_2893161C 
X-CRM114-Status: GOOD (  21.26  )
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

Hi Cristian.

On Tue, Jun 04, 2024 at 10:32:04PM +0300, Cristian Ciocaltea wrote:
> Hi Sam,
> 
> On 6/1/24 5:32 PM, Sam Ravnborg wrote:
> > Hi Cristian,
> > 
> > a few drive-by comments below.
> > 
> > 	Sam
> > 
> > 
> >> +
> >> +static const struct drm_connector_funcs dw_hdmi_qp_connector_funcs = {
> >> +	.fill_modes = drm_helper_probe_single_connector_modes,
> >> +	.detect = dw_hdmi_connector_detect,
> >> +	.destroy = drm_connector_cleanup,
> >> +	.force = dw_hdmi_qp_connector_force,
> >> +	.reset = drm_atomic_helper_connector_reset,
> >> +	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
> >> +	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
> >> +};
> >> +
> >> +static int dw_hdmi_qp_bridge_attach(struct drm_bridge *bridge,
> >> +				    enum drm_bridge_attach_flags flags)
> >> +{
> >> +	struct dw_hdmi *hdmi = bridge->driver_private;
> >> +
> >> +	if (flags & DRM_BRIDGE_ATTACH_NO_CONNECTOR)
> >> +		return drm_bridge_attach(bridge->encoder, hdmi->next_bridge,
> >> +					 bridge, flags);
> >> +
> >> +	return dw_hdmi_connector_create(hdmi, &dw_hdmi_qp_connector_funcs);
> >> +}
> > 
> > Are there any users left that requires the display driver to create the
> > connector?
> > In other words - could this driver fail if DRM_BRIDGE_ATTACH_NO_CONNECTOR
> > is not passed and drop dw_hdmi_connector_create()?
> > 
> > I did not try to verify this - just a naive question.
> 
> I've just tested this and it doesn't work - dw_hdmi_connector_create()
> is still needed.

Hmm, seems the display driver or some other bridge driver fails to
support "DRM_BRIDGE_ATTACH_NO_CONNECTOR".
what other drivers are involved?

Note that my comments here should be seen as potential future
improvements, and do not block the patch from being used.

	Sam

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
