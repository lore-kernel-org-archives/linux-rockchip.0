Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97C43C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 02:46:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LxXgeoJtDj0LWYjxDuixvq1hUlPuX7BDecE9MM+eGg8=; b=ktgfLScJdvNVGU
	OzYrFLT0EFaEOpDgxvRpwUFfXL2wO38ioLcc3Fz4LKeyy9qeEqbreOsUBcwW8vbUId+JaJdt9Jf5m
	RrO+AIre9fG06UlsL1KkXAoYJYwPsFxw94XwrbM1SmYMJvOfRrQ5aDdzrbFJJ8fWgBXi3ifwrGoDs
	egT/vuBQjTbxba64iYaW9GNNvidem3iD33HSPoNHbScvdxcyInFzWA5cxgxiHaGak22iM1rcmK0Fu
	23dZpdQB39B85ZLGnDgiWk26BheC/U63JYDSBlbzA2oCbGW1UeI7tbcPXUSt8102wQjNSnyyCS6mh
	m9RspbWbVo/K4ne19DLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9HWl-00DA9q-38; Thu, 07 Jul 2022 02:46:03 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9HWh-00DA7w-Ic
	for linux-rockchip@lists.infradead.org; Thu, 07 Jul 2022 02:46:00 +0000
Received: from pyrite.rasen.tech (softbank036240121080.bbtec.net [36.240.121.80])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 605B9526;
	Thu,  7 Jul 2022 04:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1657161950;
	bh=gPPSDHd3HNLDV5AXh3YFn765F/tVZFoYqB1vQyvW9bM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nIHrI8MuqzvQAEMw6lG19lF0Q9NOyytrjgVOO3hcmLkQjvN+4uu+zxu3Ei/aYRJvo
	 tlMIbzBirqjBOra0cnAmFhS/vdWDXwz9yJVCpBRJNA6KIpEPcZo22fgAzEzILczuX3
	 Sq9RBtepUhsAcQyqa8z8R4A6YmhwfVGUta9SNWrY=
Date: Thu, 7 Jul 2022 11:45:42 +0900
From: paul.elder@ideasonboard.com
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v2 12/55] media: rkisp1: cap: Print debug message on
 failed link validation
Message-ID: <20220707024542.GG3886060@pyrite.rasen.tech>
References: <20220630230713.10580-1-laurent.pinchart@ideasonboard.com>
 <20220630230713.10580-13-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220630230713.10580-13-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_194559_812915_4F51528F 
X-CRM114-Status: GOOD (  13.56  )
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

Hi Laurent,

On Fri, Jul 01, 2022 at 02:06:30AM +0300, Laurent Pinchart wrote:
> When a link validation failure occurs, print a debug message to help
> diagnosing the cause.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Paul Elder <paul.elder@ideasonboard.com>

> ---
> Changes since v1:
> 
> - Add missing \n
> ---
>  .../media/platform/rockchip/rkisp1/rkisp1-capture.c    | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> index 94819e6c23e2..fb14c8aa154c 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1294,8 +1294,16 @@ static int rkisp1_capture_link_validate(struct media_link *link)
>  
>  	if (sd_fmt.format.height != cap->pix.fmt.height ||
>  	    sd_fmt.format.width != cap->pix.fmt.width ||
> -	    sd_fmt.format.code != fmt->mbus)
> +	    sd_fmt.format.code != fmt->mbus) {
> +		dev_dbg(cap->rkisp1->dev,
> +			"link '%s':%u -> '%s':%u not valid: 0x%04x/%ux%u != 0x%04x/%ux%u\n",
> +			link->source->entity->name, link->source->index,
> +			link->sink->entity->name, link->sink->index,
> +			sd_fmt.format.code, sd_fmt.format.width,
> +			sd_fmt.format.height, fmt->mbus, cap->pix.fmt.width,
> +			cap->pix.fmt.height);
>  		return -EPIPE;
> +	}
>  
>  	return 0;
>  }

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
