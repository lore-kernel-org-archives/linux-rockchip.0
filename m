Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A8F1CD5BBD
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Sep 2023 13:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YGI92IVI/MOoZWqdd4YCnYs7LK0avStwnDi/62gJUIo=; b=riD+usfI6EmLgZ
	4visnzzb6PrLnq3awIJ6/Q2HqjiHSnqY3lII8aXXq+Mrn7bfHo2KJWWyx+woBYMXbI+lmzYS0Tez/
	8xfZ80YdgQhMAZv0F1RPgODaIbazfuXDhO0suxgMKPweGMzspkFxqeBYPjKPbLWv+7vDziySy8ojQ
	Ju1BwKoOdB/znQc7cWnROmo8a8lkwReRCV9USjzpPEl8WF/VzxnVvgiOkvJgdmWvsVe0Gkcmh7vmI
	BOemiFMzmaAlvp3q5KUvzF0CEyfC5lVHg5xGCkUz7v2b/PUxuQJZi7lJzQqsqKKFGP/8YdU8hSGOw
	/3OGMcnm8scYMQk3ByDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qibDd-000aco-01;
	Tue, 19 Sep 2023 13:56:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qibDZ-000abY-1B;
	Tue, 19 Sep 2023 13:56:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A26BA616CD;
	Tue, 19 Sep 2023 13:56:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00FC1C433C7;
	Tue, 19 Sep 2023 13:56:39 +0000 (UTC)
Message-ID: <14def513-1900-44e8-9b1d-154feccedf62@xs4all.nl>
Date: Tue, 19 Sep 2023 15:56:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 26/49] media: pci: tw68: Stop direct calls to queue
 num_buffers field
Content-Language: en-US, nl
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230914133323.198857-1-benjamin.gaignard@collabora.com>
 <20230914133323.198857-27-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230914133323.198857-27-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230919_065645_445920_8CE22739 
X-CRM114-Status: GOOD (  17.12  )
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

On 14/09/2023 15:33, Benjamin Gaignard wrote:
> Use vb2_get_num_buffers() to avoid using queue num_buffer field directly.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/media/pci/tw68/tw68-video.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/pci/tw68/tw68-video.c b/drivers/media/pci/tw68/tw68-video.c
> index 773a18702d36..35296c226019 100644
> --- a/drivers/media/pci/tw68/tw68-video.c
> +++ b/drivers/media/pci/tw68/tw68-video.c
> @@ -360,13 +360,13 @@ static int tw68_queue_setup(struct vb2_queue *q,
>  			   unsigned int sizes[], struct device *alloc_devs[])
>  {
>  	struct tw68_dev *dev = vb2_get_drv_priv(q);
> -	unsigned tot_bufs = q->num_buffers + *num_buffers;
> +	unsigned tot_bufs = vb2_get_num_buffers(q) + *num_buffers;
>  	unsigned size = (dev->fmt->depth * dev->width * dev->height) >> 3;
>  
>  	if (tot_bufs < 2)
>  		tot_bufs = 2;

This check can be dropped since vidq.min_buffers_needed is already set to 2.

>  	tot_bufs = tw68_buffer_count(size, tot_bufs);
> -	*num_buffers = tot_bufs - q->num_buffers;
> +	*num_buffers = tot_bufs - vb2_get_num_buffers(q);
>  	/*
>  	 * We allow create_bufs, but only if the sizeimage is >= as the
>  	 * current sizeimage. The tw68_buffer_count calculation becomes quite

Otherwise this is fine.

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
