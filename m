Return-Path: <SRS0=GXEY=DC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31BFC4727E
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 20:48:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 58BC52086A
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Sep 2020 20:48:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="fe0pBFJo";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="cKpzW1H3"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 58BC52086A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5WFtAOhFHAF3QuAsJh8vR+INlxPOCiRe/0hhlSjDKxA=; b=fe0pBFJoqRaHGpIF5FVbbRg3l
	VVgG9j8EkiSV+ywjdddcG7IhiAJ+CnN5MwOUn75eHe/yO/mSdaA252hEMWBICFF55kVfx8XFxAb8I
	FtWGlQ4IJCo1T8xblgmy1yEIWPoyZ+dS6EtsLQh6lu9lL4Yiuxj5e/joJYvc1JleaKvCerdPiciKd
	w1rnyYFRH7mXB9uS0aRSXwvrMqK6EHabz0vlz5JTQexPv+b547TaV5BPVHKO2vKoyDLlpUydZ/uCN
	YOuDE5WB8mSREur0riGaU9PfXID+1uqDXNOmTccjc7Gq3b9ITZwOAcgs3HuC2cBy95ze3/EX49exo
	gtiUdlZUQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kLudN-0008Kz-NZ; Fri, 25 Sep 2020 20:48:01 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kLudL-0008K7-Mw
 for linux-rockchip@lists.infradead.org; Fri, 25 Sep 2020 20:48:00 +0000
Received: by mail-wr1-x444.google.com with SMTP id z4so5252798wrr.4
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Sep 2020 13:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=NOmPXNXsiaqWfpcWTEcqBI/DMgPgdqgNWElxeHogcvU=;
 b=cKpzW1H3f6rztaDN37oQL4EWIyj0968VIU8H5YMS8xgrWtI3z7DmDpmNEiJZqkVjM/
 hfiCy7jbWZ1vFirIfSGbhGMwF4P8WAOXCOkKFEHKl98OwEtnxETvozRX32toaQXj1HES
 KiMRLXl1xCjdsyIPZKzpeuRGYFtUVt3t57RJw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=NOmPXNXsiaqWfpcWTEcqBI/DMgPgdqgNWElxeHogcvU=;
 b=Jvl2n/FtIjd+yAw1ogsFim43BdHK82FUgq5KM353rC6pc9YWFtZc0aKsCF5NTCydRW
 I1Nlj+n8H4K7mukAca8jFHzHwHVjICOwR4KGpUxq4E/yQmM+QsEfd+jymepkYi2sumyN
 nSbkt48iJwecqN04Ex/ZE+8qZm+hb3EgF2Ai4EJ0LwOJzgZVSHdu+c/w51Rk7NCJy9l9
 6EJwXM3PQp2GcWeVuY4WpELoMtvm0F/wWjwLrngO1VkUa3WnZVA+6r6p42oz+CCCJw3R
 gdt/amHVn1XuxcyFhVEEjQ1ATG0yw9gNuf1pcZmtW6M1SzG3kP60GLuU3RfO+zjHOmp6
 ds+g==
X-Gm-Message-State: AOAM531sLnV5FR8UAVgri0NWCNvTDg6hTTkOSl8NkxEzbc680xzT3O/R
 0s2MxJN7KbPVL9nZvj1ovcgfRA==
X-Google-Smtp-Source: ABdhPJy5MMzAKaDGxHLjdWLWC/Z+VTnQXMWv/O87Bhom/6rOfzUnb9wFaBtLzSHOWAJzU/bWtzJMmA==
X-Received: by 2002:adf:ff83:: with SMTP id j3mr6485161wrr.135.1601066878852; 
 Fri, 25 Sep 2020 13:47:58 -0700 (PDT)
Received: from chromium.org (216.131.76.34.bc.googleusercontent.com.
 [34.76.131.216])
 by smtp.gmail.com with ESMTPSA id b84sm279713wmd.0.2020.09.25.13.47.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 13:47:58 -0700 (PDT)
Date: Fri, 25 Sep 2020 20:47:56 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v3 09/12] media: staging: rkisp1: stats: protect write to
 'is_streaming' in start_streaming cb
Message-ID: <20200925204756.GH3607091@chromium.org>
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
 <20200922113402.12442-10-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200922113402.12442-10-dafna.hirschfeld@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200925_164759_771299_99F568D9 
X-CRM114-Status: GOOD (  17.01  )
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

On Tue, Sep 22, 2020 at 01:33:59PM +0200, Dafna Hirschfeld wrote:
> The field stats->is_streaming is written in 'start_streaming' callback
> without the stats->lock protection.
> The isr might run together with the callback so 'spin_lock_irq'
> should be used.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Acked-by: Helen Koike <helen.koike@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-stats.c | 2 ++
>  1 file changed, 2 insertions(+)
> 

Thank you for the patch. Please see my comments inline.

> diff --git a/drivers/staging/media/rkisp1/rkisp1-stats.c b/drivers/staging/media/rkisp1/rkisp1-stats.c
> index 6aa18d970f2b..51c64f75fe29 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-stats.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-stats.c
> @@ -157,7 +157,9 @@ rkisp1_stats_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
>  {
>  	struct rkisp1_stats *stats = queue->drv_priv;
>  
> +	spin_lock_irq(&stats->lock);
>  	stats->is_streaming = true;

Do we need this separate stream? This is a similar note to the
parameters patch - it should be possible to handle this based on the
presence of the buffers in the list, without a custom flag.

Best regards,
Tomasz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
