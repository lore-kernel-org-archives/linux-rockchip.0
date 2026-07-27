Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90558C531FC
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 06:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iUGT+C9F0gUykzIrHx/1ZNOGmeHhVcyo/KreHgdTp+U=; b=HMgaSAei6MG6Qt
	q/YjkDfhBNaySWEpCWOqwLQRS8B5MWLTHqKhWmtlAwJGO+FcbrbBu1SVjGVxqo3qR3A4bzbfjhp+o
	YVKAh8FM+cLXCkj3pfdGoyMVQis0bC1wQUlsAN/SoWFupqYb21+VaNHd9ydjuicvgvDrBG4R/gdq7
	rxyuIvA/0Q+dLcFhf5ThFoZMvGIcZZTiwf95mk+f7shRIFr/X24ZJL5+44RPlZyqr0IZlybAdKDyb
	lyV8a2B9BC7OxBU4YTVBVmTLkoZTL4MjEmi3f+JkG6wtuGDfpm3hAk0iNxEZh0k57uaRUKiEExpS6
	Y9CjwR32OEvmBsTOYHQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woF4j-000000022ke-3AlB;
	Mon, 27 Jul 2026 06:44:33 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woF4g-000000022je-3CKY
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 06:44:32 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-38e7109321dso1217361a91.3
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Jul 2026 23:44:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785134669; cv=none;
        d=google.com; s=arc-20260327;
        b=gaw6f5wzwXRRobbmvbFvx3MWw/uwCzcsvNA2Dn0byQ8oRThdgOl2YajgS4vzkL1qh0
         T+mQ8SfEVIl3HG//1L1hTwrZkoJ+NIoU8ShfuoeZSbDq9CbBQSA1PG6mYqW9TXR/t9f+
         dFV8Ob/ou2UCIqSLSDi4caSPwJjfRqJ3ye7z43CiwXPZP97Wjc1tG2zh+5zZGYZ6FQ4b
         Jr7BC3P9y7XWdfSE0xu0zp+xdOaFc9b5gl3pJHcTqG8F4dIU71fkRiaAudSbeqstaGOr
         HseIuUgS0ZCQoGAZUSNv6wb2TqCvZXGo+f8EsGRG8xBKTwmxhenUVdBa5XXyFRy4HSnl
         hBDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VVhy2zBHRxUQesgFWLmDsfBmAyKMFgT84KyKy5f5YfE=;
        fh=y6ctMU20UoOPBeoP7FDKDz1UyCQJB9HoWsdUf2Vrs90=;
        b=SuPJD4e+zaUDBNi20VtuweNN9Yp872SR6/WFkYW/j+JVDMQi1XrSgmK5uxMqkAuYzw
         T0q8VWAvbXW10NzE8rybakCWB65ikQynrLlP/e6PsQtHxyhOXox72wtU3nHp5CHzDof0
         oiyG5C0rOnT/jwGu0RalVIhLfgJCk59TvDB3g4kYgRpysucMCxOJkUfcDcFPCTJkFPVS
         UZZag/sppRP2zZ9hu0yZ0e7jOkzJUpPE06Wfl1hwn89tTOz5t0SHBrjTO59XLxRAYCWr
         V3/WOLD3Edh2mdlKoyKjF1Gv9XJti89Dt1ocFach2HsnVjNhhTvlH2K0LwhJxr68HWf6
         BLvA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785134669; x=1785739469; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=VVhy2zBHRxUQesgFWLmDsfBmAyKMFgT84KyKy5f5YfE=;
        b=dA/+hzElyuldR355XqffI9nDKECmpgPknEFaSMfYTDxb9aUfBWGpfqNQgAu4zOoBgQ
         BHZLNQJYvFs+e6a2UUsYbKhBMZ7dwK+MuDc0qtDYqK6lHv9bVxtmD9+C2XVIIyzaJYPX
         b8j1r0BBUPSrPV8d6etE9sZfm6b+4YzpHHDM+xKOho6B6GODDZ3haGW7kVQLo2NMJuK7
         qHc8Gz7zitNNGN2M+DEiEvqOmpzd7mDtnVQblk7jTgOtLf7QI76ocKT0aoRq8Xn9Rq7e
         wXVzVd5ZxslqqahpnGC7D+xpz5Wm6vXHZtAuRoQPJhvlW1Y+VdI+CakgCGSQu+Z7ZI3v
         8Nig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785134669; x=1785739469;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=VVhy2zBHRxUQesgFWLmDsfBmAyKMFgT84KyKy5f5YfE=;
        b=bh0kDahqQNJTVxcVxw/LvwBS9cWC9Eme6GJMf6zznlVwOcmbdC2AoluuCLd9Fwsx4G
         +DMA0fWioRzEL9Evja/4u2TeZw+AL3+XX/0eKhdmqhwVQX7Lkn/ugr9LtLxQuKJ0mfWJ
         JYJrvl+BioJ+KBKxUtOlK1m6/IlV5IfVXRCvx8IiOGqlYhet97b4mnBXYTSX0PL9RfmF
         sSUk7P0ooMII4sCxAMqvtFr9U6cRuJ+lQUenwLw73catXdZr3MCJb5/iBr8uzQj1jAcO
         gHBqhD+RatsFzfACr1wkvz3KF27vVyvFRslYXERnBRNwngUerAuw5w43PK+EzmK2aL8P
         hANA==
