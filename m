Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0735E8783D
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Feb 2026 14:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W+EqYJDeNnM/7gOHpkyVA0wgoRutKQt4anVoAi3Nge0=; b=VR/A7sdsnS5R/S
	mw6fTTL0QcKtr/WOjlJGpY1disEOzFqxTEq8Ox+KLP52M08bG4/xCp085dFe25awAQIlLBXgxhptV
	yNZe4ln964YuJeuLqUxbfzu043u9N2qRY6z03an/FhCMb7QR4SHlAvGcUw5pLsWO1bMRTp/lHF8UH
	k0VVrARQTE3uIFfs1g9nvDoHkM0m8wvIeVSOvtoLQRvL4nKQOV7bDO3oEeBnAprivGuOoFn2hSzK+
	+uqyiZuDxDyk5d4IaEt604rnKu4zlM7MLMs4cWQHkgHO+cfYjSHHOeNhXSv9aL3OKRemiSAJ9yebS
	Cb7CACkR2QFMBgqRd1Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnHoL-00000006nlq-377P;
	Tue, 03 Feb 2026 14:55:25 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnHoI-00000006nkL-2OU3
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Feb 2026 14:55:24 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-823210d1d8eso2943504b3a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Feb 2026 06:55:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770130521; x=1770735321; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MJQRCF6zYsE7XjiI+u2zUtRdMqWKpoc4+DQL0jQTZ6k=;
        b=dZ2nO8+JI+bYIAFaLweXaNWj8pJbs95EASssLn8NIcVMJihmjifSo4DT/3szUVwywd
         iVLczA+GfouP6bK8NxrYJsoMBDeX36haCQHCcGJizsVftdMAx/M9Raj8sFYIk/nuQe4/
         2au4wz4/11AU0BJXPVVmBfcU/sYUbzFTlfirJifgKSYpxL1hM+iBbBDIFzn8fPyWeVWi
         cwoQCQN3bI/0RwWrY6f7rBfthEqJYsdi/WyI7ZXKf+xCizjL/foMGp81SZ4RKDPw4Nhj
         Lm/QtqWkL5A+DcfiFE670z/ima77jr3fdvT+U+MgHa82K8razr9JaZkcp1SLLjS/OHNt
         nR8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770130521; x=1770735321;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MJQRCF6zYsE7XjiI+u2zUtRdMqWKpoc4+DQL0jQTZ6k=;
        b=EwCbGrgkWvtoJl/BH1S+fTdIiWJ709g7GgTpyP81HOAdtqIxNo3SmN0eyfqPVLrN+S
         hi31Bwui55obz6GqKW1ZciP/R2xjhZfrlNl3RaYWgMrsk7Y5oM3waUQACXW9QJXuaP64
         LPcepMZ/N1436bqWulcln0PPAAs9B1FcFws1jptVJa6HZR6gPNNrhjBbVUaBHmAgdf/Q
         guSV5GYxykyFXa+A7RNqabUt0boJC/PsC+eUw+Q4ri5f+julUOqDBbvUKN9Cf3ISoFEj
         cHyCCSeHQn5QMZl3d50fuMQ886I8Smals8y2hM9ZJQAI49F+O8ElWBg88Q4pSXEoEtsu
         wWNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVWAgVmq0obr7mAn3ELX8FEsVrKFNew2WC0l1YyeAMhce3jcV21Dw9L2PHvQn33vhZKKjwzCgNdNt71P17S5w==@lists.infradead.org
X-Gm-Message-State: AOJu0YydSkqsvNu0kHSKXfSEIb7YmCYUPVjmoeI1mIYiS+zuXtzxhGSi
	zuPZwEpxfsQIV0UWcuYo/h0Cz+GC5crrGfwyJhtc7OS41sOUbVIgvKnS
