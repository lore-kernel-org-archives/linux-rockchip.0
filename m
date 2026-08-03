Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D36DC55174
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 03:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4S0p/kRG4QLKNnO89kRK5n857veVOINBonx/KoIsr0=; b=IOX+oFGyY0Ue+i
	PbPObqBKh+3T/1w3z+DU5T/mij3kvv+wlC5Hcp6DSKJjonx+UBU5TVD7v4UcSodEF2tsYK2dQVWiy
	4cNZ9SoCIJJRjhUSn1Y1digp8RUhEl9APVWPJwkgIhc14lVohSB+rrYJmWSaE7k1lgSxXmBeOy1MO
	O0uMIlRiZs6zeOZrEwWViabqgYnPelphnSsPD4rlwwSSpKTpoJ5gr38DNsamQiW0MAqMScXhpIF/u
	XQI69kHFLbxPz+z+FyBBazOHoNFTfdlcZNN3ztLswBJmfbriMQC7kVEGphrsCdgcY0MXhTNi3mp3O
	jpxd1HnB9N9Ov4qeKZOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqjHs-0000000GETC-2RVH;
	Mon, 03 Aug 2026 03:24:24 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqjHq-0000000GERr-38bl;
	Mon, 03 Aug 2026 03:24:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CCEFB43C47;
	Mon,  3 Aug 2026 03:24:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 596AD1F00A3A;
	Mon,  3 Aug 2026 03:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785727461;
	bh=1VF3rSJQm12kqGGHiDeGNuTAOGjDmvP08pZJHw58mJY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=V/SGy//29lzafn44QnvWv0AfUr95ec4GVuf3r7r4CeL4arb6a62DZJOwJF/Gl2tlr
	 UamD9ImnOcSydXNxsMHoAVPAG2/Fwc6sCafHYQVjBhazCc9/LR6qLsX9bpEm7N67tQ
	 dNr23j0aDMcmVrjGv/GWVCJqbWZjj8M88qr59HlzrY5zGp6M/5IlD5kOhItdI8NY8j
	 NsPgNvO2aSShJg9fE1Z+LRLkwOkCsYf6gCYNep/ZWk46mN7otrVs0dwjwjmuNKIpVt
	 3AIC1h5/UNfLp0UrMzhRizirBSsDyufhR4hp+PgnRjtFVnZL/B2mEj370AEB/T9Jl3
	 m+MlScpmZUzBQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>,
	Prashant Gaikwad <pgaikwad@nvidia.com>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Tero Kristo <kristo@kernel.org>,
	Jerome Brunet <jbrunet@baylibre.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-tegra@vger.kernel.org,
	linux-omap@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/7] clk: clean-up simple provider misuse of the consumer API
Date: Sun,  2 Aug 2026 22:23:59 -0500
Message-ID: <178572744545.408250.6189990473373785394.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260724-clk-provider-simple-clean-v2-0-56f306156d25@baylibre.com>
References: <20260724-clk-provider-simple-clean-v2-0-56f306156d25@baylibre.com>
MIME-Version: 1.0
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


On Fri, 24 Jul 2026 11:03:51 +0200, Jerome Brunet wrote:
> Clock provider should not be using the consumer interface.
> In other words, a provider should not be dealing with struct clk.
> 
> This change targets occurrences for which the provider uses the
> consumer interface and corresponding clk_hw interface exist:
> * __clk_get_name() -> clk_hw_get_name()
> * __clk_is_enabled() -> clk_hw_is_enabled()
> * clk_get_rate() -> clk_hw_get_rate()
> 
> [...]

Applied, thanks!

[2/7] clk: qcom: clean-up simple provider misuse of the consumer API
      commit: 470bd66370ecbf22c2dc27249315b9d39914c479

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
