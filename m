Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DC19C32771
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Sep 2022 19:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tH4HYuoHkANWzSVTrohsSNQal2h9yRPDwax6PFwOPKY=; b=DK109I5u6+o6kq
	77bWNXLyLuUnnv4ojLoXLSK4HZcNKrHjuNSmNVQd0BS6Z6PmTZb7Dd5VeWZFRu1ZvwQ/AU3PhcEQV
	qAUjI/TCQOAynVARSwfDzEfc6ERIJufrsUOagZD0F9+HX3p5v9A1Ctkp3wfGAKbwVq9e/cLX/ElHN
	QpaH3vTkjKZG7zdUyqUh+bPoE8NTGsxL/Fsr/z+lrq3f5B+PO/ueS/Q5DQ5LRMoNqx+mnub49WlzW
	3lhEbF5Ps2BSzQh5P2U8XMxX6MEfqnMjB59APCzo3N7ZvjVr5uTEy+4BWRZqkLs5HZovW11hj9uXB
	W8W8a3eMGY6ZDfAsOCuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocAOp-008eSj-3v; Sat, 24 Sep 2022 19:01:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocAOm-008eRV-Qa; Sat, 24 Sep 2022 19:01:13 +0000
Received: from p57b775e6.dip0.t-ipconnect.de ([87.183.117.230] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ocAOl-0001iv-H4; Sat, 24 Sep 2022 21:01:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip defconfig64 changes for 6.1 #1
Date: Sat, 24 Sep 2022 21:01:09 +0200
Message-ID: <1989419.QkHrqEjB74@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_120112_886971_3192B043 
X-CRM114-Status: UNSURE (   6.55  )
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

The following changes since commit 1c23f9e627a7b412978b4e852793c5e3c3efc555:

  Linux 6.0-rc2 (2022-08-21 17:32:54 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.1-rockchip-defconfig64-1

for you to fetch changes up to 489dd8611b64efbd84c12c6c9db470dadc34470f:

  arm64: defconfig: Enable Synopsys DWC MSHC driver (2022-09-23 11:23:38 +0200)

----------------------------------------------------------------
Enable Synopsys DWC MSHC (sdhci) driver in the defconfig.

----------------------------------------------------------------
Anand Moon (1):
      arm64: defconfig: Enable Synopsys DWC MSHC driver

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
