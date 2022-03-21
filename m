Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7E47C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 22:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nX6pWzzSt4NhZqGDen7R0F66N6Sd8h1EIVhYfsJJ4gY=; b=hhzsj1vJXWLB7j
	d97gLhmI8Elk6zBir8PBgeSvpcrYPXIc5Fqw2DhctKpiBuioc3EbkoTPYjfMZIU6RSrqhKkIzjpvd
	oFrm/2M+Y45jgqKE3IUWTx0PrbiwPYWs6zlNHEf5T1OcypxoxHvrlQPDht5MKZxga5HbFvcVg+d09
	EzjIY95cmuWsipcxjePQOePYdlQyqCddBbsBBt4m3siI/GHGSxU4AdXM5Yq8dUoqsa9bovHJ1EWbX
	iTXI7i0ewqBFgZhSLq5UPlttIsSmSN2ATgh/MLmtljDuWDy9wKIOCuD/UlUz4paUOb7kXaJWD5N7Z
	pmDQepcL1RHrJ7OOJFMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWQfb-009Glf-2C; Mon, 21 Mar 2022 22:38:35 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWQfJ-009GgY-BH; Mon, 21 Mar 2022 22:38:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647902297; x=1679438297;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NGivaWeKRY3MksBC8EwXE84CdRJB3qnQz8+tE0sTF7w=;
 b=MoYGydbEdNwtgdd7sSXBHPYBk9igFfYNhJZC7JX9UGHvXA804pM0OTFH
 gUxkGtGi04X5nL114r8ErmUH0VPsx87Ik8L1FKdnQD/uC6z1CvUldxpeP
 dcVfi3XW9FlJvXbj4blKB+ydgGXn4IL3vvqrn7nccL8JB0vibAmJDv0lq
 c20Qmib0vHPYFhi/OIHgvhOZ1PDZuKj+X77YhFnOY4dUMZ/gAjkliW7Ct
 ddox9S0lQUXdhlhZlhRnILwwSGM+fwCM7UPJPn+1BbKs14/9IMLyMs4H1
 0lPRQoxbDIOR7fYqnDXzWVli8sho4nOczYY/tlgSDePGiLRIZuboUn2al w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10293"; a="237605008"
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="237605008"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 15:38:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,199,1643702400"; d="scan'208";a="560073382"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga008.jf.intel.com with SMTP; 21 Mar 2022 15:37:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 22 Mar 2022 00:37:57 +0200
Date: Tue, 22 Mar 2022 00:37:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Alex Deucher <alexdeucher@gmail.com>
Cc: Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Emma Anholt <emma@anholt.net>, Neil Armstrong <narmstrong@baylibre.com>,
 Xinliang Liu <xinliang.liu@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 linux-rockchip@lists.infradead.org,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Aurabindo Pillai <aurabindo.pillai@amd.com>,
 Chen Feng <puck.chen@hisilicon.com>,
 Alain Volmat <alain.volmat@foss.st.com>,
 Harry Wentland <harry.wentland@amd.com>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>, Leo Li <sunpeng.li@amd.com>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Maxime Ripard <mripard@kernel.org>, Nikola Cornij <nikola.cornij@amd.com>,
 John Stultz <john.stultz@linaro.org>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Tomi Valkeinen <tomba@kernel.org>, Jyri Sarha <jyri.sarha@iki.fi>,
 Sandy Huang <hjc@rock-chips.com>, Robert Foss <robert.foss@linaro.org>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Rob Clark <robdclark@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 Tian Tao <tiantao6@hisilicon.com>,
 freedreno <freedreno@lists.freedesktop.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 00/22] drm: Review of mode copies
Message-ID: <Yjj+RSVBWk6UO2C7@intel.com>
References: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
 <Yi+9n0eGn3rNKb4X@intel.com>
 <CADnq5_NS07TPBWSnETRhjzqtX_oUuCu86ewurFT3MJO=PcLAuQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CADnq5_NS07TPBWSnETRhjzqtX_oUuCu86ewurFT3MJO=PcLAuQ@mail.gmail.com>
X-Patchwork-Hint: comment
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_153817_411324_EECE94A5 
X-CRM114-Status: GOOD (  17.23  )
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

On Tue, Mar 15, 2022 at 02:52:38PM -0400, Alex Deucher wrote:
> On Mon, Mar 14, 2022 at 6:12 PM Ville Syrj=E4l=E4
> <ville.syrjala@linux.intel.com> wrote:
> >
> > On Fri, Feb 18, 2022 at 12:03:41PM +0200, Ville Syrjala wrote:
> > >   drm: Add drm_mode_init()
> > >   drm/bridge: Use drm_mode_copy()
> > >   drm/imx: Use drm_mode_duplicate()
> > >   drm/panel: Use drm_mode_duplicate()
> > >   drm/vc4: Use drm_mode_copy()
> > These have been pushed to drm-misc-next.
> >
> > >   drm/amdgpu: Remove pointless on stack mode copies
> > >   drm/amdgpu: Use drm_mode_init() for on-stack modes
> > >   drm/amdgpu: Use drm_mode_copy()
> > amdgpu ones are reviewed, but I'll leave them for the
> > AMD folks to push to whichever tree they prefer.
> =

> I pulled patches 2, 4, 5 into my tree.

Thanks.

> For 3, I'm happy to have it
> land via drm-misc with the rest of the mode_init changes if you'd
> prefer.

Either way works for me. I don't yet have reviews yet for
the other drivers, so I'll proably hold off for a bit more
at least. And the i915 patch I'll be merging via drm-intel.

> > >   drm/radeon: Use drm_mode_copy()
> > >   drm/gma500: Use drm_mode_copy()
> > >   drm/tilcdc: Use drm_mode_copy()
> > >   drm/i915: Use drm_mode_copy()

Those are now all in.

Which leaves us with these stragglers:
> > >   drm/hisilicon: Use drm_mode_init() for on-stack modes
> > >   drm/msm: Nuke weird on stack mode copy
> > >   drm/msm: Use drm_mode_init() for on-stack modes
> > >   drm/msm: Use drm_mode_copy()
> > >   drm/mtk: Use drm_mode_init() for on-stack modes
> > >   drm/rockchip: Use drm_mode_copy()
> > >   drm/sti: Use drm_mode_copy()
> > >   drm: Use drm_mode_init() for on-stack modes
> > >   drm: Use drm_mode_copy()

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
