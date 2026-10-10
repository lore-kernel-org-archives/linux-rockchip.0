Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85497CA9EBE
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Oct 2026 14:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H6e9bAZNVZlzS5phbVM+qJfmlJqYjzIQ41DYhbJjnHI=; b=OX53vGahIbgr6s
	NjAyQ1UFCNeeP7EloQJ5SvdwoE/MMog98zEpseNhY9DD7AMm282UCFLEYpWWxgiJ95tlgP3vUDwfi
	UsjLPJwQmw8PChlXRCUHskvRWpLnpTtK6dSDzvC6FCISc58Pv6zQtOvosNtTmmXEcXLW45hZ/Xv6l
	SWkfKmiQum7kok7lgP/w0fEBtAINYP9vLQAUDKenUlYEvRPTwHaOit40mo077N7YFUWgMr3yEeqBR
	ZS4aE3Y3NXWRXKTmctoBN/PpUK4vS5LBWKsPAxoeLgdIYrjbKHBxo3ngEwkuEM4IWe8iFGEbbQnpc
	DfrA53gOTpkqmAiaKNPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFXtZ-000000089eY-2qGo;
	Sat, 10 Oct 2026 14:17:53 +0000
Received: from mail-m10224.netease.com ([154.81.10.224])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFXtU-000000089dL-1KFc
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Oct 2026 14:17:52 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 509291f98;
	Sat, 10 Oct 2026 22:17:31 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Stephen Boyd <sboyd@kernel.org>,
	heiko@sntech.de,
	Brian Masney <bmasney+clk@redhat.com>,
	Jerome Brunet <jbrunet+clk@baylibre.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 0/2] Two fixes for clk driver of RV1103B and RK3562
Date: Sat, 10 Oct 2026 22:17:17 +0800
Message-Id: <1791641839-74584-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0aa1262d14ea03a4kunm7e28e606b1cfd
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGk0dQlZOGElLGh5PQh
	kaTUtWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=I/knpU3B8x+5zFDm7w7WnJb1Y7XbOLI1h74X+UlXXPH69I8mmKCZ2WNiS3GNZv5YCTtkYf+lh50arGTXag5kKJFQ0qjo5wfT9JwMjpSe8PNohDobIQmHFFHBjxEtz/ZMjg3swjgzHPODXQ4Bec2Q2CLUxhigyrS/IWcd2nyOj9Y=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=2TqRtsyutnaovlmfbdEDDrDTOCFj2EybIUPzliFBz4g=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_071748_940017_D35AA28C 
X-CRM114-Status: UNSURE (   7.00  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


They are basiclly copy-paste errors from the initial submissons.



Shawn Lin (2):
  clk: rockchip: fix wrong gate register for clk_gpll_mux_to_ddr on
    rk3562
  clk: rockchip: fix wrong PMU CLKSEL register on rv1103b

 drivers/clk/rockchip/clk-rk3562.c  | 2 +-
 drivers/clk/rockchip/clk-rv1103b.c | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
