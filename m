Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB641C3DA64
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Aug 2024 15:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IUuY0UpTWc6nT1msa5cKmuelBWXZJZBi5dFp74aMhG4=; b=1bQwhsvTbV1P8C
	L8stDO48Q8jxo938RT8nwIHEhLKHjb9FpZBtSKFNdvdh1Y+o7Q9XRySQCFuokgODbW44mDr63GpSk
	DH6QJ11DHMptyptgaTMrq7g4V/9Rkw+p0tFhvbGWCI9iUQzE+aVdBgpY6N5UEOcLQNNxP1d/hU501
	+q+CQqKA0pHA9vP/KU/zU78KzvtjIseKJ3bvRGocp62mT6Mo4wmiWf7ulXnf/Pmh3PQ5uQYPKTdym
	CHizpNLRp0zhpFLVeGBcld0AY/QFa6q1zO7pLXw8y4WZZmdt+TKS9YPbQB7lFW8G9c5gYKl7NTdk5
	XaUfUdwzSdb089egYMuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbM1B-000000029yC-2UgI;
	Tue, 06 Aug 2024 15:22:33 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbM16-000000029x7-2COI;
	Tue, 06 Aug 2024 15:22:30 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1722957739; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=X528A3SDqlxQS6uBuvYp/fY/an5pNhTKOg6VxX8/lV238DXnO7fkA2JqZDYq/Uw0UzFBzRNEcnt7VwJDRwZzQ9VGY34iuHdSPecS3hCDqXEOwXJtOYzv3hT3ci598zg7TNoh8Lj0M7vUB5ImS7xgqEtf6yLSXGvCJ+v35ZIWY9E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1722957739; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=4E7YYytNxcERJA+P5c4RQhUBo3UBV2EKfxk7gX+2rTM=; 
	b=TKo9JKPjy6afGWCkdn8B7MKOGG4ytVCihNakvPPNXhc3m4mt4gpY2HbqlrH1RsRGTUfcqxpDPDaRiaI84prLM3GoatssHJatedODQXHBfs9dm9fGbQL+s32OvQ1kp5nsRW5wqMKBoPu8yAUl3XOGhJZWaO8OUlBdOo8BLVZkijE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1722957739;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=4E7YYytNxcERJA+P5c4RQhUBo3UBV2EKfxk7gX+2rTM=;
	b=QT6omPpk0QHjjuJfgBNeP66BFRUwXPimJeRjTSygjmdjXWvwmN0wUJrfWdFdAoKn
	nzXgIyfDanTB9wv84E2jic3W9dgaLFmwBr5mIO4cfYpYC3tbhB3fECOEYeH/3wO8dJg
	NpNPaiHc85uYtSu9Zeo7kkV4217sSzbwpkQ3/qb8=
Received: by mx.zohomail.com with SMTPS id 1722957736998397.9644636527041;
	Tue, 6 Aug 2024 08:22:16 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCH v2 2/3] clk: rockchip: Add dt-binding header for rk3576
Date: Tue, 06 Aug 2024 11:23:28 -0400
Message-ID: <2949191.e9J7NaK4W3@trenzalore>
In-Reply-To: <1600ee06-ac19-436f-8229-1bb44b29c683@kernel.org>
References: <20240802214053.433493-1-detlev.casanova@collabora.com>
 <20240802214053.433493-3-detlev.casanova@collabora.com>
 <1600ee06-ac19-436f-8229-1bb44b29c683@kernel.org>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_082228_810143_DB75537E 
X-CRM114-Status: GOOD (  21.79  )
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

On Sunday, 4 August 2024 05:53:57 EDT Krzysztof Kozlowski wrote:
> On 02/08/2024 23:35, Detlev Casanova wrote:
> > From: Elaine Zhang <zhangqing@rock-chips.com>
> > 
> > Add the dt-bindings header for the rk3576, that gets shared between
> > the clock controller and the clock references in the dts.
> > 
> > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> > [rebased, separate clocks and resets]
> > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> 
> Please use subject prefixes matching the subsystem. You can get them for
> example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
> your patch is touching. For bindings, the preferred subjects are
> explained here:
> https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patche
> s.html#i-for-patch-submitters
> > ---
> > 
> >  .../dt-bindings/clock/rockchip,rk3576-cru.h   | 589 ++++++++++++++++++
> >  .../dt-bindings/reset/rockchip,rk3576-cru.h   | 484 ++++++++++++++
> >  2 files changed, 1073 insertions(+)
> >  create mode 100644 include/dt-bindings/clock/rockchip,rk3576-cru.h
> >  create mode 100644 include/dt-bindings/reset/rockchip,rk3576-cru.h
> 
> These are bindings. Must be squashed with previous patch.

Ok, so you'd rather have a commit for reset definitions (dt-bindings: reset: 
Add rk3576 reset definitions) and another one for clock definitions + 
Documentation (dt-bindings: clock: Add rk3576 clock definitions and 
documentation) ?

> > diff --git a/include/dt-bindings/clock/rockchip,rk3576-cru.h
> > b/include/dt-bindings/clock/rockchip,rk3576-cru.h new file mode 100644
> > index 0000000000000..14b54543d1a11
> > --- /dev/null
> > +++ b/include/dt-bindings/clock/rockchip,rk3576-cru.h
> > @@ -0,0 +1,589 @@
> > +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
> 
> Weird license. Why not using recommended one?

Oh right, I suppose "GPL-2.0 OR MIT" is better ? At least that is what I see 
for rk3588. include/dt-bindings/clock/rockchip,rv1126-cru.h uses "GPL-2.0+ OR 
MIT" though.

> > +/*
> > + * Copyright (c) 2023 Rockchip Electronics Co. Ltd.
> > + * Author: Elaine Zhang <zhangqing@rock-chips.com>
> > + */
> > +
> > +#ifndef _DT_BINDINGS_CLK_ROCKCHIP_RK3576_H
> > +#define _DT_BINDINGS_CLK_ROCKCHIP_RK3576_H
> > +
> > +/* cru-clocks indices */
> > +
> > +/* cru plls */
> > +#define PLL_BPLL			1
> > +#define PLL_LPLL			3
> > +#define PLL_VPLL			4
> > +#define PLL_AUPLL			5
> > +#define PLL_CPLL			6
> > +#define PLL_GPLL			7
> > +#define PLL_PPLL			9
> 
> Nope, indices start from 1 and are incremented continuously.

Why start at 1 ? RK3588 starts at 0 for clocks and resets

Regards,
Detlev.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
