Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF59EC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 20:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z0cVndLI9ctUsfr/8KdnwUpTL8kZLWF2MQrB/szXKp0=; b=tTHkKQGT36ZBFO
	tzqOgmb0I60UDqNUzNIjYtFULwZ4NpIKXD/5X2CmXyF5iRGzdghmYKSJb2yKjMjPo/uNLHrSR+5TG
	UgyD1HJzsNO07YXqu3WME022d/6gZ4G9Kt2/0h03InSw+xui9o8LCYp9FiGkxrHP/kVWgZT8zQ2AK
	FxIZemIkAiaY8TP29QYeXTvGITYslElWsHUXny8U7NlTNShJcuez0puTnqHpuU+rY1VkuDZLkmPkg
	VB5b+jr0L2qodTRc5hUxUnTfoZnGXXiLjW9yt0+syWSEBkFY/7oqTAL23fFSUmoeqP2u8wSynw1RN
	vEYHVK1e2lsJiSQk1TKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQEq0-00C2QY-36; Fri, 04 Mar 2022 20:47:44 +0000
Received: from mail-oo1-xc2b.google.com ([2607:f8b0:4864:20::c2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQEpx-00C2Pe-GA
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 20:47:43 +0000
Received: by mail-oo1-xc2b.google.com with SMTP id
 o7-20020a056820040700b003205d5eae6eso10251627oou.5
 for <linux-rockchip@lists.infradead.org>; Fri, 04 Mar 2022 12:47:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pwdmIZ1vAwSObDe/h49djMAqGoMYF/D6xcMqohXC3kE=;
 b=RJf3TBmp93JdSx/quLb7AdYBJ1dJjO4Y4Ur4LXOaYnhYg5IMjk6yJimLcSePe+3blZ
 i5tAo5PIEAC++iphSrvFL7dS6M0Ffa/2SdzGpF8ak6C7GgpMRuz0ywkeV5lFhhNf1pJy
 B+YSlCqiwqlwnarFHej640qLdKSfryCEGs5+w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pwdmIZ1vAwSObDe/h49djMAqGoMYF/D6xcMqohXC3kE=;
 b=xEdcldL6XNG9puIMcoQgLD1lchMVP+GA1LVopZvMGg3NnTjMgbzLRVBeAGSWr3JX6b
 9+9ZOEnzIXOI6u6IKEradbiOi5y2DvgiiIsagO1aTXPNFW5pTliJ3L7ONb6uPOdXzHdN
 VGUmW+BT2Cgomu68txKC1oqGTgvh/K7Il/xa1jisstJL7YqjdjEYnxwC7MjXwTSeBVjP
 CpD5XBRj7dC0BkTonnT3qMVIwOSr5V/5KkDoK9HK885XGJtwIPP6QreS9G+zAhDNRp2W
 LmgAhsHwKgo7qinD08cAPPPFD3EgbXuEebfK1lZjOQglEeZCquXe2AfD7ekhWyAk5/82
 1SaQ==
X-Gm-Message-State: AOAM530emC6MTOZ27P3NdtClCDblD7GOlxWx7CA/NYEgpAvCWnac5yLd
 +v+Tkycq1yN2xryRotPbQSbMClDnBdVGJg==
X-Google-Smtp-Source: ABdhPJzJYUzc/7EcSW+jD2WsOanvekDFwYA9Zd1uqrsgNcUbcPJk95ErK1BpNg1nFNEP4WAxh68Z6A==
X-Received: by 2002:a05:6870:168b:b0:da:b3f:2b78 with SMTP id
 j11-20020a056870168b00b000da0b3f2b78mr594062oae.279.1646426859163; 
 Fri, 04 Mar 2022 12:47:39 -0800 (PST)
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com.
 [209.85.210.51]) by smtp.gmail.com with ESMTPSA id
 v8-20020a4ae6c8000000b0031c2e6dd492sm2699314oot.28.2022.03.04.12.47.36
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 04 Mar 2022 12:47:37 -0800 (PST)
Received: by mail-ot1-f51.google.com with SMTP id
 k22-20020a9d4b96000000b005ad5211bd5aso8353962otf.8
 for <linux-rockchip@lists.infradead.org>; Fri, 04 Mar 2022 12:47:36 -0800 (PST)
X-Received: by 2002:a9d:7:0:b0:5b1:fe36:2d15 with SMTP id
 7-20020a9d0007000000b005b1fe362d15mr249673ota.186.1646426856478; 
 Fri, 04 Mar 2022 12:47:36 -0800 (PST)
MIME-Version: 1.0
References: <20220127230727.3369358-1-briannorris@chromium.org>
 <20220127150615.v2.12.I3a5c7f21ecd8221b42c2dbcd618386bce7b3e9a6@changeid>
 <CAMdYzYo9Y_pEAAtreQU0B9DVzGsbUgpTA2g7HGRyUXcSBjMy4g@mail.gmail.com>
In-Reply-To: <CAMdYzYo9Y_pEAAtreQU0B9DVzGsbUgpTA2g7HGRyUXcSBjMy4g@mail.gmail.com>
From: Brian Norris <briannorris@chromium.org>
Date: Fri, 4 Mar 2022 12:47:25 -0800
X-Gmail-Original-Message-ID: <CA+ASDXPMOAM0sYdbYLsUDJhJ7qDn-WSP2Sx+GKsZwpuVgQ_OkA@mail.gmail.com>
Message-ID: <CA+ASDXPMOAM0sYdbYLsUDJhJ7qDn-WSP2Sx+GKsZwpuVgQ_OkA@mail.gmail.com>
Subject: Re: [PATCH v2 12/15] arm64: dts: rockchip: Enable dmc and dfi nodes
 on gru
To: Peter Geis <pgwipeout@gmail.com>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Lin Huang <hl@rock-chips.com>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Derek Basehore <dbasehore@chromium.org>,
 devicetree <devicetree@vger.kernel.org>, 
 linux-pm <linux-pm@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 =?UTF-8?B?R2HDq2wgUE9SVEFZ?= <gael.portay@collabora.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220304_124741_579557_8340E764 
X-CRM114-Status: GOOD (  19.90  )
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

Hi Peter,

On Fri, Mar 4, 2022 at 6:47 AM Peter Geis <pgwipeout@gmail.com> wrote:
> I'm trying to bring this series over to rockpro64 (and eventually the
> pinephone-pro) and am running into some snags.

