Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8FC2C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Mar 2022 15:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1oxRj+oSSzEw4q+zM8X5fq50+CEGMPcsK1QF/3sqe/M=; b=P8NRhHtUpSQXzx
	rewotY3wyTwM1pXDce/1yk5u4/T0x8DLxagHep1nSG2SVGOQ4HUuzJZsheJowJjAW6nvpc5G1QmHL
	Xyha9/Thn5f6NeVc+rK0ll2oV/7QailjfE4/pwM/vAAqmUbZJ5iD3f3UI9/vA0oaSHBY8ezp7cbJ8
	zoayXLtd1jXfBJrUoLsRrkyNcwKjcLk4HX2PRdZoOhjNRn3DkAsUe2S68FMlLZFVn+eGxTN34hpjc
	I7GMeR+PlZSi0c9Bu7oiD4wrDfNvNOkL+henFhEMKXCMMhwBZxzHZAeM+PMjhrtwihf8Vm+Fx9vFx
	g3rDvx8B//j9+YG4NGmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nX2e0-00E1BD-V1; Wed, 23 Mar 2022 15:11:28 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nX2do-00E18c-9j; Wed, 23 Mar 2022 15:11:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648048276; x=1679584276;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Ak6vruZ0s0jfULNjhGFGclYiId7Hr9OSzLl3ubjhZxA=;
 b=eRdDQKTTvN3RAoqYZQqpHLd6+P+e+CLfUu+y3N5iNHROn0SLU8zWRAYf
 USX7lzkp30ZIZW31QuKDo55ILPYag3Urc3Tmv8bIXgyAHnRq01p4nb2Qh
 sf+5ZDBK8xxblhxI0bWZp1UwOBqnEi4d0nT8GhMCIEa0KW3TLCB9RXBmZ
 yauzQzzIxBvDXSv0bIU3VWgZyFDXxZb6bAXCu3tlqiBa7tDmyjFJ4kIdI
 hfocWWG+fgwGkWLZvreJp5gkbKYm0BV4/4iC/ud/Xo9Q7l+ODfPV3JBSZ
 IvZ8XTnksQNPtVHO/FyccMI+2GHt1Q3qO3d6d/WGln05yox4VeIl0zddE A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="258321553"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="258321553"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 08:11:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="692975118"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga001.fm.intel.com with SMTP; 23 Mar 2022 08:10:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Mar 2022 17:10:56 +0200
Date: Wed, 23 Mar 2022 17:10:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Alex Deucher <alexdeucher@gmail.com>,
 Maling list - DRI developers <dri-devel@lists.freedesktop.org>,
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
Message-ID: <Yjs4gIBuftRyLElE@intel.com>
References: <20220218100403.7028-1-ville.syrjala@linux.intel.com>
 <Yi+9n0eGn3rNKb4X@intel.com>
 <CADnq5_NS07TPBWSnETRhjzqtX_oUuCu86ewurFT3MJO=PcLAuQ@mail.gmail.com>
 <Yjj+RSVBWk6UO2C7@intel.com>
 <e9937a37-70c8-cc6f-15f2-1dbbb7f1bfba@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e9937a37-70c8-cc6f-15f2-1dbbb7f1bfba@linaro.org>
X-Patchwork-Hint: comment
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220323_081116_386189_B586A900 
X-CRM114-Status: GOOD (  25.94  )
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

On Wed, Mar 23, 2022 at 01:39:44PM +0300, Dmitry Baryshkov wrote:
> On 22/03/2022 01:37, Ville Syrj=E4l=E4 wrote:
> > On Tue, Mar 15, 2022 at 02:52:38PM -0400, Alex Deucher wrote:
> >> On Mon, Mar 14, 2022 at 6:12 PM Ville Syrj=E4l=E4
> >> <ville.syrjala@linux.intel.com> wrote:
> >>>
> >>> On Fri, Feb 18, 2022 at 12:03:41PM +0200, Ville Syrjala wrote:
> >>>>    drm: Add drm_mode_init()
> >>>>    drm/bridge: Use drm_mode_copy()
> >>>>    drm/imx: Use drm_mode_duplicate()
> >>>>    drm/panel: Use drm_mode_duplicate()
> >>>>    drm/vc4: Use drm_mode_copy()
> >>> These have been pushed to drm-misc-next.
> >>>
> >>>>    drm/amdgpu: Remove pointless on stack mode copies
> >>>>    drm/amdgpu: Use drm_mode_init() for on-stack modes
> >>>>    drm/amdgpu: Use drm_mode_copy()
> >>> amdgpu ones are reviewed, but I'll leave them for the
> >>> AMD folks to push to whichever tree they prefer.
> >>
> >> I pulled patches 2, 4, 5 into my tree.
> > =

> > Thanks.
> > =

> >> For 3, I'm happy to have it
> >> land via drm-misc with the rest of the mode_init changes if you'd
> >> prefer.
> > =

> > Either way works for me. I don't yet have reviews yet for
> > the other drivers, so I'll proably hold off for a bit more
> > at least. And the i915 patch I'll be merging via drm-intel.
> > =

> >>>>    drm/radeon: Use drm_mode_copy()
> >>>>    drm/gma500: Use drm_mode_copy()
> >>>>    drm/tilcdc: Use drm_mode_copy()
> >>>>    drm/i915: Use drm_mode_copy()
> > =

> > Those are now all in.
> > =

> > Which leaves us with these stragglers:
> >>>>    drm/hisilicon: Use drm_mode_init() for on-stack modes
> =

> >>>>    drm/msm: Nuke weird on stack mode copy
> >>>>    drm/msm: Use drm_mode_init() for on-stack modes
> >>>>    drm/msm: Use drm_mode_copy()
> =

> These three patches went beneath my radar for some reason.
> =

> I have just sent a replacement for the first patch ([1]). Other two =

> patches can be pulled in msm/msm-next (or msm/msm-fixes) during the next =

> development cycle if that works for you.

That'll do fine for me. Thanks.

> =

> [1] https://patchwork.freedesktop.org/series/101682/
> =

> >>>>    drm/mtk: Use drm_mode_init() for on-stack modes
> >>>>    drm/rockchip: Use drm_mode_copy()
> >>>>    drm/sti: Use drm_mode_copy()
> >>>>    drm: Use drm_mode_init() for on-stack modes
> >>>>    drm: Use drm_mode_copy()
> > =

> =

> =

> -- =

> With best wishes
> Dmitry

-- =

Ville Syrj=E4l=E4
Intel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
