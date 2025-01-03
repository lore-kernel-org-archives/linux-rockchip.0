Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAE40E7718F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jan 2025 15:25:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6tEaGEZvDSc9oxK4E9Va4hjl4ngfHP8zXOKqt7WBNQ=; b=l/pTB3xCK8A3yd
	5bG8yjvw3T32iURJQW84gN4yVXFIzoxih8qxDJdWiAxrpgO6KaOIlijNsgIqXXxLdohEpMOcZSzcd
	ffNX2F/GIdo3u+So5BW/FLFzHoeaf23CN5hYjoTCT8orNViq2VgVf3/m/DxTcafRiclDXrzYvEUE/
	Ooo+Z8RQ/QbEgRYyKAmy33q+0FBAO+crKzpUfG5ja7I7BpLsxCx9euboRPN5P6IKI2zt9bKPeeU0u
	BMGhSTvQqkU4WOf/hqExzB1li1y2Dd5mvHDiNGyh2e7NxOtNZFHgQjEW5jQqkmuVnf6z43a2jnxje
	a+akv3wPLe0Re42Tuxzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTjYM-0000000DGqI-3zzi;
	Fri, 03 Jan 2025 15:25:34 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTjWO-0000000DGNP-0F4X;
	Fri, 03 Jan 2025 15:23:33 +0000
Received: from pendragon.ideasonboard.com (81-175-209-231.bb.dnainternet.fi [81.175.209.231])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 82381316;
	Fri,  3 Jan 2025 16:22:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1735917757;
	bh=i9kymvajo0n+q8tZsZ+ijeIsUcCEKGJTagFA0ES5SZU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Wkjf83bKsMJSqbD8hUCibEPlXcRcutwd9TuP0pjxy+jhrFmCGde9CZwNtX5VsQ2x2
	 Dx2XQMKTFcW5yiP4I/eVFkZ+hSmVblOhdXxx9xMFu0UvcUwI0rBFI0ZOxiZ/XFNae9
	 /T3RUsoPN0u7X++sUf+HARDP2rw4rVOiLkyvkh1Y=
Date: Fri, 3 Jan 2025 17:23:26 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Mikhail Rudenko <mike.rudenko@gmail.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: rkisp1: allow non-coherent video capture buffers
Message-ID: <20250103152326.GP554@pendragon.ideasonboard.com>
References: <20250102-b4-rkisp-noncoherent-v1-1-bba164f7132c@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250102-b4-rkisp-noncoherent-v1-1-bba164f7132c@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250103_072332_245347_75050660 
X-CRM114-Status: GOOD (  17.88  )
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

On Thu, Jan 02, 2025 at 06:35:00PM +0300, Mikhail Rudenko wrote:
> Currently, the rkisp1 driver always uses coherent DMA allocations for
> video capture buffers. However, on some platforms, using non-coherent
> buffers can improve performance, especially when CPU processing of
> MMAP'ed video buffers is required.
> 
> For example, on the Rockchip RK3399 running at maximum CPU frequency,
> the time to memcpy a frame from a 1280x720 XRGB32 MMAP'ed buffer to a
> malloc'ed userspace buffer decreases from 7.7 ms to 1.1 ms when using
> non-coherent DMA allocation. CPU usage also decreases accordingly.

What's the time taken by the cache management operations ?

> This change allows userspace to request the allocation of non-coherent
> buffers. Note that the behavior for existing users will remain unchanged
> unless they explicitly set the V4L2_MEMORY_FLAG_NON_COHERENT flag when
> allocating buffers.
> 
> Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index 6dcefd144d5abe358323e37ac6133c6134ac636e..c94f7d1d73a92646457a27da20726ec6f92e7717 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1563,6 +1563,7 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
>  	q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
>  	q->lock = &node->vlock;
>  	q->dev = cap->rkisp1->dev;
> +	q->allow_cache_hints = 1;
>  	ret = vb2_queue_init(q);
>  	if (ret) {
>  		dev_err(cap->rkisp1->dev,
> 
> ---
> base-commit: 40ed9e9b2808beeb835bd0ed971fb364c285d39c
> change-id: 20241231-b4-rkisp-noncoherent-ad6e7c7a68ba

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
