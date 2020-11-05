Return-Path: <SRS0=eRos=EL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 31414C4741F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 17:43:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 77F46206CA
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 17:43:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="esLZYuPI";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=xs4all.nl header.i=@xs4all.nl header.b="qXx9diOz"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 77F46206CA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TCPK11OgqmNNCm5mazoHHTKrmipVAlxRVohGmQuOrSE=; b=esLZYuPI9RBVC/mAaEKr62SXv
	aGWwdzogqlPSZTM5MbWGzxm2onh4niIw9v2ycAptkBug6CF1Dps4XG9PDzxpJK5GDF8gIEuWuOi6X
	hv7gbf6u/FmLMOKGIEVTWrEAYfPJyxHGgL/6aURqqJERyrnUbA3rCvVFnFAi2DzYRnV32H5AF8svO
	/Y86ncDbSchTAw94/gzOfdMwjsbPx+W5GniLfhQrBAj0NPTHL0n1bf1zlbU5WQHcMl5xda56hE+bw
	t8F7ti2qMC7/Oty7S7/t8yZi058g2VdI64KS/zymUlQyyo1znEEjEVIEv9tOQoIwR7ejykE45QRkf
	66Ohc0/8g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kajIY-00086W-Dq; Thu, 05 Nov 2020 17:43:46 +0000
Received: from lb3-smtp-cloud7.xs4all.net ([194.109.24.31])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kajIV-000833-Vh
 for linux-rockchip@lists.infradead.org; Thu, 05 Nov 2020 17:43:45 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud7.xs4all.net with ESMTPA
 id ajI8kCLahRiwVajICkN8oN; Thu, 05 Nov 2020 18:43:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1604598211; bh=AF/68IsCoCoaXJfmouTQI7+Xa0mxZphJKln8/rTlTOw=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=qXx9diOz1VOSNXc6KwZ8eqJaKJzva5beMIg+NyKQGCytPhSFKLFy4fdOwRfzl/PJP
 S2HVQbOGqZIRqBHuDp3pfsmxC5/m/c07GSlhJGq8r8wiY9gR/BLIi4ZtZ57RNrBE6p
 zWcjYcRgv0MZ1q5u705N36auilHOOt8yDEnGx7J6cmB2FSoPY0m1pl8UcQJSGvaleX
 YRLDRYeinE75B/VxN/w1d3h9CujCYAksWgYGdOi7A53dRUrwIIsN2/r82sU4nrHDKS
 NBzbuoIlijwOt6X735R+MFyN4NsGZ+fEOdRueukvmnRE7khbRT6M98OzpNmAGwyUO+
 +PU+ErPe5ZSvQ==
Subject: Re: [PATCH v2 1/3] media: videodev2.h, v4l2-ioctl: add rkisp1 meta
 buffer format
To: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org
References: <20201030112225.2095909-1-helen.koike@collabora.com>
 <20201030112225.2095909-2-helen.koike@collabora.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <89711cf3-fc1d-68e2-1de0-c6cc88c6f7d0@xs4all.nl>
Date: Thu, 5 Nov 2020 18:43:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201030112225.2095909-2-helen.koike@collabora.com>
Content-Language: en-US
X-CMAE-Envelope: MS4xfFQzZsLG4IoaX3MK9lUP4P9bGhv1ECFdNeJQOiElLglacYI/BsXbPysNb+04DVFyoEdgVkJ7Rek3vDJnPt7hIT5P1xB9L1+qCYErrvCNOGtKMS7Auwoe
 6RkflstvARa0zkSt33v+m67BTBNKl5m7CkVR3yPJagUJh7MeTU7zCszSzL13ENT5mam7TNv8d3cHoYK8I1lG0kOcxWqk2svg+DawLaEKjG7sHJuktyrNu7br
 27MYthrYwpWvtyjpsJqqKq+AELe04UoyZtA9OWbPhUJupEJCtNMzgCCLwoGD3bcX8PohfOoZEPXm9aWBHF3LRXA8aG55RvOrL8xtg4cMRyYk9Uxfm2vSCT+r
 n6/7CW2P0mgPLH/YgW1EduBVXCJwOP1n+cBzOODF1gknVTZ7g7M6zarTXS82LeK1jTvC6Q1HogcxbZLhD8/f2zQ691AQvwlwZiAw2+s5XOCu5D3OGO4uxh/P
 1qwX+4ag8hN4RvzhtgiPr9rSFID4/+b6HU+YbZQgUIwW+SlKkXLE0jIqDKqClfsDUdFeTZYNpVEWqXtaIFWrkpA6jBlPYJKqCPI2q0W+El77NfUnbcgZonuv
 rViyJ/audj+z2xutflGBI8RWGUhZ3JAvAu7/OyDkFMldAPtOx0/t5/AQha6Ozk7+GCI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201105_124344_113711_52C516A4 
