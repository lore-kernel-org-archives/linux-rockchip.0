Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB633CD5BC8
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Sep 2023 14:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cb6yO/SHbYdqzffzHTN9foL8C2bDUqki/0SGtEpZFgA=; b=RqYmB1lh1GoAPV
	JmMyRHr9zsndk0K2TQ8x+jdF5oG5UyT9D9iWrSRfTt+1H52187pmfEBZG4B5PpDLp3BH6HBizGmIt
	soa1kt23txaK6kUjDtXrBSnrOUj7vxqlocU4xM+cwSkPdmWrMR/fKPcG4x8xCQ8am8zFB1gefKxzz
	/NGmNBEYquw2KnRMxa0WJG8Fwtt7+PgHkEtMxYb33Wc23ApNGxdhnX5cutP7ukIZINXnchDQeQ9PX
	/3eQp2OMZFd823vCJwun56fCZuV2suqZsZvXu2R/6lR60Zdpcq7u4Anj7Dtsg+3p1UYuslvSA1eyy
	en9wlvyLzSrl/botBLQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qibaR-000df7-2P;
	Tue, 19 Sep 2023 14:20:23 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qibaN-000ddS-1c;
	Tue, 19 Sep 2023 14:20:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 45CB7CE126B;
	Tue, 19 Sep 2023 14:20:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEF78C433C7;
	Tue, 19 Sep 2023 14:20:10 +0000 (UTC)
Message-ID: <e534208c-78ca-48f1-8250-d1a2790e080e@xs4all.nl>
Date: Tue, 19 Sep 2023 16:20:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 39/49] media: usb: hackrf: Stop direct calls to queue
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
 <20230914133323.198857-40-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230914133323.198857-40-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230919_072019_761206_FD4F3E53 
X-CRM114-Status: GOOD (  14.91  )
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
>  drivers/media/usb/hackrf/hackrf.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/usb/hackrf/hackrf.c b/drivers/media/usb/hackrf/hackrf.c
> index 3e535be2c520..9c0ecd5f056c 100644
> --- a/drivers/media/usb/hackrf/hackrf.c
> +++ b/drivers/media/usb/hackrf/hackrf.c
> @@ -753,12 +753,13 @@ static int hackrf_queue_setup(struct vb2_queue *vq,
>  		unsigned int *nplanes, unsigned int sizes[], struct device *alloc_devs[])
>  {
>  	struct hackrf_dev *dev = vb2_get_drv_priv(vq);
> +	unsigned int q_num_bufs = vb2_get_num_buffers(vq);
>  
>  	dev_dbg(dev->dev, "nbuffers=%d\n", *nbuffers);
>  
>  	/* Need at least 8 buffers */
> -	if (vq->num_buffers + *nbuffers < 8)
> -		*nbuffers = 8 - vq->num_buffers;
> +	if (q_num_bufs + *nbuffers < 8)
> +		*nbuffers = 8 - q_num_bufs;

Drop check, set min_buffers_needed to 8.

Regards,

	Hans

>  	*nplanes = 1;
>  	sizes[0] = PAGE_ALIGN(dev->buffersize);
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
