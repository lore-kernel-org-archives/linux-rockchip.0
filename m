Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F2CCE9539B
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Feb 2026 13:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9pzXP+vnFRScrEaG3g7DB5cjvBZWcgtQKNv0SzSCEY=; b=Hd0SV065yyIUHF
	4xPQCR3R/391XBHObB++Nf4Q3lWM+ijH1Ihz9KiQxxbBfnogKP0kYsQdDcJGZ1s+kHrJd21xcSsap
	wpoGKvcZW5sAW2EZhspZsk+Xnx4Jwa34kyyICt7Ut+c/L8GzE4OZadJniuroQONBxRzaIcL/X4gUZ
	iNKTTkW7qxsXhf59P79W2i2DCI1k9x2f0epqxgCrZouS08WxXpIjqCjKw83HiFGxlJMmG+X8moLGt
	ym2OXQmiiSxbDce8TDK1VY3k91IPA9SXI5zVqKrOZGOuDJu2dgdEF3y6C4F2koJSNYB7/XfmY9Poa
	I1TwZqOyad3kZjGvkkiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vncoU-00000008Ub4-3pv3;
	Wed, 04 Feb 2026 13:20:58 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vncoS-00000008UZE-09vT
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Feb 2026 13:20:57 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2a78e381fc1so4388895ad.3
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Feb 2026 05:20:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770211255; x=1770816055; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rKC9479RtmvQxjIDGbP/TybkiDx+Ouj854nFtYQtJb4=;
        b=Enx13wlIHk3qLXgyVJN3jfjCYQPdsI2J0SE4hBO5BhngP4ao/Uz56lM7EAhZbh/Z5C
         JzqLK/zwFBWhyHD/hjman+OTLLrYexNvAJdUUycozmNIuwTBHNJr8wwoCcKX4rAL3gDD
         c1TNffkilaqmWA1jyB889PaCf6mck4hcmGjFK6pswB6CPKgT44YcW0Ad1HFjeN75yzaH
         VOhGxK+RrF/5bQTtRIFP9eZveUMVI+ZOKo6W/heQoOUxE5sltHbGJptCwI+qJ3nwNaMr
         9WWHM86QEKlW8RKy7ohV6EV/6X8zJy0jbJDW0+bugZj+t5ibD6XDv5HIEXdErR+ou5rn
         5IXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770211255; x=1770816055;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rKC9479RtmvQxjIDGbP/TybkiDx+Ouj854nFtYQtJb4=;
        b=AiCrT3ETAVPnOrFynDbdzsHuJ/w/qNz+TLWr8TtEYVuqsUUYbuVOYabv/nGZRFzeC7
         RlTJdHPqdyCx0/2wTfcQ4yH4+Y9koHY6p3hF9CUIMAxGDhVa/SLjLbThVQb5WYlm/icQ
         ZpVCdwYZXe1dod9D3TJzHXRZ1C8OApy7o9llqnZc1G8VQWc8OtaHApdsGBRUX91RUWpv
         BDeTvVvoDt049micPeLtgDV+9mz94w+H0Wq/PVFuAK/JHU8dTj3wANRpa+IL+vCGcNZX
         UxHONzV5FzeGF/OFGtmdD5tnUa9l1puXmdkTeiBgXokvTyeaHbfg3T0JNzIelHjshApi
         lcOA==
X-Forwarded-Encrypted: i=1; AJvYcCVppwVNWUTkLX9Ey4W56lzPTj/SdQNBO8BloFHqqBKYhtSw7GQkCvWygTHrbiro47OJK6Bd73w3t0n/ooV9Qw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxko4FwrJwdZzT8VD4UxDQYXD7hRwRdXB7Qmf7XbJOEbelwCRX5
	3xbAnmFeZty+BJDSt4Ky0QIK0d4fWLNQj75joh06XYwQ4OWc5ynAuksm
X-Gm-Gg: AZuq6aJkkr9863DyfYvKJijuhv7qb3uyqAc7g+MhNeIDByCgky8v2Ra5kD7st3HE4Q4
	7oYOC30Glip9BIxaRhz+wEjSqSrTNVbN8k95x+rSpq3uYB9W8GqCACh088ApAHvkPQurp9ynM4v
	sp6S7wR8V1+O4OFWoCdumqFbwLWw6WJQB75GViWA+4XGyXfV+58w0gI6Ru7L9op79xmNvF0vwjT
	XsSiJJU6zLDzYTB0obj/gZZRGlOCNmmEnuo4JuCptEs5qfWUaeHf3/mgm1hbLDNrQ08d7wg/ogg
	8OUUwW3CGlpOi3tW13DtYLBJA0qZgEd/T39zWEJdkGl3Ii0zz8yN8ezJch3BwIRELENLak1pTBL
	FZXsngk3m+9v1naWoqcW0X5ha59TmqI19U8ToE6fTQPrp/SlU3vZl6arZyKYlQZq+49ISKT1QqN
	OlE4d2SeSu
X-Received: by 2002:a17:902:ec82:b0:29b:e512:752e with SMTP id d9443c01a7336-2a933fad904mr38729415ad.47.1770211254785;
        Wed, 04 Feb 2026 05:20:54 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a93397cd43sm24287045ad.91.2026.02.04.05.20.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 05:20:54 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: dsimic@manjaro.org
