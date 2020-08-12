Return-Path: <SRS0=6SwX=BW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5984DC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2020 14:11:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 252B1204FD
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2020 14:11:52 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="FqpWDnpE";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="ECQa6sfG"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 252B1204FD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ap0zViFWCjqdR0GfXpHLEYy+QJWpdFZI4Sunea2J2F4=; b=FqpWDnpEXQP6EzCrCdCTlXpF9
	Xp8phOuxKNJm0nxh3uQ1KAI8SrYnQ9xshAtvDjeV+7IF4vPBR3waY9+Bgo46xJmCVi+O3xuzb4590
	KprR4cS6fyvwcwSdkWeKvDlVDVjaqy2Na87co/p1RDUmWR7L8CeUwbnyHWF0R9tP5pyjqxElvJCfZ
	G8P0YXVQxpfeWPzSpTXEmum41OpKES4ObaJuUEcX9kL2dfaMOw3uH0N3sg5jZZDKdYbyjogCmwHYc
	ZPHIpLMm4cUXrl4qUv3bt/W2LdopJbxAP1kstsMYr83VRG5B+pBeH7v8G5W+pxk01R1Xk5GB4QRsH
	o4TR0fACA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k5rTl-0001gJ-7R; Wed, 12 Aug 2020 14:11:45 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5rTj-0001eo-1r
 for linux-rockchip@lists.infradead.org; Wed, 12 Aug 2020 14:11:44 +0000
Received: by mail-wm1-x342.google.com with SMTP id f18so4329575wmc.0
 for <linux-rockchip@lists.infradead.org>; Wed, 12 Aug 2020 07:11:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TydYFMefyVh1KPudA4+DQ2jk9sD/f15l4y32PkQDdqw=;
 b=ECQa6sfG5K1RafxYb3fRlxEIbM3fDTmoh0P3mx6tgqjlqlYt6ryPAc8EpogNnKf6TZ
 s531xeP8pYRCFxeB7If8Ddvnutxoq23HHvLZqfv4bzOXFJIAFIOj/k9L2FFomkjc5geH
 NqvG7vOK7oL8aOXMJ7Z8PB7/MZRKHDJ4JiUfw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TydYFMefyVh1KPudA4+DQ2jk9sD/f15l4y32PkQDdqw=;
 b=aqmmCOrbOxIc6MFxr2XJ5lOcM7JCGeVsEhD1G2xZ5AqoamYxDCsRtdEG1PQDvRa4Ai
 YgtIFnOa2J5kZmqVtaAxpgevWF9feFGvlNzfZ1UY7LG23iZJdBsQdSsKfDi4sNJMNGKG
 P2lzdmYrW4T7Hkwk6aM9pj/UDQtgnzzSj5RJwWqbZhGXYsmiO7N3psC+MxH4YpLe3pPH
 P0tx1vj5yGCy4yEzq22SAfryTR9HTEn8Mq/t+Qbd2lNnCD784OHTN8e/kzT//tDxnYVz
 5wrB37sCwrr/ooMBk6Uj+3sAAUyMLVByW/hSwE5KKDgknnzrS2r8qbwyvbNQ/u5Bx8j2
 1Wzg==
X-Gm-Message-State: AOAM531xKImT/ZCCW9R5ISRs/5a+TUJVnIUl7hAwK332/LLIAnyYEzP7
 CuDVkAGuJghrFOzoeIOljILZQA==
X-Google-Smtp-Source: ABdhPJw1jfxV4cQZuqQJzHbNQcYtLiTcsfM5U1rvdezxh0i/i0VwK/WdxIbGxBCgtu7GE+xHEtQEXw==
X-Received: by 2002:a7b:c95a:: with SMTP id i26mr9235847wml.106.1597241500333; 
 Wed, 12 Aug 2020 07:11:40 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id s8sm3913149wmc.1.2020.08.12.07.11.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Aug 2020 07:11:39 -0700 (PDT)
Date: Wed, 12 Aug 2020 16:11:37 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
Message-ID: <20200812141137.GH2352366@phenom.ffwll.local>
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
 <20200812063154.GB1300894@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200812063154.GB1300894@kroah.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200812_101143_130937_D7BEE1E4 
X-CRM114-Status: GOOD (  28.35  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: heiko@sntech.de, airlied@linux.ie, dri-devel@lists.freedesktop.org,
 hjc@rock-chips.com, stable@vger.kernel.org, andrzej.p@collabora.com,
 linux-rockchip@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, daniel@ffwll.ch,
 linux-arm-kernel@lists.infradead.org, daniels@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Aug 12, 2020 at 08:31:54AM +0200, Greg KH wrote:
> On Tue, Aug 11, 2020 at 04:26:31PM -0400, Alyssa Rosenzweig wrote:
> > The AFBC decoder used in the Rockchip VOP assumes the use of the
> > YUV-like colourspace transform (YTR). YTR is lossless for RGB(A)
> > buffers, which covers the RGBA8 and RGB565 formats supported in
> > vop_convert_afbc_format. Use of YTR is signaled with the
> > AFBC_FORMAT_MOD_YTR modifier, which prior to this commit was missing. As
> > such, a producer would have to generate buffers that do not use YTR,
> > which the VOP would erroneously decode as YTR, leading to severe visual
> > corruption.
> > 
> > The upstream AFBC support was developed against a captured frame, which
> > failed to exercise modifier support. Prior to bring-up of AFBC in Mesa
> > (in the Panfrost driver), no open userspace respected modifier
> > reporting. As such, this change is not expected to affect broken
> > userspaces.
> > 
> > Tested on RK3399 with Panfrost and Weston.
> > 
> > Signed-off-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> > ---
> >  drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> > index 4a2099cb5..857d97cdc 100644
> > --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> > +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> > @@ -17,9 +17,20 @@
> >  
> >  #define NUM_YUV2YUV_COEFFICIENTS 12
> >  
> > +/* AFBC supports a number of configurable modes. Relevant to us is block size
> > + * (16x16 or 32x8), storage modifiers (SPARSE, SPLIT), and the YUV-like
> > + * colourspace transform (YTR). 16x16 SPARSE mode is always used. SPLIT mode
> > + * could be enabled via the hreg_block_split register, but is not currently
> > + * handled. The colourspace transform is implicitly always assumed by the
> > + * decoder, so consumers must use this transform as well.
> > + *
> > + * Failure to match modifiers will cause errors displaying AFBC buffers
> > + * produced by conformant AFBC producers, including Mesa.
> > + */
> >  #define ROCKCHIP_AFBC_MOD \
> >  	DRM_FORMAT_MOD_ARM_AFBC( \
> >  		AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 | AFBC_FORMAT_MOD_SPARSE \
> > +			| AFBC_FORMAT_MOD_YTR \
> >  	)
> >  
> >  enum vop_data_format {
> > -- 
> > 2.28.0
> > 
> 
> <formletter>
> 
> This is not the correct way to submit patches for inclusion in the
> stable kernel tree.  Please read:
>     https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
> for how to do this properly.

Greg's bot wants a cc: stable on the commit (i.e. in the commit message),
otherwise it's lost since it doesn't track what's all submitted to it
before it's merged.
-Daniel

> 
> </formletter>

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
