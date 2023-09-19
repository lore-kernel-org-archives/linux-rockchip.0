Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54D9FCD5BC2
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Sep 2023 13:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lK2J+9a0eSIa2PpG3pSUzAdE0q0QZIz23bDyB/eiwME=; b=V46g3cqadTj2Ul
	qGKRYQbMCpRor8DpCQlIEddQcDhEhBDVYp3jfhCv2h8PApmslX1gYryD7Mh252l2Ct0yD2UDNcvPG
	Ym9aKXu03zb6z/ygCxcslpms7Z/wtXOjNMmy3yGaurE2uEXk1YcaYj5fU5/9+h+B7hGdGl6xj1v/5
	Gswl9e+Gy6Y+zq8zO1adlHOYAj+4nhvovB0GpqrbDyyUMAiL+XL9aFNDnC3ajSeYq8jiZLssx9V9L
	aPVOCof7VSELrIkkIQm0jsT73lLv6IdEBLfHusQMAeSGV2UnpFhIka/jbS8WJQ0ZWEmzU48BMBOK3
	2dnFBOGsMpvY0wpGvm1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qib18-000ZCG-1Y;
	Tue, 19 Sep 2023 13:43:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qib14-000ZAo-2a;
	Tue, 19 Sep 2023 13:43:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 3C9BC616B0;
	Tue, 19 Sep 2023 13:43:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CDD0C433C8;
	Tue, 19 Sep 2023 13:43:45 +0000 (UTC)
Message-ID: <fe0405a0-e150-477c-9fdb-e5b65c8f05ce@xs4all.nl>
Date: Tue, 19 Sep 2023 15:43:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 24/49] media: pci: dt3155: Stop direct calls to queue
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
 <20230914133323.198857-25-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230914133323.198857-25-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230919_064350_877255_34798A66 
X-CRM114-Status: GOOD (  14.98  )
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
>  drivers/media/pci/dt3155/dt3155.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/media/pci/dt3155/dt3155.c b/drivers/media/pci/dt3155/dt3155.c
> index 548156b199cc..d3abb0e093c1 100644
> --- a/drivers/media/pci/dt3155/dt3155.c
> +++ b/drivers/media/pci/dt3155/dt3155.c
> @@ -126,10 +126,11 @@ dt3155_queue_setup(struct vb2_queue *vq,
>  
>  {
>  	struct dt3155_priv *pd = vb2_get_drv_priv(vq);
> +	unsigned int q_num_bufs = vb2_get_num_buffers(vq);
>  	unsigned size = pd->width * pd->height;
>  
> -	if (vq->num_buffers + *nbuffers < 2)
> -		*nbuffers = 2 - vq->num_buffers;
> +	if (q_num_bufs + *nbuffers < 2)
> +		*nbuffers = 2 - q_num_bufs;

Just drop this, min_buffers_needed is already set to 0.

Regards,

	Hans

>  	if (*num_planes)
>  		return sizes[0] < size ? -EINVAL : 0;
>  	*num_planes = 1;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
