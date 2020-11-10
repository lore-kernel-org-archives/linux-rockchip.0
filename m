Return-Path: <SRS0=cmcl=EQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978EDC55ABD
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2020 21:04:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 178BA206B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2020 21:04:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="XLpiz5FJ";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=vanguardiasur-com-ar.20150623.gappssmtp.com header.i=@vanguardiasur-com-ar.20150623.gappssmtp.com header.b="Ffv7bCnb"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 178BA206B2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nq3gUCOZHqkTBOquZrlXud9Y6KTK/Kmkvas92qREblU=; b=XLpiz5FJfQLDCHG43wGSaQ37o
	6VqgIxxV3zRSsSRbPv/vO24cj7nHiqKifeWxVy72KaY2ppZwHMXo4BHoYEJUtUKRC80XgiTk7dx87
	S/rpNbWt9LWpQMN6IvVKbZMMtziuFve6BFjgRjjiUfbvusC1c1vJwrp10NhXoPonedDOe/LIBQfsx
	orZFKz2Fwu+m4PZ1IpC4ynEoHTRpHwvkJ896FWes2lp6Mqbh5W4xwsAb5OnVxlXTa0R7V5aOHsp5w
	VyOfeJDYxLr9YGCeqoXH+hcLCFX31J0lolM6TWz1dtls5nOW4PjMEC12yOVDfMgZBOHC4l2giUEWP
	ctbAjiO+A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcaoG-0007m2-2f; Tue, 10 Nov 2020 21:04:12 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcaoD-0007kn-2r
 for linux-rockchip@lists.infradead.org; Tue, 10 Nov 2020 21:04:11 +0000
Received: by mail-ed1-x541.google.com with SMTP id e18so14331138edy.6
 for <linux-rockchip@lists.infradead.org>; Tue, 10 Nov 2020 13:04:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=xI45YnQNiC4P8J4lgBXG/z8cHmMzcRB6aMt37sREgLU=;
 b=Ffv7bCnbSiujBe1FuKScR6+7em4yb0WJLyXysMA6NcrvjYpAtWgIyLHNA+jRVlDsdU
 4u5wVWxcT3+j9Wl67L0rtT6CdCkfn6Oy6t5M1Y/Cp9UEaNL8UnbqbFkWs2VCwLtXqxSE
 cHPycBFCvM/absTS5+alHKmvnhds4dcyIbLjZvSraRbFx7+0YEVCZt0csdnIVX4QYwo1
 6ZCYX/ldY5YiVAFMlO0iSr+Gnf5itKawwyv88+ZwNObEQ2AQ4Q1oGmHzCTjzkv3HhgzC
 YI5LNiGNTAjXGJ16IcLPFMWs5z824tT9wonIddIe3cj41Rs6+vO8Y2LZ+I89oMXgslzd
 rHmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=xI45YnQNiC4P8J4lgBXG/z8cHmMzcRB6aMt37sREgLU=;
 b=VRzIEdiEOXSpfIpUbKqapN9eSvI/8FHnaFzhmbneKkIwyj4JRrMT4FAPQOuwsPlb5b
 VKvfCyVXzs9GbktdvDiJ/O4G2VXJoeBTShQk1BUdOSJ883d4xw1d8rWc4hRI232D1mx8
 PG3IePcwt6Lku42TZRf+9GTEt/sBV9wRQsvL2E4NI+mmoxHBDoce6RT9nkCQ096udBSR
 sUNS+RqNx5e4vw8ou8uRkl3rNB+1+31pd02NMhuVSHpYS4ordVs7QX8/aBvfLewjvK3v
 q86ewPRg0blRFL3K0EO4dYs+qPKMSfo5t6LLZQDv4Ol73WmYyBmnefs5Ov/uf3FQQzd3
 z+tg==
X-Gm-Message-State: AOAM532e/uXh15m2q7ZtBlTERci3IBxfT7qjZkHkI8AKyAuzTbQVkNWj
 bsog/plK1iPq/5uOARYfq2NIJq3H49uFM7OpOfea5oIugNt0FQ==
X-Google-Smtp-Source: ABdhPJxnvRuAM7u4ej4H8i/UnTcYekXKkcAUFyy9rn3ApxSLFAp/Wb5qXGtnMFV/hiewsNMPOeQvdI0XagDPBEoM/tw=
X-Received: by 2002:a05:6402:2059:: with SMTP id
 bc25mr1429498edb.13.1605042245675; 
 Tue, 10 Nov 2020 13:04:05 -0800 (PST)