X-CRM114-Status: GOOD (  21.21  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 linux-kernel@vger.kernel.org, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, laurent.pinchart@ideasonboard.com,
 niklas.soderlund@ragnatech.se, kernel@collabora.com, zhengsq@rock-chips.com,
 ribalda@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 30/10/2020 12:22, Helen Koike wrote:
> From: Shunqian Zheng <zhengsq@rock-chips.com>
> 
> Add the Rockchip ISP1 specific processing parameter format
> V4L2_META_FMT_RK_ISP1_PARAMS and metadata format
> V4L2_META_FMT_RK_ISP1_STAT_3A for 3A.
> 
> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> ---
> Hello,
> 
> This patch is a continuation of:
> 
> https://patchwork.kernel.org/project/linux-arm-kernel/patch/20191106120132.6876-2-helen.koike@collabora.com/
> 
> These formats are already documented under
> Documentation/userspace-api/media/v4l/pixfmt-meta-rkisp1.rst
> 
> We had agreed to keep under
> drivers/staging/media/rkisp1/uapi/rkisp1-config.h while the driver was
> in staging, since we are moving it out of staging, I guess this is the
> time :)
> 
> Regards,
> Helen
> ---
>  drivers/media/v4l2-core/v4l2-ioctl.c              | 2 ++
>  drivers/staging/media/rkisp1/uapi/rkisp1-config.h | 4 ----
>  include/uapi/linux/videodev2.h                    | 4 ++++
>  3 files changed, 6 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
> index eeff398fbdcc1..202597d031c6b 100644
> --- a/drivers/media/v4l2-core/v4l2-ioctl.c
> +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
> @@ -1402,6 +1402,8 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
>  	case V4L2_META_FMT_UVC:		descr = "UVC Payload Header Metadata"; break;
>  	case V4L2_META_FMT_D4XX:	descr = "Intel D4xx UVC Metadata"; break;
>  	case V4L2_META_FMT_VIVID:       descr = "Vivid Metadata"; break;
> +	case V4L2_META_FMT_RK_ISP1_PARAMS:	descr = "Rockchip ISP1 3A params"; break;
> +	case V4L2_META_FMT_RK_ISP1_STAT_3A:	descr = "Rockchip ISP1 3A statistics"; break;

Use 'Params' and 'Statistics' to conform to the other descriptions.

Regards,

	Hans

>  
>  	default:
>  		/* Compressed formats */
> diff --git a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> index 8d906cc7da8fc..6e449e7842605 100644
> --- a/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> +++ b/drivers/staging/media/rkisp1/uapi/rkisp1-config.h
> @@ -9,10 +9,6 @@
>  
>  #include <linux/types.h>
>  
> -/* Vendor specific - used for RK_ISP1 camera sub-system */
> -#define V4L2_META_FMT_RK_ISP1_PARAMS   v4l2_fourcc('R', 'K', '1', 'P') /* Rockchip ISP1 params */
> -#define V4L2_META_FMT_RK_ISP1_STAT_3A  v4l2_fourcc('R', 'K', '1', 'S') /* Rockchip ISP1 3A statistics */
> -
>  /* Defect Pixel Cluster Detection */
>  #define RKISP1_CIF_ISP_MODULE_DPCC		(1U << 0)
>  /* Black Level Subtraction */
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> index 534eaa4d39bc8..c2e13ba81196b 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -770,6 +770,10 @@ struct v4l2_pix_format {
>  #define V4L2_META_FMT_D4XX        v4l2_fourcc('D', '4', 'X', 'X') /* D4XX Payload Header metadata */
>  #define V4L2_META_FMT_VIVID	  v4l2_fourcc('V', 'I', 'V', 'D') /* Vivid Metadata */
>  
> +/* Vendor specific - used for RK_ISP1 camera sub-system */
> +#define V4L2_META_FMT_RK_ISP1_PARAMS	v4l2_fourcc('R', 'K', '1', 'P') /* Rockchip ISP1 params */
> +#define V4L2_META_FMT_RK_ISP1_STAT_3A	v4l2_fourcc('R', 'K', '1', 'S') /* Rockchip ISP1 3A statistics */
> +
>  /* priv field value to indicates that subsequent fields are valid. */
>  #define V4L2_PIX_FMT_PRIV_MAGIC		0xfeedcafe
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
