Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA4FACF31B2
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 10:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2neJhKa2hFjwlQFuVMH7Qi2cOOprlHtNwa7HI1VgYo=; b=LTkHA7appXoNiR
	RzsKr3zFaJ9zGB9SQakESXoVIqrVp3YXMGyNKWsFZ60xOH9skqRa9QKmO7DhzRrmZV37DZ6EXKHSh
	Dwsl6OmEgmdlvhLtEl6dGw/ybnsUncM19dd3Y2yspCbqb6F+G4mfsoNwVHVlfmpkakm3Uj9Vpg6tX
	GejSXWtz1T0/XCoHafCnDW/8s6qCUAyWGk21tRnhgJk3IPDDpucdr6CpcLhKfPGiEQrI97HsnpkLH
	/2bbBYsvmAAy3lnqmC5IANoeSKkBUqXp1E4hlD8fdgr+2zn1X2793oKXMYMtFUGoNjPlqpExxfFFc
	ny3Ivatg7KwpK4kVL0+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svwhL-00000005Vnt-3Hk2;
	Wed, 02 Oct 2024 10:35:11 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svwdc-00000005Uti-37dR;
	Wed, 02 Oct 2024 10:31:22 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id A9DBF23D7E;
	Wed,  2 Oct 2024 12:31:17 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TK-AFE1673VL; Wed,  2 Oct 2024 12:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1727865077; bh=rOELVSnjZgJ2jLuwmK36lE3rBUWz5L66VNmRiHrxopM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mgaU6W4Saco/58d5mR20FQEGu4JFYvXxbwh7CBQ0+ocwf0qf1Xx6lHX0Fvwgegt+U
	 uDpqd3DW8qCB4ibs9WeVtiV/kv0di7IMYsP8Kic5XrbfAZq/IqvADZMiNgBtMbgyA+
	 cNsjgV3vSvpJUaGmAWVFYx0qMf5xbchdQVVTOgSW1HUxI09sQXrcOrIa3J+HZEVT/n
	 MF1U6wXneVrB+4KrWf418YRTmDmZ1UYip+uIDyQUVDtDyMTjKVSzQPsk4q8QcE319A
	 PriXAC11/uujFZh22CzfPIWwjhmaKmn+N1+2WVmFR9BoRwOjkw4Rj/1v6ahIca9SC6
	 zKhOwZwZnQgmg==
Date: Wed, 2 Oct 2024 10:30:55 +0000
From: Yao Zi <ziyao@disroot.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH 5/8] clk: rockchip: Add clock type GATE_NO_SET_RATE
Message-ID: <Zv0g3ytK2LgeUj4y@pineapple>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <20241001042401.31903-7-ziyao@disroot.org>
 <9365795.CDJkKcVGEf@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9365795.CDJkKcVGEf@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_033120_946766_5D35922A 
X-CRM114-Status: GOOD (  14.62  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Oct 02, 2024 at 10:08:36AM +0200, Heiko St=FCbner wrote:
> Hi,
> =

> Am Dienstag, 1. Oktober 2024, 06:23:59 CEST schrieb Yao Zi:
> > This clock type is similar to GATE, but doesn't allow rate setting,
> > which presents on RK3528 platform.
> =

> this definitly needs more explanation in the commit message.
> =

> I.e. regular individual gates always set the CLK_SET_RATE_PARENT flag
> because of course the gates themselfs cannot influence the rate.
> =

> =

> But in general, I'm also not convinced yet. Yes if some driver tries to
> change the rate on those, it may affect the parent rate, but that is also
> true for the other individual gates.
> =

> So what makes aclk_emmc (as GATE_NO_SET_RATE) more special than
> "hclk_emmc" (as regular GATE). [Same for the other clocks of course] .
> =

> =

> So this either needs more explanation, or for the sake of simplicity
> use regular GATE for now for those and we revisit when it becomes
> necessary.

I agree that more digging is needed for GATE_NO_SET_RATE. If no obvious
reason for adding a clock type could be found, will convert these clocks
into general GATEs and give it a try.

Cheers,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
