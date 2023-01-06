Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83D7FC54E76
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jan 2023 07:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oeY3FOduypmb+q+zyNJ//W3qZScrur+IIrI/5d+wdWo=; b=shJ9yw6lPhx/Ck
	XfU3LpRbzaHBpvs5ru3lhjHAe+dvIQZTwh8jSdtbR+2t5MSQwR2/IgJpaKraZ3b+Ve0LBgPU+4akK
	If0cuy9JnGYuSPK8U39+dZB0dKvqYLgC8/nFkImUkBGbYYHcLOjP+rguxTf5WHfyy0crdwb994W7j
	l5Gm4+X5+NEkKbkqqTAUTsPZ+7gSIWNABixVG6E/iWlmpjeJOvZhHjQmcJUySq3lS1rYXoiaz+AVG
	4OTXThiA2FDBt9KuzrrlW0oxS94jX+G/b7NVW2B89jJIG3BK50pJvNouB4yhfAc826r+vnbmEtCbN
	98/9jKr7cW7d27RuHkww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDhBZ-006MR4-HD; Fri, 06 Jan 2023 07:30:41 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDhBO-006MNB-LW; Fri, 06 Jan 2023 07:30:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672990230; x=1704526230;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=K08OhAmW3FK1nvM92XEIEnUdOkleecistnUg2IhBg3k=;
  b=JtTNp/eXpGlrKr8SfeP+7nidJnjwxvoV8fYu9er93Hw2G16Z7+HF6TMx
   bEIQX09ipyYvAyPuaLwzU1OzOWsGwT4IVjpH0tCge8iChKl+rBSWHglCY
   S5zsNH+CHBKK4HOWv8jKnK2F7zZT4Oecn8kvvaOcz7l0McvcYjY4iSEKB
   HslegjQd8R8xMx7BY7X+0CiU6+RtJZXr9sxANVaWn49Ch1tjXjtEoCG+D
   yUii++bJRRJxtOeS1WDbKUDwPuHQwSqMvAgNfqWzu4nNQmyUAz8NmWgw4
   UDKzhFkH+CQZbWMf6gPHNs57GsDoY/WpWtpI4yHV6y/D6kQIo2zPSr9p/
   Q==;
X-IronPort-AV: E=Sophos;i="5.96,304,1665439200"; 
   d="scan'208";a="28270425"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 06 Jan 2023 08:30:26 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 06 Jan 2023 08:30:26 +0100
X-PGP-Universal: processed;
	by tq-pgp-pr1.tq-net.de on Fri, 06 Jan 2023 08:30:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1672990226; x=1704526226;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=K08OhAmW3FK1nvM92XEIEnUdOkleecistnUg2IhBg3k=;
  b=ldXTu9BGtkiqGItpxWzU57eAJYp6eAQXSUCTt32kH+9gixjJt8xGqXw0
   aaNiIGf4DVFfkMVGFrGhV2iE9LH3ebbbfW5EKdOjvjSoN0L1fry2alAeY
   NSoNQB545dwGbyZPGZrW9stTiI47zhj6hrUiQ8kvScVOPBaKYM8QwEYNO
   MuZjlkwlTkLMrH23FbU/3zyppS4vmHEJ7SYHEmeUOYuHUPlKZTo7ZfHzk
   XxCe+FMFt8hlklN0ZzroO/iC7AFWzPHKo7XQj4GymSDno2vqBevnh3l2Z
   kPK/YMm++AUXzbe71Y4Ljs5QhsnYhi7BORf+k0GDDxGTAs0lrabgFeMSW
   g==;
X-IronPort-AV: E=Sophos;i="5.96,304,1665439200"; 
   d="scan'208";a="28270424"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 06 Jan 2023 08:30:26 +0100
Received: from steina-w.localnet (unknown [10.123.53.21])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 15BC2280056;
	Fri,  6 Jan 2023 08:30:26 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Dafna Hirschfeld <dafna@fastmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Colin Ian King <colin.i.king@gmail.com>
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH][next] media: rkisp1: make a few const arrays static
Date: Fri, 06 Jan 2023 08:30:23 +0100
Message-ID: <10879096.BaYr0rKQ5T@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20230105184403.63419-1-colin.i.king@gmail.com>
References: <20230105184403.63419-1-colin.i.king@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230105_233031_120477_94ED9679 
X-CRM114-Status: GOOD (  18.78  )
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

Hi Ian,

Am Donnerstag, 5. Januar 2023, 19:44:03 CET schrieb Colin Ian King:
> Don't populate the const arrays on the stack, instead make them
> static. Also makes the object code smaller.

While I don't dislike this change itself, are you sure about the size change?

bloat-o-meter shows an overall increase:
> ./scripts/bloat-o-meter /tmp/rkisp1-capture_old.o
> /tmp/rkisp1-capture_new.o
> add/remove: 3/0 grow/shrink: 1/2 up/down: 256/-116 (140)
> Function                                     old     new   delta
> rkisp1_try_fmt_vid_cap_mplane                 56     280    +224
> dev_names                                      -      16     +16
> max_widths                                     -       8      +8
> max_heights                                    -       8      +8
> rkisp1_try_fmt                               356     304     -52
> rkisp1_register_capture                      548     484     -64
> Total: Before=12333, After=12473, chg +1.14%

To be honest I don't know why GCC now inlines rkisp1_try_fmt() in 
rkisp1_try_fmt_vid_cap_mplane.

Best regards,
Alexander

> Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-capture.c     | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c index
> d4540684ea9a..d1d1fdce03e3 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-capture.c
> @@ -1131,10 +1131,12 @@ static void rkisp1_try_fmt(const struct
> rkisp1_capture *cap, const struct rkisp1_capture_config *config =
> cap->config;
>  	const struct rkisp1_capture_fmt_cfg *fmt;
>  	const struct v4l2_format_info *info;
> -	const unsigned int max_widths[] = { RKISP1_RSZ_MP_SRC_MAX_WIDTH,
> -					    
RKISP1_RSZ_SP_SRC_MAX_WIDTH };
> -	const unsigned int max_heights[] = { RKISP1_RSZ_MP_SRC_MAX_HEIGHT,
> -					     
RKISP1_RSZ_SP_SRC_MAX_HEIGHT};
> +	static const unsigned int max_widths[] = {
> +		RKISP1_RSZ_MP_SRC_MAX_WIDTH, RKISP1_RSZ_SP_SRC_MAX_WIDTH
> +	};
> +	static const unsigned int max_heights[] = {
> +		RKISP1_RSZ_MP_SRC_MAX_HEIGHT, RKISP1_RSZ_SP_SRC_MAX_HEIGHT
> +	};
> 
>  	fmt = rkisp1_find_fmt_cfg(cap, pixm->pixelformat);
>  	if (!fmt) {
> @@ -1336,8 +1338,9 @@ void rkisp1_capture_devs_unregister(struct
> rkisp1_device *rkisp1)
> 
>  static int rkisp1_register_capture(struct rkisp1_capture *cap)
>  {
> -	const char * const dev_names[] = {RKISP1_MP_DEV_NAME,
> -					  RKISP1_SP_DEV_NAME};
> +	static const char * const dev_names[] = {
> +		RKISP1_MP_DEV_NAME, RKISP1_SP_DEV_NAME
> +	};
>  	struct v4l2_device *v4l2_dev = &cap->rkisp1->v4l2_dev;
>  	struct video_device *vdev = &cap->vnode.vdev;
>  	struct rkisp1_vdev_node *node;





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
