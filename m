Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB035CD54A9
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Sep 2023 09:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xpNAN7+xWmNycsf3acDX8hhHkPUdpTmL35k5doQUJGM=; b=ML+Vn3M37mTH6F
	/s4k0Gmts2JCPouBgCY5gbiNXPEzc8BEwwN1DAkW4cPlm/lEmjnlHHRCtrycZmJpfKN5uK2P61KLz
	NWnapXNfWTsPtNcngIChW2aJFBU93Ma/4WSRVi+91NRd7LE3ANtpK+yKwkfbb9IXrPjpn8C9XYrNc
	PyGz4d/wG/Gv92CDeyi437Qz3vXk0nPg9p/UMgx+NDLc4CEHcnwpdU1lRV74E3/kIpTz0/JW46Q27
	shcDN9EkF3bqyBDGUe6Gv1j8X/Qb8DguwEVuYB6RGEvkISHn+9PKnWw6fr1ZsEozHjkgQSvntcEed
	A7A97eQV8mChQCrN5s4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiWpz-00HQxW-1U;
	Tue, 19 Sep 2023 09:16:07 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiWpv-00HQvu-20;
	Tue, 19 Sep 2023 09:16:05 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 99C78CE1291;
	Tue, 19 Sep 2023 09:16:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10CC2C433C8;
	Tue, 19 Sep 2023 09:15:55 +0000 (UTC)
Message-ID: <280e45a0-6707-4288-882c-3378cbd53370@xs4all.nl>
Date: Tue, 19 Sep 2023 11:15:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 01/49] media: videobuf2: Rework offset 'cookie'
 encoding pattern
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
 <20230914133323.198857-2-benjamin.gaignard@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230914133323.198857-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230919_021604_072896_B099F382 
X-CRM114-Status: GOOD (  28.88  )
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
> Change how offset 'cookie' field value is computed to make possible
> to use more buffers (up to 0x7fff)
> With this encoding pattern we know the maximum number that a queue
> could store so we can check ing at queue init time.
> It also make easier and faster to find buffer and plane from using
> the offset field.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../media/common/videobuf2/videobuf2-core.c   | 48 +++++++++----------
>  1 file changed, 24 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/media/common/videobuf2/videobuf2-core.c b/drivers/media/common/videobuf2/videobuf2-core.c
> index cf6727d9c81f..cf3b9f5b69b7 100644
> --- a/drivers/media/common/videobuf2/videobuf2-core.c
> +++ b/drivers/media/common/videobuf2/videobuf2-core.c
> @@ -31,6 +31,10 @@
>  
>  #include <trace/events/vb2.h>
>  
> +#define PLANE_INDEX_SHIFT	(PAGE_SHIFT + 3)
> +#define PLANE_INDEX_MASK	0x7
> +#define BUFFER_INDEX_MASK	0x7fff

It's a bit paranoid, but I would like to add a check for PAGE_SHIFT here:

#if PAGE_SHIFT != 12
#error Expected PAGE_SHIFT to be 12
#endif

Things will go very wrong if this value ever changes...

> +
>  static int debug;
>  module_param(debug, int, 0644);
>  
> @@ -358,21 +362,23 @@ static void __setup_offsets(struct vb2_buffer *vb)
>  	unsigned int plane;
>  	unsigned long off = 0;
>  
> -	if (vb->index) {
> -		struct vb2_buffer *prev = q->bufs[vb->index - 1];
> -		struct vb2_plane *p = &prev->planes[prev->num_planes - 1];
> -
> -		off = PAGE_ALIGN(p->m.offset + p->length);
> -	}
> +	/*
> +	 * Offsets cookies value have the following constraints:
> +	 * - a buffer could have up to 8 planes.
> +	 * - v4l2 mem2mem use bit 30 to distinguish between source and destination buffers.
> +	 * - must be page aligned
> +	 * That led to this bit mapping:
> +	 * |30                |29        15|14       12|11 0|
> +	 * |DST_QUEUE_OFF_BASE|buffer index|plane index| 0  |
> +	 * where there is 15 bits to store buffer index.

typo: is -> are

> +	 */
> +	off = vb->index << (PLANE_INDEX_SHIFT);

No need for ().

>  
>  	for (plane = 0; plane < vb->num_planes; ++plane) {
> -		vb->planes[plane].m.offset = off;
> +		vb->planes[plane].m.offset = off + (plane << PAGE_SHIFT);
>  
>  		dprintk(q, 3, "buffer %d, plane %d offset 0x%08lx\n",
>  				vb->index, plane, off);
> -
> -		off += vb->planes[plane].length;
> -		off = PAGE_ALIGN(off);
>  	}
>  }
>  
> @@ -2209,21 +2215,15 @@ static int __find_plane_by_offset(struct vb2_queue *q, unsigned long off,
>  		return -EBUSY;
>  	}
>  
> -	/*
> -	 * Go over all buffers and their planes, comparing the given offset
> -	 * with an offset assigned to each plane. If a match is found,
> -	 * return its buffer and plane numbers.
> -	 */
> -	for (buffer = 0; buffer < q->num_buffers; ++buffer) {
> -		vb = q->bufs[buffer];
> +	/* Get buffer and plane from the offset */
> +	buffer = (off >> PLANE_INDEX_SHIFT) & BUFFER_INDEX_MASK;
> +	plane = (off >> PAGE_SHIFT) & PLANE_INDEX_MASK;
>  
> -		for (plane = 0; plane < vb->num_planes; ++plane) {
> -			if (vb->planes[plane].m.offset == off) {
> -				*_buffer = buffer;
> -				*_plane = plane;
> -				return 0;
> -			}
> -		}
> +	vb = q->bufs[buffer];

Hmm, shouldn't there be a sanity check for the buffer value?

> +	if (vb->planes[plane].m.offset == off) {

Does this check make sense?

> +		*_buffer = buffer;
> +		*_plane = plane;
> +		return 0;
>  	}
>  
>  	return -EINVAL;

How about this:

	/* Get buffer and plane from the offset */
	*buffer = (off >> PLANE_INDEX_SHIFT) & BUFFER_INDEX_MASK;
	*plane = (off >> PAGE_SHIFT) & PLANE_INDEX_MASK;

	if (*buffer >= q->num_buffers || *plane >= q->bufs[buffer]->num_planes)
		return -EINVAL;
	return 0;

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
