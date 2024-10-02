Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 95DF9CF31AD
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 09:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+FYpArtHoyJ4dt7YP18llYGb/hmOPajcvn0D+xsLvM=; b=30PsqNTEykqcdy
	GdUidmcvtpwH8pc4Dnmf1xPfKkgczeYjVAtjtVUzUxvduHkqp2Xgj1flTHlM321UUS2rptVz3ro18
	2POmUrDOt2uuUydhHy2Pe1bbYjMf9inLYUtu8wlxvCzjMz5lkbOIk92Iaeq2zr0LDeetUjYtQawA1
	PC7BC3RAepAwbnKwKaEl7l7WsThIS1Z99ns8w+O5PzoXxp/u1E/8t3d3y/zaf/yLbiHr88gq0GowS
	gV3pA40g7OyZX/44OyA1ii+TAdE07kupt4hnxc/4tKOnLsdqnyHqHr8gSzBgJus4JqrbeZgMKNabY
	1kz5eBPiim7l/4bSmP0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svvcJ-00000005KM9-10h6;
	Wed, 02 Oct 2024 09:25:55 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svvb2-00000005K4S-3kwE;
	Wed, 02 Oct 2024 09:24:38 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 7300223CCB;
	Wed,  2 Oct 2024 11:24:31 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h6o4A1elZuWv; Wed,  2 Oct 2024 11:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1727861070; bh=s8zY2wtb2NP9yFQC6XKkatW6t8yCIS3SSJV7siWsteE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=H2lPP9sLEqlW7TI+LKhBty80W2YctkjPDYWNrN8O8DjhJaNaK4zNMvXt7SwoO94Qh
	 mh6HN7XUqCCOikf7wL7T6oQDOeiBkQHlGStpE2/LImaMQxwswl397J/atbvnxudUIQ
	 kgBUCESQ0o3iEbT/yePcEVuaLIFm0ZQfN8554M1JF0f9+TMv7VyFx9xaDkSHcj5bUc
	 1dPj3uB5SKbHDwUIGDaVqUQXWPnE1Jwzh0k+NDoZvJLYlMuA31XFUGpeW7W3BPn5o5
	 +vfuo+4NwF0ve/txWaf0W9ALOXaAPhxOZPwZ6GaLN5XxXpn2npM+dgG6mgxW0dkOOd
	 KnoEWKW74qyJQ==
Date: Wed, 2 Oct 2024 09:24:04 +0000
From: Yao Zi <ziyao@disroot.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: clock: Add clock ID definition for
 Rockchip RK3528
Message-ID: <Zv0RNFnqzW8X8Opr@pineapple>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <20241001042401.31903-3-ziyao@disroot.org>
 <gb2g7wj3nzc3euhmz7s5szms22qkuhm5yqpnyheq3zm6xf5gmr@tljctg6fpzqu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <gb2g7wj3nzc3euhmz7s5szms22qkuhm5yqpnyheq3zm6xf5gmr@tljctg6fpzqu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_022437_368842_345B5FDB 
X-CRM114-Status: GOOD (  12.69  )
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

On Wed, Oct 02, 2024 at 08:32:45AM +0200, Krzysztof Kozlowski wrote:
> On Tue, Oct 01, 2024 at 04:23:55AM +0000, Yao Zi wrote:
> > +/* SPDX-License-Identifier: (GPL-2.0-or-later OR MIT) */
> 
> Wrong license.

Will relicense as (GPL-2.0-only OR MIT) in the next revision.

> > +/*
> > + * Copyright (c) 2022 Rockchip Electronics Co. Ltd.
> > + * Copyright (c) 2024 Yao Zi <ziyao@disroot.org>
> > + * Author: Joseph Chen <chenjh@rock-chips.com>
> > + */
> > +
> > +#ifndef _DT_BINDINGS_CLK_ROCKCHIP_RK3528_H
> > +#define _DT_BINDINGS_CLK_ROCKCHIP_RK3528_H
> > +
> > +/* cru-clocks indices */
> > +#define PLL_APLL                       1
> 
> Start from 0. Just like your other - SCMI - list.

Thanks, will fix it.

> Best regards,
> Krzysztof
> 

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
