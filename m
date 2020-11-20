Return-Path: <SRS0=tk72=E2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD52C5519F
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2020 14:44:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E69A12224C
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2020 14:44:05 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="n0J2asG8"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E69A12224C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9DiZtBWjNBEr2j7QPWcxbxIp5UfXRjqVgClAMH6SYEo=; b=n0J2asG87NHu7mbn0XQ+usT4J
	AaIGjAJu9FTw6J73wadR3xxPESUZfp7o8MScFLiQ6ppajkIpiwomwA54dRLlYQZB2MU0X6OEOaMoa
	NKqem9cBQKD5e11D53r/e4v5iBDS2CCavQJUYwI9d8UeyJTR4bJaTKWaUSu639Azno5C/CEoHUCCT
	fuB6GE5yIxJ8OdOn4ipLTSwT0+XIAwiJ9XhWBCI+86XM/YxalrT32TdxFmD+yavqV0udReG/eWtNb
	Vjv0zxhRqHoi8TCGznpm+XyymsQAtcRt1XoZ7HyMX1yQEUXZNALA58B5nSTUrJhL1ODa9FH0Z7OH8
	exMdz2IIA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kg7dp-00060j-51; Fri, 20 Nov 2020 14:44:01 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kg7dW-0005qn-G5; Fri, 20 Nov 2020 14:43:45 +0000
Received: from [IPv6:2003:c7:cf41:a700:d85a:e53f:e26d:e760]
 (p200300c7cf41a700d85ae53fe26de760.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf41:a700:d85a:e53f:e26d:e760])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id ECE8B1F46035;
 Fri, 20 Nov 2020 14:43:38 +0000 (GMT)
Subject: Re: [PATCH] media: rockchip: rkisp1: Constify static structs
To: Rikard Falkeborn <rikard.falkeborn@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>
References: <20201119221849.147984-1-rikard.falkeborn@gmail.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <5073bc92-df77-0ca0-c932-99037c92bfa5@collabora.com>
Date: Fri, 20 Nov 2020 15:43:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201119221849.147984-1-rikard.falkeborn@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201120_094342_801002_88189E4E 
X-CRM114-Status: GOOD (  21.97  )
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
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Helen Koike <helen.koike@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 19.11.20 um 23:18 schrieb Rikard Falkeborn:
> These 'ops' structs are never modified, so make them const to allow the
> compiler to put them in read-only memory.
> 
> Signed-off-by: Rikard Falkeborn <rikard.falkeborn@gmail.com>

Thanks!

Reviewed-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

> ---
>   drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 6 +++---
>   drivers/media/platform/rockchip/rkisp1/rkisp1-common.h  | 2 +-
>   drivers/media/platform/rockchip/rkisp1/rkisp1-params.c  | 4 ++--
>   3 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index b81235afd053..380582f68ace 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -565,7 +565,7 @@ static void rkisp1_sp_set_data_path(struct rkisp1_capture *cap)
>   	rkisp1_write(cap->rkisp1, dpcl, RKISP1_CIF_VI_DPCL);
>   }
>   
> -static struct rkisp1_capture_ops rkisp1_capture_ops_mp = {
> +static const struct rkisp1_capture_ops rkisp1_capture_ops_mp = {
>   	.config = rkisp1_mp_config,
>   	.enable = rkisp1_mp_enable,
>   	.disable = rkisp1_mp_disable,
> @@ -574,7 +574,7 @@ static struct rkisp1_capture_ops rkisp1_capture_ops_mp = {
>   	.is_stopped = rkisp1_mp_is_stopped,
>   };
>   
> -static struct rkisp1_capture_ops rkisp1_capture_ops_sp = {
> +static const struct rkisp1_capture_ops rkisp1_capture_ops_sp = {
>   	.config = rkisp1_sp_config,
>   	.enable = rkisp1_sp_enable,
>   	.disable = rkisp1_sp_disable,
> @@ -1038,7 +1038,7 @@ rkisp1_vb2_start_streaming(struct vb2_queue *queue, unsigned int count)
>   	return ret;
>   }
>   
> -static struct vb2_ops rkisp1_vb2_ops = {
> +static const struct vb2_ops rkisp1_vb2_ops = {
>   	.queue_setup = rkisp1_vb2_queue_setup,
>   	.buf_queue = rkisp1_vb2_buf_queue,
>   	.buf_prepare = rkisp1_vb2_buf_prepare,
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index 3a134e97161c..038c303a8aed 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -214,7 +214,7 @@ struct rkisp1_capture {
>   	struct rkisp1_vdev_node vnode;
>   	struct rkisp1_device *rkisp1;
>   	enum rkisp1_stream_id id;
> -	struct rkisp1_capture_ops *ops;
> +	const struct rkisp1_capture_ops *ops;
>   	const struct rkisp1_capture_config *config;
>   	bool is_streaming;
>   	bool is_stopping;
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index 03f9a81df440..6af4d551ffb5 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -1469,7 +1469,7 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
>   		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
>   }
>   
> -static struct vb2_ops rkisp1_params_vb2_ops = {
> +static const struct vb2_ops rkisp1_params_vb2_ops = {
>   	.queue_setup = rkisp1_params_vb2_queue_setup,
>   	.wait_prepare = vb2_ops_wait_prepare,
>   	.wait_finish = vb2_ops_wait_finish,
> @@ -1479,7 +1479,7 @@ static struct vb2_ops rkisp1_params_vb2_ops = {
>   
>   };
>   
> -static struct v4l2_file_operations rkisp1_params_fops = {
> +static const struct v4l2_file_operations rkisp1_params_fops = {
>   	.mmap = vb2_fop_mmap,
>   	.unlocked_ioctl = video_ioctl2,
>   	.poll = vb2_fop_poll,
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