MIME-Version: 1.0
References: <20201102190551.1223389-1-adrian.ratiu@collabora.com>
In-Reply-To: <20201102190551.1223389-1-adrian.ratiu@collabora.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 10 Nov 2020 18:03:54 -0300
Message-ID: <CAAEAJfA1N1k9Vho4weZ9VnM_v6K4RXdmERyrWcWPCj64NMzDoQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/3] media: rkvdec: Add a VP9 backend
To: Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201110_160409_183771_EBBC3539 
X-CRM114-Status: GOOD (  28.21  )
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
Cc: kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 2 Nov 2020 at 16:04, Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> Dear all,
>
> This is v5 of the series adding VP9 profile 0 decoding to rkvdec.
>
> All feedback from v4 should be addressed, there's just one thing I did
> not address: ref_frame_sign_biases in the uAPI. The userspace tool I'm

I believe that Hantro G2 VP9 needs ref_frame_sign_biases.

I think that it's also needed for the MTK decoder.
Might be worth checking that as well, if the code is publicly
available somewhere.

Coming to think about it, I think we are really close to having
this uAPI directly upstream.

Let's take a step back on why we have these uAPIs in the staging
area. Couple years ago, there were some doubts in the media community
about these uAPIs, and we wanted to wait a bit for more users
before moving to public land.

The uAPIs were meant to be in staging until enough users
appeared and we were confident enough to move to stable.

For VP9, given the feedback received through the year was already
addressed, I think all that's left is to check the interface and make sure
it can support Rockchip (RK3399, RK3326, etc), Hantro G2 and Mediatek,

We will be very close to having a public API, and we could even merge it
directly there.

Thanks,
Ezequiel

> using [1] apparently doesn't need it or the default hwreg value for it
> is capable of decoding the bitstreams I used on the driver, so I don't
> really have a use-case to change and test that. :)
>
> Considering the uAPI is a work in progress and expected to be modified,
> ref_frame_sign_biases can be added later with others which might be
> required to enable more functionality (for eg profiles >= 1).
>
> Series tested on rk3399 and applies on next-20201030.
>
> [1] https://github.com/Kwiboo/FFmpeg/tree/v4l2-request-hwaccel-4.2.2-rkvdec
>
> Changelog
> ---------
>
> v5:
>
> * Drop unnecessary OUTPUT buffer payload set in .buf_prepare.
> * Drop obsolete .per_request ctrl flag
> * Added new vp9 ctrls to v4l2_ctrl_ptr
> * Fix pahole detected padding issues
> * Send userspace an error if it tries to reconfigure decode resolution
>   as v4l2 or rkvdec-vp9 backend do not support dynamic res changes yet
> * Allow frame ctx probability tables to be non-mandatory so users can
>   set them directly during frame decoding in cases where no defaults
>   have been set previously (eg. ffmpeg vp9 backend)
> * Some comments and documentation clarifications
> * Minor checkpatch fixes
>
> v4:
>
> * Drop color_space field from the VP9 interface.
>   V4L2 API should be used for it.
> * Clarified Segment-ID comments.
> * Moved motion vector probabilities to a separate
>   struct.
>
> v3:
>
> * Fix documentation issues found by Hans.
> * Fix smatch detected issues as pointed out by Hans.
> * Added patch to fix wrong bytesused set on .buf_prepare.
>
> v2:
>
> * Documentation style issues pointed out by Nicolas internally.
> * s/VP9_PROFILE_MAX/V4L2_VP9_PROFILE_MAX/
> * Fix wrong kfree(ctx).
> * constify a couple structs on rkvdec-vp9.c
>
>
> Boris Brezillon (2):
>   media: uapi: Add VP9 stateless decoder controls
>   media: rkvdec: Add the VP9 backend
>
> Ezequiel Garcia (1):
>   media: rkvdec: Fix .buf_prepare
>
>  .../userspace-api/media/v4l/biblio.rst        |   10 +
>  .../media/v4l/ext-ctrls-codec.rst             |  550 ++++++
>  drivers/media/v4l2-core/v4l2-ctrls.c          |  239 +++
>  drivers/media/v4l2-core/v4l2-ioctl.c          |    1 +
>  drivers/staging/media/rkvdec/Makefile         |    2 +-
>  drivers/staging/media/rkvdec/rkvdec-vp9.c     | 1577 +++++++++++++++++
>  drivers/staging/media/rkvdec/rkvdec.c         |   72 +-
>  drivers/staging/media/rkvdec/rkvdec.h         |    6 +
>  include/media/v4l2-ctrls.h                    |    5 +
>  include/media/vp9-ctrls.h                     |  486 +++++
>  10 files changed, 2942 insertions(+), 6 deletions(-)
>  create mode 100644 drivers/staging/media/rkvdec/rkvdec-vp9.c
>  create mode 100644 include/media/vp9-ctrls.h
>
> --
> 2.29.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
