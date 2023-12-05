Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABD81C07E97
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 09:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8LEVQ5nlq5rEz5BOho3+YGPyUu70qDK0hvcEouapws=; b=0he2m/KRVtaHYa
	7oZibczVsMnpUNu16BG8jnBxs2G2tk2l9ebVACmV0AVr0EnBYpGT9uq3zXaixNUUrcVE4nijsjEQF
	3YviUe//OrhkQ1kxTkmQabH4uu2X99J0dZaYw5VLmjrvWoo2dchDdyie9FPUnGwfkoh5Rhc8032tn
	Qd8kephvrz3XIlARqhA2lGceywmodn+LeLoYxL7LEc/EneiAz2YsmtvrKahd5mCGu09XsxVD7X34W
	Zq38pSbdVSarRfOjGkbFLHq6n6rIE+DOVmCjtV3TEDjMlGPsQSJiHxv9xRahJgd8hTCbVdx/d0F0M
	vrCyZRxRMrO0/3YjKQpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rARnH-006plY-2P;
	Tue, 05 Dec 2023 09:32:43 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rARnE-006plC-2u
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Dec 2023 09:32:42 +0000
Received: from [192.168.88.20] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 324CE36C;
	Tue,  5 Dec 2023 10:31:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701768718;
	bh=ZniHFsfK9HhvZfU1sOglZYW6NCUjfkemA2FNV09f/Lw=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=d1C9RDLPC48yDlK8Oe75hGQiSlrwHm3X/370lPnPD8r9y4gNJ16NSH/1itjaxscqk
	 KOF3APOreS06rb+nGUuj6qT+pVQPm9BQq1wrk90CbRixkXywvgBBM2T7X6Y8ndevr5
	 QT8tMOPtV7s9d8oSasuzQE57oR4aUsZ7KtZkhd6w=
Message-ID: <88681389-6969-4ac0-93f8-a3fe1ae1a1fc@ideasonboard.com>
Date: Tue, 5 Dec 2023 11:32:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: rkisp1: resizer: Stop manual allocation of
 v4l2_subdev_state
Content-Language: en-US
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-media@vger.kernel.org
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 linux-rockchip@lists.infradead.org
References: <20231126020948.2700-1-laurent.pinchart@ideasonboard.com>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Autocrypt: addr=tomi.valkeinen@ideasonboard.com; keydata=
 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
In-Reply-To: <20231126020948.2700-1-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_013241_082206_ACBBB50E 
X-CRM114-Status: GOOD (  26.04  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 26/11/2023 04:09, Laurent Pinchart wrote:
> Supported media bus codes on the resizer sink pad are identical to the
> ISP source pad. The .enum_mbus_code() handler thus delegates the
> enumeration to the ISP's operation. This is problematic for two
> reasons:
> 
> - Format enumeration on the ISP source pad is dependent on the format
>    configured on the ISP sink pad for the same subdev state (TRY or
>    ACTIVE), while format enumeration on the resizer sink pad should
>    return all formats supported by the resizer subdev, regardless of the
>    ISP configuration.
> 
> - Delegating the operation involves creating a fake v4l2_subdev_state on
>    the stack to pass to the ISP .enum_mbus_code() handler. This gets in
>    the way of evolution of both the ISP enumeration handler and, more
>    generally, the V4L2 subdev state infrastructure.
> 
> Fix those two issues by implementing format enumeration manually for the
> resizer.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> Paul, Kieran, would you be able to test this for regressions ?
> ---
>   .../platform/rockchip/rkisp1/rkisp1-resizer.c | 38 ++++++++++++-------
>   1 file changed, 24 insertions(+), 14 deletions(-)

Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

I tested on my i.MX8MP board, although my kernel branch has quite a bit 
of non-upstream patches to get everything working. But I don't think 
those affect this patch.

  Tomi

> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> index f7af360dcb28..a8e377701302 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> @@ -330,12 +330,8 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
>   {
>   	struct rkisp1_resizer *rsz =
>   		container_of(sd, struct rkisp1_resizer, sd);
> -	struct v4l2_subdev_pad_config dummy_cfg;
> -	struct v4l2_subdev_state pad_state = {
> -		.pads = &dummy_cfg
> -	};
> -	u32 pad = code->pad;
> -	int ret;
> +	unsigned int index = code->index;
> +	unsigned int i;
>   
>   	if (code->pad == RKISP1_RSZ_PAD_SRC) {
>   		/* supported mbus codes on the src are the same as in the capture */
> @@ -355,15 +351,29 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
>   		return 0;
>   	}
>   
> -	/* supported mbus codes on the sink pad are the same as isp src pad */
> -	code->pad = RKISP1_ISP_PAD_SOURCE_VIDEO;
> -	ret = v4l2_subdev_call(&rsz->rkisp1->isp.sd, pad, enum_mbus_code,
> -			       &pad_state, code);
> +	/*
> +	 * Supported mbus codes on the sink pad are the same as on the ISP
> +	 * source pad.
> +	 */
> +	for (i = 0; ; i++) {
> +		const struct rkisp1_mbus_info *fmt =
> +			rkisp1_mbus_info_get_by_index(i);
>   
> -	/* restore pad */
> -	code->pad = pad;
> -	code->flags = 0;
> -	return ret;
> +		if (!fmt)
> +			break;
> +
> +		if (!(fmt->direction & RKISP1_ISP_SD_SRC))
> +			continue;
> +
> +		if (!index) {
> +			code->code = fmt->mbus_code;
> +			return 0;
> +		}
> +
> +		index--;
> +	}
> +
> +	return -EINVAL;
>   }
>   
>   static int rkisp1_rsz_init_state(struct v4l2_subdev *sd,


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
