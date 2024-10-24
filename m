Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 310F5CE8E9F
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Oct 2024 18:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WA9PK8gf8X/tVYxJf33PcKnrY4cICwyxfDRcZtToFHI=; b=mX8Bc5naKYu6Wr
	AN2CVOoajA+my7cnnUWdoLiwWJXrlE+k48U4FP9H0yw8dYTnGU29/EmZj8tfsea/Xr4PDiGWpeDtN
	eOAiCwOk5nW4A4TXknkyct6ohKryq4dOefuG0a8GPXOHeyw161Y4JDGakLMl3ASKW4awAW4ww9g20
	INOGVuYRGRxqomMVulOKCeCnrSR6HhQa/Cs7M8sCDDgyGP1GfifVn3flvsLQ8QAo6wMrEu8xUQaeh
	mgeru2kKGMzaNZ/Z8MWJjmAS7Tw4GYrdznAYdOn1GxHiQM0tHIvTAiK0gFQjkXEQ7xOkksSvgQSTh
	RuFgCRcuL5v7XojGfROw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t42Px-00000001RZd-2Bqn;
	Thu, 24 Oct 2024 18:18:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t42Nt-00000001RMH-1NIQ
	for linux-rockchip@bombadil.infradead.org;
	Thu, 24 Oct 2024 18:16:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=PdH12Lgw2vqY9CJCVi6+J4lYnc7Zfn4pKAiyEXNDY1g=; b=q5dHirsCh6fhyXhWSEpwSLtQqe
	UdwM2LArRWqrcS8zEsqS4HMvrGXpTGfrwh/Xw2hSOwSz2pfaa9/BW0VzdE2BTFdZjLigPjj2UfIWV
	5kIEHhFELIO8nw7tu+WS9BEKBIMAUnJZ3eztzC2qoZLMJw1+1WawA7uWliQY/sbrLQd2+XV/Pxtrl
	mTx76dqSy43MJnXl7EWrZzWTVLQEzHo2/Ks2RvS9S12EwVMYIFlYzCEtHPO0VnUbt5cmNJWWILPfi
	0Ic41EyzL1IzbWztFoMWrtZ9FnSfRlSIaKoGxb12+qd5frTmk0cI3TAgS4ppE1NE4XB18YZVlPjpU
	Or5tYiqw==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t42Np-00000008jLc-0Kud
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Oct 2024 18:16:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729793783;
	bh=e8Qe84wNa3ak4bpxn+ExVY7B/6mI6kx1FcZfyj9rIzY=;
	h=From:To:Cc:Subject:Date:From;
	b=CNfxlxBJtIsSFWqFhQHXlYlf8RlNdxl4S/eewIBQLExECvNXSjWWZD/WXR6YLwchv
	 qMpkqupH4xtvobsuWDyNcoSH9KEKt83e0DZ6BV6O8yxZoD8Vqbw4xR9TFuVpgumokR
	 PpuNkqimAyazplqTN1TCCZ+iky/MrbswkBxVrW94gh5KzPsdIBF+JtFJ6nP7jDAS+O
	 tHHmlCmsulZ1IuaWhN3baqSo13/OXkqURYw/o/uQuI9AUpMMXFMjUUDvjZR69Wd2WV
	 444sCUkaTvIr15lq6i4/2CXZhZVFZFxP6fXdu6pmba8UAKx3dEZQjC3Q+XAyGoZA8I
	 2v+uWhABuPcsA==
Received: from jupiter.universe (dyndsl-091-248-214-110.ewe-ip-backbone.de [91.248.214.110])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F332617E36CB;
	Thu, 24 Oct 2024 20:16:22 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id A2F374800EA; Thu, 24 Oct 2024 20:16:22 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-clk@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
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
Subject: [PATCH v11 0/5] rockchip: clk: add GATE_LINK support
Date: Thu, 24 Oct 2024 20:15:27 +0200
Message-ID: <20241024181621.210509-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241024_191629_262633_57BE2748 
X-CRM114-Status: GOOD (  13.30  )
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
pmdomain driver (failed to set idle on domain '%s'). Last but not least it is
a first step towards reducing usage of CLK_OF_DECLARE_DRIVER() registered
clocks, which should only be used for early clocks needed for the system
timer (see this talk from LPC: https://www.youtube.com/watch?v=dofbbVuIAPk ).

Changes since PATCHv10:
 * https://lore.kernel.org/linux-rockchip/20240913184720.57381-1-sebastian.reichel@collabora.com/
 * rebased to v6.12-rc1
 * make struct platform_driver static

Changes since PATCHv9:
 * https://lore.kernel.org/linux-rockchip/20240325193609.237182-1-sebastian.reichel@collabora.com/
 * drop patches 1 & 5 (merged)
 * keep reporting ENOENT for missing clocks after CRU has been fully initialized
 * drop module remove support for the linked gate clock driver

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

Sebastian Reichel (5):
  clk: rockchip: support clocks registered late
  clk: rockchip: rk3588: register GATE_LINK later
  clk: rockchip: expose rockchip_clk_set_lookup
  clk: rockchip: implement linked gate clock support
  clk: rockchip: rk3588: drop RK3588_LINKED_CLK

 drivers/clk/rockchip/Makefile     |   1 +
 drivers/clk/rockchip/clk-rk3588.c | 116 ++++++++++++++++++------------
 drivers/clk/rockchip/clk.c        | 101 ++++++++++++++++++++++----
 drivers/clk/rockchip/clk.h        |  40 +++++++++++
 drivers/clk/rockchip/gate-link.c  |  85 ++++++++++++++++++++++
 5 files changed, 285 insertions(+), 58 deletions(-)
 create mode 100644 drivers/clk/rockchip/gate-link.c

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
