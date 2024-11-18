Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21846C87FDA
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Aug 2025 10:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4uVZrJx1YDv+bZXgPXPiI1kqCykPMEviqlCh2n3FAZs=; b=FJ3+qyK1Mn48/V
	x5oGnlc+qF8Z8Q2aXeiRcgJpo9nga4LQB52QlxwXd6wotmbNOBTHa39tfwdOEU4irGB9+DwaKT/Kd
	ed03iM5+aJIMNb1a9siNpzTiQsAFj+yEvj4y04j+C8keLifNeOyjSZHSHFb1ei5PxR4B/rDhnKKsp
	l0zfMHq+2LUf3N37ic11ZIUe6Bfpe22SZV3yRIcYnoWDTRhyrTLV9u0V3DZ8zBHNfiSBBuFtzQlwD
	HqMeaxbAlYv1sEsm+tf7TxL8iDPma80VBMZczCL6gKH5S4UCtf2vido0/gfh9eyx5WmyaLj7xHjz0
	vhoozqHSvrss88+tvmlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujbc1-0000000Eva9-3REi;
	Wed, 06 Aug 2025 10:43:13 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tD1dJ-00000009XO2-1Tix
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Nov 2024 13:17:41 +0000
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-539f1292a9bso4889216e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 18 Nov 2024 05:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731935855; x=1732540655; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=QEQ0UnPHgL8X1IzKLkITrqLzsus1TunLlu+R1N5lrJc=;
        b=fKletAq4Qj5WYbKLgPvHmJO9STnGnkwlCWIOmmrsGPpbRQn3+vsRLRsmzCQo0CiS2Q
         BDV5aLiFJ+G1xNS67VS2cTSnd0JOr1pzUq3/KcqXF8S9zjl0d/G6rpRawtHwMcC32oNq
         gMWRIor3hOrJlJJMFd2d3jjEXUqFUwu7tecgVjMI8FqaCis7dSPAWp7Lcp29vtb+1r3r
         r25O69DuvyIeBAIW+wyvr388MFqineJ2FK897xtZOpe6dkg+AZnquyHmzKHHEVA03aSW
         xd/9qxtqqmAj2JQOEOtyBeKWoorQk/FKCzrHPyMhQoOE40rdJPleGW6gu951FKFyMl4D
         K3Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731935855; x=1732540655;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QEQ0UnPHgL8X1IzKLkITrqLzsus1TunLlu+R1N5lrJc=;
        b=s0QQh4Y2YW95Sv9MmiAQ/m8xfuiQb6Wyhxo2T5X1dF98W7qSWJF55atWwAd6ubWMom
         wp2BbJjpw+ex8MkpNj/yk9hNC7WTudZfhucEDLT7+gF3/craoKaxVvu0P0q21XCmVQgd
         Cj/bp7hmafEh/Ysuo6yhSEFFor+7ViAjigDejeb+Yi3rhaPULE3j7nUvJR4eHhrSN8Gr
         tQ1sYJkzXGAkyDyKPNpcfVPEizDb4bm7+OX+BBYmGqHaAl510RwmgiZ9cmjD6y5GR2kC
         rlcuPm5lt/7dYbxWIKkaXYS14Tz7oF8ZnReHk+yGzP75fKlquQ1bt1beKmJoQrLNbHur
         UjYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqTvyw05U7rs4kM0Lu0MGBaxdlS8bqfDohy6uC1/Ubb7Zs+mcJ9CD5midsxAzpO4MDvIP2Ha8DqHAvatuBZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzLKiemKjCzuTMFY+pX+5pmSfsbjQ4Z0HB7byS+BOq/dhfcj5Bd
	/RutVSlqIMhjnLKNu5rHm5xu9wX547xZzBZp7jUXO0oNqOB3l1BTpmqb/bOX5eg=
X-Google-Smtp-Source: AGHT+IGdzRCE2acExYOAR/Q1TPJs2CyZISyIMx5j4q3L/H9VxSQ26s/Ffm8H90fecvqfEbJsuGZxrw==
X-Received: by 2002:a05:6512:3e07:b0:536:55a9:caf0 with SMTP id 2adb3069b0e04-53dab25f7c9mr4511337e87.0.1731935855301;
        Mon, 18 Nov 2024 05:17:35 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53da64f8cafsm1591434e87.54.2024.11.18.05.17.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 05:17:33 -0800 (PST)
Date: Mon, 18 Nov 2024 15:17:31 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
	Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Karol Herbst <kherbst@redhat.com>, Lyude Paul <lyude@redhat.com>, 
	Danilo Krummrich <dakr@redhat.com>, Harry Wentland <harry.wentland@amd.com>, 
	Leo Li <sunpeng.li@amd.com>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, 
	Xinhui Pan <Xinhui.Pan@amd.com>, Alain Volmat <alain.volmat@foss.st.com>, 
	Raphael Gallais-Pou <rgallaispou@gmail.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Peter Senna Tschudin <peter.senna@gmail.com>, 
	Ian Ray <ian.ray@ge.com>, Martyn Welch <martyn.welch@collabora.co.uk>, 
	Inki Dae <inki.dae@samsung.com>, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, Stefan Agner <stefan@agner.ch>, 
	Alison Wang <alison.wang@nxp.com>, Patrik Jakobsson <patrik.r.jakobsson@gmail.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Rob Clark <robdclark@gmail.com>, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, Dave Airlie <airlied@redhat.com>, 
	Gerd Hoffmann <kraxel@redhat.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>, 
	Samuel Holland <samuel@sholland.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Mikko Perttunen <mperttunen@nvidia.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Gurchetan Singh <gurchetansingh@chromium.org>, 
	Chia-I Wu <olvaffe@gmail.com>, Zack Rusin <zack.rusin@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, nouveau@lists.freedesktop.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, imx@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	freedreno@lists.freedesktop.org, virtualization@lists.linux.dev, 
	spice-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org
Subject: Re: [PATCH 1/5] drm/encoder_slave: make mode_valid accept const
 struct drm_display_mode
Message-ID: <4prwsjl7nhg4u4tgyqdmgt6am5ryewslosmbezkfmyxgh2oket@zglhp7zqhfwe>
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
X-CRM114-CacheID: sfid-20241118_051737_391293_2773C393 
X-CRM114-Status: GOOD (  29.30  )
X-Mailman-Approved-At: Wed, 06 Aug 2025 03:42:50 -0700
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
> On Mon, 18 Nov 2024, Dmitry Baryshkov <dmitry.baryshkov@linaro.org> wrote:
> > On Mon, 18 Nov 2024 at 01:33, Laurent Pinchart
> > <laurent.pinchart@ideasonboard.com> wrote:
> >>
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

Agreed


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
