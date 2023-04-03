Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39DFDC76188
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Apr 2023 19:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7XSWFI3+lmcb0kGzPcGkVmn3d3cENhR97xxt+JVLRkE=; b=pWdx5j34yZbR3d
	FPk0WAzKMJklmhTCb1hUbgMYtQpzQvo5NqTbyfyamasKgUIA1sMkdJeNZJh+ASeEiw224YZLxAjhZ
	0duuLINK1hjsqMy+ofiQSrowp7nFYKEKUhcOs92wk8FHEYi0wBJlVmXChjp3PF7p1/x9q/WaNSa5e
	wNyhdYcFtQ2Q8PNANVtC1XzLcGdU3RPWyUfhVlU5yz3K2FR5mU9Agbe2Y80491ZzW76ah1PI4gtyv
	vtPjIk9mi7p0PvlY7fKKuY8z7rWTNKZ+JPKVpyCeau9DUGtcKRQ/MzcRIbbB96WnPSe419klrjOaq
	xXfAx0BndhA/lH7kCwtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjPw9-00GPbw-0I;
	Mon, 03 Apr 2023 19:33:53 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjPw5-00GPZx-1p;
	Mon, 03 Apr 2023 19:33:51 +0000
Received: from jupiter.universe (dyndsl-091-248-212-192.ewe-ip-backbone.de [91.248.212.192])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E45D66603145;
	Mon,  3 Apr 2023 20:33:43 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680550424;
	bh=HLxZp58uZbh2yKGMAwWX3x4hnxJ2g4oYtgD1TCqt/kg=;
	h=From:To:Cc:Subject:Date:From;
	b=VVtMjOm2de/pqu93Ktnc8dm6IlqYc4FUDpl3YWVMDRgs5NXajAihZBIgY1f6UeRXI
	 eeS+Tzsh69AyhBM0K50OaH+44B7GVzNdKRVag/qCW8L/dL/puPQXiDwxXmhPjI+2AV
	 I8+G3l7v0aQORqAg79+cvdLvB1lCTD4eDa+2SDTqcpwLSp7kdsYUS0jQVdJuhCWEhm
	 1uIt8U1uJH5ykw+k61TuwdueN6w3xfBAm1GAh4r0ACClME2tMnfFmkO6X7moOMGepQ
	 ppc1egirmYlM4v7kQA1O1/5zpl89AQOmY+EWL3ewZHUpD9Lk0AijFts2vEjyb4Zn+t
	 4r6DAGyM4JQRg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 4B2FC4807E1; Mon,  3 Apr 2023 21:33:41 +0200 (CEST)
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
Subject: [PATCHv2 0/2] Improve RK3588 clocks and power domains support
Date: Mon,  3 Apr 2023 21:32:48 +0200
Message-Id: <20230403193250.108693-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230403_123349_830683_09CFA404 
X-CRM114-Status: UNSURE (   8.86  )
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

Changes since PATCHv1:
 * https://lore.kernel.org/all/20230331163058.5688-1-sebastian.reichel@collabora.com/
 * Replace dsb(sy) with wmb() to fix COMPILE_TEST build on !arm64; direct replacement
   would be mb(), but write memory barrier should be enough here as far as I can tell
 * Added Tested-by from Vincent Legoll

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