X-Gm-Gg: AZuq6aK2PG1kOawZuuxIpDZYV/jVVYXKIYiDfYr31fV0G6DgY15uitxt1YZIuS/ENpb
	FJ4fLC3dMFkefTwfHb6ObCaWUOXrDTy6EMQFQniHxz0q+FrWZYhzSNX1p24VAVBTrVJN6RGf33n
	scoF078S2fT4deeRH9MR8YFpMTr9DjAGzblOWMrkv0Cxcq9Sitpmkn/o6Bcm+BK8SIGqW+OEbz+
	GUvgcSYBAn05PxsMCeF8X4tpaw64XQMNORi2mlt88kHZK4ATkzb62hsioc4o1dqj/9d6sLxp4I5
	HpV23EEsUngyqFNk9VW6Bd/iJs+4c7dwcyPA6IUqeqRhvZIZVs+5ASXg+naVQxHFZMQKCiKBnet
	NfWyBZc2LlPAbGEWLDE7FN/UUicv+LU+flUQV20xO05NlCan60kxBW/+zcuj5/6pdwPLujCAPj6
	MoQ86M4s7z
X-Received: by 2002:a05:6a00:aa8d:b0:823:786:1990 with SMTP id d2e1a72fcca58-823aa5365b9mr14315825b3a.21.1770130521483;
        Tue, 03 Feb 2026 06:55:21 -0800 (PST)
Received: from arch.localdomain ([2409:8a28:a52:d2b1::1004])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379b65068sm21738348b3a.27.2026.02.03.06.55.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 06:55:21 -0800 (PST)
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
Date: Tue,  3 Feb 2026 22:55:15 +0800
Message-ID: <20260203145515.303754-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <705908c9-4552-d808-783e-3ce0cf45bbff@manjaro.org>
References: <705908c9-4552-d808-783e-3ce0cf45bbff@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260203_065522_607161_D876FFF3 
X-CRM114-Status: GOOD (  27.30  )
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

> Hello Jun,
> 
> On Monday, February 02, 2026 16:04 CET, Jun Yan <jerrysteve1101@gmail.com> wrote:
> > The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
> > eMMC storage, and supports one SATA interface, one Gigabit Ethernet
> > port, and one USB 3.0 port.
> > 
> > Other than the difference in RAM capacity, the OEC and OEC-turbo are
> > identical in all other specifications.
> > 
> >   Specification:
> >     - Rockchip RK3566
> >     - LPDDR4X 2GB (OEC) / 4GB (OEC-turbo)
> >     - eMMC 8GB
> >     - Gigabit Ethernet port x 1
> >     - USB 3.0 port x 1
> >     - USB-C 2.0 port x 1
> >     - 12V DC Power supply
> >     - SATA 3.0 connector x 1
> > 
> > These devices do not have a PMIC, and their hardware circuit design
> > is highly similar to that of the rk3566-box-demo[1]. Hardware schematics
> > are not available at this time, with the vendor firmware dts available
> > for reference[2].
> > 
> > Ethernet, USB 3.0 and SATA 3.0 ports tested, all working well.
> > 
> > [1] https://elixir.bootlin.com/linux/v6.18.6/source/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> > [2] https://archive.org/download/wxy-oec-RK3566-4G-dump/wxy-oec-RK3566-4G-dump.dts
> > 
> > Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../rockchip/rk3566-onething-oec-series.dts   | 312 ++++++++++++++++++
> >  2 files changed, 313 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index 4d384f153c13..234fa53abe17 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -104,6 +104,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353v.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353vs.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-odroid-m1s.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-onething-oec-series.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v1.1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v2.1.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > new file mode 100644
> > index 000000000000..2007b93e190e
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> > @@ -0,0 +1,312 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/leds/common.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include "rk3566.dtsi"
> > +
> > +/ {
> > +	model = "OneThing OEC/OEC-turbo";
> > +	compatible = "onething,oec-turbo", "onething,oec", "rockchip,rk3566";
> 
> Thanks for the v3!  After thinking a bit more about it, it would be better
> to name the board dtb "rk3566-onething-edge-cube.dtb" and omit the "series"
> part, because the only difference between the board variants is the amount
> of DRAM.  Also, "onething,oec-turbo" should be removed from the compatibles,
> and the single compatible renamed to "onething,edge-cube", because I see no
> need to have an additional compatible, which may be added later if really
> needed for some unforeseen differentiating purpose.
> 
> Also, it might be better to use "OneThing Edge Cube/Edge Cube Turbo" as the
> combined name, because "Edge Cube" is more self-descriptive than just "OEC",
> which may also help with various search engines down the road.

Thank you for your detailed feedback! 

I fully agree with your suggestions and will implement all of them in the V4 patch.

Best regards,
Jun Yan

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
