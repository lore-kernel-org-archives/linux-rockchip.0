Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6844E77188
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Dec 2024 16:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/1RQ0+qhCPnwozNUcJfY13tH1OpE47gT4Vm/L6W4Mh4=; b=ndwIrRe/ZEfY7Q
	0cAWZlcOjrl6PYo3BDQmWJXMtWBvtaTAaY1KdvN8snWC+H0tSmsTSDy9mDVRuwwc1XexmsyxX9t0F
	DISlYNBf3vFWwiK3hiSoXxJfG+rtSVCW6MjZ9UFgKQ9VriANJM1fNAR1dCzvyk45qWIS05ksAlAhS
	hbGdKPNjaPUlltb58dfrR2iOW5R6kZrutCX5sJgwOGQAPwG0gTqWwNPOphw2mzaAaBWqoVSkjkFO1
	33FYkBTEp1IqPbwSJmmEoOknizClYMFGgdmOE2PUVo7gSn+HQyNNEq+RjDywUxyTP8l+UNBP91olL
	tR7uHI9/qqIOnV+K0i4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPOVi-00000008ULK-3sx0;
	Sun, 22 Dec 2024 16:08:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPOVg-00000008UKy-1UPd
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Dec 2024 16:08:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=OJAa8ZOX3JItAwodoe1YGgwTpC/WvMlwN7ZuIURxJy4=; b=mtx3UF6MStD6lN0ZiHem1bMs0J
	TiC9lzMHSVEIOhhbC6DUZxlciz2kHnxOzRwZ4SfajY5h3b7nmd9LAmYoWU19C0HBY9/mhk9UHoXLu
	fk5PrNo0Sn7IWVyL4LEkqIqUFJFasvHUr/YD3sWRGG688nEAsGVwus1R6FNrqAU8dYHQEA6EzTLWA
	lOWEy0runwT/HFb196+jYXs8c4eJVmZ/8Ds7zC17lznGEj3rmvz1VjApdC2kn0DVUsXiU4YL69ll4
	SLNB4ZOPHNOp6Jl5hgwngPzwpY/DHE5z2rKRkHW+iEsVvlILxPofzTjWDQuNVri7aWuETYmmXuf90
	yjUUlsgA==;
Received: from i53875adc.versanet.de ([83.135.90.220] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tPOVe-0007gW-Uv; Sun, 22 Dec 2024 17:08:50 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Finley Xiao <finley.xiao@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-clk@vger.kernel.org
Subject: Re: [PATCH 02/38] clk: rockchip: add dt-binding header for rk3562
Date: Sun, 22 Dec 2024 17:08:49 +0100
Message-ID: <2261039.72vocr9iq0@diego>
In-Reply-To: <20241220103825.3509421-3-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220103825.3509421-3-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241222_080852_410727_E305268B 
X-CRM114-Status: GOOD (  16.13  )
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

Am Freitag, 20. Dezember 2024, 11:37:48 CET schrieb Kever Yang:
> From: Finley Xiao <finley.xiao@rock-chips.com>
> 
> Add the dt-bindings header for the rk3562, that gets shared between
> the clock controller and the clock references in the dts.
> Add softreset ID for rk3562.
> 
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
>  include/dt-bindings/clock/rk3562-cru.h | 733 +++++++++++++++++++++++++
>  1 file changed, 733 insertions(+)
>  create mode 100644 include/dt-bindings/clock/rk3562-cru.h
> 
> diff --git a/include/dt-bindings/clock/rk3562-cru.h b/include/dt-bindings/clock/rk3562-cru.h
> new file mode 100644
> index 000000000000..1b5a63a7e98d
> --- /dev/null
> +++ b/include/dt-bindings/clock/rk3562-cru.h
> @@ -0,0 +1,733 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2022-2024 Rockchip Electronics Co., Ltd.
> + * Author: Finley Xiao <finley.xiao@rock-chips.com>
> + */

Forgot to add:

We might want to follow newer file naming conventions, see 
- include/dt-bindings/clock/rockchip,rk3576-cru.h
- include/dt-bindings/clock/rockchip,rk3588-cru.h

and please dual license, as
/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
