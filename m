Return-Path: <SRS0=ojj+=P4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C07A5C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 11:42:19 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 81C27603E8
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 11:42:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 81C27603E8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=neXAB45OFgwOv0Dz0Hln0nv8DZ1o71G4ujLrm75paig=; b=UveItCW43xFF5t
	XYhzazf4kB+y4JJ/E26rTPyHTVQdAV+irEtEcnDoI2wiJbIkgGJ7dVRPv0OFPwiVblFBne3oTkTbb
	0bYadKDwV/d4Mpu2B5jjj7YtavYyofdI7zAw5FnClErIw4CFq/tkijRQNNI3iAxh1kNb2BBh+LjTB
	Rl1NQBWglXNszM35QnrkI48x7kqnRx375b27JEyKmvNwmZnzBQDbLhl3YObt9xvyVydg908bgSMXw
	cL64MSRPRTyzLEH5HzAPJ6FdnPJu15I42CPeXIcDq85IXuDUtyzOELNPNc76YLyCZOTW9fP9QZQNk
	+0NlHKPsPwbWGySosijQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkPW3-001n2m-EG; Tue, 09 Nov 2021 11:42:15 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkPW0-001n1n-Ua
 for linux-rockchip@lists.infradead.org; Tue, 09 Nov 2021 11:42:14 +0000
Received: by mail-oi1-x22f.google.com with SMTP id m6so7221607oim.2
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Nov 2021 03:42:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mhp9TzcF0FJk80drP2WtwN9HUs+vg3LkkMoIt6RpEF4=;
 b=olwR8eKIQydywoP9wwQ49hUplsRYThhLBucewwDhwt7sW0N8FghwRqb2YTfFmmQaAM
 eoOHY/s2eMATsA0TyHJz6KNPgGrwLjAq1yAYu3pqPbg4ILcyfhlt4XBS1maL5zZGM8SB
 /J5eUploIL+HdOCmiSCrzSExX+tnB8XZ/yeaby54qp5/GAhldTb++/1lgFAWnNT/gozP
 A2+m2Aa9liTusE9rl+++t+wQUwKU9sndyzWTo28y3+L8i4AZgXoGb1JB+PIGHFMdTkAd
 +CWj2/pK7Czc/z1j0ov7mWhnuifK7Zecv6IVdudLEJIIlnN8ttiE2Awf1Uu/iQgP0MQ+
 A4Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mhp9TzcF0FJk80drP2WtwN9HUs+vg3LkkMoIt6RpEF4=;
 b=NJkx/SCaLSg9hVVUdZmtna0r3wi8wIMIX77yY3/B0kCBQGEAhRo/OwbA6MWOTfQDMv
 uBTGiZPnD4RN0/5A5MVVVMJtR9Jd3cN1SeA6+LDKOEZgGls4082tbadyR/v9Y2TdvyEn
 DWd1IzSwh8h7haHFxoPKfJMdbTvKXd4kvuxz1cX3ZLeX1XIG1be1lB3CLGFFHQ4Gjxxs
 3BjGFIfVBb0O67s5/fbyHTOFxNLC+WCF2OsROHmaxfApb8/Mr4fM++E81Xl0++9Q4Kok
 yOGw6fkAiuwQxnhLVP54jM4W6i3117xJ8JRpW6plKEzoG3x/YtSGQzKxRwEJzhx0tzf0
 wNVA==
X-Gm-Message-State: AOAM533rRZMZP8+zQiibTfRbtPFetbv1SAj8b7Et2nwWNY5u9fGl8Owo
 msK5U6ee75K/MDhiT/DyRGYYKHQsfocOPzSLBocVAQ9ERGc=
X-Google-Smtp-Source: ABdhPJyPHpmLKJWvNf4h7ERinzV0bNLNBoF0liQERhWM5bH4q3Bh9XBTTXD2QUAOEmTu+PDwzljjIN9g/NSOLBZiY0c=
X-Received: by 2002:a05:6808:60e:: with SMTP id
 y14mr5187977oih.162.1636458132308; 
 Tue, 09 Nov 2021 03:42:12 -0800 (PST)
MIME-Version: 1.0
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 9 Nov 2021 12:42:00 +0100
Message-ID: <CACRpkdZ2-MRY_L2J4RvKDNW1yyThg7KUFbd80ZMpRY209RNxnw@mail.gmail.com>
Subject: Re: [PATCH v1 01/19] lib/string_helpers: Introduce
 kasprintf_strarray()
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
X-CRM114-CacheID: sfid-20211109_034213_020826_DA060C3B 
X-CRM114-Status: UNSURE (   8.72  )
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

> We have a few users already that basically want to have array of
> sequential strings to be allocated and filled.
>
> Provide a helper for them (basically adjusted version from gpio-mockup.c).
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Fulfils Rusty Russell's API design hierarchy requirements
and help people to make less mistakes so:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
