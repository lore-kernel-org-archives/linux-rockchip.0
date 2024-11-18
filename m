Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24D67CCD193
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 11:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=83/NbWjwEaBonKcL16GgILr/Bc6uBoOmMtmoPEuDmX4=; b=ro4e+/jp7tzmYv
	xoBnBo4c8K1EqFCfW7Z7ByqeyfOZu0C6WTIQZurzaExZzzZc9IFFSfptRktJw7YWcDkrw1KgFr/kz
	FVT9nTcQbPRr/oo/gJXOXomR8NtyknxWD7sDJSjFlin5dfZ1GfEn68o3OmwYA6bQuCKzBu8BvndT+
	A5RB4JgkcSpFnngszfJDCPv4HuUKdqOhnLo8PUrTSAP0wWaEjT1ZruEqy4CUhCRXwBsb/WYr+nq0G
	j4MUwpvjsuw3iCYJbr6u5UdultRyr6jtqnUzldjDxH8EuQweauxwocyDnzrbvIUjgWe7aydxWxb9N
	rLAfKz37wXIvVkBYrl+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAoVm-0000000D9AO-48J4;
	Mon, 20 Oct 2025 11:57:15 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tCyIj-00000008xCk-2dqv;
	Mon, 18 Nov 2024 09:44:14 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A5D385B3;
	Mon, 18 Nov 2024 10:43:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1731923031;
	bh=xkGDIVTsjYl2daXkQELzdBVqI1NqFFTGHwZ9oH4jtg8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CVkichzMiV3e0BGfVJwqOmN7JW9UFAdFwYknwJi9NFaABsS3vVTKVteKogEj7B2Uy
	 bR5k0lZfhuetEpIa/WAnnHYEGgmjcIm+jmVePtfT5OURVmlbegALQOou8quBwgZCgj
	 9q65vqEOFKvCU5olGrCy7664A1rYY3kWESwRkeu8=
Date: Mon, 18 Nov 2024 11:43:58 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Tvrtko Ursulin <tursulin@ursulin.net>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>,
	Danilo Krummrich <dakr@redhat.com>,
	Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>,
	Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>,
	Xinhui Pan <Xinhui.Pan@amd.com>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Raphael Gallais-Pou <rgallaispou@gmail.com>,
	Liviu Dudau <liviu.dudau@arm.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Peter Senna Tschudin <peter.senna@gmail.com>,
	Ian Ray <ian.ray@ge.com>,
	Martyn Welch <martyn.welch@collabora.co.uk>,
	Inki Dae <inki.dae@samsung.com>,
	Seung-Woo Kim <sw0312.kim@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Stefan Agner <stefan@agner.ch>, Alison Wang <alison.wang@nxp.com>,
	Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Dave Airlie <airlied@redhat.com>, Gerd Hoffmann <kraxel@redhat.com>,
	Sandy Huang <hjc@rock-chips.com>,
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
	Samuel Holland <samuel@sholland.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Mikko Perttunen <mperttunen@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	=?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>,
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
	Gurchetan Singh <gurchetansingh@chromium.org>,
	Chia-I Wu <olvaffe@gmail.com>, Zack Rusin <zack.rusin@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	nouveau@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
	virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH 1/5] drm/encoder_slave: make mode_valid accept const
 struct drm_display_mode
Message-ID: <20241118094358.GK31681@pendragon.ideasonboard.com>
References: <20241115-drm-connector-mode-valid-const-v1-0-b1b523156f71@linaro.org>
 <20241115-drm-connector-mode-valid-const-v1-1-b1b523156f71@linaro.org>
 <20241117205426.GE12409@pendragon.ideasonboard.com>
 <CAA8EJpr=4AQVRKbtR2MaCQfguGW0a=3ay-ttew-mFR4f086Uyg@mail.gmail.com>
 <20241117233250.GK12409@pendragon.ideasonboard.com>
 <CAA8EJpq6Gkp4W=rGbpY6ASPgoDt=64HTFDk4_OZsTmbSUxhhGw@mail.gmail.com>
 <87plms51w4.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87plms51w4.fsf@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241118_014409_817193_70F01AA2 
X-CRM114-Status: GOOD (  28.78  )
X-Mailman-Approved-At: Mon, 20 Oct 2025 04:56:19 -0700
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

On Mon, Nov 18, 2024 at 11:26:03AM +0200, Jani Nikula wrote:
> On Mon, 18 Nov 2024, Dmitry Baryshkov wrote:
> > On Mon, 18 Nov 2024 at 01:33, Laurent Pinchart wrote:
> >> On Mon, Nov 18, 2024 at 01:22:12AM +0200, Dmitry Baryshkov wrote:
> >> > On Sun, 17 Nov 2024 at 22:54, Laurent Pinchart wrote:
> >> > > On Fri, Nov 15, 2024 at 11:09:26PM +0200, Dmitry Baryshkov wrote:
> >> > > > The mode_valid() callbacks of drm_encoder, drm_crtc and drm_bridge
> >> > > > accept const struct drm_display_mode argument. Change the mode_valid
> >> > > > callback of drm_encoder_slave to also accept const argument.
> >> > > >
> >> > > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >> > >
> >> > > Reviewed-by: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> >> > >
> >> > > On a side note, there's only two I2C slave encoder drivers left... I
> >> > > wonder if we could so something about them. The ch7006 and sil164
> >> > > drivers seem to be used by nouveau only, could they be moved to
> >> > > drivers/gpu/drm/nouveau/ ? We would move the whole drm_encoder_slave
> >> > > implementation there too, and leave it to die (or get taken out of limbo
> >> > > and fixed) with dispnv04.
> >> >
> >> > Or it might be better to switch to drm_bridge. Currently we also have
> >> > sil164 (sub)drivers in ast and i915 drivers. I don't know if there is
> >> > any common code to share or not. If there is some, it might be nice to
> >> > use common framework.
> >>
> >> That would require porting nouveau and i915 to drm_bridge. As much as
> >> I'd love to see that happening, I won't hold my breath.
> >
> > Me neither. Probably moving those two and drm_encoder_slave to nouveau
> > is really the best course for now.
> 
> Granted, the dvo part of i915 is ugly, but it's also only relevant for
> the oldest hardware i915 supports. Like 20 years old. Not sure there's
> much return on investment in big refactoring, more risk that it breaks
> without nobody noticing. Just let it be in i915?

That's my opinion too. The gain is not worth the risk.

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
