Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22ECFC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Mar 2022 22:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aYVLL2xHd57OuQdfEJ55dgCjWjRuVxNzIhimfA0P7DM=; b=PHDDfsMvREa+0Q
	PxKL3EJ0dAitgJv2u8lDz+Ol61Ccbk8//Ezq+3yiBO73PmRzP7RRDeiESGR/gfALBIPMLyOdkxLvk
	K3BSh30m4fXi28YS/8Y4wTkTBaGbPHcPMXue/B5odVOlmJFNO2Rnrg3qUz6MXa8Lax5kHBOqwckaH
	SEhobVk58CFAYNx7X24NekriOMump3eAV/hPto6xSTdDrvcVD/Eofh/TpqreSNuCxisL6njA1V+oW
	+1wSMmD/ULH3ZNqSRXfJI4Ke++fyGfqbz1+Qu8eBSqRkukH/mejkPyK5YUfxiGurIyWdaYMhI2ZFc
	ovfS8gO+HN9ZnHZeQtSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nTsvV-006zbx-QF; Mon, 14 Mar 2022 22:12:29 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nTsv8-006zSZ-5j; Mon, 14 Mar 2022 22:12:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647295926; x=1678831926;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=TmF4FvJhy8r4L46VPu1Ph2AwpXhixIyOHXK6V+ZN30g=;
 b=ctMmG9QpJDihurcd/VXfdsPESxxo4Qew2LYDIcLXOMgD44czDm3GPZSr
 QhumwLrjvNoEJ3qGkQlYOZS6rwHQ7I2w4WRmMQh1wVBWMpv/snfGIK3Ik
 KRWjhen0V0OZRGD/Yh1kQE8X0y0I3JQzr2CkJ7pnlgO09HJMSHFVczKLb
 3Jib3F/A93xvF5m5ZW9Q/VYvOklCZ7dc6R/z9Z0mRLWGkBaEYGtrVMII2
 mqsE1GPgWcA8CYfw5jJq64DyE66G43glbzKNHdOZNuTxZ/1msJJLgJoAv
 el8oEjWxxJy8NdTsLGydrXp0qD5PecxjKWche2BqiLTiC41Xi4BKdssE+ Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="238324735"
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="238324735"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 15:11:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,181,1643702400"; d="scan'208";a="556641142"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 14 Mar 2022 15:11:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 00:11:43 +0200
Date: Tue, 15 Mar 2022 00:11:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Alain Volmat <alain.volmat@foss.st.com>,
 Alex Deucher <alexander.deucher@amd.com>, amd-gfx@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Aurabindo Pillai <aurabindo.pillai@amd.com>,
 Chen Feng <puck.chen@hisilicon.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Emma Anholt <emma@anholt.net>, freedreno@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 John Stultz <john.stultz@linaro.org>,
 Jonas Karlman <jonas@kwiboo.se>, Jyri Sarha <jyri.sarha@iki.fi>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Leo Li <sunpeng.li@amd.com>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Maxime Ripard <mripard@kernel.org>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Nikola Cornij <nikola.cornij@amd.com>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Clark <robdclark@gmail.com>,
 Robert Foss <robert.foss@linaro.org>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 Sam Ravnborg <sam@ravnborg.org>, Sandy Huang <hjc@rock-chips.com>,
 Sean Paul <sean@poorly.run>, Thierry Reding <thierry.reding@gmail.com>,
 Tian Tao <tiantao6@hisilicon.com>, Tomi Valkeinen <tomba@kernel.org>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>
Subject: Re: [PATCH 00/22] drm: Review of mode copies
Message-ID: <Yi+9n0eGn3rNKb4X@intel.com>
References: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220314_151206_313740_44B7C0E3 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Fri, Feb 18, 2022 at 12:03:41PM +0200, Ville Syrjala wrote:
>   drm: Add drm_mode_init()
>   drm/bridge: Use drm_mode_copy()
>   drm/imx: Use drm_mode_duplicate()
>   drm/panel: Use drm_mode_duplicate()
>   drm/vc4: Use drm_mode_copy()
These have been pushed to drm-misc-next.

>   drm/amdgpu: Remove pointless on stack mode copies
>   drm/amdgpu: Use drm_mode_init() for on-stack modes
>   drm/amdgpu: Use drm_mode_copy()
amdgpu ones are reviewed, but I'll leave them for the
AMD folks to push to whichever tree they prefer.


The rest are still in need of review:
>   drm/radeon: Use drm_mode_copy()
>   drm/gma500: Use drm_mode_copy()
>   drm/hisilicon: Use drm_mode_init() for on-stack modes
>   drm/msm: Nuke weird on stack mode copy
>   drm/msm: Use drm_mode_init() for on-stack modes
>   drm/msm: Use drm_mode_copy()
>   drm/mtk: Use drm_mode_init() for on-stack modes
>   drm/rockchip: Use drm_mode_copy()
>   drm/sti: Use drm_mode_copy()
>   drm/tilcdc: Use drm_mode_copy()
>   drm/i915: Use drm_mode_init() for on-stack modes
>   drm/i915: Use drm_mode_copy()
>   drm: Use drm_mode_init() for on-stack modes
>   drm: Use drm_mode_copy()

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