Dumb question: is DDR DVFS supported on these systems in the
"production" (vendor kernel? I'm not really familiar with these
devices) software? I partly ask, because while I didn't do some of
this first-hand, I'm aware that it was a real ordeal to get things
stabilized (e.g., getting all the timings right; communicating the
right details from bootloader to ATF; etc.), so if no one did these
things in the first place, it's probably difficult to get working now
just by guessing.

But if it works on a customized kernel, then that's a different story.

> Essentially, anytime a transition happens, the board locks up.
> I've disabled the extra power save disable flags and adjusted the OPPs
> for rockpro64's power.
> Transitions anywhere from the default 800mhz cause a lock.
>
> I'm digging deeper, but I'm hoping you can answer some questions in
> the meantime:
> 1. Does this require something from firmware that isn't available on
> Mainline ATF? (AKA special firmware to the Chromebook line)

I don't know precisely. Chromebooks track mainline ATF, but somewhere
before initial product launch, each platform gets its own firmware
branch. On that firmware branch, we still try to stay in sync with
mainline to some extent (e.g., submit to mainline and cherry-pick to
branch), but it's not guaranteed.

Anyway, you can inspect our code here:
https://chromium.googlesource.com/chromiumos/third_party/arm-trusted-firmware/+log/refs/heads/firmware-gru-8785.B
https://chromium.googlesource.com/chromiumos/third_party/coreboot/+log/refs/heads/firmware-gru-8785.B

Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
