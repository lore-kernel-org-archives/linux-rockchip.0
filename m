Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A1D3C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 20:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UrRwFfWph8auQh3km7u2Mw7ijWxYR01RBIrjDYkwn+8=; b=2OHqyW5PEcluIU
	yIZVzxf1dmrzlMw3L9PV8ibSJZTo5EcBFQ8dnbwg7rc/zAIZw3pbnomElp8C2reyocAYhsLAXa+4m
	tVKzH+2pPCOFc0Ek/BL1Bu0i3KWj/9Pqp9B0wnnwqhwgMkT3TYqm93bAyff/I9yXcNze2i8WMtIhb
	jPQNEGATc/CKehOP+ggd3Ff4AAl2ddHGf4+qiaIoOrUx1f9gaLyuaqp2l+6T4PldC7u/xvtzbjtXt
	Mb7iaBMlNhyIFJVS/EEEYhwk55adWr/gGPC9JrgCIMQNLLc6e1l3ejw2Y1mbx0TuYDfdCkRAMM8LW
	+ZQIh4V9tK+R4kf5eTDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ni00a-002G8b-JU; Fri, 22 Apr 2022 20:36:04 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ni00X-002G7W-Vk
 for linux-rockchip@lists.infradead.org; Fri, 22 Apr 2022 20:36:03 +0000
Received: by mail-yw1-x1129.google.com with SMTP id
 00721157ae682-2edbd522c21so96997367b3.13
 for <linux-rockchip@lists.infradead.org>; Fri, 22 Apr 2022 13:35:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0JRCh/BqOi4YkLGUiJfecYURU86aNbte4r9osUN03Ek=;
 b=CBGTb4d3eS7HJsTVlLbQoizdcgj00FRfmsbMjOINCCIgO/lh/nw8HFb5PtXjHizyAi
 BYZ+XVlLA6yn5KwojjjMps9Uw9kqcWQDjdEkeaNPwRettOULYGjgSkpIY7XNeOVgjp4A
 FIE3gEgnj+PkohreuAOunK9gW7Al2WCCKjSjTUSlVHG/1U5fxBJSxNvMJGAczW6PjXoh
 y4AV9yCqVYPPG6eAHwjn1K7OVRJaWNnRZmQ5k+B+yQJzKfxtyAomy7dOiJ4j6TfHe3jQ
 knLd0SPuH892Kmh/jfFnbYPiifqBIPHRECqY5lA5x4ux6cXe213gkYziWEoSlo2BOORF
 LlXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0JRCh/BqOi4YkLGUiJfecYURU86aNbte4r9osUN03Ek=;
 b=GoFY88F95HG5JR/YdOrE36GTtIYITI42kBqzK97ClEhw7ugk79D2HNfntdaqxdZgGH
 ykphLYb6+qiSPdg4BechObDKQq5FcMKyNCjunvkAQ9Z3CPSKvCYz2njHmtEhe3MinIq1
 NZCjuFoEMEBvguTKD75I3e//qbFX3kY1lm94kdcky+oOGrgliUpGvhsR3gkZIouj2wOQ
 HPPCQTbTIxBF6zI1oJLm/fFM35d8rao9+poqJVsbzpwgYCjm+wcUZSXfE3zH4LuKALWm
 HqQaqeqhWbgPHnDXiJGTgsEATHUcLVaDZxcGq2n2HIK75qviCEf1FE7lk7XqKrsjHBuc
 YmPg==
X-Gm-Message-State: AOAM531REUZcxns+ufDcND9/mcQxnpUsgTtFvZUVJTNx49Y68lJieEqx
 FMpo00TDrBQeyIKonqojZEVdq3KwRf45ux27eZZDtg==
X-Google-Smtp-Source: ABdhPJw9gNNFIjL44oXwYR0XZt26gSCXKZ91nXCIwqis42lHTyFg4ODQiziVUiiGspHnYemb6VnQASFqhnYF8zKxMxw=
X-Received: by 2002:a0d:f0c3:0:b0:2f4:d291:9dde with SMTP id
 z186-20020a0df0c3000000b002f4d2919ddemr6790754ywe.437.1650659758236; Fri, 22
 Apr 2022 13:35:58 -0700 (PDT)
MIME-Version: 1.0
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-15-sebastian.reichel@collabora.com>
In-Reply-To: <20220422170920.401914-15-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Apr 2022 22:35:47 +0200
Message-ID: <CACRpkda-yLgH7mC6GkMgh5e3+c+4cBrRc9Ryist+zYJh2z9_Sw@mail.gmail.com>
Subject: Re: [PATCHv1 14/19] gpio: rockchip: add support for rk3588
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Adrian Hunter <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk, 
 Jianqun Xu <jay.xu@rock-chips.com>, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_133602_047279_87FA10E1 
X-CRM114-Status: UNSURE (   9.30  )
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

On Fri, Apr 22, 2022 at 7:09 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> From: Jianqun Xu <jay.xu@rock-chips.com>
>
> Add V2.1 rockchip gpio controller type, which is part of the
> RK3588 SoC.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

This looks like something that can just be merged to Bartosz
tree as there are no dependencies on the other patches.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
