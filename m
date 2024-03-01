Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11B9AC5478C
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Mar 2024 12:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8NXEy3hM1tcmOHtSzaa+zb2zLYykrRY9Q869gpuC1I=; b=maOAjLR4IkcA+C
	0PVfftE7tuvCZOSjgUmf7Arqz/pmf/qSMBs/9PV4Yjj0birEPXL1nSNsEh6j8H92tSir1432afxPo
	DFjP+lw4F9MjnQqU1u/mm3CpbzmBz8OJTCprp2272u27IamcdcRzq/9B6cTpKpvKYURkEUQ335VGS
	0LTDTvfVvFHyGWtE7cmqo7Ludx0Ug+bQAxEn/j5zaP7rG5Se1sQhVHinIUwt1drt89q8x66tuYC5g
	xq+zJZDRJdmGvzj5CeTUGSfiVeaqPr4JQQl7s3hkjHKzfeAGTrcr6zjsWiXVZIUo3woQ1b+ElHtP2
	rrFLQJMGkEf6wps3dvrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg1kI-0000000079U-2vB4;
	Fri, 01 Mar 2024 12:12:10 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rg1kD-0000000077X-2KbU;
	Fri, 01 Mar 2024 12:12:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E2E316101F;
	Fri,  1 Mar 2024 12:12:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CE13C43390;
	Fri,  1 Mar 2024 12:12:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709295124;
	bh=6E5qCAMa5baRaHUWMvXXQI+RrvNsgn7wLP4NhDm0xqM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oA08poAphN0lZAIQQq2SGgzG3xggzAQadZkfPaCm/Hu8g9cM/T4l3JdOqaYOkxWl9
	 vrqvj9vAvv+3MFp1p5/mtabU/57iOutCJziDcrIJYbMln3emj+hQUeVjpTN3lw8hyd
	 DqYNXY7Pe42dfO9kjTSsy2TNv872hwWtUKuvBqgMrvoFQL5290xX0k5fd2/PUkajDW
	 NhqU/v8Z7ZXb4qhzyA220yicASsbi5YThFJqVW8YgUPMv/mzc7ZUkuLBxas48Pldb6
	 +hMe7ue4KokCYLS8ArfwOI4F6fZ2+SCQUof3riITI7VglYH26eAgQ10sqxPfzjIpPj
	 rPBGFlAlB3Q2Q==
Date: Fri, 1 Mar 2024 13:12:02 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Sebastian Wick <sebastian.wick@redhat.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: Re: [PATCH v7 21/36] drm/connector: hdmi: Add Broadcast RGB property
Message-ID: <20240301-loyal-cornflower-oxpecker-83ed59@houat>
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-21-8f4af575fce2@kernel.org>
 <20240229194726.GB166694@toolbox>
 <20240301-light-impressive-grasshopper-adabeb@houat>
 <20240301112941.GE166694@toolbox>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240301112941.GE166694@toolbox>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240301_041205_746203_14047642 
X-CRM114-Status: GOOD (  21.86  )
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

On Fri, Mar 01, 2024 at 12:29:41PM +0100, Sebastian Wick wrote:
> On Fri, Mar 01, 2024 at 11:30:56AM +0100, Maxime Ripard wrote:
> > On Thu, Feb 29, 2024 at 08:47:26PM +0100, Sebastian Wick wrote:
> > > > @@ -1708,6 +1731,39 @@ EXPORT_SYMBOL(drm_connector_attach_dp_subconnector_property);
> > > >  /**
> > > >   * DOC: HDMI connector properties
> > > >   *
> > > > + * Broadcast RGB (HDMI specific)
> > > > + *      Indicates the Quantization Range (Full vs Limited) used. The color
> > > > + *      processing pipeline will be adjusted to match the value of the
> > > > + *      property, and the Infoframes will be generated and sent accordingly.
> > > > + *
> > > > + *      This property is only relevant if the HDMI output format is RGB. If
> > > > + *      it's one of the YCbCr variant, it will be ignored and the output will
> > > > + *      use a limited quantization range.
> > > 
> > > Uh, maybe just say that the quantization range is selected automatically
> > > in case a YCbCr output format is in use. I'm not sure every YCbCr
> > > variant requires limited and even if it does, new formats could change
> > > this.
> > 
> > I documented what i915 is doing:
> > https://elixir.bootlin.com/linux/latest/source/drivers/gpu/drm/i915/display/intel_hdmi.c#L2143
> 
> Sure, this is one valid strategy for the automatic behavior of YCbCr.
> Drivers could also always send an InfoFrame to ensure full range where
> possible. The point here is that this property shall not affect YCbCr
> output formats!
> 
> Maybe it's even better to say "driver specific" instead of "automatic".

Honestly, I'm not sure what you want from me here. Ville and you
insisted on the previous version to document what i915 is doing and to
follow whatever the behaviour was, and that we shouldn't spend time
improving the property. Fine, I did that.

But now, you want me to ... improve the property?

Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
