Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC657606A335
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 10:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KzcEHAM/;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=avk1WsRB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Ae91r+Ii8ocR8EAq9Vk8q64VunAzhEXZOWBEij6l9TQ=; b=KzcEHAM/C/sFQa1fo/G/r5hG1g
	hZ/qoNwPYu3p316ZZT8sGCoqhSNP3vjmC0macxlyEY6Tx3p2i53MWb3idxapXaT3t4EnRMfQilW+W
	TbvAJNcdCm5sCvSP1YcNhUKWoPvAFp5GLpCnKzB/rBiKGs31EUjHiijFwLGwKZGuqaGTWOMZlQ2VT
	HTAy0rOupGeHJM8CEvDnWH1/zsIwxUqhlDjuYG2zs+OR6oJ2JGnblB9VRghbO7bDvmkXRYloR9Syg
	8nMK81dlychmQJgJYkROSRu9spqvPOt5l3XR80p13uKi8RrczVy2TPL5HUKPk8PuD4blr+NPaKtEz
	pbYiwKrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSuNU-000000022EP-25lm;
	Mon, 16 Nov 2026 10:56:00 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSuNO-0000000228L-3sZr
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Nov 2026 10:55:59 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1794826543; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=GbPbNJSXNaRNmYNwWn/zLQHSHHoKI9sWeN6ZDduUHeEJQ/ArS0IVNuHn60YSV3xUAhv70gzMKct3u7fN66czEzHQvpq85IVFjmFyx30qC/MKduA5P0YpO51BFqyB2CB3KO02xHXbgizR4MNkp6X7Raimq3+JyUvFOSBL7snUr90=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1794826543; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=i5vPhwDiE7z7Zwb8d0Muf0ZMZMm+vZas1a34TtADxvA=; 
	b=M8OA5ieLY/DncTFgQG1nsiBm0pkdqa+JRTnn+9hKr2/OvX7RntjIozO6WKaLScY+KYvhMM6IxpOxZiI3iUmFOyN/rtB+s8Ty65lTUs1Qa+SR0NUQwx+7QW5x/S2+QMtzN/Cat/bXYqCRiynmdx9CVXBFe5XdqEWfJHUMNAO6LqY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: a=rsa-sha256; b=avk1WsRB1rKeMbRbIpd0UBCE7NGrmA0pogpdxTodVom9cagcixa2m4uq+Oz91sI3L5O2giDBKZolzeJC2GH85fc8fjCjQLsUYo6p4eGGujIDUjuDE5OruWKG8/kPQ9iNvgK+GjdP8iR9PbcuhSFJK3hKBJf2Bay6Y4ijekAtzwA=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=i5vPhwDiE7z7Zwb8d0Muf0ZMZMm+vZas1a34TtADxvA=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1794826539849525.4495504025143;
	Mon, 16 Nov 2026 02:55:39 -0800 (PST)
Message-ID: <86a697d3-17f2-4637-91f4-8e3cc30377f9@collabora.com>
Date: Mon, 16 Nov 2026 11:55:33 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] media: rockchip: rkcif: Validate the pixel format
 against the media bus code
To: Mehdi Djait <mehdi.djait@linux.intel.com>
Cc: linux-media@vger.kernel.org, paul.elder@ideasonboard.com,
 daniel@makrotopia.org, linux-rockchip@lists.infradead.org,
 Gerald Loacker <Gerald.Loacker@wolfvision.net>
References: <20261112183208.2688580-1-mehdi.djait@linux.intel.com>
 <20261112183208.2688580-3-mehdi.djait@linux.intel.com>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20261112183208.2688580-3-mehdi.djait@linux.intel.com>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_025555_919618_3763FB31 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Mehdi,

Thanks for the patch!

I think I had a check like this in the source code once, but kicked it
out because it broke one of my valid pipelines. Let's take the first
entry of mipi_out_fmts for instance: the capture block can write
V4L2_PIX_FMT_YUYV image data to memory. However, I *think* it can not
only accept MEDIA_BUS_FMT_YUYV8_1X16 as input format for that, but other
mbus formats too. Thus, if I am not mistaken, we need to rework that at
some point.

Cc: Gerald who might have a pipeline that will be broken by this patch...

On 11/12/26 19:32, Mehdi Djait wrote:
> The link validation only checks the frame size, so a pixel format that
> does not match the media bus code on the source pad is accepted.
> 
> Reject such pipelines with -EPIPE.
> 
> Signed-off-by: Mehdi Djait <mehdi.djait@linux.intel.com>

...but all the above said, the patch as such is valid, but I think the
definition of possible formats needs a rework. I'll leave my

Reviewed-by: Michael Riesch <michael.riesch@collabora.com>

here just in case.

Best regards,
Michael


> ---
>  drivers/media/platform/rockchip/rkcif/rkcif-stream.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> index 3130d420ad55..66726f654674 100644
> --- a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> +++ b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> @@ -460,6 +460,7 @@ static int rkcif_stream_link_validate(struct media_link *link)
>  {
>  	struct video_device *vdev =
>  		media_entity_to_video_device(link->sink->entity);
> +	const struct rkcif_output_fmt *fmt;
>  	struct v4l2_mbus_framefmt *source_fmt;
>  	struct v4l2_subdev *sd;
>  	struct v4l2_subdev_state *state;
> @@ -489,6 +490,17 @@ static int rkcif_stream_link_validate(struct media_link *link)
>  		goto out;
>  	}
>  
> +	fmt = rkcif_stream_find_output_fmt(stream, false,
> +					   stream->pix.pixelformat);
> +	if (!fmt || (fmt->mbus_code && fmt->mbus_code != source_fmt->code)) {
> +		dev_dbg(stream->rkcif->dev,
> +			"link '%s':%u -> '%s':%u not valid: Format mismatch\n",
> +			link->source->entity->name, link->source->index,
> +			link->sink->entity->name, link->sink->index);
> +		ret = -EPIPE;
> +		goto out;
> +	}
> +
>  	ret = 0;
>  
>  out:


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
