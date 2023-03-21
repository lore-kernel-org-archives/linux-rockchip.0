Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF2D2C74A5B
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Mar 2023 14:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJs2+D8TAXDfknfBbvJaZepqEOmO4PI6j/GXPVT+Yco=; b=IDp4A+RoVYWNkt
	+SJXtGDbdq/+oLkfhxqFKNqD9wlejKr8I13Kj/7w/tB6x0nWT3k5e0H0VR2L0kx/wCZlQpr0qenQq
	COjOLMMDVPZAkZCFbgCVRzppmbq1b5Rx6F5FGTNRfT5ga1nAjwtUhBlC2Rkvo7mVYCwxx2y2GNAAU
	0WL5KOIU8mthlxInYRhmwZVswYNgoKVxqOHdZsDxyI2m0sbgfjn7cX0/Mo1xlEpiFCxRwUXHmJnmR
	HTeSA59a+gaon8YPwoYaoN6n2JDu3rS93EFDSnh+7Z39MVfjnOk8m7vnRXfF/viqDJehM4BVWmS13
	fk/TkXDVngq4cu5ub+Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pedCw-00Cmh0-2w;
	Tue, 21 Mar 2023 14:43:26 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pedCu-00CmgJ-25;
	Tue, 21 Mar 2023 14:43:26 +0000
Received: by mail-ed1-x534.google.com with SMTP id b20so27681386edd.1;
        Tue, 21 Mar 2023 07:43:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679409802;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=O7ubpTBwCGfHItDX77/xDDLQ0Emp6svnzclBDAs6qyE=;
        b=T1s8Ngl+RkVIvxNZpvZnMH7cqodpqineB22YWtIv/fCGFj7joV/a1TjSRUm2pJJHHt
         MUKxqDn5xKWt1O5LBWVnUBgDu7rGLfa03O5Y9FcuEHowG/SlkK7LqP23ZwmrwM0e7Teq
         QIWIwFG8FsQIjgobJ5zpK1KmBtp960ybNTL2lY/5bEB4xvS7cnm3kjiyyk9z2xzet73f
         gBH4RPumKKnXgn8OfdTuNLjHTY1ctiMA2fIGN5fpsiI7phP1firJvEgcgRL6RMRFv9B6
         rxvXVlonIb+2hM/XbpELgBCHVQG3Fb65I6yc1FlE/etUE3C5BrDKrCvP1Dd5HFv5cDVd
         3S5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679409802;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O7ubpTBwCGfHItDX77/xDDLQ0Emp6svnzclBDAs6qyE=;
        b=Ut1dwXDNPBjW7klaVFsmTJM0xnDuW8a9m8hwctGfaAW6WZX7UY+bZj8KbpaBg1vE8e
         tmvBWh2TtxtICwat4xs0oyJwvtI0SNIRudt1mLmwqPOJFdz55LvKbbwsjLhOoVNYslOH
         NFDjrSSkB5H0a5Y3C9Q+VmudVx3jptC4T8ZtulhYIvvWjhpNhk8WoQlWm6b8oFfWxdfN
         gkbj0qEyENZmgSnxDqCs7bMdxFRj8GxY17/gQp+tGxBGqmuYuljcdRY/WlMYsbZeQE1n
         1gpIMZG5QdqM2tZiX9vDfdL0AH717B2Z9KoNzHvpNT9HcVHK/s9B3DiW1D94+vayHFAa
         PtIA==
X-Gm-Message-State: AO0yUKVfuJKurxLiIc1FepyZcnLWk+MlorNZYKP3rwoQDOYEFIitZ7Sm
	mn7e0ewRwaOzW7j7QhHKhas=
X-Google-Smtp-Source: AK7set96Is0TLe0fndXxjNYCDYYIIwKDzHB+KNPQfBa3bfvxoMA0iLVPglnQVrqgXhUacHz1wyNEXg==
X-Received: by 2002:a05:6402:1116:b0:4ac:b528:5727 with SMTP id u22-20020a056402111600b004acb5285727mr3772779edv.1.1679409802207;
        Tue, 21 Mar 2023 07:43:22 -0700 (PDT)
