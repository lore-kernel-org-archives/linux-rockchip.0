Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50B3FC4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Dec 2023 15:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L01UsdG2a8jMeD40uGaTL8xIPXXWusVvt1uXDIRlNso=; b=M/nqk+nuAiHZoh
	QikIiT0zlV8D+Exx0tyuxdgbYYc2l/DqDG3ltemC99rxqKXTt8XjaFAuS1/32OXxlAEnrQKMcHJNc
	MFJtGKvz/c53mGrlIQEmbGTW9vuTNrA3RrLjpT2xyZyEDUqD4emBPD9htmHPLuu2uIedUq9clEb1Q
	atRFHhLZt4qI5yvJd8u87oGEO8iq5LxausWWRvN/MPyvlGt8Dd0pG6KRSjrWakP8pgqX7dSJOc6t0
	bl/FYKRxnptZyMpC56NbZHGhzzNGzxxkEdmv0yeiJajtweQ7oI4jyMHfBP2YLbBUVx8lBE1gdKw6T
	XSladcJAAPlMdlX5rrZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r95Ti-00E31A-18;
	Fri, 01 Dec 2023 15:30:54 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r95Te-00E2zn-32;
	Fri, 01 Dec 2023 15:30:52 +0000
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E6ACBD52;
	Fri,  1 Dec 2023 16:30:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701444608;
	bh=FTr9jD8Lm2XwjtyGHb2zex8kSear/RyYVG6QAL8cQOw=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=Reysu4UkUxuLjHQtxGH/l4zxCZSpvfkhmjL2HESDiSHqLzcLZtAw7inb/beM659MB
	 ZD57gii2iVjKADR+1Y+Qn5+vprQnp+vwEu1BcvPu6dkyQhNe4FD4XMcPxZAGISJXoD
	 08BfENw0V0oq+uXIkUbjCe9xBAAHO31+2cLp2aqY=
MIME-Version: 1.0
In-Reply-To: <20231201140433.2126011-5-paul.elder@ideasonboard.com>
References: <20231201140433.2126011-1-paul.elder@ideasonboard.com> <20231201140433.2126011-5-paul.elder@ideasonboard.com>
Subject: Re: [PATCH v2 4/4] media: rkisp1: debug: Consolidate counter debugfs files
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: laurent.pinchart@ideasonboard.com, tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com, Paul Elder <paul.elder@ideasonboard.com>, Dafna Hirschfeld <dafna@fastmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
To: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Date: Fri, 01 Dec 2023 15:30:42 +0000
Message-ID: <170144464218.1400840.7647651809740627975@ping.linuxembedded.co.uk>
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231201_073051_140042_764B256E 
X-CRM114-Status: GOOD (  22.65  )
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

Quoting Paul Elder (2023-12-01 14:04:33)
> Consolidate all the debugfs files that were each a single counter into a
> single "counters" file.
> 
> While at it, reset the counters at stream on time to make it easier for
> to interpret the values in userspace.

That gives a better atomicity here I think so that's good. I guess the
debug struct could have a lock around it sometime - but I don't think
that matters in this context.

