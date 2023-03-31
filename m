Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9944C761A6
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Mar 2023 16:31:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ho4Cef699cxHcmtEwMsj6c0OfH1kr05mDFjSN9U9dSg=; b=Cr7kni+XGM8ASC
	vcpgpvEp21Yg9HOqzykfMxl06HjE82s7sapYIXjKnCVKeK2oHdie7f8RBpTTw9wmc5bzBOm528QZV
	AJwYhF525Gut0BvEtlQ02LRHCg4SyS3fqhRAG0IPB25MiGYuSIOBhhHd0iOi7wFZ9awMi862HVhtt
	bS73I57UxDNv9AGAq+OF0LwH6GwikS4zFrLEQB8QqdHpnAk5qrzSlSRHXbDVFAi8HyOlc0jpjXodf
	cDqpg6fl2x3KC1/W/hQXrB4QNnIs/2jVX8KlMYsN/RwGw/KQ23pb0rjun0OVz+zAVLr9eHLEpNWQv
	Eb9TCKQ4nknJC82mfpbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piHem-0086zN-10;
	Fri, 31 Mar 2023 16:31:16 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piHeg-0086uS-1o;
	Fri, 31 Mar 2023 16:31:14 +0000
Received: from jupiter.universe (dyndsl-091-248-213-136.ewe-ip-backbone.de [91.248.213.136])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0F1A3660319C;
	Fri, 31 Mar 2023 17:31:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680280268;
	bh=rHbX/qlp+rL7Mg3bJEUnLaEAxzLsCgYjKEhKA8ZUJz4=;
	h=From:To:Cc:Subject:Date:From;
	b=IPNZJ7WpofmAGTMqLY4lbwCWpt6LL5tJuC6mjLQw0LWMbcMUFuOBPM0TZe+LwR7K9
	 L4GRTAzTt3R09aRVmpXy3ENqsFz/qPtYRJtSoO105tq8dF9IJbAZA340GEzTuCgsEM
	 41NDVfFYFsj4KSB4+fGEEnNbD9Tkc+ImspVtLwUFkCras2MMTQSCBcqJZnISgTd8ZT
	 t2o1d9T3Az+vkGNgvO5qqI3/HBARDjf87Hy2OHewpND7brHXbsmv1ysrc2E6VhivcG
	 3Li0XNUMU62VHWJz7IuvLJmviaTuqbhRzjRnw+1lAJxjtuT5vXa/hkfljDDPytXiPO
	 mMyPw+sWPrvgQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 56A574807E1; Fri, 31 Mar 2023 18:31:06 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Peter Geis <pgwipeout@gmail.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv1 0/2] Improve RK3588 clocks and power domains support
Date: Fri, 31 Mar 2023 18:30:56 +0200
Message-Id: <20230331163058.5688-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_093110_811055_52C7809E 
X-CRM114-Status: UNSURE (   8.39  )
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

Hi,

After this patchset the power-domain support for RK3588 is basically on par
with the downstream implementation. More importantly the clock controller
change unblocks support for any IP blocks using linked clocks. The clock
controller change must be applied before the power-domain change to avoid
accessing unclocked registers.

-- Sebastian

Boris Brezillon (1):
  soc: rockchip: power-domain: add rk3588 mem module support

Sebastian Reichel (1):
  clk: rockchip: rk3588: make gate linked clocks ignore unused

 drivers/clk/rockchip/clk-rk3588.c |  42 +++++---
 drivers/soc/rockchip/pm_domains.c | 160 +++++++++++++++++++++++-------
 2 files changed, 151 insertions(+), 51 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
