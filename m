Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CAC4CF31A9
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 10:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0WQM3KbPr2370zKE3mwfUvlAlvryDaRxTqLtDW5Z7aI=; b=UaUfihRcLS9u8b
	Enjt+PwcE6nkhMMp+xekNHtzqy0DtdJV6XKjbzD1wfJVnyKOEpCufPcYG4Vnr87hKgCtzVceKNL7r
	AIFHya+ijsn2lEWcoFUABNdU53oQILjf5VuSsmJxoWnTptfLGB0udITHuwvp3zY/rNIGgcOCjJtvg
	8BzhM6/4Hw1BUAgB13C2kDaVjti9mi5pIKcnF+rox6hn0FpqEP2M7TfOHKRxG+P3CnOOpHJ6Gm6WK
	3TjYVDDr7rXBz+r5VVZP2aQwu5Nz+MAdjL08hKoXAg9HvGlY8ACpPY2bPCVhpdTsU4qDtT8er3LgR
	Zn8s+Ci9vbJvSSa1YMDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svwHW-00000005Rbi-3STl;
	Wed, 02 Oct 2024 10:08:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svwGF-00000005RLo-2nMk;
	Wed, 02 Oct 2024 10:07:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=YM+ZZx538SZg8+AacW1cTkqZavu9B1gbZymZ3la2/oI=; b=2Ky6FeobrjpcWunt4lekKD2Es9
	nKtDbKiGZEu5OFxWnNxd4fSr4HAc/9Kv/d3ScsXnodoO2K26x2GUu9AAUIYC350thK65RKz3VsDwG
	UpAAHuSYkeFeEwY1DWtbsbjQh+aHWW73uIJc8JNlqXIt4o7qvUooJEFgntr6yUlBGMFb2wAXdZHPb
	e2CyhEhVwpF8GmlDrNNkxubeAaKDmOixvlaNpa7shhcqW3trUPhKl3R8eM/uTxa9CMksiWNgfFDrm
	7579NqmCDhnzgcEuK7xzM/ODiT6jz48Qgdhe0bLNnYfIRs1HxAfFoB5Dgq/TfJkC35jwJxtxMLOS3
	ozpiUhcg==;
Received: from i53875aa1.versanet.de ([83.135.90.161] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1svwGB-0004pF-K4; Wed, 02 Oct 2024 12:07:07 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Yao Zi <ziyao@disroot.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH 2/8] dt-bindings: reset: Add reset ID definition for Rockchip
 RK3528
Date: Wed, 02 Oct 2024 12:07:06 +0200
Message-ID: <2647978.Lt9SDvczpP@diego>
In-Reply-To: <Zv0YRkabzDTARc-L@pineapple>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <kg7lh6gafeegmljsygukhfjiztx5wbothngtxrcreccao3itpy@f4bxf4w346ky>
 <Zv0YRkabzDTARc-L@pineapple>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_030711_760432_00AC9AEE 
X-CRM114-Status: GOOD (  17.67  )
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

Am Mittwoch, 2. Oktober 2024, 11:54:14 CEST schrieb Yao Zi:
> On Wed, Oct 02, 2024 at 08:31:53AM +0200, Krzysztof Kozlowski wrote:
> > On Tue, Oct 01, 2024 at 04:23:56AM +0000, Yao Zi wrote:
> > > +/*
> > > + * Copyright (c) 2022 Rockchip Electronics Co. Ltd.
> > > + * Copyright (c) 2024 Yao Zi <ziyao@disroot.org>
> > > + * Author: Joseph Chen <chenjh@rock-chips.com>
> > > + */
> > > +
> > > +#ifndef _DT_BINDINGS_RESET_ROCKCHIP_RK3528_H
> > > +#define _DT_BINDINGS_RESET_ROCKCHIP_RK3528_H
> > > +
> > > +// CRU_SOFTRST_CON03 (Offset: 0xA0C)
> > > +#define SRST_CORE0_PO			0x00000030
> > > +#define SRST_CORE1_PO			0x00000031
> > > +#define SRST_CORE2_PO			0x00000032
> > > +#define SRST_CORE3_PO			0x00000033
> > > +#define SRST_CORE0			0x00000034
> > > +#define SRST_CORE1			0x00000035
> > > +#define SRST_CORE2			0x00000036
> > > +#define SRST_CORE3			0x00000037
> > > +#define SRST_NL2			0x00000038
> > > +#define SRST_CORE_BIU			0x00000039
> > > +#define SRST_CORE_CRYPTO		0x0000003A
> > > +
> > > +// CRU_SOFTRST_CON05 (Offset: 0xA14)
> > > +#define SRST_P_DBG			0x0000005D
> > > +#define SRST_POT_DBG			0x0000005E
> > > +#define SRST_NT_DBG			0x0000005F
> > 
> > What are all these? Registers? Not a binding.
> > 
> > Binding constants are numerical values from 0, incremented by one,
> 
> Do we have related documentation about this, or I just miss it?

here the value notation in hex format is very strange.

For reference have a look at the rk3576 and rk3588, which follow the style
recommendations.

Also the "//CRU_"* comments should probably go away.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
