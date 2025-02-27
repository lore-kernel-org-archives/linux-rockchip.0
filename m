Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18974C197BF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ND4yyS/prLSkmbjyCwhwsOYIMPA7p6/sPPvP4bzorcw=; b=oKegtXSltV2VEG
	iy9KIbXe5+CpzZqYTG/Oir3c7nAZOPEmurGvNKHq3UZh77JEmcibrNfxwOhmg9EiVHMkiNkdXEmac
	Bbk1pzc2kxlXxwQLsu60nVd/LQmMUJsAkChF7nIWPaBRx+TPsbGfQOxBlFVQu+RVAaKgez86+f2bF
	9lWyV+sXvvqQ6mcy8bJbsg4pYRxt14JlIpDxWjylIIH+pg3yC69yDsl4BL/hgqDyj1SLhK36QZ0UU
	IOm9HfkMapHOpaTFC0f0q+5ePINODWzJCQAidIqQ7zo/F1RHnq+rnLH548wyNYiOEw31fylK4K1i4
	C+CCrtAMKVgNUQ8TveVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnjnP-00000008fGI-11OM;
	Thu, 27 Feb 2025 19:43:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnjSc-00000008Rcf-0lZU;
	Thu, 27 Feb 2025 19:22:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=V4lez11SJeGvJGWTRQrriGcYKPO/Eo25CyAOjTjCEWY=; b=tOzOhZUc6AWzL93bODAJ/5ilCB
	5MN8XqQdKRZqlvhRDDGgpxmM8jB2qLXfSjugOgFV89/afCAbBNaJe4weASEfHh5eI/7d5h7NAwGIf
	9rIQAZqCYGvYKjgYt0JUyd+5TudCqs7Tk6Fzy/K8OKo3DNuUO+QMDyLzfPyJ/9NoJ84YD5aF0irg9
	Rw2KLFXJ0CskQBnsWC4ZWfp/TKY8xYVlXlUasGidIytokO27flsOeTJWXvHs1MywegwSYrbp7JbG5
	7xHs0+M8NbDRhtTnWftmY9EdHw6FB6jjDDzYwfq5yMMSv3B3nQjujFJ6fAC9559ymltRbEF1hqk53
	kYOr/A7Q==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tnjSX-0003dX-8j; Thu, 27 Feb 2025 20:22:13 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Yao Zi <ziyao@disroot.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] clk: rockchip: Add reset lookup table for RK3528
Date: Thu, 27 Feb 2025 20:22:03 +0100
Message-ID: <174068411735.106118.14972067490193651658.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250227175302.2950788-1-jonas@kwiboo.se>
References: <20250227175302.2950788-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_112218_220549_7597B1D3 
X-CRM114-Status: GOOD (  12.07  )
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


On Thu, 27 Feb 2025 17:52:57 +0000, Jonas Karlman wrote:
> In the commit 5d0eb375e685 ("clk: rockchip: Add clock controller driver
> for RK3528 SoC") only the dt-binding header was added for the reset
> controller for the RK3528 SoC.
> 
> Add a reset lookup table generated from the SRST symbols used by vendor
> linux-6.1-stan-rkr5 kernel to complete support for the reset controller.
> 
> [...]

Applied, thanks!

[1/1] clk: rockchip: Add reset lookup table for RK3528
      commit: 5738362a5ee7e3417312e7fc03bcb0ffb12ba4f3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
