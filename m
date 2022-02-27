Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1140EC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 17:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwzC19IDssTWgeknw/FRU9alOXmIB3P6OV+C1Fa0JRQ=; b=vNpXKmhoAVJfkN
	HLXM61OK/QIz3MTNltZJbq85k2voDNQE/0cC/0ZsK3Y+AcVk26kd8DIM0+7ARBNpSIyExtxRnmKlt
	Sl7AhKsiv9dL+n+cbc2gsdrD9CoedZUXaGhIgurdP1ezPPB9uVHi6u8m2k6oWosMrD9zluJl1sCHw
	u/TBMO9kSuuHd+hfBQTP6PUCIQI8CH9N24sx9031B4OmCHnDrNkvTDBp+hH6VDs7jo/ybWL5ho0r9
	elGY4SMYaeylGDwMBpnJN5rBk3KXMOiYIi9ToWFwxPN5EZkDsHoPXlKjNGhb3IC1xxlLdKRh0KUW+
	V0xNVJvenrdtXwsWn6Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOMxL-009qzi-3X; Sun, 27 Feb 2022 17:03:35 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOMxG-009qyH-Bq; Sun, 27 Feb 2022 17:03:33 +0000
Received: by mail-ed1-x536.google.com with SMTP id s14so14410632edw.0;
 Sun, 27 Feb 2022 09:03:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dANX2Nn44mbCP9zs92/BfwoXKsDqb2azTmCoigDg0oU=;
 b=LL2RxvR/1/nUpXagZ8ezOOBshFZ6Ut3TWhhpQTqimGrQSwON3CRmV6uP61RIU7jB0i
 8l+0YrcDznzwP7CtQOiO3ymzZ8OyL92WUsu9fIypR0iyv3/vyeD5LqMoy0zgyp9E9E0W
 rqZ1KLO/Bf0JwCQ5hbX9suKteBENqBaAAJJwSLvee4oNGb7H4+E3lcOGTyWZnTWrGomu
 XKJ5eMZvpwx0ztwmT9unP4kejlM3pecyWt4D+qKZWaWog8YSi/kB0e2zPhMKBVSsL4HM
 6lNkPX9sF7T466aXwy1AT3KikKt6f5046EMj+XIPVdQSkHeLcLeIU5wNx17UZU7cSDJW
 lPkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dANX2Nn44mbCP9zs92/BfwoXKsDqb2azTmCoigDg0oU=;
 b=mxeDAjm7EYpulOLQejrVGQ9tTiTWsWFmr5X31dvdiXHWoxlllExy1MxktnkNEowgjX
 CvjmqymPnGlXGxNrsTj2nJvvbnwEwk9DJfwyKrCN+TlAs3m/17nsTD0sYa0/UvgtbKV/
 ZeR/ChAMfJPx1DRx1N/Nl6i8nSFDf6JXL3i+nK4T305pLltT6ZXodfm6zdzvQHj4wNIn
 tLdKOpX4uyjwsSBb919uU2fqD1KUndEp2+0xMj5E7YNVUPmMvITGUjvOlIiqwpMR9a6M
 18aNImzBykuTF2RdMQObuPowcsbcKOF47wHjHXy5xXTCtMXRvEscypC5RtVVJ4iMn2s/
 OOcw==
X-Gm-Message-State: AOAM530Xo8qvSUurzDlMsf/GJPr3NiBEAMA312AQ87qERdJM1K1zBvUy
 dmoXzj92iRTO3aAGOOKAqEM=
X-Google-Smtp-Source: ABdhPJwUjgrEmeNoJb0yPleFkeU4+PhfGM+FDV7S1txB8mcMnr2ykdbwmpn6pMLVCz48WjNv2ZCKkw==
X-Received: by 2002:a05:6402:372:b0:40a:bbf4:7973 with SMTP id
 s18-20020a056402037200b0040abbf47973mr15856901edw.399.1645981408694; 
 Sun, 27 Feb 2022 09:03:28 -0800 (PST)
Received: from kista.localnet (cpe-86-58-32-107.static.triera.net.
 [86.58.32.107]) by smtp.gmail.com with ESMTPSA id
 gq15-20020a170906e24f00b006cfba1c5433sm3587873ejb.172.2022.02.27.09.03.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 09:03:28 -0800 (PST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de
Cc: mchehab@kernel.org, nicolas@ndufresne.ca, hverkuil-cisco@xs4all.nl,
 gregkh@linuxfoundation.org, wens@csie.org, samuel@sholland.org,
 linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Subject: Re: [RFC PATCH 0/8] media: hantro: Add 10-bit support
Date: Sun, 27 Feb 2022 18:03:26 +0100
Message-ID: <8898316.CDJkKcVGEf@kista>
In-Reply-To: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
References: <20220227144926.3006585-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_090330_444346_9872AD8C 
X-CRM114-Status: GOOD (  15.19  )
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

Dne nedelja, 27. februar 2022 ob 15:49:18 CET je Jernej Skrabec napisal(a):
> First two patches add 10-bit formats to UAPI, third extends filtering
> mechanism, fourth fixes incorrect assumption, fifth moves register
> configuration code to proper place, sixth and seventh enable 10-bit
> VP9 decoding on Allwinner H6 and last increases core frequency on
> Allwinner H6.

FYI, additional patch is needed for linear P010 output:
https://github.com/jernejsk/linux-1/commit/
28338c00749b821819690c9fd548fd5c311682b5

With that, only native format was not tested.

Regards,
Jernej

> 
> I'm sending this as RFC to get some comments:
> 1. format definitions - are fourcc's ok? are comments/descriptions ok?
> 2. is extended filtering mechanism ok?
> 
> I would also like if these patches are tested on some more HW.
> Additionally, can someone test tiled P010?
> 
> Please take a look.
> 
> Best regards,
> Jernej
> 
> Ezequiel Garcia (1):
>   media: Add P010 tiled format
> 
> Jernej Skrabec (7):
>   media: Add P010 format
>   media: hantro: Support format filtering by depth
>   media: hantro: postproc: Fix buffer size calculation
>   media: hantro: postproc: Fix legacy regs configuration
>   media: hantro: Store VP9 bit depth in context
>   media: hantro: sunxi: Enable 10-bit decoding
>   media: hantro: sunxi: Increase frequency
> 
>  drivers/media/v4l2-core/v4l2-common.c         |  3 ++
>  drivers/media/v4l2-core/v4l2-ioctl.c          |  2 +
>  drivers/staging/media/hantro/hantro.h         |  4 ++
>  drivers/staging/media/hantro/hantro_drv.c     | 23 +++++++++
>  .../staging/media/hantro/hantro_g2_vp9_dec.c  |  8 ---
>  .../staging/media/hantro/hantro_postproc.c    | 34 ++++++++++---
>  drivers/staging/media/hantro/hantro_v4l2.c    | 50 +++++++++++++++++--
>  drivers/staging/media/hantro/hantro_v4l2.h    |  3 ++
>  drivers/staging/media/hantro/sunxi_vpu_hw.c   | 13 ++++-
>  include/uapi/linux/videodev2.h                |  2 +
>  10 files changed, 122 insertions(+), 20 deletions(-)
> 
> -- 
> 2.35.1
> 
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
