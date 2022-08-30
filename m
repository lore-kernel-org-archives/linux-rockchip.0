Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A41DECAAD5
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 04:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JUy41iYlBUHV8XDEfn4QlHaWbb969iQ2Yn7C64eAmLc=; b=mxgWth2Npfx/XH
	+7R/3d9TTK/90xPAb/vsiO0yfqy+g6rAYsLxnEJFCASAUq1wCK9OovmTFIsCeupvM5GDyv4OH2CGB
	XcyvhRLn0CDNwRxTCaxr+tej4E3rarssGQaeej7z32XC2gGD4pyUs2d3eJKW3CuJ5hJkLJsv+pkGe
	Pc/XicQFskqATJc1AZNMpOQ6pQOhVxxGPb2dmALeSSZ7+9T7cQwlahKcGvB4OM5v4Q3UZjTJ7IDlr
	qCtwRjq28dlAKjKHmderNolTIU3KhhytWPghbUJ01UeRGoWmf16t15rbnLTY9SsY6mz/o5FAbI+Fi
	lALBgiR8ZsmWR+8M4+yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStIY-00E5xH-GI; Tue, 30 Aug 2022 04:56:26 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStIM-00E5uJ-Nh
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 04:56:16 +0000
Received: by mail-ed1-x536.google.com with SMTP id a36so8831275edf.5
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Aug 2022 21:56:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=Ct12KTYjiiY5loIbV4mY2fxWIuXj8jz58iaHIjxHic8=;
        b=lna4QNb5nnAPp1vH6NVXtxzsSFkSKU2mg3KMsHJJ7kj++9vTwz1uSkt33p1QTddnAa
         LU5go2AcbcSI9C8eoj+0B6yhKdjLkr2c53xALiMcYPrkEXq732K9mhl0QuQXNpxY6p2z
         CPQcO2yc+iTb46wsdrmcqhfv9a562NHCDRDp8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=Ct12KTYjiiY5loIbV4mY2fxWIuXj8jz58iaHIjxHic8=;
        b=R6UJC0vBH8jLQggfmzMjt+TO7fPY5ZAAmO9Z2z7EGipruBepLX0484OOlXLMsFkmc3
         6Yd2yQdXK/9wL+OMxMXlFD1MXBS4NCZsvXxp+vZeDHasmYHQqzeUSSy6TKIoN6VqWxpF
         qk3OAw2GMDYuvssGLwm4q071pnBxAMReikTDPrPGiW/oP0VSjWnjDw/oE4BuJYoIjdD1
         87pSPsDbr/slHP7n02C5indxDje04PMMiTZh9K8ETwMZaQGPR2DtoJOUWT6BcCUTOH2p
         5h4o5YuZKv0hyqevnA9Q3WP/331urNgD3FKBI9Sz/SWfPSsel0WcozgGI190LT/x2G8S
         Nmaw==
X-Gm-Message-State: ACgBeo2FsvP7LVgU9A9bTCCBU5kgwRnmCXTvQPjzh45cpWk7RAe0M9JA
	Y+wqC9z+juHtqQZOfvc5n6Aslk5VCFH1NPUWxbucMQ==
X-Google-Smtp-Source: AA6agR6EQyA/TtFnUUL9Y3HVLcIWTXWS3OJ7y6+paUu/xnq251VjV3BwtIHPo4hCcXe200uGbKf2wdtcN8dOv0eEf+M=
X-Received: by 2002:a05:6402:4303:b0:448:7014:ed8f with SMTP id
 m3-20020a056402430300b004487014ed8fmr6625364edc.335.1661835372254; Mon, 29
 Aug 2022 21:56:12 -0700 (PDT)
MIME-Version: 1.0
References: <20220824080903.3696847-2-jagan@amarulasolutions.com> <20220829201752.518374-1-naoki@radxa.com>
In-Reply-To: <20220829201752.518374-1-naoki@radxa.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 30 Aug 2022 10:26:01 +0530
Message-ID: <CAMty3ZAEetiD4kTLeRVved2wb_uK-MqZ3h3TQByQa-0j9TQqRg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: abbaraju.manojsai@amarulasolutions.com, devicetree@vger.kernel.org, 
	heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, 
	linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, robh+dt@kernel.org, stephen@radxa.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_215614_872955_6843E722 
X-CRM114-Status: GOOD (  11.94  )
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

On Tue, Aug 30, 2022 at 1:48 AM FUKAUMI Naoki <naoki@radxa.com> wrote:
>
> Hello,
>
> thank you very much for your work!
>
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-4c-plus.dtb
>
> this is not an objection, just a note for me, currently our(Radxa)
> u-boot try to load "rk3399-rock-pi-4c-plus.dtb".
>
> > +#include "rk3399-opp.dtsi"
>
> ROCK 4C+ has RK3399-T. it needs different opp table.
>
> > +     aliases {
> > +             mmc0 = &sdmmc;
>
> please add
>
>                 mmc1 = &sdhci;
>
> as like as other ROCK (Pi) 4 series.

are you sure? other use the same.

mmc0 = &sdmmc;
mmc1 = &sdhci;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
