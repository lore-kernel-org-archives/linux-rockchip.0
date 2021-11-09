Return-Path: <SRS0=ojj+=P4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F4CBC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 11:35:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 768A361184
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 11:35:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 768A361184
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EbZslmquqUHT0Sal/Zve7w9ZAl+EfALZqpGnDIEPy8c=; b=FIj4zG8j7YGzOQ
	xL2gp7GfviViwbXm/WPqB8i8oVKqxscEtsCpj42OF+XW4Djxo+rEfDoTIa49ny6lcpiAEJVmhyoQp
	a92yQpcfHAWxNL5YIt6YUdQmhuRvC9gU1bl8+RV5ErX4gKWpbsCfF+S50ttiaCdGFK60sWeu3wrdg
	eEUDx6fVq5gRlkBc3ZaZ6zK5hiuwG+QDF+mrYRCE8wqe/EsAXZ8R5zzTEo5vXAq8XIHl65xppy2aL
	y01L6gEcJMpaGeWHh46mLGeq9c9d96eD3RrkUR4o13e69SDwbVGo5oYr9RpEy0f9U0ZFmJ8V5td2K
	vre/Zz+ETqxGp5Z24ZDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkPP1-001kVa-JX; Tue, 09 Nov 2021 11:34:59 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkPOy-001kTE-Qg
 for linux-rockchip@lists.infradead.org; Tue, 09 Nov 2021 11:34:58 +0000
Received: by mail-oi1-x235.google.com with SMTP id bf8so15170024oib.6
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Nov 2021 03:34:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WMhqT96OOBbAley9AFYgsxGB5oY3iyIMYs14i3Gkg3o=;
 b=oi4JGP/SZMbE5ERMkIj9fir5MGvpsEB7KRHDL4ZOvGz69icIfywOoCxILyi/1Be1yU
 ftJcJz/AQIjcyB3OV3GhSDTNhd599XTWxyrqH9S1fbhgxS3yZ03/W9QPU+iIb0ntYWxd
 JvreBAZYqUNb5ubky4Mqed3j2Nq4VFs5YsGlujgxXG04gD/ehEjM4dR+OIqo2yECWUlE
 nQssTMxWJ3b4IgmXS3eQHzmkRNuyB2eLq+R+Gq71FfN60xd7mWLNVpLl0Zdc/xSbh+2h
 0tZPPrdoRUGpdlPv3xsdNS/X3pOFd0VcjVZvpTvPAf8XOUXJOgUwqL1IUjLQQZFXbi/W
 7Uag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WMhqT96OOBbAley9AFYgsxGB5oY3iyIMYs14i3Gkg3o=;
 b=W9MYihxT1AV0lUgh8rnxYC4mIeQsSwwxbyjKvdrNZLmtnUYE+czZ8ZmOV9ayHrrnwL
 N/xpHGIffjpKqbv0Zan/NK4GbucPUsWXIpQFp/l7OTUI499MS1x74O7erlX1m3BZhsQA
 4+5DIBKTYj+78WHybDoVY1iioUVEhn42tSqROUUlMORO8ORxPCMlAEshZROI08PIF/On
 5dFa31FRDdMkdMBTM4A5GGFJ+vpRYkp7a+jFqCRsA9Bmwdn242BzrBNRVbdX52d4aysj
 BSYqCTYFxPHMboGFd5WH6pHhn3AI5KS0wq8UJbFp55EFIroiYI7I6xvs+V6YMEpvr1SP
 8New==
X-Gm-Message-State: AOAM53284YrpE3dhihJjOMaU0ju/v6PJTbJx0kLKENQWlQitTO55vO+U
 Id7cXZm/eK19H8W7d3B1ehzU/M+HJK2HrtDRSRwDQg==
X-Google-Smtp-Source: ABdhPJzQ9BcKupTckBvimT1UFASyWrf2POLGY0fYltjfQBFyXFETzsbUnf6PebRBImEXyR1sAkgx7gmkfsC35C3w2ew=
X-Received: by 2002:a05:6808:60e:: with SMTP id
 y14mr5147323oih.162.1636457695902; 
 Tue, 09 Nov 2021 03:34:55 -0800 (PST)
MIME-Version: 1.0
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-18-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20211105124242.27288-18-andriy.shevchenko@linux.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 9 Nov 2021 12:34:44 +0100
Message-ID: <CACRpkdYu319K3GzYOnDx=zWN7e_k=ARPo+qi4VozfW7WpgxsuQ@mail.gmail.com>
Subject: Re: [PATCH v1 18/19] pinctrl: zynqmp: Unify pin naming
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Jianqun Xu <jay.xu@rock-chips.com>, 
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>, 
 Andrew Morton <akpm@linux-foundation.org>, linux-gpio@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Bamvor Jian Zhang <bamv2005@gmail.com>, 
 Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, 
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Michal Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211109_033456_895035_35E2EBA2 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
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

On Fri, Nov 5, 2021 at 1:43 PM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:

> Since we have devm_kasprintf_strarray() helper, which is used in
> the rest of pin control drivers, it makes sense to switch this
> driver to it. The pin names are not part of any ABI and hence
> there will be no regression based on that. Otherwise all generated
> pin names will follow the same schema in the pin control subsystem.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
