Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7DC7C021BC
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 13:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8s34aJtUr9ZxFKeGymPn3k3sk2PovWQunXm49AulG94=; b=nNy9luot0nOZ3O
	4ZCz4ZOjwR7XGcNNq5Mt72RxDo2nhoyVKW0LcwTqBhMhb0RWxAZYwCcLoJP/+psw4CI3SBx2Pj/kT
	IbIlFiXwN6DUswfvJNVWszbCwbUyCAZaByLhWd3SrnKS0H4C1kaMwrV1x0c22JMLqomBbsSTAQs4v
	i3vi71hlwW6YCgMIZ5Hf3XNslWnGSQFZuk97kAPUvjgyYSaqUMhUuH8l8VEueWLYh6t0/2U5C2NiM
	GwyYm8ySvPboOsHIzk8i1/DP2lWggcAonXmk5bGORSOgBtGOb4QBuBPn0EENlV4+CT72+FeVXEMKY
	naLw8S1KkrWvnPL8kqYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmuhL-0000000HJZN-3pWG;
	Tue, 25 Feb 2025 13:10:07 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmuO6-0000000HG0c-1Zgu
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Feb 2025 12:50:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AB1265C6C31;
	Tue, 25 Feb 2025 12:49:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 367A8C4CEE6;
	Tue, 25 Feb 2025 12:50:10 +0000 (UTC)
Message-ID: <795082c4-499f-4935-b580-72b01d82fe1b@xs4all.nl>
Date: Tue, 25 Feb 2025 13:50:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] fixup! media: v4l2-common: Add helpers to calculate
 bytesperline and sizeimage
Content-Language: en-US
To: Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 linux-media <linux-media@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-staging <linux-staging@lists.linux.dev>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Dan Carpenter <dan.carpenter@linaro.org>, Jonas Karlman <jonas@kwiboo.se>
References: <20250225-rkvdec_h264_high10_and_422_support-v7-0-7992a68a4910@collabora.com>
 <20250225124008.195405-1-sebastian.fricke@collabora.com>
 <1953d249c3c.d1d6678f34821.5333341344528638254@collabora.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <1953d249c3c.d1d6678f34821.5333341344528638254@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_045014_459433_08967A0F 
X-CRM114-Status: GOOD (  18.97  )
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

On 2/25/25 13:46, Sebastian Fricke wrote:
> Hey,
> 
> sorry about missing this in the patch series, if you don't like the fixup path, then I can send a new patch series as well.
> I just thought the change was minor enough and addressed the final comments.

Ah, this relates to patch 01/12 of this patch series:

https://patchwork.linuxtv.org/project/linux-media/list/?series=14577

Next time it might be better to just reply to the offending patch with the fixup.

That way it is clear for the maintainer what the fixup is for.

Regards,

	Hans

> 
> Regards,
> Sebastian
> 
>  ---- On Tue, 25 Feb 2025 13:40:08 +0100  Sebastian Fricke <sebastian.fricke@collabora.com> wrote --- 
>  > ---
>  >  drivers/media/v4l2-core/v4l2-common.c | 2 +-
>  >  1 file changed, 1 insertion(+), 1 deletion(-)
>  > 
>  > diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
>  > index 07a999f75755..aa86b8c6aa75 100644
>  > --- a/drivers/media/v4l2-core/v4l2-common.c
>  > +++ b/drivers/media/v4l2-core/v4l2-common.c
>  > @@ -360,7 +360,7 @@ static inline unsigned int v4l2_format_block_height(const struct v4l2_format_inf
>  >  }
>  >  
>  >  static inline unsigned int v4l2_format_plane_stride(const struct v4l2_format_info *info, int plane,
>  > -                           unsigned int width)
>  > +                            unsigned int width)
>  >  {
>  >      unsigned int hdiv = plane ? info->hdiv : 1;
>  >      unsigned int aligned_width =
>  > -- 
>  > 2.25.1
>  > 
>  > 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
