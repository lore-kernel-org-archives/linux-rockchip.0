Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EC5ACD5BC0
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Sep 2023 13:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5qApWFdR73BEqfqyIbg6MczyrfcqAHROR2K327pKsWQ=; b=3Y0WAay+JEwTd6
	rWs0sFw2gsTv41VmFYd7bx8qVuIzn3P3sbsHpaidp/K3pclrAYbhDjXcgTpZI1GrPpHeI51AQidaJ
	CQDY4kZw64txDxSfxXE6fKHhXi6QEj3KNL4iF+QazShU7rquoqJGOYHVw6NlUlsgW4e8UzLsISJA4
	snRgJO2f+7fI7GWSon+eUY75KMf6eIkUSa9SIfc/33hAfGK1HFSI546LghJQ3ZI6+bMdB2cX6n2cx
	v2HEMUZNcT3GJ7i36Koqm7wwn9jBSsuNlarX7+Gum9zalGMbRqLM0zQn9eRM3tGBKo0LbXa5HZ3cj
	G5fZmAEuuJKZY/jU+03Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiazR-000Yir-1K;
	Tue, 19 Sep 2023 13:42:09 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiazN-000YfP-1g;
	Tue, 19 Sep 2023 13:42:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 043746153E;
	Tue, 19 Sep 2023 13:42:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE1FFC433C7;
	Tue, 19 Sep 2023 13:42:00 +0000 (UTC)
Message-ID: <ebdb6cb9-f620-422f-9e69-ac6792b19237@xs4all.nl>
Date: Tue, 19 Sep 2023 15:42:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 22/49] media: i2c: Stop direct calls to queue
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
 <20230914133323.198857-23-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230914133323.198857-23-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230919_064205_605413_6C5CB371 
X-CRM114-Status: GOOD (  15.73  )
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

On 14/09/2023 15:32, Benjamin Gaignard wrote:
> Use vb2_get_num_buffers() to avoid using queue num_buffer field directly.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  drivers/media/i2c/video-i2c.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/i2c/video-i2c.c b/drivers/media/i2c/video-i2c.c
> index 537ebd9fa8d7..60d3e2f35afe 100644
> --- a/drivers/media/i2c/video-i2c.c
> +++ b/drivers/media/i2c/video-i2c.c
> @@ -406,7 +406,7 @@ static int queue_setup(struct vb2_queue *vq,
>  	struct video_i2c_data *data = vb2_get_drv_priv(vq);
>  	unsigned int size = data->chip->buffer_size;
>  
> -	if (vq->num_buffers + *nbuffers < 2)
> +	if (vb2_get_num_buffers(vq) + *nbuffers < 2)
>  		*nbuffers = 2;
>  
>  	if (*nplanes)

This driver sets min_buffers_needed to 1, then checks for 2 here.

Drop the check and instead set min_buffers_needed to 2.

Update the commit log accordingly.

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
