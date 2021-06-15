Return-Path: <SRS0=7T5N=LJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5205C48BE5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 19:22:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9401B6109D
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jun 2021 19:22:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9401B6109D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oeys82u51oNxAr1w4OV//is4QH+jstuOYXQIgcCmpjw=; b=MMB03TdDYN96Rud1muziJiGTCk
	DoZME1g5BowjKVvgPycijP70bTLNzbi2KlxAdo0Hu5smQ/4YD8JZAbRtkifMllwc4rlIhK8Jb4con
	fUSyfZRqKeUTWU3XKN5N+0JhX53Dn3B6Is2iJe14UeqIrgh3VGEHdYv0jWnjL/bpx9WfPijQIa6wA
	f0rVRT/9iUTT5DYDXLDa1WNwqsefkX3aB8zNmY5OSxnvF5pH6n9Uon2Lu8GDogDp/2kMzzvf96rMr
	UEQrbUvbzIWbhCWhgHKzKB7jwKNz+lbRIKVD2rS0J/rI0uM28XdrStlyZhT/6cwuTJmwWF3f78I+x
	Wu6oGxdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltEdR-002Or6-16; Tue, 15 Jun 2021 19:22:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt9MQ-000E8e-QY
 for linux-rockchip@bombadil.infradead.org; Tue, 15 Jun 2021 13:44:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
 :In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=rYZsCs58mCQ6FSgkEW6RtE4bxYqisIzCItW95j5fUHo=; b=lWkP5l+rNFkkiZCI81b4USjjTn
 YX6tY2c1TJP/awQLly9zPnhpLSpXyggcMVfOBCI5+ex7yLOExyddY7tFWStISDXVw6EK7bs7+FoQD
 ZaIW7EGFY27lrIBP2z9GfKgH9fspzq4g2yBU463lKCvlr7yU9qg2ctUXp3OAfB4lRuXduvHDB9yYo
 M6vpYKyYq3ApOTPvSszeWKSNO2ga5I8iYwlbE3jG6A4G5HQu+UVBlP4CoFXvpBek3u7be4Rem1TA0
 TDOpVpGkiHH9E+VkdxGBKmFtuVYCDW26Nvms4VbM4BM6hBiPSZm2gaGKOeY6XFv0f6aQ8qOon2cDp
 x8V3NlPQ==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lt1qW-007NcN-1O
 for linux-rockchip@lists.infradead.org; Tue, 15 Jun 2021 05:42:52 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 750551F42D02
Subject: Re: [PATCH v2 2/7] media: rockchip: rkisp1: allow separate interrupts
To: Heiko Stuebner <heiko@sntech.de>, mchehab@kernel.org,
 hverkuil-cisco@xs4all.nl
Cc: ezequiel@collabora.com, helen.koike@collabora.com,
 Laurent.pinchart@ideasonboard.com, linux-rockchip@lists.infradead.org,
 linux-media@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
References: <20210615003741.3758316-1-heiko@sntech.de>
 <20210615003741.3758316-3-heiko@sntech.de>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <a60a5dce-eb81-06c4-011e-ba567f143d59@collabora.com>
