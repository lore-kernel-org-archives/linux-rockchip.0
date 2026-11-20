Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E056E606A320
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 01:41:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=BnhHtlMJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=hSWvlxGX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=kvMDoTcWpfkELQgWfxpkPlpivglWfNSeE//T3E1+77k=; b=BnhHtlMJ7hSp0YGo/mDMgHS6Nt
	HH4hnaST9x/5mm9/8aav6MaZ9HGZJtwmDhSER54L7HCA/2IasHU/A33KbUOjOFJiMSuYheSIpXhSG
	PZsv7TupsH/qabj2suXm+bnX6/VJGtmHtizls4QlV+rSpM3kLqd84fA73W7NpBq6tsVOs9fvkj9MY
	KwteYwiz8Qt6eBR3IEVcyq3McstCCflbO5lfP58uKThWaLMVey7EvWeu03p1CClMaIjMJyHpVyri8
	E24XyRYWQc5zmEOjSDndO7Mrcx+4x+FkkjPHB4uRC22rIW6I+kmqK+kczmyVJzLpq6tTtPP0VT0/r
	1LMb3+1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUDch-0000000DqvV-2JgX;
	Fri, 20 Nov 2026 01:41:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUDcO-0000000Dqlu-3KJj;
	Fri, 20 Nov 2026 01:40:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8AE874683A;
	Fri, 20 Nov 2026 01:40:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D964F1F000C4;
	Fri, 20 Nov 2026 01:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795138848;
	bh=aWLmF/3TFJHphPfFbdIW/SCt13oJ16DXgR+WbLyacng=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=hSWvlxGXDrkBhyd8iPNzHhSr//zVCQ8oOyWZLSkfEgGDXAqyuxG7EU1Dn8IAgv/o7
	 iM55eayZXAoWHo+12C1oZPhfZC3kCYDfQNNR2U1THP45Jy97i7G7Prhsu/4SveW8BB
	 rut3yoF9BKy+UwPKY8hauuhCzl2OJR07Tu/t1RD+gS9qb2k/FVet28DIZgILz0xPHC
	 qA98vwMx63v6+usMfwqmJLOQ9HXx+ygT87RAyw2hjzoDoKG36r8MUhz4mSJrdm0hgQ
	 D1EhOGPj/RRai2NzLViEUzRp9LRhgOKjh6tkEG65FmhZzUq1sJrOSnnzJGxryKq1RA
	 7Co0Vh43lGhwA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 3/6] clk: renesas: Convert to
 dev_clk_get_from_provider()
From: Brian Masney <masneyb@kernel.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Russell King <linux@armlinux.org.uk>, Paul Walmsley <paul@pwsan.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andyshrk@163.com>, Ulf Hansson <ulfh@kernel.org>, 
 linux-clk@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 linux-pm@vger.kernel.org, Brian Masney <masneyb@kernel.org>
In-Reply-To: <55d67b95c675924fb67d13ecbab47bb45c8af372.1795094688.git.geert+renesas@glider.be>
References: <cover.1795094688.git.geert+renesas@glider.be>
 <55d67b95c675924fb67d13ecbab47bb45c8af372.1795094688.git.geert+renesas@glider.be>
Date: Thu, 19 Nov 2026 20:40:22 -0500
Message-Id: <179513882272.284394.9826583224210522814.b4-review@b4>
X-Mailer: b4 0.17-dev-8145e
X-Developer-Signature: v=1; a=openpgp-sha256; l=700; i=masneyb@kernel.org;
 s=20250903; h=from:subject:message-id;
 bh=NYTf8jjEK+WlRFfr+I/PcRCeTGbwoene0QOnnIsqQzM=;
 b=owGbwMvMwCW2/dJd9di6A+2Mp9WSGLL+LxX6yHaVa5rUJs4HTdOYPGVati9u/tZWPIfNWtSye
 EVw+qSwjlIWBjEuBlkxRZYluUYFEamrbO/d0WSBmcPKBDKEgYtTACai3cPwv3D1ca83R60eNDtV
 W085viJXcaXhjiur/qrmzXpv9tnkvxMjw9UJpdHBidtqejZEXP383uHDlwuMn+612oVsStuoubn
 hPScA
X-Developer-Key: i=masneyb@kernel.org; a=openpgp;
 fpr=A46D32705865AA3DDEDC2904B7D2DD275D7EC087
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

> Renesas clock domain callbacks use of_clk_get_from_provider() to obtain
> clocks used for power management, so the latter show up as "deviceless"
> in the consumer column of the clk_summary file in debugfs.
> 
> Fix this by using dev_clk_get_from_provider() instead, letting us pass
> the consumer device, too.
> 
> Sample clk_summary change snippet on R-Car H1 Marzen:
>     - sata 1 1 0 62500000 0 0 50000 Y deviceless    of_clk_get_from_provider
>     + sata 1 1 0 62500000 0 0 50000 Y fc600000.sata dev_clk_get_from_provider
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Reviewed-by: Brian Masney <masneyb@kernel.org>

-- 
Brian Masney <masneyb@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