X-Forwarded-Encrypted: i=1; AHgh+Ro140u9wNOfODQpsIhcFPxWEuVgFzbVdTD6rZLs8OC0qdOZmSrnnFvK6j01Tqa4ZpyhT9se/LsFBza74GNYWQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxbbunfZEj0uwAi+z/EHjpB6xkjTaGNz9A6aGVHOv0wJYryiHXo
	uKYvp7bxnNyrWnA8HHGa6UNlN12wsm7UQujmpWGZpcKySHOpIr922Uka9PMJ+Rl0LS6yHhE2E6c
	hDsSPdzi2w4Ouo++FQyKo2GgT9Z6akA==
X-Gm-Gg: AR+sD12XSsl1tNPBSljM3xbmEwu0K4V2vxubzJEo027rKD+syWCSyq0HA8ZLD1gjd+/
	qS+SWfIICYeZ59NDJGxUtudI6QT+2SLmGbn+9BdLkvAm45UrznZRHi+fOSOVWn27fjRZdeyKoU3
	YlYc/SzBxKheSu5+DTQLEuFphZe5M5fMs/d9Vy1vPT3wF48f4qFvE1m7WPM62nSswwLD4PPQF+m
	Knt3yv4w8gWQaQOIZftk0G8hMHoq8M5EdK60Wo2wwJgH0B8EIegeWURII2wdiMCyzoN0whw6VJw
	MyEvsiRQNEqT+bibpOK5G+6lLpuz
X-Received: by 2002:a17:90b:3e47:b0:38e:4011:465f with SMTP id
 98e67ed59e1d1-38f2960cd53mr6833918a91.23.1785134669331; Sun, 26 Jul 2026
 23:44:29 -0700 (PDT)
MIME-Version: 1.0
References: <20260726-b4-add-rkvdec2-vp9-vdpu381-v1-0-180fb2d1f10c@gmail.com>
In-Reply-To: <20260726-b4-add-rkvdec2-vp9-vdpu381-v1-0-180fb2d1f10c@gmail.com>
From: Francesco Saverio Pavone <pavone.lawyer@gmail.com>
Date: Mon, 27 Jul 2026 08:44:17 +0200
X-Gm-Features: AUfX_mwqcqnNQMcZqt04xa55VFBtNE5LGKsPbm1cl7GlNjH5cXHOSWUWokyx1_s
Message-ID: <CAMhzubo-NJMro7+XbxD=MhSXiRp14chatDcn-=1Hsiak786uQw@mail.gmail.com>
Subject: Re: [PATCH 0/4] media: rkvdec: Add VP9 support for VDPU381 variant
To: Venkata Atchuta Bheemeswara Sarma Darbha <vdarbha0473@gmail.com>
Cc: Detlev Casanova <detlev.casanova@collabora.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Nicolas Dufresne <nicolas.dufresne@collabora.com>, Igor Paunovic <royalnet026@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_234430_810390_2415DFE4 
X-CRM114-Status: GOOD (  19.21  )
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