Date: Tue, 15 Jun 2021 08:42:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210615003741.3758316-3-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_064251_042056_E71056B2 
X-CRM114-Status: GOOD (  29.66  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On 15.06.21 03:37, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Depending on the per-soc implementation there can be one interrupt
> for isp, mipi and capture events or separate per-event interrupts.
> 
> So simply check for the presence of a named "mi" interrupt
> to differentiate between the two cases.

So in this patch you actually relay on the 'interrupt-names' property added to
the binding right? So I think you should also update the 'rockchip-isp1.yaml' file.

Thanks,
Dafna

> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>   .../platform/rockchip/rkisp1/rkisp1-capture.c |  9 ++-
>   .../platform/rockchip/rkisp1/rkisp1-common.h  |  7 ++-
>   .../platform/rockchip/rkisp1/rkisp1-dev.c     | 58 ++++++++++++++-----
>   .../platform/rockchip/rkisp1/rkisp1-isp.c     | 16 +++--
>   4 files changed, 69 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index 5f6c9d1623e4..f70c66c2a1d7 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -685,12 +685,17 @@ static void rkisp1_handle_buffer(struct rkisp1_capture *cap)
>   	spin_unlock(&cap->buf.lock);
>   }
>   
> -void rkisp1_capture_isr(struct rkisp1_device *rkisp1)
> +irqreturn_t rkisp1_capture_isr(int irq, void *ctx)
>   {
> +	struct device *dev = ctx;
> +	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
>   	unsigned int i;
>   	u32 status;
>   
>   	status = rkisp1_read(rkisp1, RKISP1_CIF_MI_MIS);
> +	if (!status)
> +		return IRQ_NONE;
> +
>   	rkisp1_write(rkisp1, status, RKISP1_CIF_MI_ICR);
>   
>   	for (i = 0; i < ARRAY_SIZE(rkisp1->capture_devs); ++i) {
> @@ -718,6 +723,8 @@ void rkisp1_capture_isr(struct rkisp1_device *rkisp1)
>   		cap->is_streaming = false;
>   		wake_up(&cap->done);
>   	}
> +
> +	return IRQ_HANDLED;
>   }
>   
>   /* ----------------------------------------------------------------------------
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index be8a350c7527..25dd5c93620e 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -12,6 +12,7 @@
>   #define _RKISP1_COMMON_H
>   
>   #include <linux/clk.h>
> +#include <linux/interrupt.h>
>   #include <linux/mutex.h>
>   #include <linux/rkisp1-config.h>
>   #include <media/media-device.h>
> @@ -459,9 +460,9 @@ void rkisp1_params_configure(struct rkisp1_params *params,
>   void rkisp1_params_disable(struct rkisp1_params *params);
>   
>   /* irq handlers */
> -void rkisp1_isp_isr(struct rkisp1_device *rkisp1);
> -void rkisp1_mipi_isr(struct rkisp1_device *rkisp1);
> -void rkisp1_capture_isr(struct rkisp1_device *rkisp1);
> +irqreturn_t rkisp1_isp_isr(int irq, void *ctx);
> +irqreturn_t rkisp1_mipi_isr(int irq, void *ctx);
> +irqreturn_t rkisp1_capture_isr(int irq, void *ctx);
>   void rkisp1_stats_isr(struct rkisp1_stats *stats, u32 isp_ris);
>   void rkisp1_params_isr(struct rkisp1_device *rkisp1);
>   
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 7afa4c123834..ddc05189c62a 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -385,18 +385,15 @@ static int rkisp1_entities_register(struct rkisp1_device *rkisp1)
>   
>   static irqreturn_t rkisp1_isr(int irq, void *ctx)
>   {
> -	struct device *dev = ctx;
> -	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
> -
>   	/*
>   	 * Call rkisp1_capture_isr() first to handle the frame that
>   	 * potentially completed using the current frame_sequence number before
>   	 * it is potentially incremented by rkisp1_isp_isr() in the vertical
>   	 * sync.
>   	 */
> -	rkisp1_capture_isr(rkisp1);
> -	rkisp1_isp_isr(rkisp1);
> -	rkisp1_mipi_isr(rkisp1);
> +	rkisp1_capture_isr(irq, ctx);
> +	rkisp1_isp_isr(irq, ctx);
> +	rkisp1_mipi_isr(irq, ctx);
>   
>   	return IRQ_HANDLED;
>   }
> @@ -478,15 +475,50 @@ static int rkisp1_probe(struct platform_device *pdev)
>   	if (IS_ERR(rkisp1->base_addr))
>   		return PTR_ERR(rkisp1->base_addr);
>   
> -	irq = platform_get_irq(pdev, 0);
> -	if (irq < 0)
> +	irq = platform_get_irq_byname_optional(pdev, "mi");
> +	if (irq == -EPROBE_DEFER) {
>   		return irq;
> +	} else if (irq < 0) {
> +		irq = platform_get_irq(pdev, 0);
> +		if (irq < 0)
> +			return irq;
> +
> +		ret = devm_request_irq(dev, irq, rkisp1_isr, IRQF_SHARED,
> +				       dev_driver_string(dev), dev);
> +		if (ret) {
> +			dev_err(dev, "request irq failed: %d\n", ret);
> +			return ret;
> +		}
> +	} else {
> +		/* we test-got the MI (capture) interrupt */
> +		ret = devm_request_irq(dev, irq, rkisp1_capture_isr, IRQF_SHARED,
> +				       dev_driver_string(dev), dev);
> +		if (ret) {
> +			dev_err(dev, "request mi irq failed: %d\n", ret);
> +			return ret;
> +		}
>   
> -	ret = devm_request_irq(dev, irq, rkisp1_isr, IRQF_SHARED,
> -			       dev_driver_string(dev), dev);
> -	if (ret) {
> -		dev_err(dev, "request irq failed: %d\n", ret);
> -		return ret;
> +		irq = platform_get_irq_byname_optional(pdev, "mipi");
> +		if (irq < 0)
> +			return irq;
> +
> +		ret = devm_request_irq(dev, irq, rkisp1_mipi_isr, IRQF_SHARED,
> +				       dev_driver_string(dev), dev);
> +		if (ret) {
> +			dev_err(dev, "request mipi irq failed: %d\n", ret);
> +			return ret;
> +		}
> +
> +		irq = platform_get_irq_byname_optional(pdev, "isp");
> +		if (irq < 0)
> +			return irq;
> +
> +		ret = devm_request_irq(dev, irq, rkisp1_isp_isr, IRQF_SHARED,
> +				       dev_driver_string(dev), dev);
> +		if (ret) {
> +			dev_err(dev, "request isp irq failed: %d\n", ret);
> +			return ret;
> +		}
>   	}
>   
>   	for (i = 0; i < match_data->size; i++)
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index 2e5b57e3aedc..1de98e688008 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -1090,13 +1090,15 @@ void rkisp1_isp_unregister(struct rkisp1_device *rkisp1)
>    * Interrupt handlers
>    */
>   
> -void rkisp1_mipi_isr(struct rkisp1_device *rkisp1)
> +irqreturn_t rkisp1_mipi_isr(int irq, void *ctx)
>   {
> +	struct device *dev = ctx;
> +	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
>   	u32 val, status;
>   
>   	status = rkisp1_read(rkisp1, RKISP1_CIF_MIPI_MIS);
>   	if (!status)
> -		return;
> +		return IRQ_NONE;
>   
>   	rkisp1_write(rkisp1, status, RKISP1_CIF_MIPI_ICR);
>   
> @@ -1131,6 +1133,8 @@ void rkisp1_mipi_isr(struct rkisp1_device *rkisp1)
>   	} else {
>   		rkisp1->debug.mipi_error++;
>   	}
> +
> +	return IRQ_HANDLED;
>   }
>   
>   static void rkisp1_isp_queue_event_sof(struct rkisp1_isp *isp)
> @@ -1143,13 +1147,15 @@ static void rkisp1_isp_queue_event_sof(struct rkisp1_isp *isp)
>   	v4l2_event_queue(isp->sd.devnode, &event);
>   }
>   
> -void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
> +irqreturn_t rkisp1_isp_isr(int irq, void *ctx)
>   {
> +	struct device *dev = ctx;
> +	struct rkisp1_device *rkisp1 = dev_get_drvdata(dev);
>   	u32 status, isp_err;
>   
>   	status = rkisp1_read(rkisp1, RKISP1_CIF_ISP_MIS);
>   	if (!status)
> -		return;
> +		return IRQ_NONE;
>   
>   	rkisp1_write(rkisp1, status, RKISP1_CIF_ISP_ICR);
>   
> @@ -1191,4 +1197,6 @@ void rkisp1_isp_isr(struct rkisp1_device *rkisp1)
>   		 */
>   		rkisp1_params_isr(rkisp1);
>   	}
> +
> +	return IRQ_HANDLED;
>   }
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