Resetting at stream on looks to make sense so:


Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> 
> ---
> New in v2
> 
>  .../platform/rockchip/rkisp1/rkisp1-capture.c |  2 +
>  .../platform/rockchip/rkisp1/rkisp1-common.h  |  4 ++
>  .../platform/rockchip/rkisp1/rkisp1-debug.c   | 69 ++++++++++++-------
>  3 files changed, 50 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index c6d7e01c8949..67b2e94dfd67 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1030,6 +1030,8 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
>         struct media_entity *entity = &cap->vnode.vdev.entity;
>         int ret;
>  
> +       rkisp1_debug_reset_counters(cap->rkisp1);
> +
>         mutex_lock(&cap->rkisp1->stream_lock);
>  
>         ret = video_device_pipeline_start(&cap->vnode.vdev, &cap->rkisp1->pipe);
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index be69173958a4..789259fb304a 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -599,9 +599,13 @@ int rkisp1_params_register(struct rkisp1_device *rkisp1);
>  void rkisp1_params_unregister(struct rkisp1_device *rkisp1);
>  
>  #if IS_ENABLED(CONFIG_DEBUG_FS)
> +void rkisp1_debug_reset_counters(struct rkisp1_device *rkisp1);
>  void rkisp1_debug_init(struct rkisp1_device *rkisp1);
>  void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1);
>  #else
> +static inline void rkisp1_debug_reset_counters(struct rkisp1_device *rkisp1)
> +{
> +}
>  static inline void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  {
>  }
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> index 79cda589d935..4358ed1367ed 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> @@ -25,6 +25,11 @@ struct rkisp1_debug_register {
>         const char * const name;
>  };
>  
> +struct rkisp1_debug_counter {
> +       const char * const name;
> +       unsigned long *value;
> +};
> +
>  #define RKISP1_DEBUG_REG(name)         { RKISP1_CIF_##name, 0, #name }
>  #define RKISP1_DEBUG_SHD_REG(name) { \
>         RKISP1_CIF_##name, RKISP1_CIF_##name##_SHD, #name \
> @@ -191,6 +196,43 @@ static int rkisp1_debug_input_status_show(struct seq_file *m, void *p)
>  }
>  DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_input_status);
>  
> +static int rkisp1_debug_counters_show(struct seq_file *m, void *p)
> +{
> +       struct rkisp1_device *rkisp1 = m->private;
> +       struct rkisp1_debug *debug = &rkisp1->debug;
> +
> +       const struct rkisp1_debug_counter counters[] = {
> +               { "data_loss", &debug->data_loss },
> +               { "outform_size_err", &debug->outform_size_error },
> +               { "img_stabilization_size_error", &debug->img_stabilization_size_error },
> +               { "inform_size_error", &debug->inform_size_error },
> +               { "irq_delay", &debug->irq_delay },
> +               { "mipi_error", &debug->mipi_error },
> +               { "stats_error", &debug->stats_error },
> +               { "mp_stop_timeout", &debug->stop_timeout[RKISP1_MAINPATH] },
> +               { "sp_stop_timeout", &debug->stop_timeout[RKISP1_SELFPATH] },
> +               { "mp_frame_drop", &debug->frame_drop[RKISP1_MAINPATH] },
> +               { "sp_frame_drop", &debug->frame_drop[RKISP1_SELFPATH] },
> +               { "complete_frames", &debug->complete_frames },
> +               { /* Sentinel */ },
> +       };
> +
> +       const struct rkisp1_debug_counter *counter = counters;
> +
> +       for (; counter->name; ++counter)
> +               seq_printf(m, "%s: %lu\n", counter->name, *counter->value);
> +
> +       return 0;
> +}
> +DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_counters);
> +
> +void rkisp1_debug_reset_counters(struct rkisp1_device *rkisp1)
> +{
> +       struct dentry *debugfs_dir = rkisp1->debug.debugfs_dir;
> +       memset(&rkisp1->debug, 0, sizeof(rkisp1->debug));
> +       rkisp1->debug.debugfs_dir = debugfs_dir;
> +}
> +
>  void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  {
>         struct rkisp1_debug *debug = &rkisp1->debug;
> @@ -198,31 +240,8 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  
>         debug->debugfs_dir = debugfs_create_dir(dev_name(rkisp1->dev), NULL);
>  
> -       debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
> -                            &debug->data_loss);
> -       debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
> -                            &debug->outform_size_error);
> -       debugfs_create_ulong("img_stabilization_size_error", 0444,
> -                            debug->debugfs_dir,
> -                            &debug->img_stabilization_size_error);
> -       debugfs_create_ulong("inform_size_error", 0444,  debug->debugfs_dir,
> -                            &debug->inform_size_error);
> -       debugfs_create_ulong("irq_delay", 0444,  debug->debugfs_dir,
> -                            &debug->irq_delay);
> -       debugfs_create_ulong("mipi_error", 0444, debug->debugfs_dir,
> -                            &debug->mipi_error);
> -       debugfs_create_ulong("stats_error", 0444, debug->debugfs_dir,
> -                            &debug->stats_error);
> -       debugfs_create_ulong("mp_stop_timeout", 0444, debug->debugfs_dir,
> -                            &debug->stop_timeout[RKISP1_MAINPATH]);
> -       debugfs_create_ulong("sp_stop_timeout", 0444, debug->debugfs_dir,
> -                            &debug->stop_timeout[RKISP1_SELFPATH]);
> -       debugfs_create_ulong("mp_frame_drop", 0444, debug->debugfs_dir,
> -                            &debug->frame_drop[RKISP1_MAINPATH]);
> -       debugfs_create_ulong("sp_frame_drop", 0444, debug->debugfs_dir,
> -                            &debug->frame_drop[RKISP1_SELFPATH]);
> -       debugfs_create_ulong("complete_frames", 0444, debug->debugfs_dir,
> -                            &debug->complete_frames);
> +       debugfs_create_file("counters", 0444, debug->debugfs_dir, rkisp1,
> +                           &rkisp1_debug_counters_fops);
>         debugfs_create_file("input_status", 0444, debug->debugfs_dir, rkisp1,
>                             &rkisp1_debug_input_status_fops);
>  
> -- 
> 2.39.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
