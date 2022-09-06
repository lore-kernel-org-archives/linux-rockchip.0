Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44A99ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 15:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIAgTOBt5jYED7L+CDPvx3qtcSVbAFcZUEat8KpCa8w=; b=mHDgSCZWaiQvK/
	mR9Z1QYQAPi51jPiQ9VMUWqee0Zr2GONZ8MyWGFPI0Ixj3NX19nQJgv185fF3R2WYyh234SCVVMf5
	pI+noc+ca2GuqFAwGc6EfVE+MCMroA/367k/nBJUhHZ47okmI4EjEeBGg9tXiU5hiOUXhIKLzLD8O
	MQS1PuEPPZNSxiNCBHOA59VtJE4/YsPGGU7Fy4IDn9SrHCEw0LhTHZvHNJBPgwxmYzBJ9lqXtKxdi
	hbtNL4qzjXOQIo3OUyK5KcTP2rg8HAoGbBMKnJYGxOYMO6wCSwuJ4egFuFyYXTInB6BQ73YAxCu0+
	q/5AduZCt+Pn5BWKbIMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVaRO-00ElJq-JI; Tue, 06 Sep 2022 15:24:42 +0000
Received: from mail-oa1-f42.google.com ([209.85.160.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVZfZ-00EM9h-Em; Tue, 06 Sep 2022 14:35:19 +0000
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-11ee4649dfcso28696809fac.1;
        Tue, 06 Sep 2022 07:35:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=/kxQ4Wf8GnR3MVwBOujAJ+Hv9NvGQDMILNpayVx9ZUo=;
        b=vAhRj2INwGdVEkMkA7BeWWntPGP8xpDuTeNBkQQYrGIjeLwCZ8U+7GJd9wFvjQY6MH
         fWkbCqNIN2pubWO069oSyV7ZxvxYG4V5cNVAtn2dsS6gD3g9g4m6lkU0vTjmXX/J7WWX
         lVjcyG23GdT59OGCKiL3OT+JKYk81IilkYRU2WYPEvHak22g/XLkCk0qEvJQPRSZpigO
         /twFqI+0E2BRDUgHICuNZia3URsphP3DLwhLm0XyMWwRSIqQl9UxUzxYDYiYt4gK0M8x
         xEt0gLl9pzlXcARtpBHrB+0dJvMSIDUBU8qgpwnpXd8iGyWgmYiJqgKaV8Q9RqIIXxUp
         GO+Q==
X-Gm-Message-State: ACgBeo269Nq2wPdmG0umH2nP6N5pyZhX8L+pDc0EgcXE88VSMfQH1sHn
	+epnIDNl+OsOCYu4GIupNw==
X-Google-Smtp-Source: AA6agR6/8rkfV5hK1hzRmCIqS5PFSgyizUYdaaaJmNYKCFgBxD4OCF+1PwIGz3teG7GN32hHgOxiaw==
X-Received: by 2002:a05:6870:6314:b0:10b:9595:62db with SMTP id s20-20020a056870631400b0010b959562dbmr11632116oao.128.1662474912399;
        Tue, 06 Sep 2022 07:35:12 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id a3-20020a056870a18300b001278a63bfc9sm2169288oaf.1.2022.09.06.07.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 07:35:11 -0700 (PDT)
Received: (nullmailer pid 456502 invoked by uid 1000);
	Tue, 06 Sep 2022 14:35:10 -0000
Date: Tue, 6 Sep 2022 09:35:10 -0500
From: Rob Herring <robh@kernel.org>
To: Lee Jones <lee@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Charles Keepax <ckeepax@opensource.cirrus.com>, 
	Richard Fitzgerald <rf@opensource.cirrus.com>, Tim Harvey <tharvey@gateworks.com>, 
	Robert Jones <rjones@gateworks.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, Heiko Stuebner <heiko@sntech.de>, 
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Maxime Ripard <mripard@kernel.org>, 
	- <patches@opensource.cirrus.com>, Steve Twiss <stwiss.opensource@diasemi.com>, 
	Chris Zhong <zyw@rock-chips.com>, Zhang Qing <zhangqing@rock-chips.com>, 
	Alistair Francis <alistair@alistair23.me>, Amelie Delaunay <amelie.delaunay@foss.st.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Renner Berthing <kernel@esmil.dk>, 
	Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH] dt-bindings: mfd: Add missing
 (unevaluated|additional)Properties on child nodes
Message-ID: <20220906143510.GA454672-robh@kernel.org>
References: <20220823145649.3118479-4-robh@kernel.org>
 <YxYH+POIURB9RO7T@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YxYH+POIURB9RO7T@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_073517_708565_4BD4C281 
X-CRM114-Status: GOOD (  15.94  )
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

On Mon, Sep 05, 2022 at 03:37:15PM +0100, Lee Jones wrote:
> On Tue, 23 Aug 2022, Rob Herring wrote:
> 
> > In order to ensure only documented properties are present, node schemas
> > must have unevaluatedProperties or additionalProperties set to false
> > (typically).
> > 
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> >  .../mfd/allwinner,sun6i-a31-prcm.yaml         | 40 +++++++++++++++++++
> >  .../mfd/allwinner,sun8i-a23-prcm.yaml         | 10 +++++
> >  .../bindings/mfd/cirrus,lochnagar.yaml        |  5 +++
> >  .../devicetree/bindings/mfd/dlg,da9063.yaml   |  7 ++--
> >  .../bindings/mfd/gateworks-gsc.yaml           |  5 ++-
> >  .../bindings/mfd/maxim,max14577.yaml          |  1 +
> >  .../bindings/mfd/maxim,max77843.yaml          |  1 +
> >  .../bindings/mfd/rockchip,rk817.yaml          |  2 +
> >  .../bindings/mfd/silergy,sy7636a.yaml         |  1 +
> >  .../bindings/mfd/st,stm32-lptimer.yaml        |  4 ++
> >  .../bindings/mfd/st,stm32-timers.yaml         |  3 ++
> >  .../devicetree/bindings/mfd/st,stmfx.yaml     |  1 +
> >  .../bindings/mfd/stericsson,ab8500.yaml       | 22 ++++++++++
> >  .../devicetree/bindings/mfd/ti,tps65086.yaml  |  1 +
> >  .../bindings/mfd/x-powers,axp152.yaml         |  1 +
> >  15 files changed, 100 insertions(+), 4 deletions(-)
> 
> What are your plans for this set?
> 
> Want me to merge it?

Yes, please.

Rob


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