Rock 5B+ leg of the three-board run in the cover letter, as a tag you can
pick up. 7.1 base carrying this code, not a build of the series as posted.

Francesco Saverio Pavone <pavone.lawyer@gmail.com>


Il giorno dom 26 lug 2026 alle ore 22:28 Venkata Atchuta Bheemeswara
Sarma Darbha <vdarbha0473@gmail.com> ha scritto:
>
> Hi All,
> This patch series adds the initial VP9 support for VDPU381 present in rk3588.
>
> VDPU381 supports VP9 Profile 0 and Profile 2 up to 7680x4320@30fps.
>
> Tested with fluster (suite : VP9-TEST-VECTORS, decoder: GStreamer-VP9-V4L2SL-Gst1.0).
> The 224/305 score has been reproduced independently on three RK3588 boards
> across three kernel bases: Orange Pi 5 Pro (RK3588S, 7.2.0-rc3),
> Orange Pi 5 Plus (RK3588, 7.0) and Radxa Rock 5B+ (RK3588, 7.1).
>
> Most of the remaining failures fall into a few known categories:
>
> - All vp90-2-02-size-*.webm variants where either dimension is
>   smaller than 64 pixels fail because the hardware does not support
>   frames smaller than 64x64:
>   vp90-2-02-size-08x08.webm, vp90-2-02-size-08x10.webm,
>   vp90-2-02-size-08x16.webm, vp90-2-02-size-08x18.webm,
>   vp90-2-02-size-08x32.webm, vp90-2-02-size-08x34.webm,
>   vp90-2-02-size-08x64.webm, vp90-2-02-size-08x66.webm,
>   vp90-2-02-size-10x08.webm, vp90-2-02-size-10x10.webm,
>   vp90-2-02-size-10x16.webm, vp90-2-02-size-10x18.webm,
>   vp90-2-02-size-10x32.webm, vp90-2-02-size-10x34.webm,
>   vp90-2-02-size-10x64.webm, vp90-2-02-size-10x66.webm,
>   vp90-2-02-size-16x08.webm, vp90-2-02-size-16x10.webm,
>   vp90-2-02-size-16x16.webm, vp90-2-02-size-16x18.webm,
>   vp90-2-02-size-16x32.webm, vp90-2-02-size-16x34.webm,
>   vp90-2-02-size-16x64.webm, vp90-2-02-size-16x66.webm,
>   vp90-2-02-size-18x08.webm, vp90-2-02-size-18x10.webm,
>   vp90-2-02-size-18x18.webm, vp90-2-02-size-18x32.webm,
>   vp90-2-02-size-18x34.webm, vp90-2-02-size-18x64.webm,
>   vp90-2-02-size-18x66.webm, vp90-2-02-size-32x08.webm,
>   vp90-2-02-size-32x10.webm, vp90-2-02-size-32x18.webm,
>   vp90-2-02-size-32x34.webm, vp90-2-02-size-32x66.webm,
>   vp90-2-02-size-34x08.webm, vp90-2-02-size-34x10.webm,
>   vp90-2-02-size-34x16.webm, vp90-2-02-size-34x34.webm,
>   vp90-2-02-size-34x64.webm, vp90-2-02-size-34x66.webm,
>   vp90-2-02-size-64x08.webm, vp90-2-02-size-64x10.webm,
>   vp90-2-02-size-66x08.webm, vp90-2-02-size-66x10.webm.
>
> - vp90-2-05-resize.ivf, vp90-2-18-resize.ivf and all
>   vp90-2-21-resize_inter_*.webm variants fail. These streams change
>   resolution mid-stream on a non-keyframe, and a reference frame
>   from before the resize ends up unavailable by the time it's
>   needed again. This is being actively looked into:
>   vp90-2-05-resize.ivf, vp90-2-18-resize.ivf,
>   vp90-2-21-resize_inter_1280x720_5_1-2.webm,
>   vp90-2-21-resize_inter_1280x720_5_3-4.webm,
>   vp90-2-21-resize_inter_1280x720_7_1-2.webm,
>   vp90-2-21-resize_inter_1280x720_7_3-4.webm,
>   vp90-2-21-resize_inter_1920x1080_5_1-2.webm,
>   vp90-2-21-resize_inter_1920x1080_5_3-4.webm,
>   vp90-2-21-resize_inter_1920x1080_7_1-2.webm,
>   vp90-2-21-resize_inter_1920x1080_7_3-4.webm,
>   vp90-2-21-resize_inter_320x180_5_1-2.webm,
>   vp90-2-21-resize_inter_320x180_5_3-4.webm,
>   vp90-2-21-resize_inter_320x180_7_1-2.webm,
>   vp90-2-21-resize_inter_320x180_7_3-4.webm,
>   vp90-2-21-resize_inter_320x240_5_1-2.webm,
>   vp90-2-21-resize_inter_320x240_5_3-4.webm,
>   vp90-2-21-resize_inter_320x240_7_1-2.webm,
>   vp90-2-21-resize_inter_320x240_7_3-4.webm,
>   vp90-2-21-resize_inter_640x360_5_1-2.webm,
>   vp90-2-21-resize_inter_640x360_5_3-4.webm,
>   vp90-2-21-resize_inter_640x360_7_1-2.webm,
>   vp90-2-21-resize_inter_640x360_7_3-4.webm,
>   vp90-2-21-resize_inter_640x480_5_1-2.webm,
>   vp90-2-21-resize_inter_640x480_5_3-4.webm,
>   vp90-2-21-resize_inter_640x480_7_1-2.webm,
>   vp90-2-21-resize_inter_640x480_7_3-4.webm.
>
> - vp90-2-09-aq2.webm,
>   vp90-2-09-lf_deltas.webm,
>   vp90-2-15-segkey_adpq.webm,
>   vp90-2-19-skip-01.webm,
>   vp90-2-19-skip-02.webm,
>   vp90-2-19-skip.webm,  vp90-2-22-svc_1280x720_3.ivf,
>   are still failing and not yet root-caused.
>
> - vp91-2-04-yuv422.webm
>   vp91-2-04-yuv444.webm
>   fail because the hardware does not support the format these
>   streams use (4:2:2/4:4:4), only 4:2:0.
>
> The base vdpu381 VP9 driver support was introduced by me. Profile 2 support
> was added by Igor Paunovic. Francesco Saverio Pavone fixed bugs in
> the segmentation map size calculation and in the altref vertical
> scale factor. Igor Paunovic also fixed a decoded-frame stride bug, aligning
> bytesperline to 64 bytes in rkvdec_fill_decoded_pixfmt().
>
> ---
> Igor Paunovic (1):
>       media: rkvdec: align bytesperline to 64 bytes in rkvdec_fill_decoded_pixfmt()
>
> Venkata Atchuta Bheemeswara Sarma Darbha (3):
>       media: rkvdec: vp9: Changing get_ref_buf function name to get_ref_buf_vp9
>       media: rkvdec: Move vp9 functions to common file
>       media: rkvdec: Add VP9 support for VDPU381 variant
>
>  drivers/media/platform/rockchip/rkvdec/Makefile    |    2 +
>  .../platform/rockchip/rkvdec/rkvdec-vdpu381-regs.h |  234 +++++
>  .../platform/rockchip/rkvdec/rkvdec-vdpu381-vp9.c  | 1067 ++++++++++++++++++++
>  .../platform/rockchip/rkvdec/rkvdec-vp9-common.c   |   65 ++
>  .../platform/rockchip/rkvdec/rkvdec-vp9-common.h   |   92 ++
>  .../media/platform/rockchip/rkvdec/rkvdec-vp9.c    |  121 +--
>  drivers/media/platform/rockchip/rkvdec/rkvdec.c    |   73 +-
>  drivers/media/platform/rockchip/rkvdec/rkvdec.h    |    1 +
>  8 files changed, 1537 insertions(+), 118 deletions(-)
> ---
> base-commit: 1229e2e57a5c2980ccd457b9b53ea0eed5a22ab3
> change-id: 20260726-b4-add-rkvdec2-vp9-vdpu381-3d1bd8fca4f5
>
> Best regards,
> --
> Venkata Atchuta Bheemeswara Sarma Darbha <vdarbha0473@gmail.com>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
