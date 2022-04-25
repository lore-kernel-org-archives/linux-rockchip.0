Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D742BC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 10:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N1VWqVkb5zOwZir0DrLvJC3MS7KIKB4CpMyTwRlyUNU=; b=cQgczCjk5W0y8F
	FZw5WzQBVu4bk+VBbPKh2jflA/ARkqW+UQ8aKF9FefCEgq8Lmd7txaHRa9nxKfJPX75dp1gH3UGHk
	5T6KL5IKElhmrOzjqH8DLPhA12yOEweF3Rh/vOFxdjQLvKfj27I+c0zeM8QfnjEOpeB3lgYTUl4/9
	wB4YlC1Cpw5NnJxyHUUEqYtfiKwYU3tSQJAqmgeJ1XmUtXEOELRiEpGPAnPdOJBZp2/svuKG4cwwo
	54jbby5mCdDcINCBINtBuWbi3MCh91mtMs+RoIMXZyF4kjuD4be9edj0QZyYAwxaLIka2sjmA1pPG
	14bLSfnO/1fqfM7JMvCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1niwMc-009CMm-S6; Mon, 25 Apr 2022 10:54:42 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1niwMZ-009CL7-EW
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 10:54:41 +0000
Received: by mail-ej1-x62a.google.com with SMTP id r13so28832186ejd.5
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 03:54:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=i6hCp3oELR/UM/THJkQ0oUXJn3QFcO2EJ4qGGI5KEe4=;
 b=ZqDYpg3A4PPDg26sYo7VfPvQYueU6v5QbcH01SXz0SXtKmSPqF1bD8mmdaCfr3A0Eb
 XzcJFp+myJln4xa4wxnpxEADm/qzsmPVMG7KeXEdQJ65Peb2ZLW24MaiBRA8mPUBMe17
 0px9w23Q9yTyfPWVIvTMaI8vq/970SXxzEsDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=i6hCp3oELR/UM/THJkQ0oUXJn3QFcO2EJ4qGGI5KEe4=;
 b=VxfW1vwTPtgTIx+QwflRsr25r/OkJyJMxvtHmtgcvgm6SmZ6aqRTfzpQCK321jutDa
 z/jirjpgn7FN1fSs3HG3Q+1A407nbvVM3Gu2moyzaWwExprS3/d8qiYrICZXh1zjAGWH
 rklOoaz3+OcqLnTQ0D+hHsPRVt21VIAOJ4YVhiggWuz/PWsrEYduhdsqcMvfCPatPXB8
 Y4nlyKtVd80TsXQBNGvxrKtrbDsIQcFrJB258pruXRKrS/41N9eN53F4NuZgx4DeVK1q
 VX9xvEsSJmIEttPBfElkSbaCYEFSO+Q2x2mUMlzI6JIX0Iy1PcMT4OoIbNCQ1U5/H/ED
 zNRw==
X-Gm-Message-State: AOAM532un5ZCRYocjo7A5l/Nfq4JAGvIwVDWZFfgpTzOi0n3pFpjbsrO
 cNkL7lF8iHkumaxCubn17TwgYQ==
X-Google-Smtp-Source: ABdhPJxlO/xkv1pXpy8bJL4taPNl8hGo+wAnkSkAhoTghZl8eucZfyT2FTO1x29MfvNVKWRwqRm9Ug==
X-Received: by 2002:a17:906:9c83:b0:6df:839a:a6d0 with SMTP id
 fj3-20020a1709069c8300b006df839aa6d0mr15527098ejc.419.1650884077099; 
 Mon, 25 Apr 2022 03:54:37 -0700 (PDT)
Received: from gmail.com ([100.104.168.197]) by smtp.gmail.com with ESMTPSA id
 u12-20020aa7d54c000000b00423e004bf9asm4434456edr.86.2022.04.25.03.54.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 03:54:36 -0700 (PDT)
Date: Mon, 25 Apr 2022 12:54:18 +0200
From: Ricardo Ribalda <ribalda@chromium.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 12/21] media: rkisp1: Move debugfs code to a separate
 file
