Return-Path: <SRS0=FJi+=DD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AFDC2D0A8
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2020 13:38:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ECAE320882
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2020 13:38:51 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="oPsJmpjT";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JXGfUbTg"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ECAE320882
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=av9xnyv6lJrb/hIAzzFuNX+W7/4db8atgSk8jWVePxk=; b=oPsJmpjT2apnq9LXjCMeUh+LZ
	FW2pFg5AddeWh94r/DU+EV48yw1d4ouvFMOM1px5FL5OzH1A6T1PaDCbnMcbLCfAmb9qvHiUO2sXl
	VUvHSvTlzu90vIJHCDGoKKzSYEjoxUnZa487xN8cWIMcc2SblEwgu8gF6IUREYw2/z9Qgu94Uv4Xw
	oaZ7QdRfwz5KRScpvz4+WltwEaRxJaF66dIgPJk70D5nZ3i0DGp9CaXqFPDBxH0J1qZRlGJGVWuEo
	kQr/3V5xA/n+QtxguHEvuC5N28AzbYfumwZE8QEeWJH8KNTRRxcOrQaFaMwwqR3jmzBXAiARj/f+F
	07uCo4fnQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kMAPW-00041Z-GR; Sat, 26 Sep 2020 13:38:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMAPU-00040r-HN
 for linux-rockchip@lists.infradead.org; Sat, 26 Sep 2020 13:38:45 +0000
Received: by mail-wr1-x442.google.com with SMTP id z4so6958413wrr.4
 for <linux-rockchip@lists.infradead.org>; Sat, 26 Sep 2020 06:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Bqi9sLwWnlTy/9duL5JURMR9XZe21FNoRwVPFWE2t+k=;
 b=JXGfUbTg3B2e8oPwjamVIwYl94Gut9IlZCO6lUl5KmN01rFWzCCyjPPDA8G58DGTyq
 ECd56fYXCwMGQOiwEzK172IrZFW3VxZm7iswSwC7ik3+B/gp9i8xm4sfFXQGr0AQQKE6
 F52ymLCWePc7oiaxtBbPE9NGMvgOostgSizJ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Bqi9sLwWnlTy/9duL5JURMR9XZe21FNoRwVPFWE2t+k=;
 b=bigbknVz/MdX4EV89+/spu1TCVaW6FnIwYC/w8cfxbpctXEDtqKp/rKMUgQjlobw9o
 9G5RrkKMf5fuHboH9CwW0FM5hZgm7EYkhWAlh40GkrIuyXC7HwVqq8avWIaWeHfUUiGv
 YNDTifD5GH+HPeCZu81HZ6s+e8AsaxCEQSGIVM40bPvJbQmF0tFDYlE0TiDXhtr0r3by
 knlPZ/fi4FHHiGR00wZS+4GejoO9ezZq7ZEb7yEbBYyWn59XoINtdgQ2f1iIvNgmS1DR
 CUBZyq0fWUo2FAb8BTcm2JoeaQPf3azIbO3Ojo75Q0UDZBTxa3R7lxQiAjr8ezMy0xIW
 /EWg==
X-Gm-Message-State: AOAM532ydGZk6IYW+NeJaXsWFqSraDuCHduJklVlt1gyIu1/g3zZ+GuM
 KDh1RCZ2S/QN2OUe8u3lj6IpOw==
X-Google-Smtp-Source: ABdhPJz1+RQLiIC5JVgwCHp0KvWiHdQSN5nUljkXNC7xYqzCl0UiIc97BKmrB6aZn7e6aozlP6nmRQ==
X-Received: by 2002:adf:f082:: with SMTP id n2mr9496786wro.35.1601127522900;
 Sat, 26 Sep 2020 06:38:42 -0700 (PDT)
Received: from chromium.org (216.131.76.34.bc.googleusercontent.com.
 [34.76.131.216])
 by smtp.gmail.com with ESMTPSA id z11sm6838306wru.88.2020.09.26.06.38.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Sep 2020 06:38:42 -0700 (PDT)
Date: Sat, 26 Sep 2020 13:38:40 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v4 00/10] media: staging: rkisp1: add support to
 V4L2_CAP_IO_MC
