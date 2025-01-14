Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B725AE77188
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jan 2025 13:31:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T+Bctl71kkeuY3h35pHURRhTsIlaaysmEh1xZ0aYnE0=; b=JHggSwbUq2IDNr
	fhCyAeE28aVhON7a/j2qrJC2faYP2xHeCHalhITGrUR7SfZPghk6Mdt/VoGWxTt4BWltzDR1jR3Hd
	VKNaqGM22GxdlOrIJhCOZNYqaQ4JFMNuP1WIzwR6CMUQUFovKHuFQTVLYo97mox85lTQ60SLhCG3W
	A4/rKNOgAQJruZUNpsnlx8/fER+/DugQ0EdsDJsRYl4zSceCHALSQTTyq7Oo5vmbALX15cANoU50u
	E3P7dhNNLDML/nYAufuKYKM8HsiW7kTYwFgDAk+nPNm33ykVGe2o5uHyJtUFstzmA0VDjFMKriFwE
	tTB3F/ZJA/bT6m+stNLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXh0O-00000008Ww1-3ffH;
	Tue, 14 Jan 2025 13:30:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXh0L-00000008Wuo-3wCa
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jan 2025 13:30:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=DsDqFsKNlq6k5bv26Wc6cezOu7WfsIt9U2WvPdD+fPo=; b=ZxVsSuT8Xs5o8SLdZaOxUY8byS
	O8m3iIAPaCTgl2t9Qmq0bFUCKO9G5xIfg90xcvw0Ps4SOm9phB5k/2fZzRKMcMKOM5Tzn7H/Dg6Kl
	ztrb0ZHGDNsDGe/I3IVrnEBqXqAb70NPBLx1fDw6M6gbCM+qAliy8oi1hOH7huKSgEr7S/ddz4sp8
	nvVKu79sdIugOnd1kUmoqjaBgze1LFLXlvkd2h63/2tok/NbrbIS0LZ1gjjfVU8HxzFtkO3ZJ5voR
	qDhJDBZHAEqXBHA5pwvY+mdSgdAmvwPy6+8aTvH1zWv4Hv/3CWMHxp6htcNUT/pRchiQZz48WRwti
	pOdjrTGQ==;
Received: from i53875b2c.versanet.de ([83.135.91.44] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tXh08-0002c1-EM; Tue, 14 Jan 2025 14:30:36 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: [GIT PULL] Rockchip clock changes for 6.14 #1
Date: Tue, 14 Jan 2025 14:30:35 +0100
Message-ID: <2020465.PYKUYFuaPT@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_053049_996760_D27B0E77 
X-CRM114-Status: UNSURE (   9.29  )
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

Hi Mike, Stephen,

please find below a pull-request with Rockchip clock change for 6.14

Please pull.

Thanks
Heiko


The following changes since commit 40384c840ea1944d7c5a392e8975ed088ecf0b37:

  Linux 6.13-rc1 (2024-12-01 14:28:56 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.14-rockchip-clk1

for you to fetch changes up to cd8b5366636bdff0449b789fb2d33abb20804255:

  clk: rockchip: rk3588: make refclko25m_ethX critical (2025-01-09 16:23:32 +0100)

----------------------------------------------------------------
Real handling of the linked clocks (clocks of the interconnect port a
peripheral is connected to) on rk3588 using pm-clocks, allowing us to
stop marking them as critical and one more rk3588 critical clock, that
the kernel cannot handle otherise right now.

----------------------------------------------------------------
Heiko Stuebner (1):
      clk: rockchip: rk3588: make refclko25m_ethX critical

Sebastian Reichel (5):
      clk: rockchip: support clocks registered late
      clk: rockchip: rk3588: register GATE_LINK later
      clk: rockchip: expose rockchip_clk_set_lookup
      clk: rockchip: implement linked gate clock support
      clk: rockchip: rk3588: drop RK3588_LINKED_CLK

 drivers/clk/rockchip/Makefile     |   1 +
 drivers/clk/rockchip/clk-rk3588.c | 120 +++++++++++++++++++++++---------------
 drivers/clk/rockchip/clk.c        | 102 +++++++++++++++++++++++++++-----
 drivers/clk/rockchip/clk.h        |  40 +++++++++++++
 drivers/clk/rockchip/gate-link.c  |  85 +++++++++++++++++++++++++++
 5 files changed, 288 insertions(+), 60 deletions(-)
 create mode 100644 drivers/clk/rockchip/gate-link.c




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
