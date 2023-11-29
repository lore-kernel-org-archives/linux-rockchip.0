Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20B69C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Nov 2023 20:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PqWdfsqJzT5ZeGMrQz/wUrQTFLMO17p4ypgbMpg5nbI=; b=y/rVGRTmod3zXU
	8W3mKNLxguf6d0J/pSgyVasLeSLFIpaKxZehHIz06Jzczwf1/OBzmJXoaRH9kr0J+fUm2cu3h/sxC
	KUHIyAbxSluj0cwVpzwaBI0gfGPKis4JBGPMn9Oxh+/XlSKauqfwkMmaWnqHNYjD+z+t5e3+07lRx
	bQdEKQzTHvqSDKoqJovJ4SdbnhPTQ7I1DNRrzwKAIWWodTsgZzpIkX6+KrSo3M/Dm/w6wuFvgFfxH
	o4/QqThIa8jUvya8MWuO0i7Qc5u5TC9roBg7THJ5E6JCMuCuYHpyX6zQgSRXpaJDQ4AsRySu+9O+3
	EHxGHvXSJLaAp7RWjb8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Qpn-009DkY-0a;
	Wed, 29 Nov 2023 20:06:59 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8Qpg-009Dil-1y;
	Wed, 29 Nov 2023 20:06:56 +0000
Received: from pendragon.ideasonboard.com (aztw-30-b2-v4wan-166917-cust845.vm26.cable.virginm.net [82.37.23.78])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 5F8556F0;
	Wed, 29 Nov 2023 21:06:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701288375;
	bh=pr+DI5rX3G04hdirVZl6BkJQ1CLmT65yZtHt6DXjLiQ=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=VL05jxidfay1sFOSzYKbcy2FZEW1U8kscMsQ8whITFDm3SfVNs5cKFR7evcrNSPhR
	 ID63lSLDWx5GiIxP4UAeBXndZgTHzGth7c2fg1EKtEd+zDlMwV1zJWVD542Bw+TAXk
	 I1wr5C5rutATEIoNtXji7z4ziw6/lhFH/+D1DkT4=
MIME-Version: 1.0
In-Reply-To: <20231129092956.250129-4-paul.elder@ideasonboard.com>
References: <20231129092956.250129-1-paul.elder@ideasonboard.com> <20231129092956.250129-4-paul.elder@ideasonboard.com>
Subject: Re: [PATCH 3/3] media: rkisp1: debug: Count completed frame interrupts
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com, Paul Elder <paul.elder@ideasonboard.com>, Dafna Hirschfeld <dafna@fastmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
To: Paul Elder <paul.elder@ideasonboard.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
Date: Wed, 29 Nov 2023 20:06:48 +0000
Message-ID: <170128840893.3048548.12921821466589985052@ping.linuxembedded.co.uk>
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231129_120655_626709_9B3203F1 
X-CRM114-Status: GOOD (  15.11  )
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

Quoting Paul Elder (2023-11-29 09:29:56)
> Add a counter to debugfs to count the number of frame-end interrupts.
> 

And I alway like having counters for debug ... so I like this.


Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>

> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-common.h | 1 +
>  drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c  | 2 ++
>  drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c    | 2 ++
>  3 files changed, 5 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index 1e7cea1bea5e..be69173958a4 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -417,6 +417,7 @@ struct rkisp1_debug {
>         unsigned long stats_error;
>         unsigned long stop_timeout[2];
>         unsigned long frame_drop[2];
> +       unsigned long complete_frames;
>  };
>  
>  /*
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> index f66b9754472e..1b1edfd3ab6c 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> @@ -232,6 +232,8 @@ void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>                              &debug->frame_drop[RKISP1_MAINPATH]);
>         debugfs_create_ulong("sp_frame_drop", 0444, debug->debugfs_dir,
>                              &debug->frame_drop[RKISP1_SELFPATH]);
> +       debugfs_create_ulong("complete_frames", 0444, debug->debugfs_dir,
> +                            &debug->complete_frames);
>         debugfs_create_file("input_status", 0444, debug->debugfs_dir, rkisp1,
>                             &rkisp1_debug_input_status_fops);
>  
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index 64a956b9f2d0..06cdb4edf19c 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -991,6 +991,8 @@ irqreturn_t rkisp1_isp_isr(int irq, void *ctx)
>         if (status & RKISP1_CIF_ISP_FRAME) {
>                 u32 isp_ris;
>  
> +               rkisp1->debug.complete_frames++;
> +
>                 /* New frame from the sensor received */
>                 isp_ris = rkisp1_read(rkisp1, RKISP1_CIF_ISP_RIS);
>                 if (isp_ris & RKISP1_STATS_MEAS_MASK)
> -- 
> 2.39.2
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
