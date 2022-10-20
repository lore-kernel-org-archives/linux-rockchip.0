Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BF3AC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Oct 2022 12:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ffkoB0jzJKnsfB4GR8J7wV4XDFscOyqoY1bRGkihpqo=; b=luVwGcKo5BTcDP
	lIIFCYGhozjddIG23/xfbHT09N/UfysWQp15au/WiuV63UFx+YKwbkCDcoVyy1kLXaWj2EssSGdFn
	U0HjVnBp5VkX68A6XoLArwT4ls5o1elSzVA02TWnFDrMI+tRUG4HsGTCzulw9AZUHWYVq/5eo+ynh
	PJr2hxLEOZlIlL5h3neGn3etcquHDgEYZHeLvh67IexfgJ+wJs0F5wz5fRvucNdWz7Vjd8z9gLIgF
	dbSwpyUAp/XCMwt+SPF/dUeM2FPZIxD4xDCiKsXK7fA+BLlSQc3c+mZXoMJaO/YVu1N+1dTcgTgY1
	TG1u6Ihk+Pp9NCLCjfFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olUOU-00EZQy-5J; Thu, 20 Oct 2022 12:11:26 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olTUi-00Dx9B-JT; Thu, 20 Oct 2022 11:13:52 +0000
Received: by mail-qv1-xf31.google.com with SMTP id j8so1868710qvo.6;
        Thu, 20 Oct 2022 04:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RxhhqW9JKRj5MjXW/jzEJqVqePNXtFqQf3mTMtmQZF0=;
        b=LE8QP3ziYOhbahNN6Srlo9VcdqQMB1YVT0KCSfs/iHUhOcliGz42AC9wG8YnxfYIEb
         lIw0Wi+FR7eOI/nKc1jlUvj9gR7wnrirJT5xLm7XqxSmYcB9/VW0m+foAzNDWx1xcwRs
         KnbncNaRL/2mZMUhRU1XoYVC5n0hsB1qY1eDXqmt0ZIBFTnpJLbtqdf+OPAOmldgKlEs
         Hz245KAEKIi3LHYqquTepBX9QIk/JQQUNA3/jJIDu8GouY86WN07n1Tz3FvEEVOcCPXy
         PeXk5/PPPnW5MWHtxBFdJ7Zq4CDrbWEeQFv+3Z38eUcrsmpSlZHMkUDs3tZj9B+02NtR
         OouA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RxhhqW9JKRj5MjXW/jzEJqVqePNXtFqQf3mTMtmQZF0=;
        b=z3kYYsgoTkBpLM9zu84T6mnKI0Vod2iT08tfIWx55Ebl0M+VtckYZZQkNMR+zZduke
         SuPS0mG1jSHH7jApKuUh1JLlyD8MGLnK1Dn/631qOLuo4ICHz8uElRMMdIj6b0+ORfNp
         PkzwyacAb2Kb6i5SzSFYLE5Ia7VOCe9RUl4brcHYC8zbR6U3ZeEmhHcGb57E/wNhXIFf
         oRNG3mq/ERihWo6KqyaKCksX33pirVW8qfKXSlW97L2ST6OZsi9W0Ae0FKxpAlraK0/a
         mznYdtbfpaRmoc9aggC/g6JEx0iFPaOEYUV0n6IYJuJse42PBDoxJ4pLUYIF/jdYtmng
         Ov5Q==
X-Gm-Message-State: ACrzQf1CIldiFHBwyolPC5AxpwrXwkT8CBtPE1RvrfjYExPZT03+7GvX
	C1fXYuxmgu+DUaotsI7eXIPkbURQXnnTcRGj1LOz73xP9ooOjw==
X-Google-Smtp-Source: AMsMyM7623m7f8/X4BmFn/9QBoivUohxCpY9FoUuJ166Lu0mWaqJuWfug6DaDR4S62S0tSLKsXHA8VkGyAjYV+YONU8=
X-Received: by 2002:aa7:8504:0:b0:563:1ae2:6dc0 with SMTP id
 v4-20020aa78504000000b005631ae26dc0mr13457624pfn.48.1666264415497; Thu, 20
 Oct 2022 04:13:35 -0700 (PDT)
MIME-Version: 1.0
References: <Y1AqBnPSyu7PpiwP@deskilmich.example.net> <21c35744-eee0-ae31-dc54-3e7e1334ae08@gmail.com>
 <CAK1Nf77W=_7xnDfEjKr=N9Ot0WSgzchEJqJ5_PXOMcvfiQKd8Q@mail.gmail.com> <9009700.CDJkKcVGEf@phil>
In-Reply-To: <9009700.CDJkKcVGEf@phil>
From: =?UTF-8?Q?Michele_Zuccal=C3=A0?= <ardutu@gmail.com>
Date: Thu, 20 Oct 2022 13:13:10 +0200
Message-ID: <CAK1Nf75B-4wzM3pafaOVHCD9WugT3YPjphbEq25-WLRGh3Jhbw@mail.gmail.com>
Subject: Re: [PATCH] arm: dts: rockchip: add crypto node for RK322x
To: Heiko Stuebner <heiko@sntech.de>
Cc: Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	Alex Bee <knaerzche@gmail.com>, Corentin Labbe <clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_041348_725156_7664EA76 
X-CRM114-Status: GOOD (  14.69  )
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

Hi Heiko,

>
> no worries, we'll get you through it :-)
>

thank you

>
> actually you want to go the following route:
>
> (1) pick up
> - https://lore.kernel.org/all/20220927075511.3147847-25-clabbe@baylibre.com/
> - https://lore.kernel.org/all/20220927075511.3147847-26-clabbe@baylibre.com/
> as a base to work on
>
> (2) create a patch to add your compatible.
> I _think_ after that, the compatible block should looks
> something like:
>
>   compatible:
>     oneOf:
>       - const: rockchip,rk3288-crypto
>       - const: rockchip,rk3328-crypto
>       - const: rockchip,rk3399-crypto
>       - items:
>           - const: rockchip,rk3228-crypto
>           - const: rockchip,rk3288-crypto
>
> to handle the new dual element compatible.
>         make dt_binding_check
> should tell you about a wrong format.
>
> (3) modify your dts patch to use the two compatibles
> (4) export patches by
>         git format-patch -2 --cover-letter
> and mention in the cover-letter the dependency on the
> yaml conversion.

very clear. But excuse the stupid question, this way it becomes a new patchset
and not the v2 of this patch, right?! Will this patch be automatically
ignored ?!

Michele

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
