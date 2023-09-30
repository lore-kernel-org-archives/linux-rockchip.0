Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D00B5E77362
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Sep 2023 08:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hU9skVL8D9G+7051vU8yNBcsm9qLWnsn2Xgeq+nGCMo=; b=RKSb11x3vt/dPF
	Tj+IpUMW9iAKhKLnufQBqBmNL0Y4hP8JQQJMOl9u14NpHlhyFpPY2zw9YyJ+GkwPb9OSbYKVDpx6j
	YywBmOQ7pgtn5gS48BYJoCdTYeBhcuc2Cs4NIgKKKruOHOBuivnWKJX848WEFNBatQlJCJp3faj5p
	RHsafwAWTIUNZ5vHNiseDl030T+f1IDtI+QC2WTgSAOdlfjZF7IsMeeaAdFZgoWQhxtEAf3oyyPQ5
	y/OQKskRV+URufhUmMyxzIXnmC2wBIrft97vDeofvs+9opjRaCN9qCtGsfqhvEHv/J1E/UL0RURq8
	m3hOy6y9Z6qjORmydrUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qmViW-009CJW-1O;
	Sat, 30 Sep 2023 08:52:52 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qmViR-009CIU-2S;
	Sat, 30 Sep 2023 08:52:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 2FB6E60AC0;
	Sat, 30 Sep 2023 08:52:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A244C433C7;
	Sat, 30 Sep 2023 08:52:42 +0000 (UTC)
Message-ID: <cf67b199-e6cb-4c49-8e88-f045ae9d1422@xs4all.nl>
Date: Sat, 30 Sep 2023 10:52:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 01/53] media: videobuf2: Rework offset 'cookie'
 encoding pattern
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230927153558.159278-1-benjamin.gaignard@collabora.com>
 <20230927153558.159278-2-benjamin.gaignard@collabora.com>
Content-Language: en-US, nl
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <20230927153558.159278-2-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230930_015247_862848_72866196 
X-CRM114-Status: GOOD (  14.84  )
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

On 27/09/2023 17:35, Benjamin Gaignard wrote:
> Change how offset 'cookie' field value is computed to make possible
> to use more buffers (up to 0x7fff)
> With this encoding pattern we know the maximum number that a queue
> could store so we can check ing at queue init time.
> It also make easier and faster to find buffer and plane from using
> the offset field.
> Change __find_plane_by_offset() prototype to return the video buffer
> itself rather than it index.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>  .../media/common/videobuf2/videobuf2-core.c   | 74 +++++++++----------
>  1 file changed, 35 insertions(+), 39 deletions(-)
> 
> diff --git a/drivers/media/common/videobuf2/videobuf2-core.c b/drivers/media/common/videobuf2/videobuf2-core.c
> index cf6727d9c81f..6eeddb3a01c7 100644
> --- a/drivers/media/common/videobuf2/videobuf2-core.c
> +++ b/drivers/media/common/videobuf2/videobuf2-core.c
> @@ -31,6 +31,14 @@
>  
>  #include <trace/events/vb2.h>
>  
> +#define PLANE_INDEX_SHIFT	(PAGE_SHIFT + 3)
> +#define PLANE_INDEX_MASK	0x7
> +#define BUFFER_INDEX_MASK	0x7fff
> +
> +#if PAGE_SHIFT != 12
> +#error Expected PAGE_SHIFT to be 12

So it turns out this can actually be something other than 12.
Search for CONFIG_ARM64_PAGE_SHIFT and CONFIG_PPC_PAGE_SHIFT.

arm64 supports 12, 14, 16 and powerpc64 supports 12, 14, 16, 18.

I think we should calculate the BUFFER_INDEX_MASK based on the
PAGE_SHIFT value. Even with a PAGE_SHIFT of 18, you can still
allocate up to 512 buffers.

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
