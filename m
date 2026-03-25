Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 647A1106B533
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Mar 2026 13:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wkGto+V4LautLsz9pU38Vo4m9eSKmsR4Y0eO42UrVaU=; b=NtpRI8uPAiu5Ne
	c90rk22mNptdgNVMhdevZWuU0opnhjqsBxe9iLC3rOjgpwBKUCi4KaZ8ZcSqzX6cMSzfdtkIKE+2r
	b6oECiDGjuLvbixuaScqThxRjLH5BGwib2NcxA4wfixsonMQpLIG460WnVZcZIdCu6iLUpodAg+IM
	be+qZuZ5g4M+8qswh3auv0pKPQq/zXxlL9Eoic6FFI2hGz71okDISi0v0fA7Hi4d+lm1kMRhPtbnL
	gZ6d9jZlU/qtnCQqKBHxGCWXqhSgVGwu6SWRH+OwFhp7YL+p/G/g8OXOf5WTposE963U8gY8d0dBV
	uXjP9lLbPOEJsArD/3cQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5OC2-00000003SMw-3fEk;
	Wed, 25 Mar 2026 13:22:42 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5OBx-00000003SLj-3h2u;
	Wed, 25 Mar 2026 13:22:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1774444903; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=CCtBlCPi3Q2bB+pY52f2jYSHnPdZPKK5c/bNbLVbaqFROouY4wutn/e4U4ddPiCh2dRtIJEa+4sw3eRcgkx5itizWSiHQJ1k5ji2y3TV8Sfd+LOOHE+4eImuNXHyhepL4Y6xZLlucHqh7dhKlIgV597SkxauYwWGp3Mt/qwyCQE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1774444903; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=4NCts4nAAjmpTTPXyyXJubEwZVKpuACtYHYvuhLjnEg=; 
	b=neSpIpW8c/spyqvAiNwkjoDSOZqyZHnFCRxV+Gi3qYZVjFyK2gFbh4bi4baBjnCEikE9tteSGtcEZu59GjHFByVfFlXSi6+KM02lf2Fn1W/82bQzFgR2uXoK9V23thc386KYuCtfUVJTQ5xbJa49Byx9hCa8SriuTIc37yQPjqA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774444902;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=4NCts4nAAjmpTTPXyyXJubEwZVKpuACtYHYvuhLjnEg=;
	b=kMKm63FguoGfblCxfxSJ1j3I+F7NdvBi9QkoZ36rRIQm4aQhUxkdXUzXAXW4P2/G
	+iy6N2K0+KnjFKEck7QsfoKxt4RhRphih9F7T8mSCX2RA9nAFsIw2VpoO+K94iKlTUc
	te0syhpVY6coMVnV3Yp8zmz2ebBBxIMveJzQYjMI=
Received: by mx.zohomail.com with SMTPS id 1774444893218302.43210365950904;
	Wed, 25 Mar 2026 06:21:33 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
To: Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Maxime Ripard <mripard@kernel.org>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>,
 Rodrigo Siqueira <siqueira@igalia.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>,
 kernel@collabora.com, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 linux-doc@vger.kernel.org, Werner Sembach <wse@tuxedocomputers.com>,
 Andri Yngvason <andri@yngvason.is>, Marius Vlad <marius.vlad@collabora.com>
Subject: Re: [PATCH v11 03/22] drm: Add new general DRM property "color format"
Date: Wed, 25 Mar 2026 14:21:24 +0100
Message-ID: <12425220.nUPlyArG6x@workhorse>
In-Reply-To: <20260325-quaint-bull-of-fortitude-dc68da@houat>
References: <20260324-color-format-v11-0-605559af4fb4@collabora.com>
 <CAPY8ntB9f_=f5kru=8w9BpTuqQR+93maGpT61EKU28Uay2vq8Q@mail.gmail.com>
 <20260325-quaint-bull-of-fortitude-dc68da@houat>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_062239_969923_E58BEC20 
X-CRM114-Status: GOOD (  29.35  )
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

On Wednesday, 25 March 2026 14:05:25 Central European Standard Time Maxime Ripard wrote:
> Hi Dave,
> 
> On Wed, Mar 25, 2026 at 12:49:19PM +0000, Dave Stevenson wrote:
> > > diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> > > index af8b92d2d5b7..bd549f912b76 100644
> > > --- a/include/drm/drm_connector.h
> > > +++ b/include/drm/drm_connector.h
> > > @@ -571,14 +571,102 @@ enum drm_colorspace {
> > >   *   YCbCr 4:2:2 output format (ie. with horizontal subsampling)
> > >   * @DRM_OUTPUT_COLOR_FORMAT_YCBCR420:
> > >   *   YCbCr 4:2:0 output format (ie. with horizontal and vertical subsampling)
> > > + * @DRM_OUTPUT_COLOR_FORMAT_COUNT:
> > > + *   Number of valid output color format values in this enum
> > >   */
> > >  enum drm_output_color_format {
> > >         DRM_OUTPUT_COLOR_FORMAT_RGB444 = 0,
> > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR444,
> > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR422,
> > >         DRM_OUTPUT_COLOR_FORMAT_YCBCR420,
> > > +       DRM_OUTPUT_COLOR_FORMAT_COUNT,
> > >  };
> > >
> > > +/**
> > > + * enum drm_connector_color_format - Connector Color Format Request
> > > + *
> > > + * This enum, unlike &enum drm_output_color_format, is used to specify requests
> > > + * for a specific color format on a connector through the DRM "color format"
> > > + * property. The difference is that it has an "AUTO" value to specify that
> > > + * no specific choice has been made.
> > > + */
> > > +enum drm_connector_color_format {
> > > +       /**
> > > +        * @DRM_CONNECTOR_COLOR_FORMAT_AUTO: The driver or display protocol
> > > +        * helpers should pick a suitable color format. All implementations of a
> > > +        * specific display protocol must behave the same way with "AUTO", but
> > > +        * different display protocols do not necessarily have the same "AUTO"
> > > +        * semantics.
> > > +        *
> > > +        * For HDMI, "AUTO" picks RGB, but falls back to YCbCr 4:2:0 if the
> > > +        * bandwidth required for full-scale RGB is not available, or the mode
> > > +        * is YCbCr 4:2:0-only, as long as the mode and output both support
> > > +        * YCbCr 4:2:0.
> > 
> > Is there a reason you propose dropping back to YCbCr 4:2:0 without
> > trying YCbCr 4:2:2 first? Minimising the subsampling is surely
> > beneficial, and vc4 for one can do 4:2:2 but not 4:2:0.
> 
> The "auto" behaviour is strictly identical to the one we have right now,
> and this one stems from i915. Back when all that logic was added, it was
> decided to align every driver behavior on i915 because that's what most
> compositors would expect.

Hi Maxime,

would it be okay to extend the behavior while we're at it? 4:2:2 does save
bandwidth compared to RGB (unlike YCbCr 4:4:4). I do think 4:2:2 instead of
4:2:0 will provide benefits in some cases. I assume hardware that supports
4:2:2 only instead of 4:2:0 does so in order to save >= 1 horizontal
row of local SRAM buffer in the display controller for any downscaling,
as it'll only need to consider neighbouring pixels on the same row.

Kind regards,
Nicolas Frattaroli

> 
> Maxime
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