Received: from tom-HP-ZBook-Fury-15-G7-Mobile-Workstation ([5.170.200.163])
        by smtp.gmail.com with ESMTPSA id q28-20020a50aa9c000000b004fb556e905fsm6386755edc.49.2023.03.21.07.43.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Mar 2023 07:43:21 -0700 (PDT)
Date: Tue, 21 Mar 2023 15:43:18 +0100
From: Tommaso Merciai <tomm.merciai@gmail.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Helen Koike <helen.koike@collabora.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 00/14] media: rkisp1: Add support for i.MX8MP
Message-ID: <ZBnChlWq5RTI8U8h@tom-HP-ZBook-Fury-15-G7-Mobile-Workstation>
References: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221118093931.1284465-1-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_074324_690758_482D56F3 
X-CRM114-Status: GOOD (  23.91  )
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

Hello Paul,

On Fri, Nov 18, 2022 at 06:39:17PM +0900, Paul Elder wrote:
> This series depends on v3 of "dt-bindings: media: Add macros for video
> interface bus types" [1].
> 
> This series extends the rkisp1 driver to support the ISP found in the
> NXP i.MX8MP SoC.
> 
> The ISP IP cores in the Rockchip RK3399 (known as the "Rockchip ISP1")
> and in the NXP i.MX8MP have the same origin, and have slightly diverged
> over time as they are now independently developed (afaik) by Rockchip
> and VeriSilicon. The latter is marketed under the name "ISP8000Nano",
> and is close enough to the RK3399 ISP that it can easily be supported by
> the same driver.
> 
> The last two patches add support for UYVY output format, which can be
> implemented on the ISP version in the i.MX8MP but not in the one in the
> RK3399.
> 
> This version of the series specifically has been tested on a Polyhex
> Debix model A with an imx219 (Raspberry Pi cam v2).
> 
> [1] https://lore.kernel.org/linux-media/20220615221410.27459-2-laurent.pinchart@ideasonboard.com/

I tested your series on imx274 on imx8mp-evk csi0.
All looks good on my side.
Thanks for your work!

Tested-by: Tommaso Merciai <tomm.merciai@gmail.com>

Regards,
Tommaso

> 
> Laurent Pinchart (3):
>   dt-bindings: media: rkisp1: Add i.MX8MP ISP example
>   media: rkisp1: Add and use rkisp1_has_feature() macro
>   media: rkisp1: Configure gasket on i.MX8MP
> 
> Paul Elder (11):
>   dt-bindings: media: rkisp1: Add i.MX8MP ISP to compatible
>   media: rkisp1: Add match data for i.MX8MP ISP
>   media: rkisp1: Add and set registers for crop for i.MX8MP
>   media: rkisp1: Add and set registers for output size config on i.MX8MP
>   media: rkisp1: Add i.MX8MP-specific registers for MI and resizer
>   media: rkisp1: Shift DMA buffer addresses on i.MX8MP
>   media: rkisp1: Add register definitions for the test pattern generator
>   media: rkisp1: Fix RSZ_CTRL bits for i.MX8MP
>   media: rkisp1: Support devices without self path
>   media: rkisp1: Add YC swap capability
>   media: rkisp1: Add UYVY as an output format
> 
>  .../bindings/media/rockchip-isp1.yaml         |  79 ++++++++++-
>  .../platform/rockchip/rkisp1/rkisp1-capture.c | 102 +++++++++++---
>  .../platform/rockchip/rkisp1/rkisp1-common.h  |  32 +++++
>  .../platform/rockchip/rkisp1/rkisp1-debug.c   |  14 +-
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     |  67 +++++++--
>  .../platform/rockchip/rkisp1/rkisp1-isp.c     | 128 +++++++++++++++++-
>  .../platform/rockchip/rkisp1/rkisp1-regs.h    |  90 ++++++++++++
>  .../platform/rockchip/rkisp1/rkisp1-resizer.c |  35 ++++-
>  include/uapi/linux/rkisp1-config.h            |   2 +
>  9 files changed, 509 insertions(+), 40 deletions(-)
> 
> -- 
> 2.35.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
