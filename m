Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D93E2E77183
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 17:00:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KVUKsGW6ivF3esaYJZPdRbwzYtEE/nMmPy0Uq+BJ9yE=; b=jlMqLYws6F9YCs
	cm5bNkGKVd3Sy3QmDrkUBVYUa8eMKWDIaiWMDIlGkzsCtKS32bShoQrhAg1Qv6xyrfsKJWnaZIi57
	mEiqy3/4ycoB2gPdPxVrmjzBrULGf+x5C+YjwuonY5w68HSQCBnTwJeZ8gaFjqXNktF7GX5WF3rtG
	Xtr5JxcQLJv/fKNxiOEPVn8DZRlbGSqhE+kysTIM3TfQBlPZLjGzOYxVb/NivSJc86pd9x6W5JURN
	brKpCQa1GqeZSBq28TKYONmqdRNGSIGV8QRBNDqIbjbd/TqdmqKjSuLWX+K3y+8JNnbbdflacCGqb
	gQQZqUuzhDVbJbVpIBHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLQ4D-0000000FXkg-0owl;
	Wed, 11 Dec 2024 17:00:05 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLQ49-0000000FXhK-21fD
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 17:00:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733936399;
	bh=bwaO47C/VDBLli4uK24DxQvuVZGRCzTeS8I7FFz++X4=;
	h=From:To:Cc:Subject:Date:From;
	b=EKkSP7CAyFZKwzhXEbg0pgRDCzeqdyuvFiLTmVXdKCmf3bR63zLQUnJ860nLD9I/f
	 BOq9XGgi4apIRWVOoh1nVfQzLdZcXTiKxyyGm2C7Gmq7GaQDPubYAMI057Ur/rTiim
	 NUWn4uDhgtX93QlKY8YtaguOwcHfujvGO45A/V6Kye5L72r4ZqlxDeGcHHzWOtf5fU
	 4ubxYQjv0+ee9hgJuqnXfTTlrgyKsb6cb/CPIb72yMfpxIMJvxGw67q33Vydx5JjDK
	 t8zsVkq3/ArjdP9CqV5F83kipesJpXeIyditY5RKMuK1kqKVk7f7QgXPX+LcB9ph0g
	 gE3NoqwgAr4Mw==
Received: from jupiter.universe (dyndsl-091-248-215-089.ewe-ip-backbone.de [91.248.215.89])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2E6CD17E37C2;
	Wed, 11 Dec 2024 17:59:59 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 78C0E48CC8A; Wed, 11 Dec 2024 17:59:58 +0100 (CET)
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
Subject: [PATCH v12 0/5] rockchip: clk: add GATE_LINK support
Date: Wed, 11 Dec 2024 17:58:49 +0100
Message-ID: <20241211165957.94922-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_090001_693723_B2E09AAA 
X-CRM114-Status: GOOD (  14.09  )
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

Changes since PATCHv11:
 * https://lore.kernel.org/all/20241024181621.210509-1-sebastian.reichel@collabora.com/
 * rebase to v6.13-rc1 based for-next branch from Heiko
   - no changes needed, so v12 is more or less a resend of v11

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
