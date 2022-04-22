Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B484DC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 07:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bTbuUsW6+l8RjwzATMkKpUnc/eZ/CGyqbk7eJP8IU6s=; b=0Yh9T+ghvncnc1
	2N4XD4RgaXGb6Sq0IfYRv4yO6a4qEN0k1UkBSQUcsFAb05qJEGXm9VKdldFCDlI5QCUbu3h+l3btX
	F0yVnQmqCAgEOo8V5DL3ghGa+nQJAQ3BKIlckNStLBeVrMoUNHv39qBat3rzHTrCK/sojAxIla+m+
	ZNjzhfrgmYpxJ2ugxC33CglsyRrzts5nitZQQUvobkqh6YDlNQK5KPQ0ndiCWhjXrrrB7HO1tb6k3
	4Spwts+2OXir2xj7LnRv10AOWDs9+1omfjA/7WYFcHYTjzeiyKn8ZSVvlefhVgF3dUfyUnJmMhxVl
	Nnh/8xxcTXlS0L8u8KOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nho25-00GyW7-Sw; Fri, 22 Apr 2022 07:48:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhnwy-00GvoE-2Y
 for linux-rockchip@lists.infradead.org; Fri, 22 Apr 2022 07:43:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4E3C161F6F;
 Fri, 22 Apr 2022 07:43:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FCEDC385A4;
 Fri, 22 Apr 2022 07:43:28 +0000 (UTC)
Message-ID: <8f6c8a5c-200d-fbbd-0b8a-966d94467aad@xs4all.nl>
Date: Fri, 22 Apr 2022 09:43:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 17/24] media: rkvdec: h264: Fix reference frame_num
 wrap for second field
Content-Language: en-US
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>,
 Sebastian Fricke <sebastian.fricke@collabora.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
References: <20220405204426.259074-1-nicolas.dufresne@collabora.com>
 <20220405204426.259074-18-nicolas.dufresne@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20220405204426.259074-18-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_004332_174270_869BF3B2 
X-CRM114-Status: GOOD (  20.93  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 05/04/2022 22:44, Nicolas Dufresne wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
> 
> When decoding the second field in a complementary field pair the second
> field is sharing the same frame_num with the first field.
> 
> Currently the frame_num for the first field is wrapped when it matches the
> field being decoded, this cause issues to decode the second field in a

cause issues to decode -> caused issues decoding

> complementary field pair.
> 
> Fix this by using inclusive comparison, less than or equal.

I would change this last sentence to:

	Fix this by using inclusive comparison: 'less than or equal'.

It makes it a bit easier to parse.

> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
> Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec-h264.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
> index f081b476340f..60eaf06b6e25 100644
> --- a/drivers/staging/media/rkvdec/rkvdec-h264.c
> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
> @@ -781,7 +781,7 @@ static void assemble_hw_rps(struct rkvdec_ctx *ctx,
>  			continue;
>  
>  		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM ||
> -		    dpb[i].frame_num < dec_params->frame_num) {
> +		    dpb[i].frame_num <= dec_params->frame_num) {

I wonder if a comment should be added here, explaining the reason for '<='.

It doesn't seem obvious to me. Up to you, though.

>  			p[i] = dpb[i].frame_num;
>  			continue;
>  		}

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
