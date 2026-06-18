Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68A69CD98F2
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jun 2026 11:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qM0Na5KSkIhisR+oQmVi0z6/pJBWI4O+hRCfeuP3na4=; b=S/bJ0EPUWYiDKW
	N+xNiZ2+3rAnfuobCqa+Z5NPJtIBlhSwM0LHDmybtivdV+fZiwqQuOofmDhTS/Dre+dG9toT0rBjH
	KMAymgJ6NyP5lzQl+c4A6eDoggiYJaQlmov5Hk2GE2hcpxiAhOlcQHcJH1YuOUU6iWOYxCzZEHY/1
	MV53bZI2IrGV9HRh7FbRmZBG7xu9S7VXT1r9YAy6AYGKAfvvq7Y1Iel3ZTNLuwu6HKLiF/eJSPdTj
	M/FJ0V11hobx5F9bQxPp6GuDD5TgeC85zs8n6pKV/57e4gX1mQnRqwa1cYmyrgCAq8AEYO9/CTd4+
	JAS93ffG36P9J/9qS3Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waBIA-00000001DZJ-2cQP;
	Thu, 18 Jun 2026 11:52:18 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1waBI1-00000001DYU-2fPv;
	Thu, 18 Jun 2026 11:52:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 6A021200320;
	Thu, 18 Jun 2026 13:52:06 +0200 (CEST)
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1waBHy-003QhG-0z;
	Thu, 18 Jun 2026 13:52:06 +0200
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1waBHy-0000000096F-0jLY;
	Thu, 18 Jun 2026 13:52:06 +0200
Message-ID: <604a73b122bd5fb7b35fe5bfeb0352bd9fd99046.camel@pengutronix.de>
Subject: Re: [PATCH 2/9] drm/rockchip: vop2: Reset AXI and DCLK to improve
 robustness
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Sandy Huang	
 <hjc@rock-chips.com>, Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>,  Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann	 <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Andrzej Hajda	 <andrzej.hajda@intel.com>, Neil
 Armstrong <neil.armstrong@linaro.org>,  Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman	
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli
	 <luca.ceresoli@bootlin.com>
Cc: kernel@collabora.com, Andy Yan <andyshrk@163.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Thu, 18 Jun 2026 13:52:05 +0200
In-Reply-To: <302d42b0-108e-4936-bc34-49b9194985f1@collabora.com>
References: <20260617-dw-hdmi-qp-yuv-v1-0-a665cfd06d7d@collabora.com>
	 <20260617-dw-hdmi-qp-yuv-v1-2-a665cfd06d7d@collabora.com>
	 <7c79f233c863654b0266de4b5ec5a8c72bb17715.camel@pengutronix.de>
	 <302d42b0-108e-4936-bc34-49b9194985f1@collabora.com>
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260618_045210_533074_77A9AFC6 
X-CRM114-Status: GOOD (  22.35  )
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

On Do, 2026-06-18 at 14:46 +0300, Cristian Ciocaltea wrote:
> On 6/18/26 12:39 PM, Philipp Zabel wrote:
> > On Mi, 2026-06-17 at 21:51 +0300, Cristian Ciocaltea wrote:
> > > Assert the AXI reset in the CRTC disable path, and the VP DCLK reset in
> > > the enable path.
> > > 
> > > These resets are intended to leave the hardware in a clean state for the
> > > next use, helping recover from exceptions such as IOMMU page faults, as
> > > well as to prevent random display output glitches, such as a blank
> > > image, observed when switching modes that also change the color format,
> > > e.g. from RGB to YUV420 and vice versa.
> > > 
> > > For now this seems to affect only the RK3588, hence the resets are
> > > optional and will be provided in the device tree for this SoC only.
> > > 
> > > Co-developed-by: Andy Yan <andy.yan@rock-chips.com>
> > > Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> > > Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> > > ---
> > >  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 35 ++++++++++++++++++++++++++++
> > >  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  4 ++++
> > >  2 files changed, 39 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > > index 4cce3e336f5b..2833fb49ad81 100644
> > > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> > > @@ -17,6 +17,7 @@
> > >  #include <linux/platform_device.h>
> > >  #include <linux/pm_runtime.h>
> > >  #include <linux/regmap.h>
> > > +#include <linux/reset.h>
> > >  #include <linux/swab.h>
> > >  
> > >  #include <drm/drm.h>
> > > @@ -860,6 +861,26 @@ static int vop2_core_clks_prepare_enable(struct vop2 *vop2)
> > >  	return ret;
> > >  }
> > >  
> > > +static void vop2_clk_reset(struct vop2 *vop2, struct reset_control *rstc)
> > 
> > The _clk part of the function name is misleading ...
> 
> Ack.  
> 
> We need to make this clearly distinct from another similarly named function,
> vop2_crtc_reset(), hence I'd propose:
> 
> - vop2_reset_assert_deassert()
> - vop2_reset_cycle()
> - vop2_do_reset()
> 
> Any preference / alternative suggestions?

Or vop2_reset_control_reset(). The three above are equally fine.

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
