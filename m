Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2474606A33B
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 17:42:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qZyP3ZmI;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Mjj/CXab
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=afvSLC2RMnfZfHMet2N+BQ6JTFqN2zkwp5wtDh60DDw=; b=qZyP3ZmIO22WlvSWqQ7P9cJJr/
	6Tq7TtH/9dzgXJTO4arT35h/9GPqE90Iz2V3vRqq2//piPfXHhX+R2sgo4Y5PzTcSIGU9bSjoRYDb
	PcIryWEmhFAhPkkh5C3cQnXHdg6FVRAcXWTPeOJjfN0uQbWpY4k5SMzw2QQ+HnEGly0Qx8gIuyach
	82L1zU3Hm/m6mEhExi0cWZO5pLDJk55n8bbjlTPOj10bwp89r3jmKpmc0/8uW9dXHJyAW01+bHAQl
	v623jw9ppcWOtRmP0gxG9idiUyZ2e/wS/lBEfUSmgd8uZTOxFzRsQZVZPFUqtagvJN+T7e2HVibjr
	8tVDpgdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRYoR-0000000An0H-28lw;
	Thu, 12 Nov 2026 17:42:15 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRYoG-0000000AmyT-2GQ0
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Nov 2026 17:42:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1A8234086A;
	Thu, 12 Nov 2026 17:42:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EED2A1F000C5;
	Thu, 12 Nov 2026 17:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794505324;
	bh=J59odrFLjjANLwNFolGOP3Zia626TnXoqhdFI5QxRqY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Mjj/CXabPYjuvMnmr9l3z/qKw+asC7/DPMmIIb4xBArs+BJuJBVg2Ne86h9OFXpEo
	 T+ZDF0ac5EWu3tLKl/nD3cSX+NpBAKeCZaSTrO+1b3iA46E6ubrgikBEFXy6Shm4r1
	 z5NbnBKQ3MYuJUo5ArVhG5UKajsWYaPsvVuI+JPGtVE4LWzqRf7VhUJq2kdTwrGRTp
	 7PNOB/EX+Tf1/krteAcmzHXRw6u4/RKyewwUhTngPhfFYKmQZkfLQEtNysJUe8pJ8T
	 4HAqINaHARWIWQ4OEVrjixRRxnIabFiWiVhCaQALhACgs58xLLsAAp9exNsW9ey0aL
	 noFVZCAe/kGkA==
Date: Thu, 12 Nov 2026 09:42:03 -0800
From: Kees Cook <kees@kernel.org>
To: Mariia Nikitash <nikitash.mariiaw@gmail.com>
Cc: nicolas.dufresne@collabora.com, benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de, mchehab@kernel.org,
	hverkuil+cisco@kernel.org, linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org, justinstitt@google.com,
	morbo@google.com, david.laight.linux@gmail.com
Subject: Re: [PATCH v2] media: verisilicon: Replace strlcat() with scnprintf()
Message-ID: <202611120937.C289DA9C4D@keescook>
References: <20261105084518.386234-1-nikitash.mariiaw@gmail.com>
 <20261111032446.29803-1-nikitash.mariiaw@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261111032446.29803-1-nikitash.mariiaw@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-18.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Nov 10, 2026 at 07:24:46PM -0800, Mariia Nikitash wrote:
> In preparation for removing the deprecated strlcat() API [1], replace the
> strscpy() and strlcat() calls in hantro_add_func() with a single
> scnprintf() call.
> 
> This preserves the resulting string, including NUL termination
> and truncation behavior.
> 
> Link: https://github.com/KSPP/linux/issues/370 [1]
> Signed-off-by: Mariia Nikitash <nikitash.mariiaw@gmail.com>
> ---
> Changes in v2:
> - Replace seq_buf with a single scnprintf() call, as suggested
>   by Hans Verkuil.

Reviewed-by: Kees Cook <kees@kernel.org>

I think the Subject prefix is fine, it matches the prior poking of this
area:

b66215e7b780 ("media: verisilicon: replace snprintf with strscpy+strlcat")

For vfd->name,

	struct video_device {
		...
		        char name[64];

Does this need to be raised?

Because match->compatible is quite large:

struct of_device_id {
...
        char    compatible[128];

The real question remains: how should truncation of vfd->name (by
anything that constructs it) be handled?

-Kees

> 
>  drivers/media/platform/verisilicon/hantro_drv.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/media/platform/verisilicon/hantro_drv.c b/drivers/media/platform/verisilicon/hantro_drv.c
> index 26e5d5547466..d8854ceb4fed 100644
> --- a/drivers/media/platform/verisilicon/hantro_drv.c
> +++ b/drivers/media/platform/verisilicon/hantro_drv.c
> @@ -902,9 +902,8 @@ static int hantro_add_func(struct hantro_dev *vpu, unsigned int funcid)
>  	vfd->vfl_dir = VFL_DIR_M2M;
>  	vfd->device_caps = V4L2_CAP_STREAMING | V4L2_CAP_VIDEO_M2M_MPLANE;
>  	vfd->ioctl_ops = &hantro_ioctl_ops;
> -	strscpy(vfd->name, match->compatible, sizeof(vfd->name));
> -	strlcat(vfd->name, funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER ?
> -		"-enc" : "-dec", sizeof(vfd->name));
> +	scnprintf(vfd->name, sizeof(vfd->name), "%s%s", match->compatible,
> +		  funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER ? "-enc" : "-dec");
>  
>  	if (funcid == MEDIA_ENT_F_PROC_VIDEO_ENCODER) {
>  		vpu->encoder = func;
> -- 
> 2.43.0
> 

-- 
Kees Cook

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
