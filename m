Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A8FDC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 May 2022 08:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUoCUkuU2/Yg9p8vcdYuIrTNneydufhgkapXeXk2lg0=; b=HHOIBy1w79l/yd
	IX7aStnfECFcbqL6P6+3TdmITI/iVkt1cx6C35jm0OYCzMHUSANGJYm4Jib0gh8Q76Eww+uIANR8Q
	Sv+9tUN11GgLlnuAxJANVJzTXfVNzzm31jrrjPiC8kz4+JBe0FoUxQEVkAqaFmAY1GmwTIfZLJFJH
	Ky5Hweyd0JEOEJ7HB+bGLtNdv1Aa+tK+AdQTY7mR8decX4fxU5lgCFCYWScZUrYtQpUEQ+TzRvDvg
	E9JKSplHxgYPXDfN4n9KhBe3doJ04EvyavfugNVaLFJ8CNv1BeAUOajIdT47rDJ1B2C+qLIF5Ue0S
	0GMxJKScW0geuUt7pROA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvxiS-009wfN-AZ; Tue, 31 May 2022 08:59:04 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvxi9-009wXd-7w; Tue, 31 May 2022 08:58:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id 163C25C0178;
	Tue, 31 May 2022 04:58:41 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Tue, 31 May 2022 04:58:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
	:content-transfer-encoding:content-type:date:date:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to; s=fm3; t=1653987521; x=
	1654073921; bh=oo43um3ROPuCPfC/KF7MzWcIrCP9C5yRfhjmYx4w5Bk=; b=N
	hhpvJx3+mrLCx5kBTPw04hgqsM8qeNe20J/ISTHZzSyOiKLuOFtJ8JJOZWZqLw/e
	g3BfrWbGhC+7dX0J4FszaINTCshzB56lFdN/WFLhJucJ9lZj3g01n6i+JzkHhenF
	bk6aPcyhNwMmCa+r5DGUG+uMVhih5L0ouOJaN73VUjhNHIshT+IdAK0h30Cu2pD7
	thubFBdmtTYAxGZUq2QpRvBsXYyJAsmjc0JTsJZxRnpoM/wGD1BEaE2S+4i5WViF
	gDEKgP6Vawu+Q6GXH/1JQbi2/QWr4aBu09Lm22pYnHAs0WnToWko/fUXWIjZlrhe
	X1Nb8XpYLkqoDzAUZSSrw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:date:feedback-id:feedback-id:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1653987521; x=1654073921; bh=o
	o43um3ROPuCPfC/KF7MzWcIrCP9C5yRfhjmYx4w5Bk=; b=iH35DW97Ah1NSmTkb
	tVz2iBYatAt4nAvefd9g/wzaBT3wtQ5MMi+4dFUm7NzpR6MYCHUJl6qvPS1pYLCK
	hq0hyiLO+YeIbUv3p4113AzEMc/4UUeDuybshE6UO7lrkHDTw8EhliDO7BIt1685
	cm8U2/f7vWlGFggl1pjvKsH3zzxwdfIn7RBhJHVpbANY4D5iBP2Rb6sYzaRTV7D8
	rbkgdnN5Ytherw5mWfOPpLcIPAmINdEBW2CksTkcbf/K9H1GVtAo8THWZo31/Msj
	78Pwui8jvgAVRwVFny1oG9vMLMTc9IXT4qetkgObXQEREAiMcq6Hrhlvl6Ccj9UV
	W+CjA==
X-ME-Sender: <xms:v9iVYm9brSS65NNHeTKa2aSAGuMhNuV_q02NqitHKIflWnyskPm93Q>
    <xme:v9iVYmvEPzIa6t8R0DpvIt20T_x2F-CuvHUh5PhWnDzhF2bxhd3KZmVzY2jSFMPHc
    rVf6sZAi_bHYy9zAN0>
X-ME-Received: <xmr:v9iVYsAbo4OglaOhlIdmxiDh4TkGUQLy0JQ-DnyspWLuS2cSVjWUV6VEFA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrkeekgddutdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpeffhffvuffkfhggtggugfgjsehtqhertddttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
    htvghrnhepgfejtedtjefggfffvdetuedthedtheegheeuteekfeeghfdtteejkeeludeg
    vddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmh
    grgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:v9iVYue8RPFp1z-n5TDYcwmL08SVETCWBoiOkGM0Sj6DVf0ap9EGoQ>
    <xmx:v9iVYrO8My_Z2Um84Ljo0zAf5qBuSDu7j1Yhzm_MSrHcpsLPN30f3Q>
    <xmx:v9iVYonGekT-cC8ZcFo5elxoAmfC0a5p63TnPymE-i5SQLIN4aRP-Q>
    <xmx:wdiVYl0RpjWOCUCQSxgWM6t29uxM_f_xUVVu5CeL80V0FPNXRfX-7A>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 31 May 2022 04:58:38 -0400 (EDT)