Cc: alchark@gmail.com,
	andyshrk@163.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jerrysteve1101@gmail.com,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: Add OneThing Edge Cube series
Date: Wed,  4 Feb 2026 21:20:49 +0800
Message-ID: <20260204132049.327451-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <f6eb572c-dd2c-9606-4fb5-b26b51bbbb06@manjaro.org>
References: <f6eb572c-dd2c-9606-4fb5-b26b51bbbb06@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_052056_102604_DA00D291 
X-CRM114-Status: GOOD (  35.56  )
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

Hello,

> Hello Jun,
> 
> On Tuesday, February 03, 2026 16:10 CET, Jun Yan <jerrysteve1101@gmail.com> wrote:
> > > On Monday, February 02, 2026 16:04 CET, Jun Yan <jerrysteve1101@gmail.com> wrote:
> > > > The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
> > > > eMMC storage, and supports one SATA interface, one Gigabit Ethernet
> > > > port, and one USB 3.0 port.
> > > > 
> > > > Other than the difference in RAM capacity, the OEC and OEC-turbo are
> > > > identical in all other specifications.
> > > > 
> > > >   Specification:
> > > >     - Rockchip RK3566
> > > >     - LPDDR4X 2GB (OEC) / 4GB (OEC-turbo)
> > > >     - eMMC 8GB
> > > >     - Gigabit Ethernet port x 1
> > > >     - USB 3.0 port x 1
> > > >     - USB-C 2.0 port x 1
> > > >     - 12V DC Power supply
> > > >     - SATA 3.0 connector x 1
> > > > 
> > > > These devices do not have a PMIC, and their hardware circuit design
> > > > is highly similar to that of the rk3566-box-demo[1]. Hardware schematics
> > > > are not available at this time, with the vendor firmware dts available
> > > > for reference[2].
> > > > 
> > > > Ethernet, USB 3.0 and SATA 3.0 ports tested, all working well.
> > > > 
> > > > [1] https://elixir.bootlin.com/linux/v6.18.6/source/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > > > [2] https://archive.org/download/wxy-oec-RK3566-4G-dump/wxy-oec-RK3566-4G-dump.dts
> > > > 
> > > > Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> > > > ---
> > > >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> > > >  .../rockchip/rk3566-onething-oec-series.dts   | 312 ++++++++++++++++++
> > > >  2 files changed, 313 insertions(+)
> > > >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > > > 
> > > > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > > > index 4d384f153c13..234fa53abe17 100644
> > > > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > > > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > > > @@ -104,6 +104,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353v.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353vs.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-odroid-m1s.dtb
> > > > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-onething-oec-series.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v1.1.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v2.1.dtb
> > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
> > > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > > > new file mode 100644
> > > > index 000000000000..2007b93e190e
> > > > --- /dev/null
> > > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > > > @@ -0,0 +1,312 @@
> > > > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > > > +
> > > > +/dts-v1/;
> > > > +
> > > > +#include <dt-bindings/gpio/gpio.h>
> > > > +#include <dt-bindings/leds/common.h>
> > > > +#include <dt-bindings/pinctrl/rockchip.h>
> > > > +#include "rk3566.dtsi"
> > > > +
> > > > +/ {
> > > > +	model = "OneThing OEC/OEC-turbo";
> > > > +	compatible = "onething,oec-turbo", "onething,oec", "rockchip,rk3566";
> > > 
> > > Thanks for the v3!  After thinking a bit more about it, it would be better
> > > to name the board dtb "rk3566-onething-edge-cube.dtb" and omit the "series"
> > > part, because the only difference between the board variants is the amount
> > > of DRAM.  Also, "onething,oec-turbo" should be removed from the compatibles,
> > > and the single compatible renamed to "onething,edge-cube", because I see no
> > > need to have an additional compatible, which may be added later if really
> > > needed for some unforeseen differentiating purpose.
> > > 
> > > Also, it might be better to use "OneThing Edge Cube/Edge Cube Turbo" as the
> > > combined name, because "Edge Cube" is more self-descriptive than just "OEC",
> > > which may also help with various search engines down the road.
> > 
> > Sorry for the quick follow-up.
> > In official documentation (Most of it is in Chinese) from OneThing Tech[1], 
> > the designations "OEC/OEC-turbo" are more commonly and widely used.
> > for this reason, I propose retaining the "OEC/OEC-turbo" naming in the model 
> > property.
> 
> I see, that's an interesting twist.  As some kind of a compromise, it would
> be best to have the board dtb named "rk3566-onething-edge-cube.dtb" and use
> "OneThing Edge Cube (OEC)/OEC Turbo" as the combined name.  That way the
> board dtb name isn't too short, while "OEC" is present in the model name,
> for search engines to pick it up, hopefully, and for people to see it in
> a few places. :)
> 
I appreciate the compromise and fully agree with it: naming the dtb 
"rk3566-onething-edge-cube.dtb" and using "OneThing Edge Cube (OEC)/OEC Turbo" 
as the combined name.

The V4 patch will follow shortly.

Best regards,

Jun Yan

> > [1] https://help.onethingcloud.com/be81/OEC1/80c5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
