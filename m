Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF20CC19F2E
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 11:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xF/ZArcWbLQBdhCoMk6hrGnLbvwEcDfaQroFpoYB/Nc=; b=W8yo7zNYFCG+PN
	ze3G3J3fGeVEA2nOotTVJzKhii5kHZRMFMcmS5lHFRkLBzfdxNkMnbaWdDLr1ySGwBU/1N+fIIvve
	E9PPHkmFkPhx59XuEyd/Pf1+fVIMB/Nq4xE2nlqt94oqE3Zm/rXDfqXpvAvImx7207GhJ6Grl7Eqa
	f63N31BvjN2/ixK77SJxYf/y/p+BJT1kmxziCshQos0Rm9XR3EpJtv5TQGrRhefw0NjDxcz9+Qdrw
	FbD6Muz90M7pBEXDdd6ellqm33JkXoUKMeFgRl9OFarGTYNS0cN/rPtNGTHpU2nG3kaszsBJxSdlV
	4f7SbmeNuwE3fxPSPpTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnbhI-000000075SY-1i7s;
	Thu, 27 Feb 2025 11:04:56 +0000
Received: from mail-m19731120.qiye.163.com ([220.197.31.120])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnbc6-000000074S9-1gXv;
	Thu, 27 Feb 2025 10:59:36 +0000
Received: from localhost.localdomain (unknown [103.29.142.67])
	by smtp.qiye.163.com (Hmail) with ESMTP id c6596a3c;
	Thu, 27 Feb 2025 18:59:24 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/2] rockchip: Add rk3562 clock support
Date: Thu, 27 Feb 2025 18:59:13 +0800
Message-Id: <20250227105916.2340856-1-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTxoeVkxCHR4YTEtCSEtNH1YVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKS0hVSUJVSk9JVU1MWVdZFhoPEhUdFFlBWU9LSFVKS0lPT09IVUpLS1
	VKQktLWQY+
X-HM-Tid: 0a95470fab6903afkunmc6596a3c
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NVE6Pio6KzIOQg0uAhpOOhc5
	LzcKCTpVSlVKTE9LTU5IQk1OQk1DVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQUpITk83Bg++
DKIM-Signature: a=rsa-sha256;
	b=R8kC9d33Z9g4FYnESeaM5DTtFcaYpcAcra30dOEJFu4VTNO5NqvT0oPGH/4dvNmMoT0B9GLdB8Rhrvu6Op6MEU+5stY0nOLVGHwGM+lg9oYCoWTFmuD4JbdXBa/Fes+0PSlRoCTeQ2uUu4Br9H6H+q9hUNwvmKW2acI+s9gMnEk=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=VFwR9bSonAWb+2pGDDc10fYLnCw/mDANOeUPNgJEuBE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_025935_008581_FD3C080D 
X-CRM114-Status: UNSURE (   9.96  )
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


This patch set add cru driver for a new SoC rk3562, the SoC DT will be sent as
a separate patch set and the new compatible will be used in the DT.

Changes in v3:
- remove rk3562_cru_base and MODULE_ALIAS

Changes in v2:
- remove rockchip,grf info
- Update file license
- Update the reset ID with rst-rk3562.c
- remove CLK_NR_CLKS

Finley Xiao (1):
  clk: rockchip: Add clock controller for the RK3562

Kever Yang (1):
  dt-bindings: clock: Add RK3562 cru

 .../bindings/clock/rockchip,rk3562-cru.yaml   |   55 +
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rk3562.c             | 1108 +++++++++++++++++
 drivers/clk/rockchip/clk.h                    |   40 +
 drivers/clk/rockchip/rst-rk3562.c             |  429 +++++++
 .../dt-bindings/clock/rockchip,rk3562-cru.h   |  379 ++++++
 .../dt-bindings/reset/rockchip,rk3562-cru.h   |  358 ++++++
 8 files changed, 2377 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3562-cru.yaml
 create mode 100644 drivers/clk/rockchip/clk-rk3562.c
 create mode 100644 drivers/clk/rockchip/rst-rk3562.c
 create mode 100644 include/dt-bindings/clock/rockchip,rk3562-cru.h
 create mode 100644 include/dt-bindings/reset/rockchip,rk3562-cru.h

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
