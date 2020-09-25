Return-Path: <SRS0=GXEY=DC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6D5C4741F
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 20:42:35 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5A57C20838
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 20:42:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="iT4zTpSO";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ar0xF7mO"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5A57C20838
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TWYXKvScB/amJxOJuTLuAjwyS3R0Jdv5M0k23ryBCJs=; b=iT4zTpSOGTum8SA3tHUd/by2t
	i9MCvy8Yq+zciw/rYQq+BknsRppkE4Uu3S0+GoduqQKMxCT+/NoZ95IeBPunGJwFHgkJmBz56Mb4Y
	IxqiJE3iKLhfhlLfe0qI3x7G6rnTl0oYSvvyYVTIVr7fK9rs7UgvjNCmn7sL4+HfRW+FnzBj3y70W
	7ECqeSupkpo+Ogrr4lJDS+u6++p0dFBHFExQMoTxYV3ju9YJX8CFYFLLqzxdpVbp7mwAf+4GaYvDh
	XN5PQHn/IXwbp6vX+0//nTZtkVM2m9XyXg9FDE5meVt+ILbbWkDFzBzE4LLAg0HXbo09eMf7WbvkI
	uCj0yt+vg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLuY0-00079e-VY; Fri, 25 Sep 2020 20:42:29 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLuXx-00078X-M1
 for linux-rockchip@lists.infradead.org; Fri, 25 Sep 2020 20:42:27 +0000
Received: by mail-wm1-x343.google.com with SMTP id b79so455748wmb.4
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Sep 2020 13:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=onDNXckTby4mBcAKEnhxgaIn2ds/xEPrayaE4G2f3Fs=;
 b=ar0xF7mOvi1fGoXzX5HFsrUAoZiiV25uMTjWCg35t2nHPXHEXhmXbYo8bGP4kYaQHW
 rv+AfMGHiMKtbH72ipBuJkYNSf5CAnLGd//5bHlLrEhbAEuyGNOd4XJ0yMdcoOVXGaTv
 6hyvwewe+zbUppk6e+AqmO+GnS+jlPqdVaS6o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=onDNXckTby4mBcAKEnhxgaIn2ds/xEPrayaE4G2f3Fs=;
 b=cpWg5gjJVbunxmuMlZIp5kVOp+rBpxMrwoDTM/FI5Dvj8qjEiWVoBq+dnvPeXV/KEs
 34ijys8fjqv21Pppg3H3oTi1S9EO2ylJtXQ/TN4A7jvIr9RWYS7mSDg187AOKrdtS94J
 iB8GL6BvrewRymYckDj/iQ3xoR3OiAvhDL5IOKOv95yWoIlnu6eES+PJjDzkXTNNJxsy
 60U11B6K/lHCU2/FlHR7A2KG4VX+vmTjLEy5sdulAU/pKN5tDYUtywV0aaaGuRlkYYkW
 UwV0ciGZHVUzQ/1Y9rqL4d+BWsLANUG4KVrBHnsIh81Yy1AdVeD8u8T2MCuqvt75KwaJ
 EQVg==
X-Gm-Message-State: AOAM531Rmcz1txlijXvSg5k2kjLnXHP4T7/UccobxtbKXfFecZjB9D5a
 AVPDaOOSBS8CxvMXDaCO3hpOYvsXTg9f5Q==
X-Google-Smtp-Source: ABdhPJy0/WO09xoyMyEjsgH+pcEi8ywepvTySLM+ZrJWOH6vz5sZh8gCh29fETV0oW4g16NoyzEHbg==
X-Received: by 2002:a1c:2e4b:: with SMTP id u72mr353593wmu.69.1601066544634;
 Fri, 25 Sep 2020 13:42:24 -0700 (PDT)
Received: from chromium.org (216.131.76.34.bc.googleusercontent.com.
 [34.76.131.216])
 by smtp.gmail.com with ESMTPSA id n2sm233344wma.29.2020.09.25.13.42.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 13:42:23 -0700 (PDT)
Date: Fri, 25 Sep 2020 20:42:22 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v3 06/12] media: staging: rkisp1: remove atomic
 operations for frame sequence
Message-ID: <20200925204222.GG3607091@chromium.org>
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
 <20200922113402.12442-7-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922113402.12442-7-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200925_164226_489625_B12C818D 
X-CRM114-Status: GOOD (  22.72  )
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

On Tue, Sep 22, 2020 at 01:33:56PM +0200, Dafna Hirschfeld wrote:
> The isp.frame_sequence is now read only from the irq handlers
> that are all fired from the same interrupt, so there is not need
> for atomic operation.
> In addition, the frame seq incrementation is moved from
> rkisp1_isp_queue_event_sof to rkisp1_isp_isr to make the code
> clearer and the incorrect inline comment is removed.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Acked-by: Helen Koike <helen.koike@collabora.com>
> 
> ---
> changes since v2:
> add a closing "}" to if condition
> remove usless inline comment
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c |  2 +-
>  drivers/staging/media/rkisp1/rkisp1-common.h  |  2 +-
>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 16 +++++-----------
>  drivers/staging/media/rkisp1/rkisp1-params.c  |  2 +-
>  drivers/staging/media/rkisp1/rkisp1-stats.c   |  3 +--
>  5 files changed, 9 insertions(+), 16 deletions(-)
> 

Thank you for the patch. Please see my comments inline.

> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 0632582a95b4..1c762a369b63 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -632,7 +632,7 @@ static void rkisp1_handle_buffer(struct rkisp1_capture *cap)
>  	curr_buf = cap->buf.curr;
>  
>  	if (curr_buf) {
> -		curr_buf->vb.sequence = atomic_read(&isp->frame_sequence);
> +		curr_buf->vb.sequence = isp->frame_sequence;

I wonder if with higher resolutions, let's say full 5 Mpix, and/or some
memory-intensive system load, like video encoding and graphics rendering,
the DMA wouldn't take enough time to have the MI_FRAME interrupt fire after
the V_START for the next frame.

I recall you did some testing back in time [1], showing that the two are
interleaved. Do you remember what CAPTURE resolution was it?

>  		curr_buf->vb.vb2_buf.timestamp = ktime_get_boottime_ns();
>  		curr_buf->vb.field = V4L2_FIELD_NONE;
>  		vb2_buffer_done(&curr_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
> index 232bee92d0eb..51c92a251ea5 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
> @@ -131,7 +131,7 @@ struct rkisp1_isp {
>  	const struct rkisp1_isp_mbus_info *src_fmt;
>  	struct mutex ops_lock; /* serialize the subdevice ops */
>  	bool is_dphy_errctrl_disabled;
> -	atomic_t frame_sequence;
> +	__u32 frame_sequence;

nit: The __ prefixed types are defined for the UAPI to avoid covering userspace
types. For kernel types please just use the plain u32.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
