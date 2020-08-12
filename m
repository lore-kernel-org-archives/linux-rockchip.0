Return-Path: <SRS0=6SwX=BW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E70EC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2020 06:32:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0DD6D20768
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Aug 2020 06:32:12 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1HTWr9/z";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZoXBSqpm"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0DD6D20768
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vf8COJdDJBxY1LAy5SccEPfJDpljXfbiOQUNagl57JM=; b=1HTWr9/zMYlHR6SU7Chn8Km77
	XLLaf9ZH+UXoBNhlCzRZJ63KDkGFbz+mSZfP2IoT6lHUN/oUXVp0uSOtIwFPqGOCyEDKXA/FYWm8/
	HROXO6lI4TyIEOdvXK5KlxVnt6Mb91fsZqhkj6fvdHv1DcT1g3yccbWyEDTqa7p2+929WMkoFqKwh
	9Q9XQ3rlQMgP/2N2I6axMcjo7k5sm4lzJQfJZNtMI+0FFG5l+/ulFMErH5QME/AmnTfJ3hHLftT7U
	Ql6ufSvYChTKkuSmAMHGFcjSDk9YwCc5IuJh31Yjc98FtdDaHXWQOW2Oomuvx0bbIYTGv+EnmZKsr
	sFvLMrwew==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k5kIt-0004Ax-4a; Wed, 12 Aug 2020 06:32:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k5kIo-00049B-Dv; Wed, 12 Aug 2020 06:31:59 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F7AF20768;
 Wed, 12 Aug 2020 06:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1597213917;
 bh=aSKIYDCe9tCyqEEVWCR4TOBC4YZZ/qu7KDEDekxFTko=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ZoXBSqpm1KpbUGNJjLg471ehyQ0rOqZl77C3TpyrozdKhrpJaBpDOWgwMFtkYBu4s
 VBb6Ta6yv989xsvQxX2xY6izCalYXxRHKGtAsR5skSZ2gFlVwZf+KvgAxKbPdY4+ul
 X2A5CLjS7m4ArqQ5o9dXfKGv+XlH92cGMnxQlRxo=
Date: Wed, 12 Aug 2020 08:31:54 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
Message-ID: <20200812063154.GB1300894@kroah.com>
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200812_023158_659012_EC8A419B 
X-CRM114-Status: GOOD (  23.63  )
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
Cc: heiko@sntech.de, airlied@linux.ie, hjc@rock-chips.com,
 stable@vger.kernel.org, andrzej.p@collabora.com,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org, daniels@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
Message-ID: <20200812063154.qBoghl0N6abQWiJ9b9k4tPbEPaiKJQpG1ENhJ220Lfg@z>

On Tue, Aug 11, 2020 at 04:26:31PM -0400, Alyssa Rosenzweig wrote:
> The AFBC decoder used in the Rockchip VOP assumes the use of the
> YUV-like colourspace transform (YTR). YTR is lossless for RGB(A)
> buffers, which covers the RGBA8 and RGB565 formats supported in
> vop_convert_afbc_format. Use of YTR is signaled with the
> AFBC_FORMAT_MOD_YTR modifier, which prior to this commit was missing. As
> such, a producer would have to generate buffers that do not use YTR,
> which the VOP would erroneously decode as YTR, leading to severe visual
> corruption.
> 
> The upstream AFBC support was developed against a captured frame, which
> failed to exercise modifier support. Prior to bring-up of AFBC in Mesa
> (in the Panfrost driver), no open userspace respected modifier
> reporting. As such, this change is not expected to affect broken
> userspaces.
> 
> Tested on RK3399 with Panfrost and Weston.
> 
> Signed-off-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> index 4a2099cb5..857d97cdc 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.h
> @@ -17,9 +17,20 @@
>  
>  #define NUM_YUV2YUV_COEFFICIENTS 12
>  
> +/* AFBC supports a number of configurable modes. Relevant to us is block size
> + * (16x16 or 32x8), storage modifiers (SPARSE, SPLIT), and the YUV-like
> + * colourspace transform (YTR). 16x16 SPARSE mode is always used. SPLIT mode
> + * could be enabled via the hreg_block_split register, but is not currently
> + * handled. The colourspace transform is implicitly always assumed by the
> + * decoder, so consumers must use this transform as well.
> + *
> + * Failure to match modifiers will cause errors displaying AFBC buffers
> + * produced by conformant AFBC producers, including Mesa.
> + */
>  #define ROCKCHIP_AFBC_MOD \
>  	DRM_FORMAT_MOD_ARM_AFBC( \
>  		AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 | AFBC_FORMAT_MOD_SPARSE \
> +			| AFBC_FORMAT_MOD_YTR \
>  	)
>  
>  enum vop_data_format {
> -- 
> 2.28.0
> 

<formletter>

This is not the correct way to submit patches for inclusion in the
stable kernel tree.  Please read:
    https://www.kernel.org/doc/html/latest/process/stable-kernel-rules.html
for how to do this properly.

</formletter>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
