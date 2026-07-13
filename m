Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 261D6C44506
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 08:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MK8w7LAG9LJgbpo+x0PIdw1s3c1J/IRFRNLT3fmAjjo=; b=CReinVJ/koKB8a
	MyrO+lnTkxH7S97nO+8nI3UXEqft6R1bsYnllUmOONV+S0LbXJAd3iXxS6LFi9HsEm8/NUbs1Wf0z
	uTWwFKwWRHKV62O37+70dFfEkM8oCPqNtuG4eTB/xTwY1z33ISvZTPL/T5Z2qh3rAbkJ339v4ly/N
	Yp7HTe0tO6xI4Pax2TG7y83i/90xDi4pTYLeJCJkaBZcgU2fHqp8fXEBUeOjDuPoSSN7QDt/x5kuR
	P4GH/KZlKQreGWi3BLT7h4FPbeaYl8I0d3irDixPVhGANZGQfPwLRxzNT2FnLD/eATK/YiLzoYykb
	UWaNuK+u2E2btHz8ZCjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjCRt-00000008eFl-2b4C;
	Mon, 13 Jul 2026 08:55:37 +0000
Received: from mgamail.intel.com ([198.175.65.14])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjCRq-00000008eE7-0aVr;
	Mon, 13 Jul 2026 08:55:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1783932934; x=1815468934;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=f0/SSL5f80JFYI51KCPSLvowOM6aSxhCDCyPxpSVayU=;
  b=SqeFR9li/yB2a2sb2QUapfLmvNj+l3xUU6MxwF1LLKH8r5iCMGsrJIXM
   DSOzF6vFr2lnvoZtjh0LY+g7/7tQkWPi1XrVbkJ5jDAWXg7w0823nvLk2
   Pq4ywaEnHARxH8JsgLotA+mpdyM18gmiPfM6a4MWHSae4QGz4MyyEiKsx
   fqBFo0snqqq1ZfxCrkUOu2PDRd+EwXJcJQgj37uDZ9HZJAJ6wxh9f82WQ
   dcJhEy86TP8Bm+KiX12qORQ1MyeQVl5JZ8FIUKgL8hYyjRb9oOQdlYRvi
   M1OwNw9TJ7zU2PI8PzBSHYuU0rPeJS4Zh2vYhBCDl2YuAD5fAIc9iAj2k
   A==;
X-CSE-ConnectionGUID: Pkqmyc1LQB2plCteKFKZSg==
X-CSE-MsgGUID: 5lHGbSFgT3yyrA0aPZvfeQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="88440410"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="88440410"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
  by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jul 2026 01:55:33 -0700
X-CSE-ConnectionGUID: RCHUGXzEQMi6yqzB91MmKg==
X-CSE-MsgGUID: tLaJrZFlQ+OsQ7V5QUxhIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; 
   d="scan'208";a="259791846"
Received: from carterle-desk.ger.corp.intel.com (HELO mdjait-mobl) ([10.245.245.117])
  by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jul 2026 01:55:31 -0700
Date: Mon, 13 Jul 2026 10:55:19 +0200
From: Mehdi Djait <mehdi.djait@linux.intel.com>
To: Jang Ingyu <ingyujang25@korea.ac.kr>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: rockchip: rkcif: Use IS_ERR() check for
 media_entity_remote_source_pad_unique()
Message-ID: <alSnze0rfa6wnWk3@mdjait-mobl>
References: <20260710203016.2250058-1-ingyujang25@korea.ac.kr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260710203016.2250058-1-ingyujang25@korea.ac.kr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_015534_257540_4C64A8EA 
X-CRM114-Status: GOOD (  18.16  )
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

Hello,

On Sat, Jul 11, 2026 at 05:30:16AM +0900, Jang Ingyu wrote:
> From: Ingyu Jang <ingyujang25@korea.ac.kr>
> 
> media_entity_remote_source_pad_unique() returns either a valid struct
> media_pad pointer or an error pointer (ERR_PTR(-ENOTUNIQ) or
> ERR_PTR(-ENOLINK)); it never returns NULL. The current NULL check
> therefore never triggers, and the "pad not connected" error path is
> unreachable.
> 
> Replace the NULL check with an IS_ERR() check so the validation
> actually detects malformed media graphs.
> 
> Signed-off-by: Ingyu Jang <ingyujang25@korea.ac.kr>
> ---
>  drivers/media/platform/rockchip/rkcif/rkcif-stream.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> index 3130d420ad559..542aa877919df 100644
> --- a/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> +++ b/drivers/media/platform/rockchip/rkcif/rkcif-stream.c
> @@ -466,7 +466,7 @@ static int rkcif_stream_link_validate(struct media_link *link)
>  	struct rkcif_stream *stream = to_rkcif_stream(vdev);
>  	int ret = -EINVAL;
>  
> -	if (!media_entity_remote_source_pad_unique(link->sink->entity))
> +	if (IS_ERR(media_entity_remote_source_pad_unique(link->sink->entity)))
>  		return -ENOTCONN;

This was already fixed in:
https://lore.kernel.org/linux-media/20260522065548.2438545-1-nichen@iscas.ac.cn/

--
Kind Regards
Mehdi Djait

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
