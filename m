Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AE75C77B7A
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jun 2023 21:12:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a+9HIigk1IfgIMkfyoa5ohPMdeXjWl36SeqcDw1DP6I=; b=EWIUJtUJwB7pUH
	7Oos/sEh39xM53Yw4RxqXA6PBHrqAWifX4KGorD4F/l5456mFLopz12LZ0c4P5fN0L0MzS66cwApe
	2Ty7JfM7KgPQUQUYTSU+Feuh3fr5Q4mqxTBxeALZPdUVsrq+XDMjyT3ac8vFWo435kIIREwoYH3uz
	Di69MC/H2XRngqvgfTK3bY9HyJl61EHCIEWzZrTCv8iv8RFVo7UbGNAqtyQKu26u1jBirzulVYhFl
	KCY0+UyWZpQBpwnaWsErOYIN3aai37a7V/TXwjac98IuavcqdSXnymBfNH69iONtQDFkPFlgrHtWD
	A42Ms4GoSG2A8l63q4rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8SMD-001mNA-1Q;
	Sun, 11 Jun 2023 21:12:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8SMA-001mM0-1E;
	Sun, 11 Jun 2023 21:12:15 +0000
Received: from i53875b22.versanet.de ([83.135.91.34] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1q8SM9-0005sw-3A; Sun, 11 Jun 2023 23:12:13 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip driver changes for 6.5 #1
Date: Sun, 11 Jun 2023 23:12:12 +0200
Message-ID: <10286366.nUPlyArG6x@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230611_141214_415594_72C91D01 
X-CRM114-Status: UNSURE (   7.82  )
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

The following changes since commit ac9a78681b921877518763ba0e89202254349d1b:

  Linux 6.4-rc1 (2023-05-07 13:34:35 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.5-rockchip-drivers1

for you to fetch changes up to a10b3841f901714dbe16a8f9b0f2bbe1034e6454:

  soc: rockchip: dtpm: use C99 array init syntax (2023-06-11 22:38:04 +0200)

----------------------------------------------------------------
An addition to the rk3588 power-domains, some new syscon compatibles for
rk3588-based "General-register-files" register areas and a move to
C99 array inits for the dtpm driver to fix sparse warnings.

----------------------------------------------------------------
Boris Brezillon (1):
      soc: rockchip: power-domain: add rk3588 mem module support

Randy Dunlap (1):
      soc: rockchip: dtpm: use C99 array init syntax

Sebastian Reichel (2):
      dt-bindings: soc: rockchip: add rk3588 usb2phy syscon
      dt-bindings: soc: rockchip: add rk3588 pipe-phy syscon

 .../devicetree/bindings/soc/rockchip/grf.yaml      |   3 +
 drivers/soc/rockchip/dtpm.c                        |  54 +++----
 drivers/soc/rockchip/pm_domains.c                  | 160 ++++++++++++++++-----
 3 files changed, 155 insertions(+), 62 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