Message-ID: <YmZ92gNFXvczsCjL@gmail.com>
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-13-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421234240.1694-13-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_035439_685877_38071BDB 
X-CRM114-Status: GOOD (  24.38  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Laurent Pinchart wrote:

> To avoid cluttering the main rkisp1-dev.c driver file, move debugfs code
> to a separate source file. This prepares for extensions to the debugfs
> infrastructure.
> 
> While at it, add a missing forward declaration for struct dentry in
> rkisp1-common.h to avoid depending on indirect includes.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
Reviewed-by: Ricardo Ribalda <ribalda@chromium.org>
> ---
>  .../media/platform/rockchip/rkisp1/Makefile   |  1 +
>  .../platform/rockchip/rkisp1/rkisp1-common.h  |  5 ++
>  .../platform/rockchip/rkisp1/rkisp1-debug.c   | 50 +++++++++++++++++++
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 33 +-----------
>  4 files changed, 57 insertions(+), 32 deletions(-)
>  create mode 100644 drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/Makefile b/drivers/media/platform/rockchip/rkisp1/Makefile
> index ab32a77db8f7..1a39bdcc608e 100644
> --- a/drivers/media/platform/rockchip/rkisp1/Makefile
> +++ b/drivers/media/platform/rockchip/rkisp1/Makefile
> @@ -3,6 +3,7 @@
>  obj-$(CONFIG_VIDEO_ROCKCHIP_ISP1) += rockchip-isp1.o
>  rockchip-isp1-objs += 	rkisp1-capture.o \
>  			rkisp1-common.o \
> +			rkisp1-debug.o \
>  			rkisp1-dev.o \
>  			rkisp1-isp.o \
>  			rkisp1-resizer.o \
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index 3b36ab05ac34..07a92ed8bdc8 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -23,6 +23,8 @@
>  
>  #include "rkisp1-regs.h"
>  
> +struct dentry;
> +
>  /*
>   * flags on the 'direction' field in struct 'rkisp1_isp_mbus_info' that indicate
>   * on which pad the media bus format is supported
> @@ -516,4 +518,7 @@ void rkisp1_stats_unregister(struct rkisp1_device *rkisp1);
>  int rkisp1_params_register(struct rkisp1_device *rkisp1);
>  void rkisp1_params_unregister(struct rkisp1_device *rkisp1);
>  
> +void rkisp1_debug_init(struct rkisp1_device *rkisp1);
> +void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1);
> +
>  #endif /* _RKISP1_COMMON_H */
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> new file mode 100644
> index 000000000000..64b33774cbdf
> --- /dev/null
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> @@ -0,0 +1,50 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Rockchip ISP1 Driver - Base driver
> + *
> + * Copyright (C) 2019 Collabora, Ltd.
> + *
> + * Based on Rockchip ISP1 driver by Rockchip Electronics Co., Ltd.
> + * Copyright (C) 2017 Rockchip Electronics Co., Ltd.
> + */
> +
> +#include <linux/debugfs.h>
> +#include <linux/device.h>
> +
> +#include "rkisp1-common.h"
> +
> +void rkisp1_debug_init(struct rkisp1_device *rkisp1)
> +{
> +	struct rkisp1_debug *debug = &rkisp1->debug;
> +
> +	debug->debugfs_dir = debugfs_create_dir(dev_name(rkisp1->dev), NULL);
> +
> +	debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
> +			     &debug->data_loss);
> +	debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
> +			     &debug->outform_size_error);
> +	debugfs_create_ulong("img_stabilization_size_error", 0444,
> +			     debug->debugfs_dir,
> +			     &debug->img_stabilization_size_error);
> +	debugfs_create_ulong("inform_size_error", 0444,  debug->debugfs_dir,
> +			     &debug->inform_size_error);
> +	debugfs_create_ulong("irq_delay", 0444,  debug->debugfs_dir,
> +			     &debug->irq_delay);
> +	debugfs_create_ulong("mipi_error", 0444, debug->debugfs_dir,
> +			     &debug->mipi_error);
> +	debugfs_create_ulong("stats_error", 0444, debug->debugfs_dir,
> +			     &debug->stats_error);
> +	debugfs_create_ulong("mp_stop_timeout", 0444, debug->debugfs_dir,
> +			     &debug->stop_timeout[RKISP1_MAINPATH]);
> +	debugfs_create_ulong("sp_stop_timeout", 0444, debug->debugfs_dir,
> +			     &debug->stop_timeout[RKISP1_SELFPATH]);
> +	debugfs_create_ulong("mp_frame_drop", 0444, debug->debugfs_dir,
> +			     &debug->frame_drop[RKISP1_MAINPATH]);
> +	debugfs_create_ulong("sp_frame_drop", 0444, debug->debugfs_dir,
> +			     &debug->frame_drop[RKISP1_SELFPATH]);
> +}
> +
> +void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
> +{
> +	debugfs_remove_recursive(rkisp1->debug.debugfs_dir);
> +}
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index f8b2573aa9da..c7ad1986e67b 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -9,7 +9,6 @@
>   */
>  
>  #include <linux/clk.h>
> -#include <linux/debugfs.h>
>  #include <linux/interrupt.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> @@ -460,36 +459,6 @@ static const struct of_device_id rkisp1_of_match[] = {
>  };
>  MODULE_DEVICE_TABLE(of, rkisp1_of_match);
>  
> -static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
> -{
> -	struct rkisp1_debug *debug = &rkisp1->debug;
> -
> -	debug->debugfs_dir = debugfs_create_dir(dev_name(rkisp1->dev), NULL);
> -	debugfs_create_ulong("data_loss", 0444, debug->debugfs_dir,
> -			     &debug->data_loss);
> -	debugfs_create_ulong("outform_size_err", 0444,  debug->debugfs_dir,
> -			     &debug->outform_size_error);
> -	debugfs_create_ulong("img_stabilization_size_error", 0444,
> -			     debug->debugfs_dir,
> -			     &debug->img_stabilization_size_error);
> -	debugfs_create_ulong("inform_size_error", 0444,  debug->debugfs_dir,
> -			     &debug->inform_size_error);
> -	debugfs_create_ulong("irq_delay", 0444,  debug->debugfs_dir,
> -			     &debug->irq_delay);
> -	debugfs_create_ulong("mipi_error", 0444, debug->debugfs_dir,
> -			     &debug->mipi_error);
> -	debugfs_create_ulong("stats_error", 0444, debug->debugfs_dir,
> -			     &debug->stats_error);
> -	debugfs_create_ulong("mp_stop_timeout", 0444, debug->debugfs_dir,
> -			     &debug->stop_timeout[RKISP1_MAINPATH]);
> -	debugfs_create_ulong("sp_stop_timeout", 0444, debug->debugfs_dir,
> -			     &debug->stop_timeout[RKISP1_SELFPATH]);
> -	debugfs_create_ulong("mp_frame_drop", 0444, debug->debugfs_dir,
> -			     &debug->frame_drop[RKISP1_MAINPATH]);
> -	debugfs_create_ulong("sp_frame_drop", 0444, debug->debugfs_dir,
> -			     &debug->frame_drop[RKISP1_SELFPATH]);
> -}
> -
>  static int rkisp1_probe(struct platform_device *pdev)
>  {
>  	const struct rkisp1_match_data *match_data;
> @@ -586,13 +555,13 @@ static int rkisp1_remove(struct platform_device *pdev)
>  	v4l2_async_nf_cleanup(&rkisp1->notifier);
>  
>  	rkisp1_entities_unregister(rkisp1);
> +	rkisp1_debug_cleanup(rkisp1);
>  
>  	media_device_unregister(&rkisp1->media_dev);
>  	v4l2_device_unregister(&rkisp1->v4l2_dev);
>  
>  	pm_runtime_disable(&pdev->dev);
>  
> -	debugfs_remove_recursive(rkisp1->debug.debugfs_dir);
>  	return 0;
>  }
>  
> -- 
> Regards,
> 
> Laurent Pinchart
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