Date: Tue, 31 May 2022 10:58:35 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Samuel Holland <samuel@sholland.org>,
	Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	Alistair Francis <alistair@alistair23.me>,
	=?utf-8?Q?Ond=C5=99ej?= Jirman <x@xff.cz>,
	Andreas Kemnade <andreas@kemnade.info>,
	David Airlie <airlied@linux.ie>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liang Chen <cl@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH 00/16] drm/rockchip: Rockchip EBC ("E-Book
 Controller") display driver
Message-ID: <20220531085835.grw5nt4vyofis3po@penduick>
References: <20220413221916.50995-1-samuel@sholland.org>
 <20220414085018.ayjvscgdkoen5nw5@houat>
 <Yo5kz/9cSd6ewC5f@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yo5kz/9cSd6ewC5f@phenom.ffwll.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_015846_039066_AC43C165 
X-CRM114-Status: GOOD (  43.24  )
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

Hi Daniel,

Thanks for your feedback

On Wed, May 25, 2022 at 07:18:07PM +0200, Daniel Vetter wrote:
> > > VBLANK Events and Asynchronous Commits
> > > ======================================
> > > When should the VBLANK event complete? When the pixels have been blitted
> > > to the kernel's shadow buffer? When the first frame of the waveform is
> > > sent to the panel? When the last frame is sent to the panel?
> > > 
> > > Currently, the driver is taking the first option, letting
> > > drm_atomic_helper_fake_vblank() send the VBLANK event without waiting on
> > > the refresh thread. This is the only way I was able to get good
> > > performance with existing userspace.
> > 
> > I've been having the same kind of discussions in private lately, so I'm
> > interested by the answer as well :)
> > 
> > It would be worth looking into the SPI/I2C panels for this, since it's
> > basically the same case.
> 
> So it's maybe a bit misnamed and maybe kerneldocs aren't super clear (pls
> help improve them), but there's two modes:
> 
> - drivers which have vblank, which might be somewhat variable (VRR) or
>   become simulated (self-refresh panels), but otherwise is a more-or-less
>   regular clock. For this case the atomic commit event must match the
>   vblank events exactly (frame count and timestamp)

Part of my interrogation there is do we have any kind of expectation
on whether or not, when we commit, the next vblank is going to be the
one matching that commit or we're allowed to defer it by an arbitrary
number of frames (provided that the frame count and timestamps are
correct) ?

> - drivers which don't have vblank at all, mostly these are i2c/spi panels
>   or virtual hw and stuff like that. In this case the event simply happens
>   when the driver is done with refresh/upload, and the frame count should
>   be zero (since it's meaningless).
> 
> Unfortuantely the helper to dtrt has fake_vblank in it's name, maybe
> should be renamed to no_vblank or so (the various flags that control it
> are a bit better named).
> 
> Again the docs should explain it all, but maybe we should clarify them or
> perhaps rename that helper to be more meaningful.
> 
> > > Blitting/Blending in Software
> > > =============================
> > > There are multiple layers to this topic (pun slightly intended):
> > >  1) Today's userspace does not expect a grayscale framebuffer.
> > >     Currently, the driver advertises XRGB8888 and converts to Y4
> > >     in software. This seems to match other drivers (e.g. repaper).
> > >
> > >  2) Ignoring what userspace "wants", the closest existing format is
> > >     DRM_FORMAT_R8. Geert sent a series[4] adding DRM_FORMAT_R1 through
> > >     DRM_FORMAT_R4 (patch 9), which I believe are the "correct" formats
> > >     to use.
> > > 
> > >  3) The RK356x SoCs have an "RGA" hardware block that can do the
> > >     RGB-to-grayscale conversion, and also RGB-to-dithered-monochrome
> > >     which is needed for animation/video. Currently this is exposed with
> > >     a V4L2 platform driver. Can this be inserted into the pipeline in a
> > >     way that is transparent to userspace? Or must some userspace library
> > >     be responsible for setting up the RGA => EBC pipeline?
> > 
> > I'm very interested in this answer as well :)
> > 
> > I think the current consensus is that it's up to userspace to set this
> > up though.
> 
> Yeah I think v4l mem2mem device is the answer for these, and then
> userspace gets to set it all up.

I think the question wasn't really about where that driver should be,
but more about who gets to set it up, and if the kernel could have
some component to expose the formats supported by the converter, but
whenever a commit is being done pipe that to the v4l2 device before
doing a page flip.

We have a similar use-case for the RaspberryPi where the hardware
codec will produce a framebuffer format that isn't standard. That
format is understood by the display pipeline, and it can do
writeback.

However, some people are using a separate display (like a SPI display
supported by tinydrm) and we would still like to be able to output the
decoded frames there.

Is there some way we could plumb things to "route" that buffer through
the writeback engine to perform a format conversion before sending it
over to the SPI display automatically?

Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
