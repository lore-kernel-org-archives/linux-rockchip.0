Return-Path: <SRS0=ojj+=P4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC4FDC43219
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 11:32:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AFAC4611AD
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Nov 2021 11:32:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org AFAC4611AD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vMg6f4NewCoUX2X8ik3CR4Rp39nCn4rhRCZNOoaisj4=; b=b9kS45oUwZD8YP
	pczUoeLqiJtSe7jDA2e5DNLdoKVCwJwpOv7yN7LYVlUdLEun6U8875vg1QXHzMk/8cxCewLUsa/v4
	scNVyFRgPAE8QUjVyez08TsA0ONdFHfMzhkLOMD15UvXOGl+DpX8ZaMRzhkhrC9vwWhHm9pYxHbgK
	LVLFmJbrgHM2OLNnfvFOUhrD2+5WSGvYgvzqxJUlkNf326e8HzfRILbL4zKdR8nlBLaR0N2nF6P8o
	VJshmzfpAbesnvQ30J6C6x5ecEuKbMUeCcHWcDbdjFckBdZPYGTsAlU6CA9JAjJn77e7BtuG6m1H9
	U6BlJW6ZDW3eWNE+csPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mkPMs-001jg1-S6; Tue, 09 Nov 2021 11:32:46 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mkPMq-001jf1-24
 for linux-rockchip@lists.infradead.org; Tue, 09 Nov 2021 11:32:45 +0000
Received: by mail-ot1-x32e.google.com with SMTP id
 u18-20020a9d7212000000b00560cb1dc10bso996715otj.11
 for <linux-rockchip@lists.infradead.org>; Tue, 09 Nov 2021 03:32:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Qy6TGyX8vFWvykfE4/Xbu62w/6VA/cV8jxGqL+/tOGM=;
 b=fYa6b8hX1Dq2cAMrWRhsarxQfP7zOdb08HRYi6q7V2gUnjMrvPHLBV9luIUlFbo75L
 zXqR4jRbDQD7Zj/37y7Jw5IUHNtGxH/atQu8galeFSlGqcUK+Gf7pkiel+PTf0cfcdoY
 IMDM0/PeZ7TayUF3+gallC5tY1StHe/E9atj7T9hSc3sqbCtND0tnEKov+aPe1wkMWGM
 2iB7bEC73cWGe9qNHMinLpETfPo+2GQBK/4UKY0UYIz/sPdiYoLUN2uMKoP8wJm9ogrA
 ynDKySFVWxWtKU/vrcp2rv7+9W9Nn4ZbLoQb4uMtVsO6EZxYRsv5FIERqowlRnUngsrp
 TpGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Qy6TGyX8vFWvykfE4/Xbu62w/6VA/cV8jxGqL+/tOGM=;
 b=tyauyvtLDktj3YjfBC+GmFRCIwcvCSK1rQ3euwOcGNhDiV/wC2HFoRs5Y+EBWAe4pT
 SRDZIlOCJjUDJ3jn9C2O2dW3ZDiOvd4754RM2WfBeKIM+Fm19esSw0NX+4cNaW1oKHLw
 AYMpiKRuLXS1V8DAFMv1QxN23q4AMtyWTlcZetGKNbQD1rmDlywLGYTC2mz973EQWTWl
 5uBCQpi6Kdxds2fsgy7cZKil7H7LtetcVx8BH2fWrsk5Dqvj1JrCENjGGMuwpv5lgjVA
 v+I/a3nB1QsgWhaDMuCpbGWHe5Fkb2L3b+bqusBVCBgTA92o7Q9b6wcAb0lrzaVsVc/M
 OxXQ==
X-Gm-Message-State: AOAM530z8ZB06xza/wXQIhPQyOXJGwIRNwXiChY40PHg5cfaxaZa4oJF
 Wx2fjhVmdAfXpFvUy0dGMo+M+Je5ikJUswbVuJ8mIQ==
X-Google-Smtp-Source: ABdhPJyPUvoffTAvqw9J4DzdBPjfjQyEb+p8m0OPCaQnugVpSRhmHRb+EHPbR3OsvLSnVFw5ovkObNghJbXbWRypASA=
X-Received: by 2002:a05:6830:2809:: with SMTP id
 w9mr5266073otu.237.1636457563186; 
 Tue, 09 Nov 2021 03:32:43 -0800 (PST)
MIME-Version: 1.0
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
 <20211105124242.27288-13-andriy.shevchenko@linux.intel.com>
In-Reply-To: <20211105124242.27288-13-andriy.shevchenko@linux.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 9 Nov 2021 12:32:31 +0100
Message-ID: <CACRpkdbUKJVz=pzdw0Egw39gCUTxJRkyNjxOTOqCnJ1k_j406g@mail.gmail.com>
Subject: Re: [PATCH v1 13/19] pinctrl: st: Drop wrong kernel doc annotations
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
X-CRM114-CacheID: sfid-20211109_033244_182942_3CA13032 
X-CRM114-Status: UNSURE (   8.82  )
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

> Kernel doc validator is not happy:
>
>   .../pinctrl-st.c:59: warning: This comment starts with '/**', but isn't a kernel-doc comment.
>   .../pinctrl-st.c:73: warning: This comment starts with '/**', but isn't a kernel-doc comment.
>
> Drop them as they are indeed not a kernel doc comments.
>
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Hm maybe I could just apply this patch, shouldn't collide with anything.
Let me know your preference.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
