Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28ACFECAAA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 08:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8E1gfXqfDUJpj9f8PhICe3QFkbEnbqMmSKxF7livZQ=; b=cKkOE5foCVFSqA
	bt5yGeoqjf7wyjNpiirqOWMj1VCPhCJEKnSc8EBk4wJpZWN8RnfjVaLStbfL7NMePVGMT4zu0HyPx
	GeS1XiLw+V6csbEuB6Eaoux2s7h4wxps0YMnqVJiekeg3dfHgs6W/qLZL9ydgkXW+WlWfKm1NfjEF
	lGSmq6/e95bbRz3Skvn0zEfA5R2id7Yleroj2eHJ94ZT1irm/OZCbUFVY4h9h39F79AJNofDv7d4J
	rTROA11wJ0e43/a5oSl3C+ndI2f47qo2wGJf4Y/+PXKj+fucbEpkJ435uiXCWjX9TdAjVAtEcHIjO
	hbVcUnwLnpZb6lsn5Kfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYkTn-004DHF-Qi; Thu, 15 Sep 2022 08:44:15 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYkTg-004DCc-Vk
	for linux-rockchip@lists.infradead.org; Thu, 15 Sep 2022 08:44:14 +0000
Received: by mail-ej1-x62f.google.com with SMTP id go34so40489912ejc.2
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Sep 2022 01:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=DwAOYGfkO3OPDyozHAPWbPMkPR348pJzmEfWU7to/7k=;
        b=oXf6/iVERcHsqGodxRep9TuWCJWvTfdY9ypaIjS2tUY73T/AwLKKOfBkntlSc0M6ej
         QrhtpLPZokbxO8sZ73o8YHeU5YW6eu9n0N+1wTqlOCmaskCymBSnw4NxriYOGoCogVTt
         rg81pmBLZAUXM4Mu+jpJoWx21CxGUC4AJDnob0er0KHwMO87F9anpout6+nvLLpwb7Qk
         B847SbW58Vzm0Ju/uTL+rgU68OrIWDtlJjUT5w47UygecIQC0xyURIp2sOBPTki9zpPz
         hZwseA8z8r1ttOHPsXF0JU1cyH594P24XGqCt4ydNTNtCTo6lF5MIz++Krl5ynQmR//2
         kUWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=DwAOYGfkO3OPDyozHAPWbPMkPR348pJzmEfWU7to/7k=;
        b=8CW1oAhAryh671VD9y2eFtD+Yn38Bamkv3s31eGr5EcY9txHfZJNInyR+Gh1yWGWAO
         II31fjcNNcsmiPr27w7RLI12sRnwHhnlXDY3sOUaieHJ0Eju3h+6w7S39FxfmwyB+GtT
         acCVwOkL0OlZ0SLA+ffsCTCax6K998/okD+fEsejQC3xwr86Kuc3yJF3OQO1YwjuXL6K
         +rGvmrE/8DppqLjQC3Y8bNYPLxKao5HtXVGzLI1cSDcG9PTy5AoEsxUAk6JyDgJE6UqQ
         o2KhKA81d/Oj6aKlGEZdsUGJLae4BpsTBYyILDJtfGVkSu6fG297mn/K/6a4TzE2UrzL
         l6lg==
X-Gm-Message-State: ACgBeo1QkdduLg3H0xcscUvRSFAZLQgm9f0uWgZt8nHukxf66mSMQkxF
	Tpx+xg92K6P2sUZa5UDHyZ2vAsvwHxOmtn1gnX4bMA==
X-Google-Smtp-Source: AA6agR7qBgBc5KmeBQr28AbsnuudedYYAi2g/wyqFIP7vkOBcYcpcojaKmcq8lIUYEj6ZIyMvsduovCHdHEw39PGJxc=
X-Received: by 2002:a17:906:58c8:b0:6fe:91d5:18d2 with SMTP id
 e8-20020a17090658c800b006fe91d518d2mr29067878ejs.190.1663231443131; Thu, 15
 Sep 2022 01:44:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220915021320.80364-1-jay.xu@rock-chips.com> <20220915021320.80364-3-jay.xu@rock-chips.com>
In-Reply-To: <20220915021320.80364-3-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 15 Sep 2022 10:43:52 +0200
Message-ID: <CACRpkdZa7YNpO95=D0wyMWPXe6f8HYDwUhOfXdH15kjZYMGMeg@mail.gmail.com>
Subject: Re: [PATCH 2/3] pinctrl: export function get_pinctrl_dev_from_devname()
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: jbx6244@gmail.com, heiko@sntech.de, andriy.shevchenko@linux.intel.com, 
	brgl@bgdev.pl, linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_014409_080470_AD2DD104 
X-CRM114-Status: GOOD (  10.13  )
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

On Thu, Sep 15, 2022 at 4:13 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> Export get_pinctrl_dev_from_devname() as GPL and add to pinctrl head file.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> ---
>  drivers/pinctrl/core.c          | 1 +
>  include/linux/pinctrl/pinctrl.h | 1 +

If you add it to <linux/pinctrl/pinctrl.h> you need to remove it from
drivers/pinctrl/core.h.

I suggest you just include the local header instead.

#include "../pinctrl/pinctrl.h"

Maybe not the most elegant but it keeps the interface private to
pinctrl and GPIO and not broadcast to the entire kernel.

If it looks very ugly, well then it is probably because this driver
should move into drivers/pinctrl.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
