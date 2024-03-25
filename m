Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B9F5CD11DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 19:36:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wXX2i4wDLMlhYDt0pmQWGeIg8OLGtZB5mcf4/c5pVDg=; b=jf8C8wCUc6OJ6Z
	w+vVsLpwD751QstvX1oV6XajOb0eLrPNiiZMUYtVmGFJw5kuVFLUlErWH47ZqzA4/bRV9HIyNxU3A
	zi/N85dotDjJQnjDM9wE9PVfFNtJVc4xOchx1lrLnhXx06ozSerRFQxMD9a4d3n3dvlYRWOsdCH56
	Tx7H+vTxe+9Mujwpt+REiuq0L0frIXbu5EdiYpG9sd7yuPpjfEgMvKL1zyYVQBrLNEiz1qF8gzrq1
	eon5wM0xjuEKBro3WFVWSuqmzdkZWslF21ywe6N8UtA0Wkn7Fcyqc8ThTkC5YE4Ek8s+AvCofY2qh
	cRNEKa7aBiQl5JCeExMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roq7J-00000001cpf-2vcj;
	Mon, 25 Mar 2024 19:36:21 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roq7D-00000001clD-1bPC
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 19:36:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711395371;
	bh=ns2j/1xbq6BTPWqUJG3b2GwBYjyqRHljKR5mnkkMGU8=;
	h=From:To:Cc:Subject:Date:From;
	b=B697wduiQcwgu9tNrSJ7sTGIjT+DrQVFCSufUafFKE2l1bNs/SwCIOwGpK2q5XNip
	 9b25E+JFedcQ40kDC4v94I1hmIt74wohUdwEzrdmAHCbiNG9cTTbgmHtzNSBASHHYz
	 7jGaiXmdQN+r92OptRwr/6U2zTnbXHCf4uBFBNZFwgueG21yfhClv1hU9EBcr6YUuO
	 hlb1uK3eGr51f5Q2gUAFwbvjeWzEjZmYXBbAsOLcO7yUOkvUxQI1Yg+aPXE/qm8xMQ
	 0zdfwS/6/vJ5lrFb1rhcMyYNA+0mNYWvJfpcpWT9NnRt7iLsbIW1w7Rf0ksA5Zfinr
	 DWW5uQpqEXEnA==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 66AC83782082;
	Mon, 25 Mar 2024 19:36:11 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0F4364800CD; Mon, 25 Mar 2024 20:36:11 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	linux-clk@vger.kernel.org
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	huangtao@rock-chips.com,
	andy.yan@rock-chips.com,
	Michal Tomek <mtdev79b@gmail.com>,
	Ilya K <me@0upti.me>,
	Chad LeClair <leclair@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v9 0/7] rockchip: clk: add GATE_LINK support
Date: Mon, 25 Mar 2024 20:33:31 +0100
Message-ID: <20240325193609.237182-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_123615_621618_DC7B9811 
X-CRM114-Status: GOOD (  11.77  )
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

This implements proper GATE_LINK support following the suggestion from Stephen
Boyd to use clk PM operations by creating MFD dynamically. This required some
restructuring, since CLK_OF_DECLARE() is called before devices are available.

Apart from improved power consumption, this fixes the runtime errors from the
pmdomain driver (failed to set idle on domain '%s').

Changes since PATCHv8:
 * https://lore.kernel.org/linux-rockchip/20240126182919.48402-1-sebastian.reichel@collabora.com/
 * rebased to v6.9-rc1
 * dropped all merged patches (i.e. all but the last one)
 * rewrote and split the final patch
   - should be easier to review
   - properly calls pm_clk_suspend/pm_clk_resume
   - now works on Orange Pi

Changes since PATCHv7:
 * https://lore.kernel.org/all/20231213185114.47565-1-sebastian.reichel@collabora.com/
 * rebased to v6.8-rc1
 * Collected Reviewed-by/Acked-by from Krzysztof Kozlowski for DT binding patches
 * support nr_clk=0 in rockchip_clk_find_max_clk_id() for smatch

Greetings,

-- Sebstian

Sebastian Reichel (7):
  clk: rockchip: rk3588: drop unused code
  clk: rockchip: handle missing clocks with -EPROBE_DEFER
  clk: rockchip: rk3588: register GATE_LINK later
  clk: rockchip: expose rockchip_clk_set_lookup
  clk: rockchip: fix error for unknown clocks
  clk: rockchip: implement linked gate clock support
  clk: rockchip: rk3588: drop RK3588_LINKED_CLK

 drivers/clk/rockchip/Makefile     |   1 +
 drivers/clk/rockchip/clk-rk3588.c | 124 +++++++++++++-----------------
 drivers/clk/rockchip/clk.c        |  71 ++++++++++++++---
 drivers/clk/rockchip/clk.h        |  37 +++++++++
 drivers/clk/rockchip/gate-link.c  |  99 ++++++++++++++++++++++++
 5 files changed, 251 insertions(+), 81 deletions(-)
 create mode 100644 drivers/clk/rockchip/gate-link.c

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
