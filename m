Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA372C369CB
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Apr 2025 21:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22oio8J6YvGdZgq7CQDsJWjER/zqfQ46EyEZ80nrbfE=; b=dk4zg4m10q++nj
	ORqVDWYk4SS6UCSeN1oUmNj9R/+KqtLdDuVkJeUVicGJynQVeKu97Dzv3uzb0RNwl++uEZ+pwYnf6
	WuIzvtXIT7A7YznKRG4HLGGgMrzXYdkQJCaCXgAmpcssV6yo4Eto+byo9QDr/yvamEvyDUGCVCj6G
	l0knQ499Kp/QCSrv7DLmPqWdl7lD+UtsEt6oxc9CrAB60WYXc6BO3Li9XuVKf7n6CirUYkrU3PEt6
	eCx4PzLO0a3qsLLmkb1QIG3DaHife4mmFdsNK0i3SLe9W5Kx88b7DDsIlGgCZTUTDuYu5oGnE3isN
	Y9XLoigMLRducQTtopww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8nPb-00000002XtA-1WPF;
	Sat, 26 Apr 2025 21:50:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u8nLs-00000002XJX-2eKW;
	Sat, 26 Apr 2025 21:46:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=JE2UPcOj432rz3CwaH1lESlLqaPq8YS2nPPAFqBdtDc=; b=Buawh5+bOuQGVZTBEWc5m0nIzj
	3y+TjDkxOU1dKe2cJlqNg7LgJZ7qz7Y12dLQruqMKvigAALjI5eFwcGwLUoyppncpd7CZaxJdAsqf
	3A2oRWpDhWjVerWODWu/OSogyg69L3aFUH4qkoHzLzDpORbBWx4h/ChDThm1JaSlAGzq+OT3wFOUp
	8yOLlW/Xt45pAd1gXF+OrGzyZyqA2cFreAtZWG0jPv6oQ3ittZ2pFGVrhWN7ZfKl6dzU24kSPVMyJ
	VFW2r28PQ0T3Atl/rVIWfIzb7681twsHwYrhSlJvLsoaaboi6S+HjZrRvUj3hszyiZRqbOBxMPtXX
	LVevX+nw==;
Received: from i53875aba.versanet.de ([83.135.90.186] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u8nLp-0001OR-5u; Sat, 26 Apr 2025 23:46:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Vasily Khoruzhick <anarsoul@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] clk: rockchip: rk3568: Add PLL rate for 33.3MHz
Date: Sat, 26 Apr 2025 23:46:05 +0200
Message-ID: <174570370121.31943.11182147025111665944.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250318181930.1178256-1-anarsoul@gmail.com>
References: <20250318181930.1178256-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250426_144624_693909_80E4C808 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
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


On Tue, 18 Mar 2025 11:18:51 -0700, Vasily Khoruzhick wrote:
> Add PLL rate for 33.3 MHz to allow BTT HDMI5 screen to run at its native
> mode of 800x480
> 
> 

Applied, thanks!

[1/1] clk: rockchip: rk3568: Add PLL rate for 33.3MHz
      commit: 3cb09de48f652abd662b436b23f914d3eb66f1fd

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
