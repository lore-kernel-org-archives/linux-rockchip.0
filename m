Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A589CCA5FFE
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 17:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZlC+YO6bnaPuztGPIJZaWZu7GIsNt7iq4oMsOcZa/0=; b=p4iU/KuLzYBABP
	q8Omui61BnLy3HgN0w5d/e5125YLLg1/koD4iTeEjpVGcXhV+OS7Nu4XDm1ZDYBk56mr21g4PoYKo
	gIwa39lmK6AAPOYY0woYUIuVopSAPWBwD+OmpWxzolvP6iVB6RXmqtwWOcm0UGqqE1WWI+xtIMopP
	y/gJaHYVEGtkGkG8apH64VwgabH8KmdqdZ4eG0ZaW6DxjxmsZK5pFyQyN85NG+oMtelDBUeGNC3fT
	NUW/88NmCBz13iiRLLbORct4Pp4OIzPg5KHdXzDVw4GHHuOB/tJqaWSOKOaeJXplksOX10nvmQR3m
	nJRlnehV8MASpsufB3HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDmDE-0000000GtRq-0wPx;
	Mon, 05 Oct 2026 17:10:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDmCu-0000000GtOB-13Mc;
	Mon, 05 Oct 2026 17:10:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0672440805;
	Mon,  5 Oct 2026 17:10:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC0DE1F000FF;
	Mon,  5 Oct 2026 17:10:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791220231;
	bh=UN+0KQ6+baIoIku59PSGDsGhm5f/8IGhpdwUQjJPi3s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JKyy5TK12gHCl9UX5YSSAspsM5VH8x7K/XzxmwBltCzcJhaZILIu5AM0bhGkZYDWe
	 D1shk9qetU773PUH912sYF/bUdGOdd2+350r3hsTUAERRBq2CSkfVvhIGXZH8B2LaC
	 P3bkxQPNkJK8KZ67pa7P+F03c8s3GbkvcI9o39F22aOf7S/9Fb/5KBpJlrPKI1U+KA
	 3zQyuNmXfxCQogXAiEu613oR2HOkJnIdwKH+ZI+8U5XsMHtPNSdFM6s0Z8sswDuFBL
	 zzW9T0y5rx5BMIo868eYKMaRh4mqtNo+KJ5jEb8zi/404L4WU90ff2aPfN7uRC9ub0
	 u0fQgZpoW4saQ==
Date: Mon, 5 Oct 2026 12:10:31 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, Brian Masney <bmasney+clk@redhat.com>,
	Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	Heiko Stuebner <heiko@sntech.de>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	linux-rockchip@lists.infradead.org,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Stephen Boyd <sboyd@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 1/8] dt-bindings: clock: rk3588: add PCLK_DDR_MON_CH
 clocks
Message-ID: <179122023048.1034613.3306957783492842218.robh@kernel.org>
References: <20260921-rockchip-dfi-cleanup-v2-0-43ff34ac8599@collabora.com>
 <20260921-rockchip-dfi-cleanup-v2-1-43ff34ac8599@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-rockchip-dfi-cleanup-v2-1-43ff34ac8599@collabora.com>
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


On Mon, 21 Sep 2026 22:32:44 +0200, Sebastian Reichel wrote:
> From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> On RK3588, each memory channel has its own DDR bandwidth monitor
> silicon, and each instance of that has its own clock gate that drives
> the monitor logic.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  include/dt-bindings/clock/rockchip,rk3588-cru.h | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