Message-ID: <20200926133840.GF3781977@chromium.org>
References: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200901111612.10552-1-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200926_093844_620085_811361E7 
X-CRM114-Status: GOOD (  30.47  )
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dafna,

On Tue, Sep 01, 2020 at 01:16:02PM +0200, Dafna Hirschfeld wrote:
> The patchset solves several problems in the rkisp1 driver.
> 
> 1. Currently the resizers output media code MEDIA_BUS_FMT_YUYV8_2X8 when the input is
> MEDIA_BUS_FMT_YUYV8_2X8.
> The patchset adds support to other media codes on the resizer according to
> the chroma subsampling.
> Setting the correct media code on the source pad that matches the
> chroma subsampling reflects userspace  that the resizer has downsampling
> capability and also the resizer entity does not have to check the capture entity's
> configuration to get the scaling ratio, the information of how to scale can be
> obtained from the source media code of the resizer.
> 
> 2. Add support for the V4L2_CAP_IO_MC capability on
> the mainpath and selfpath captures. This helps userspace to know the
> right configuration for streaming. This is especially helpful for the
> RGB and Grey formats that expect media bus MEDIA_BUS_FMT_YUYV8_2X8
> which is not something userspace can 'guess'. Adding a mapping of the
> required mbus code for each pixelformat also makes the link_validation
> code much simpler, it just has to check if the configuration matches the mapping.
> 
> 3. Removes unsupported packed yuv formats - this patch was already part of a pull request
> and was dropped due to merge conflicts.
> 
> 4. Remove bayer formats on the selfpath resizer since they are not
> supported on the selfpath capture.
> 
> 5. Remove support to YUV444 pixel format, I was not able to find a configuration
> that supports this format. I kept getting bad looking frames.
> I tried to add capture yuv444 formats by adding an entry:
> 
> +       {
> +               .mbus_code      = MEDIA_BUS_FMT_YUV8_1X24,
> +               .hdiv           = 1,
> +               .vdiv           = 1,
> +       }
> 
> to the list of supported formats: rkisp1_rsz_yuv_src_formats[]
> 
> full patch: http://ix.io/2vNJ
> 
> On the mainpath I get good images, but on the selfpath I get bad looking images:
> 
> https://pasteboard.co/JoWp3U4.png
> 
> https://pasteboard.co/Jp1YWLR.png
> 
> Interestingly, when changing the sp_input from default RKISP1_MI_CTRL_SP_INPUT_YUV422
> to RKISP1_MI_CTRL_SP_INPUT_YUV444, then the images that are not upscaled look good:
> 
> https://pasteboard.co/Jp22u6E.png
> 
> but with upscaling (1604x1232 -> 1920x1500) it still looks bad:
> 
> https://pasteboard.co/Jp22MBU.png
> 
> 
> 6. Fix the configuration to support Grey format - the 'write_format' field should
> be 'planar'
> 
> changes since v3:
> patch 1 - remove '----' line from commit log
> patch 5-7 - refactor code, add documentation
> patch 8 - change function name rkisp1_rsz_yuv_mbus_info and code in function rkisp1_rsz_set_src_fmt
> 
> 
> Dafna Hirschfeld (10):
>   media: staging: rkisp1: cap: change RGB24 format to XBGR32
>   media: staging: rkisp1: cap: remove unsupported formats
>   media: staging: rkisp1: cap: remove unsupported format YUV444
>   media: staging: rkisp1: don't support bayer format on selfpath resizer
>   media: staging: rkisp1: add capability V4L2_CAP_IO_MC to capture
>     devices
>   media: staging: rkisp1: add a helper function to enumerate supported
>     mbus formats on capture
>   media: staging: rkisp1: rsz: enumerate the formats on the src pad
>     according to the capture
>   media: staging: rkisp1: rsz: Add support to more YUV encoded mbus
>     codes on src pad
>   media: staging: rkisp1: cap: simplify the link validation by compering
>     the media bus code
>   media: staging: rkisp1: fix configuration for GREY pixelformat
> 
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 199 +++++++++++-------
>  drivers/staging/media/rkisp1/rkisp1-common.h  |  11 +
>  drivers/staging/media/rkisp1/rkisp1-resizer.c |  93 ++++++--
>  3 files changed, 203 insertions(+), 100 deletions(-)
> 

Except one comment for the YUV 4:2:2 format removal patch,

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
