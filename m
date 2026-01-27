Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99A09D2F03E
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 14:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZRW/Eeu351PNXeGU5t6CUnGzRdAjnMfLGtcoQl44oEI=; b=2Usw6Lk75A0qvz
	LDlagLXq7ohnzRU6MAiu3dkwF/cL2c3y2xHvcQqq/tEYWJhx2DTjuJrxSzgroOiNaD92UnpA3W3mP
	d45aA+3IyL5CQsRGj06BhyACchhX9X+xc5caJWRzAZYCjA4fEFUY9Jxmc8rZx/6MK4TO2ntjlq62o
	HxGsZM48cv58nDM/YBVkNXFy3ik8NRwz7ly/bwjXzsQ5Vokqf2QF8oqk9H0GwCychv7YA9kLfeVw1
	8jeY0WIETDwT0zOCMOgJP1/5dhIgWiH7oaMQ89uxYFpSPaCIScM9cf6NB0m/L4e1vbyKY/2iQUe10
	Iaf6b/kaiaTGQcdWaW1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkK6-0000000ETCN-08uD;
	Tue, 27 Jan 2026 14:45:42 +0000
Received: from mgamail.intel.com ([192.198.163.18])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkkK2-0000000ETBJ-1bd4;
	Tue, 27 Jan 2026 14:45:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1769525138; x=1801061138;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=e1sWwSv80OatEESHNX0DybuhSsd7eY41H0DFmX4oGeo=;
  b=b0aFPsLvasahFv0P+yfMS8BXfDoQ40MFoJ+L8H7Ef3P7ymAI5FzViqRh
   Oyz04i9094dbyg2SMAcFgkl5I3Gj08Ci7QCgOFVJ7GaoK1rfdm5hfKITQ
   1vQm0rWvCNR1CdXvmFffq5x6LG1Nu4/6JzWfmGYTNpEvj86oKOQdYulax
   s8IZAiNe3AWHvpFORfmihfkDCzJuFAsSp7S7qTGf4leAH5vow7fX78zFx
   oFFucxwyeGPmvfcuc3gxYIfh+AxRYQpkOhXAaKWzZReGLx5bu1dgcQRlZ
   OCkpGVk5SrAt/yD4O4VpGWSLhZyed0fxQJndjVys+KldoNL1VoRd8ADiA
   g==;
X-CSE-ConnectionGUID: vs4O7wE9SfWQ4Jq0dAZYMQ==
X-CSE-MsgGUID: qclkGPKITSuOc8Wrl86+yg==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="69920675"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; 
   d="scan'208";a="69920675"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
  by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2026 06:45:37 -0800
X-CSE-ConnectionGUID: J6ERCFuqSGG9Zp1yKjVwXg==
X-CSE-MsgGUID: 4JRLfM6FRGK/0g5JZKD6kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; 
   d="scan'208";a="230944425"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa002.fm.intel.com with ESMTP; 27 Jan 2026 06:45:34 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id D20FC98; Tue, 27 Jan 2026 15:45:32 +0100 (CET)
Date: Tue, 27 Jan 2026 15:45:32 +0100
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Louis Chauvet <louis.chauvet@bootlin.com>,
	Haneen Mohammed <hamohammed.sa@gmail.com>,
	Melissa Wen <melissa.srw@gmail.com>,
	Robert Mader <robert.mader@collabora.com>, kernel@collabora.com,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: Re: [PATCH v5 4/4] drm/rockchip: vop2: Support setting custom
 background color
Message-ID: <aXjPjNWl3oVOVYxV@black.igk.intel.com>
References: <20260127-rk3588-bgcolor-v5-0-b25aa8613211@collabora.com>
 <20260127-rk3588-bgcolor-v5-4-b25aa8613211@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260127-rk3588-bgcolor-v5-4-b25aa8613211@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_064538_457669_10843124 
X-CRM114-Status: GOOD (  14.73  )
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

On Tue, Jan 27, 2026 at 10:45:36AM +0200, Cristian Ciocaltea wrote:
> The Rockchip VOP2 display controller allows configuring the background
> color of each video output port.
> 
> Since a previous patch introduced the BACKGROUND_COLOR CRTC property,
> which defaults to solid black, make use of it when programming the
> hardware.
> 
> Note the maximum precision allowed by the display controller is 10bpc,
> while the alpha component is not supported, hence ignored.

...

> +	/*
> +	 * Background color is programmed with 10 bits of precision.
> +	 * Since performance is more important than accuracy here,
> +	 * do *not* make use of the DRM_ARGB64_GET*_BPC() helpers.
> +	 */
> +	val = FIELD_PREP(RK3568_VP_DSP_BG__DSP_BG_RED, DRM_ARGB64_GETR(bgcolor) >> 6);
> +	val |= FIELD_PREP(RK3568_VP_DSP_BG__DSP_BG_GREEN, DRM_ARGB64_GETG(bgcolor) >> 6);
> +	val |= FIELD_PREP(RK3568_VP_DSP_BG__DSP_BG_BLUE, DRM_ARGB64_GETB(bgcolor) >> 6);

There is FIELD_MODIFY() for a few cycles already.
But here it probably makes no much difference.

...

> +	seq_printf(s, "\tbackground color (10bpc): r=0x%x g=0x%x b=0x%x\n",
> +		   DRM_ARGB64_GETR(cstate->background_color) >> 6,
> +		   DRM_ARGB64_GETG(cstate->background_color) >> 6,
> +		   DRM_ARGB64_GETB(cstate->background_color) >> 6);

Probably you want to have the alternative to the DRM_ARGB64_GETx() macros which
incorporates a right-shift. But it all in regard to DRM style and preferences.

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
