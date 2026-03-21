Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 016AA109449E
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Mar 2026 21:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lVXB7y48lpD5K0RKKmJ/joSxQO/VDauw8ey0nCu1X/E=; b=ZyuVJINSV8uIVw
	njPB2L99Nyhna/ZJ+vIKgL+kpektQydcWMHHGbKcsfSKUtBNO7tKK7ePZyb2LtK0BHp5wzzLanQN4
	n2fWtzQs0zPDRPOLN5f1NiKpnMd3VvDM8i4Mslh7rDpA0d/1K2tKrD5c7iB5COspHfm/a74fWuwW3
	x4N2liRB1exSHEaIQCR50vdGGEm/d0WC6KwcKadxrkaopvkEWLeuz+RQW3JFasSiLSR0n+pYGnWmT
	suxNEc6kLXTXAACp7bfXBvv8RnYceJQC3LyBf2Sd4qrkWqLoHzOCzoHVL2i0Cy6yxFTufxJ35EVND
	RFur43BT+3gtVPHr/Wcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w44Ae-0000000Eovb-3RHp;
	Sat, 21 Mar 2026 21:47:48 +0000
Received: from mx1.wiredblade.com ([72.51.58.38])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w44Ab-0000000EovD-1INr
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Mar 2026 21:47:46 +0000
dkim-signature: v=1; a=rsa-sha256; d=psihoexpert.ro; s=dynu;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References;
	bh=5RKwJeHG1aSEtWjbp/jE8SCNTWwl1WmTupxNlKcJvtA=;
	b=vIBP7yzk6sLt0iYeroFk79ZWbBeWI6xkhxYgzANurlHfPunPi4ZMQvCs9M3TAwTRbQNu+8R9AuuvyuSitj06plPVKm6bDlojBMIfiy3VRlVfAvaH9PBi3IlgwV3kwiRRT0mWIETL2ce5WCHVeGIPUWLrPRIyzM33Lt16+Jqk+d/A5KJaQ2VAc4RRtxjH4UuZorif6bHBHnwur5hd/yvSnmYxtrjqWtmdtcd/i5QZj4SkS+Hju0jQ2vR/60
	p1arxOIaysGMGR5XSkQ6t6/2boiVnwR0Q/X6DWaGsuFWvhkvHKcA5H24XDE40ieHEWwjAFXFm/6pyTcnNKRjtKEx4ERg==
Received: from GRAPHRT (188-24-192-137.rdsnet.ro [188.24.192.137])
	by mx1.wiredblade.com with ESMTPSA
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256)
	; Sat, 21 Mar 2026 21:47:27 +0000
Date: Sat, 21 Mar 2026 23:47:25 +0200
From: Marius Dinu <m95d+git@psihoexpert.ro>
To: Diederik de Haas <diederik@cknow-tech.com>
Cc: Marius Dinu <m95d+git@psihoexpert.ro>,
	linux-rockchip@lists.infradead.org, Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v2] drm: rockchip-dw-dp: add missing dependency on
 bridge_connector
Message-ID: <ab8R7fLGChfy7Ami@GRAPHRT>
References: <20260319155051.1944-1-m95d+git@psihoexpert.ro>
 <DH6YBGOJGS8F.1KVA57WLCE235@cknow-tech.com>
 <abzz234Esd/b5ZHI@GRAPHRT>
 <DH7MKT7D08MW.3P75EWC69NPZF@cknow-tech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DH7MKT7D08MW.3P75EWC69NPZF@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260321_144745_430777_4D7AC245 
X-CRM114-Status: GOOD (  17.33  )
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

On Fri, 2026-03-20 13.57.38 ++0100, Diederik de Haas wrote:
> On Fri Mar 20, 2026 at 8:14 AM CET, Marius Dinu wrote:
> > On Thu, 2026-03-19 18.56.59 ++0100, Diederik de Haas wrote:
> >> On Thu Mar 19, 2026 at 4:50 PM CET, Marius Dinu wrote:
> >> > Avoids this error:
> >> >   ld: drivers/gpu/drm/rockchip/dw_dp-rockchip.o: in function `dw_dp_=
rockchip_bind':
> >> >   /usr/src/linux/drivers/gpu/drm/rockchip/dw_dp-rockchip.c:108:(.tex=
t+0x188): undefined reference to `drm_bridge_connector_init'
> >> >
> >> > Signed-off-by: Marius Dinu <m95d+git@psihoexpert.ro>
> >> > ---
> >> >  drivers/gpu/drm/rockchip/Kconfig | 1 +
> >> =

> >> $ scripts/get_maintainer.pl drivers/gpu/drm/rockchip/Kconfig
> >> Sandy Huang <hjc@rock-chips.com> (maintainer:DRM DRIVERS FOR ROCKCHIP)
> >> "Heiko St=FCbner" <heiko@sntech.de> (maintainer:DRM DRIVERS FOR ROCKCH=
IP)
> >> Andy Yan <andy.yan@rock-chips.com> (maintainer:DRM DRIVERS FOR ROCKCHI=
P)
> >> Maarten Lankhorst <maarten.lankhorst@linux.intel.com> (maintainer:DRM =
DRIVERS AND MISC GPU PATCHES)
> >> Maxime Ripard <mripard@kernel.org> (maintainer:DRM DRIVERS AND MISC GP=
U PATCHES)
> >> Thomas Zimmermann <tzimmermann@suse.de> (maintainer:DRM DRIVERS AND MI=
SC GPU PATCHES)
> >> David Airlie <airlied@gmail.com> (maintainer:DRM DRIVERS)
> >> Simona Vetter <simona@ffwll.ch> (maintainer:DRM DRIVERS)
> >> dri-devel@lists.freedesktop.org (open list:DRM DRIVERS FOR ROCKCHIP)
> >> linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC =
support)
> >> linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
> >> linux-kernel@vger.kernel.org (open list)
> >> =

> >> I'm missing quite a few of these ...
> >
> > I don't understand. I should cc all those addreses? All of them? :o
> =

> I usually 'To' the maintainers and 'Cc' the rest. See also
> https://www.kernel.org/doc/html/latest/process/submitting-patches.html#se=
lect-the-recipients-for-your-patch
> =

> HTH,
>   Diederik

Something changed in v7-rc4. The error is gone. It seems this is probably n=
ot needed anymore.
But thanks for info about the mailing lists. I'll keep that in mind next ti=
me.
Marius

> =

> >> >  1 file changed, 1 insertion(+)
> >> >
> >> > diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rock=
chip/Kconfig
> >> > index 1479b8c4ed40..39cd38375e8a 100644
> >> > --- a/drivers/gpu/drm/rockchip/Kconfig
> >> > +++ b/drivers/gpu/drm/rockchip/Kconfig
> >> > @@ -67,6 +67,7 @@ config ROCKCHIP_CDN_DP
> >> >  =

> >> >  config ROCKCHIP_DW_DP
> >> >  	bool "Rockchip specific extensions for Synopsys DW DP"
> >> > +	select DRM_BRIDGE_CONNECTOR
> >> >  	help
> >> >  	  This selects support for Rockchip SoC specific extensions
> >> >  	  to enable Synopsys DesignWare Cores based DisplayPort transmit
> >> =

> =



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
