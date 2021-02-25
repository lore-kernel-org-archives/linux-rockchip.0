Return-Path: <SRS0=CMqn=H3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EEC2C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 12:46:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 932F964EB7
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 12:46:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 932F964EB7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=fooishbar.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DcnUCZsTBG+WjnTSPtCOZ/f9bLw6bL9e6bJI6pCAl1M=; b=jNQRRUpnDbgMU8th0HDbL1X0C
	/gXkPO7/e4IZkNB7goJISq7oBFDClHB9cIIbdAfhyw0bq4kMxq2jMcQHQZZ6cNGCjaYJJzxO7pYFn
	UvI36fO/aN27G8Iqv+jawjUp0+A6gxpp+2ptsrdBP/5b+QPZEf8sCCzstk63esOxcW4E3rlaDuvPr
	vMcrhu8nmmV3p3QhJb7ESBYV28uDtDgD74G93E597uThnuAIBlDuQF0YW9Zj8GAG6nhBFXTWk74uP
	DdVscaf4FI/1I+Yh46b01amr1u4Je8aZpfgWs1DrOlaBuCE/aj1Io4+Bq5FF4RdLGTwGIrAGP5phd
	YBfLrqH4Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lFG2M-0006aB-OR; Thu, 25 Feb 2021 12:46:34 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lFG2K-0006Zb-H6
 for linux-rockchip@lists.infradead.org; Thu, 25 Feb 2021 12:46:33 +0000
Received: by mail-wm1-x32c.google.com with SMTP id p3so4547991wmc.2
 for <linux-rockchip@lists.infradead.org>; Thu, 25 Feb 2021 04:46:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ctQ049Qrt9wEqVuupXOSFKQVJpuUemyU7XofTRjq+zE=;
 b=QJzWtazFE2cK3tpA6ycjUChBEA4Amhwi709FTWrdo1+DAiEJvohAaRyFZ46sy0rfIY
 ZhzAlAWwoT6XBBaFe4LlTpfRgDKW9GkI//5nsROxlHpUSl7shutTqZdDJP0hTTSTkmvz
 oyc/K+WYIsivVGmpYKCx2vFDvRjxJwqCI+G7d7EbGdxGhmA9SfT3X1FmIwU36eVf36Is
 JaqI1Fbd2JoP20pRWejlP4OW1hxjv4T/XnXLaOPJdZ5fbmzscbm8NFRZcg522u1kPmwy
 JeJ2eh/IGjwSTVGmgEcEE2bLWHpgQYOi49sfJP6h3pIh8tEFFCB60p3C26U/D7FZcxV2
 J36g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ctQ049Qrt9wEqVuupXOSFKQVJpuUemyU7XofTRjq+zE=;
 b=dYVQeuKeax+iGz0kR8sax8SUux4vAL0fM7wg92Ba92BDOewzbB0YWNhDm5BjaouRPs
 07G4PM2dxgB+mMi1C1PpAkGz6eZLCWfd7zZYX0bhx7jVEVulfQUyK23ZZjXHZQCY8IaU
 blT7yYDy1c++KA1rd/bIymA+b18i9+rALZVJTeQ+PJ3kL8fDTxhwwZChJ9gMddfLUGP0
 FuKa0MkHIXrJWf6zJtLm3qgJJO/1gKNkljF9I207+R4uBbouikQpPe2l3Ynev+o4B8sQ
 51hwjUP7QSCE+8XBm81sbmgbxHsMw+XMD/dhJ6bSYZvs/APfIPdJiLnydiBHaZGZaGHR
 LvgQ==
X-Gm-Message-State: AOAM531r/ouycDrTHDRRW/lHVCoUs7jalldd59dN00ooUksVF2tc9rLx
 dMn6mbe1Jccg6kXE2l+xBeOh1Mm6c2Vq+qBCXjaUMw==
X-Google-Smtp-Source: ABdhPJyS3y7Yt+vLL3FwWd9OVsFOCvL/NwZCXN8irm4poF/xlmOev3fS/gusBSNEIsD3iDXERJ0p1Ut7wP57qcYbWL8=
X-Received: by 2002:a1c:1982:: with SMTP id 124mr3143741wmz.84.1614257190909; 
 Thu, 25 Feb 2021 04:46:30 -0800 (PST)
MIME-Version: 1.0
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
 <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
 <d17ea299-b21e-b298-9098-f47b780be106@rock-chips.com>
In-Reply-To: <d17ea299-b21e-b298-9098-f47b780be106@rock-chips.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 25 Feb 2021 12:46:19 +0000
Message-ID: <CAPj87rMBt9bJhPcyX--xa_wMse9JCttHCfz1PkFXFwHcRheuJg@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
To: Huang Jiachai <hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210225_074632_683630_195B1241 
X-CRM114-Status: GOOD (  15.19  )
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sandy,

On Thu, 25 Feb 2021 at 02:17, Huang Jiachai <hjc@rock-chips.com> wrote:
>      RK3399 and px30 can support YTR afbc format[RGB only], there is an
> hidden control bit to control this.

Great, thanks for providing this information!

> Hi Alyssa,
>
>      Can you add the following patch to test on your platform? thanks.
>
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> index 99bdb5a2a185..0780ad46230a 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
> @@ -105,7 +105,7 @@
>   #define AFBC_FMT_U8U8U8U8      0x5
>   #define AFBC_FMT_U8U8U8                0x4
>
> -#define AFBC_TILE_16x16                BIT(4)
> +#define AFBC_FMT_YTR           BIT(4)
>
>   /*
>    * The coefficients of the following matrix are all fixed points.
> @@ -952,7 +952,9 @@ static void vop_plane_atomic_update(struct drm_plane
> *plane,
>          if (rockchip_afbc(fb->modifier)) {
>                  int afbc_format =
> vop_convert_afbc_format(fb->format->format);
>
> -               VOP_AFBC_SET(vop, format, afbc_format | AFBC_TILE_16x16);
> +               if (fb->modifier & AFBC_FORMAT_MOD_YTR)
> +                       afbc_format |= AFBC_FMT_YTR;
> +               VOP_AFBC_SET(vop, format, afbc_format);
>                  VOP_AFBC_SET(vop, hreg_block_split, 0);
>                  VOP_AFBC_SET(vop, win_sel, VOP_WIN_TO_INDEX(vop_win));
>                  VOP_AFBC_SET(vop, hdr_ptr, dma_addr);
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> index 4a2099cb582e..48e131b88c23 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> @@ -20,6 +20,7 @@
>   #define ROCKCHIP_AFBC_MOD \
>          DRM_FORMAT_MOD_ARM_AFBC( \
>                  AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 | AFBC_FORMAT_MOD_SPARSE \
> +                       | AFBC_FORMAT_MOD_YTR \
>          )

Looks good - this will help us confirm. I think the complete patch
though would advertise both YTR and non-YTR modifiers: per Arm's
recommendation, it sounds like [AX]RGB8888 formats should only
advertise the non-YTR variant, and [AX]BGR8888 should advertise both
variants. Does that make sense?

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
