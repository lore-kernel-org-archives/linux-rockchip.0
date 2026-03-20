Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 498B3109317B
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 07:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YZoUQH4xyDjNhp6hd1+bXqnivEs9VK0L6JWgg+5/2nM=; b=OFfgA9mPlzt1mf
	hYaRlQRODj68Fb+pUyqgrGI8zlGNN3xQ0LUZLTc/G4b7aWWXBkLu0su5c/tLVwJa6QFWTWDk5xvGU
	tskX9242JRLIC8RQd6CPjlPBgqk2cjj6FndHHLGdUUa99pze/vNeJ1YUWQ/eLL8SERqnFK/yZm8O6
	9wfbifN9tkycO7o4bfzTn9vu7dIsXsSW5McsvUZfrwbITAr2lB9fxNKEau/5ES+zN/f5Mp57bavvv
	rFCEQXiGyksS7vV9MenwQaKPXg3Ex2qgTvNzkZ4vA8SfNMAWkN3YR9BGp3V985Smys79xeBVVFGg3
	T34T/ukfA/wZgkFS1Ylw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3U4P-0000000CDV5-2zAV;
	Fri, 20 Mar 2026 07:14:57 +0000
Received: from mx1.wiredblade.com ([72.51.58.38])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3U4N-0000000CDUk-3tgb
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Mar 2026 07:14:57 +0000
dkim-signature: v=1; a=rsa-sha256; d=psihoexpert.ro; s=dynu;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References;
	bh=n3SYAGLUHLozUzmk13gqo20d1bWb4ru42R3BxxVDQIw=;
	b=nV1KC1KvToOR6NGpKfalpEnvC9ly6R7yEb8phVssuRrqLr465bOrsCV2S9g5nGSPDylshvsgnAFx+mtr0sGW3zRsCmU4g6QlDQwDGIBBeNFUNsI0m1mn+HgDTO3qjZiyUfPnqiiQl6I2jbJlHQooxxe42R2ZLYumd4WBCcdXG6D2Ex9jIQryMd6qS2IJkraAeGyHpeydeMSdbCxF4Mrq6fMJVogGi+AuhmZf/UQfxPNH56KcLah7H7jlq5
	46nTBptBmNvf9LGuGjdmA1+elPlr4l6ioGCPIy9Dp5Vq2n8yYviZaG4ityw4HTk+7mmxEkfrFNVbQNCdMhT1yeGsIkGw==
Received: from GRAPHRT (188-24-192-137.rdsnet.ro [188.24.192.137])
	by mx1.wiredblade.com with ESMTPSA
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256)
	; Fri, 20 Mar 2026 07:14:22 +0000
Date: Fri, 20 Mar 2026 09:14:35 +0200
From: Marius Dinu <marius@psihoexpert.ro>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Marius Dinu <m95d+git@psihoexpert.ro>,
	linux-rockchip@lists.infradead.org, Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v2] drm: rockchip-dw-dp: add missing dependency on
 bridge_connector
Message-ID: <abzz234Esd/b5ZHI@GRAPHRT>
References: <20260319155051.1944-1-m95d+git@psihoexpert.ro>
 <DH6YBGOJGS8F.1KVA57WLCE235@cknow-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DH6YBGOJGS8F.1KVA57WLCE235@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_001456_085117_6D3C7294 
X-CRM114-Status: GOOD (  14.12  )
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

On Thu, 2026-03-19 18.56.59 ++0100, Diederik de Haas wrote:
> On Thu Mar 19, 2026 at 4:50 PM CET, Marius Dinu wrote:
> > Avoids this error:
> >   ld: drivers/gpu/drm/rockchip/dw_dp-rockchip.o: in function `dw_dp_roc=
kchip_bind':
> >   /usr/src/linux/drivers/gpu/drm/rockchip/dw_dp-rockchip.c:108:(.text+0=
x188): undefined reference to `drm_bridge_connector_init'
> >
> > Signed-off-by: Marius Dinu <m95d+git@psihoexpert.ro>
> > ---
> >  drivers/gpu/drm/rockchip/Kconfig | 1 +
> =

> $ scripts/get_maintainer.pl drivers/gpu/drm/rockchip/Kconfig
> Sandy Huang <hjc@rock-chips.com> (maintainer:DRM DRIVERS FOR ROCKCHIP)
> "Heiko St=FCbner" <heiko@sntech.de> (maintainer:DRM DRIVERS FOR ROCKCHIP)
> Andy Yan <andy.yan@rock-chips.com> (maintainer:DRM DRIVERS FOR ROCKCHIP)
> Maarten Lankhorst <maarten.lankhorst@linux.intel.com> (maintainer:DRM DRI=
VERS AND MISC GPU PATCHES)
> Maxime Ripard <mripard@kernel.org> (maintainer:DRM DRIVERS AND MISC GPU P=
ATCHES)
> Thomas Zimmermann <tzimmermann@suse.de> (maintainer:DRM DRIVERS AND MISC =
GPU PATCHES)
> David Airlie <airlied@gmail.com> (maintainer:DRM DRIVERS)
> Simona Vetter <simona@ffwll.ch> (maintainer:DRM DRIVERS)
> dri-devel@lists.freedesktop.org (open list:DRM DRIVERS FOR ROCKCHIP)
> linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC sup=
port)
> linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
> linux-kernel@vger.kernel.org (open list)
> =

> I'm missing quite a few of these ...

I don't understand. I should cc all those addreses? All of them? :o

Regards,
Marius

> =

> Cheers,
>   Diederik
> =

> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchi=
p/Kconfig
> > index 1479b8c4ed40..39cd38375e8a 100644
> > --- a/drivers/gpu/drm/rockchip/Kconfig
> > +++ b/drivers/gpu/drm/rockchip/Kconfig
> > @@ -67,6 +67,7 @@ config ROCKCHIP_CDN_DP
> >  =

> >  config ROCKCHIP_DW_DP
> >  	bool "Rockchip specific extensions for Synopsys DW DP"
> > +	select DRM_BRIDGE_CONNECTOR
> >  	help
> >  	  This selects support for Rockchip SoC specific extensions
> >  	  to enable Synopsys DesignWare Cores based DisplayPort transmit
> =



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
