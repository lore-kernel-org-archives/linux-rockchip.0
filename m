Return-Path: <SRS0=ojj+=P4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F062C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 11:34:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E36FF61184
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 11:34:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E36FF61184
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IM6pgFCIAuYPo5HBTVJbWhURsVpPo9mY2ZyX7OrDk7U=; b=qnofoN+k8nSYhd
	KEYhg2Ahn/1NNiztCji4uNCLjSzwdYigst0tFia+tSDmcFAiTHKMNsWb+zZMv7UnkbJXkfQGQeBa4
	r4dBt7tU6kA3ouB8KYvoU3TpYHjGax2AyTHM2/Vsw++l6oreKlasT5neCdjgsoaUyRfo4jzlMfVi3
	z3mTBxDX5SXCOF8/Oy0JgryQgvLvfR2OqJzbj+bS+6cIt9Pru8M3N8Yv+6JJksxD8VKwi8CBZ2uJW
	GcAUvNnGNuxRO99DWqjS7quAhs/6QbZ+QXEc4qjgTTUGAbgnWyT/c9q2A+T7wKy0TRzw1LdvGjGv+
	kixIw9AeBeihqO61nJ4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkPOu-001kQY-4d; Tue, 09 Nov 2021 11:34:52 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkPOd-001kJ7-7G
 for linux-rockchip@lists.infradead.org; Tue, 09 Nov 2021 11:34:36 +0000
Received: by mail-oi1-x22d.google.com with SMTP id bl27so30258230oib.0
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Nov 2021 03:34:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CJvoZMaaDiqQDQzmQKxU7aL1Rgs77zOyF+qBbYMPai4=;
 b=ibWeio9MhAbFBMtbEQiWYGtyoUNI2wGwaiB/Cg+427BrHvgtSDRUW5gDCClC3hCcLn
 0HnANAGOM2wRQZIbHQsIOJDEhxwHLDwPRLxUm4yvmIe4FIOWkDKUHiJEZKBG6fl/QWul
 qX9/8nHQ5u9FrKDFujOXwOsES7LbHEjOxtPxvTVmgvjrePUf0FznxdT1zflk7ca3kk36
 0EQpWHsYulFHFaOfX2jHVJoxSU2Ki7ebnmIdXo2g/GrSNHUL00Y/D2AKgZj90f5okAqE
 SH/F/fy6rg74jts0jJcKSKjKVqeGqqKRjQJ6WU6M9p2hRNCWmhRbBUr1MB6e9hyf51SR
 s0Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CJvoZMaaDiqQDQzmQKxU7aL1Rgs77zOyF+qBbYMPai4=;
 b=Agz2gcBvFS+A8u0qxovu+pQZHp0PH/srquhIaPkxNlIypY41BbdCBdnAuS/SiyoX1t
 DYFd948e6vW7LCROisbQueeZAIlTpySwtS4vXtx5yarSND6IUJEXgpZrrkIUUOomC89l
 ZOTQfKHEjssS18VM9wQp+W4tRj8CYx/uFCtfd2v364ozpA/4dPzO7PaA4K3ikFZqUyLv
 jTrU2u+Ce55eyQddI3TgAZtTwzdeA4B7cxbAtUUwhMJnkqd4TZBZdyLb1s1vZSRczw75
 3VKWEma321U6boHNPszPuLc8ZKWViuxXut/tPHq+M7pcO7dqRvauS///ESG+QwJ+48uZ
 p0Wg==
X-Gm-Message-State: AOAM532LDS+e6+mo4U38RuISoSWbTYRTUrhFsP/4/wBDlOvF65dECUnM
 ICSzfnfKHtNzLm7il5j4gQBPWhl1ps9Qc3BuF8S6wA==
X-Google-Smtp-Source: ABdhPJy/RETaWdANM3tucuwvOzEk6ouGG2eWkyABK9KYywpBeBb3elcEuOEvVyLatP3WRod1SZHwHhkYlC6A0sQeZAU=
X-Received: by 2002:a05:6808:60e:: with SMTP id
 y14mr5145143oih.162.1636457674579; 
 Tue, 09 Nov 2021 03:34:34 -0800 (PST)
MIME-Version: 1.0
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-17-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20211105124242.27288-17-andriy.shevchenko@linux.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 9 Nov 2021 12:34:23 +0100
Message-ID: <CACRpkdb2Z23AOSfEWjFHL5RdErEh8r9xUypWWyV2LUNhRw-q5w@mail.gmail.com>
Subject: Re: [PATCH v1 17/19] pinctrl: st: Switch to use
 devm_kasprintf_strarray()
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
X-CRM114-CacheID: sfid-20211109_033435_288332_6F74368C 
X-CRM114-Status: GOOD (  10.31  )
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

> Since we have a generic helper, switch the module to use it.
>
> As a side effect, add check for the memory allocation failures and
> cleanup it either in error case or when driver is unloading.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
