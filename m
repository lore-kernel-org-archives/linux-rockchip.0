Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4733E77188
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Dec 2024 16:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J9WW2ikytk4nl9INPN/52AwuHoWKq8BC8HEEpjfrZu4=; b=VPN7yrJLr3nkaA
	36+r8KyXiQ3QR/9BC1XCAW9+/6d2gPPI8AGIwAwSN5rodV21sx0QU5PpR3UqvxpAkm7lbvgteEubM
	FMhNa4036ZUgfkUDFjCU5TOPDgrIAihLH1U+bq0vYGpJViBtq3EqcLntIQclwOP8anb2SXx74M2ST
	lZgYrmcfd2J3T9yuoUk1Onrkn2lQUjxnJoGWTzrOsZhql57Lz3hsY46GWP5ynPmze8NiH6nRGhf4C
	KR88lYHtSlzj2V+WAAOryHgribsT/afyfJyxoxguWFZTIUKIsc4wlAc0KmAcIy9x1/qw3NYDHBpfr
	qd0xpNTdwDjifiKeniHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPOOY-00000008Ttb-2m2r;
	Sun, 22 Dec 2024 16:01:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPONU-00000008ThB-05sw
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Dec 2024 16:00:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=GwHxa6K0Xmr4kXkoHJgF0/XGZ/3xq4Pp7hZ+N6dK2Kc=; b=zw6KplPaQy6AVQ6h8YdovxAUDo
	Yb/wX7ax81Zu7BBflhSKlZIXp2mCUp+DOUOK56QGvboqMOyQAlBGMh+uybcf7oPaHT6D1onQkr1SI
	xkg9wG9NCAXS0wiyEwpOWL7btnQEjeKXPAY4MGSpIVwNAd29sXfRa4zEs79uAozy4S7pO61ldW2lQ
	xPiS01/3FFP7OK8hLwo0d9DdFFcFz24mIISe/RF4JFEv3+HZxSxMPvZmbfhWUpMnZVFbGKw7gLMXp
	r2XX4+v0Oo7m0PrmzEDLg9+yW/XMd1tbyHqITsXLGV4E7xtfgHkYqzPouruQQNfTBj3f9wC+oBUEE
	jCXrnnNA==;
Received: from i53875adc.versanet.de ([83.135.90.220] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tPONP-0007b1-4u; Sun, 22 Dec 2024 17:00:19 +0100
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
Date: Sun, 22 Dec 2024 17:00:17 +0100
Message-ID: <3297012.AJdgDx1Vlc@diego>
In-Reply-To: <20241220103825.3509421-3-kever.yang@rock-chips.com>
References: <20241220103825.3509421-1-kever.yang@rock-chips.com>
 <20241220103825.3509421-3-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241222_080024_101674_1ACE8DA1 
X-CRM114-Status: GOOD (  12.10  )
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

Hi Kever,

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


> +#define CLK_NR_CLKS			(CLK_PKA_CRYPTO_S + 1)

As Conor already noted, this should not be part of the binding.
Instead please use the more modern interfaces we have for determining
the max-clk-nr - see rk3576 for example [0]


[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/rockchip/clk-rk3576.c#n1730

> +
> +/* soft-reset indices */
> +
> +/********Name=SOFTRST_CON01,Offset=0x404********/
> +#define SRST_A_TOP_BIU			16
[...]
> +/* (0x10200 - 0x400) / 4 * 16 = 260096 */
> +/********Name=PMU0SOFTRST_CON00,Offset=0x10200********/
> +#define SRST_P_PMU0_CRU			260096
> +#define SRST_P_PMU0_PMU			260097
> +#define SRST_PMU0_PMU			260098
[...]
> +/********Name=PMU0SOFTRST_CON02,Offset=0x10208********/
> +#define SRST_P_PMU0_I2C0		260136
> +#define SRST_PMU0_I2C0			260137
> +
> +/* (0x18200 - 0x400) / 4 * 16 = 391168 */
> +/********Name=PMU1SOFTRST_CON00,Offset=0x18200********/
> +#define SRST_P_PMU1_CRU			391168
[...]
> +#define SRST_PMU1_WDTNS			391204
> +#define SRST_PMU1_MAILBOX		391208
> +
> +/* (0x20200 - 0x400) / 4 * 16 = 522240 */
> +/********Name=DDRSOFTRST_CON00,Offset=0x20200********/
> +#define SRST_MSCH_BRG_BIU		522244
> +#define SRST_P_MSCH_BIU			522245

Similarly the binding-IDs for the softresets should not contain those
huge jumps, instead please use the newer system of mapping IDs
to the registers, see rk3576 or rk3588 as example [1] .

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/rockchip/rst-rk3576.c
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/rockchip/rst-rk3588.c


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
