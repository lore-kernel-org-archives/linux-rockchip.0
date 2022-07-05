Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79CB3C43334
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 11:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WjOccafKz6QGozyuJQLrx0Tw4gZhWkUs+Gq/TpZSg+Q=; b=lF2KlrB4ysArfO
	yP1VDDmV2bnjoZLrCVF6gquAdlEX75KkGW8EAYGWnv64jT+ghaZ1Cw2bWd7BXsx/VqTVHtbbg7PQn
	MWk7YkYhCZYM2AVEwbfUBPaCLemLHlW/SOMlApV8SV79omCAYotUkQwo4J0xsJIkVijj3VxCyJdZK
	K1HTA3N3pzk6MDnkpGleH5cBjjkd/esSKM/e/KlRMUW+hUzQdWw9mhlCvJNOHvXKChTrbGOzCmWjs
	0xkd24iokprERl+XIEsMaXn+a79jH8PkEdSv+RmPQTSIzq8pqg4WQtlU200n6rnG3NGX1jHOdr7dx
	9/AZVyZu+ueqtIk4kBrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gQW-00HLBI-O9; Tue, 05 Jul 2022 11:09:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8gQU-00HLAU-9m; Tue, 05 Jul 2022 11:09:07 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1o8gQQ-0000BQ-6p; Tue, 05 Jul 2022 13:09:02 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Cc: soc@kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: [GIT PULL] Rockchip dts fixes for 5.19
Date: Tue, 05 Jul 2022 13:08:59 +0200
Message-ID: <7723415.29KlJPOoH8@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_040906_388726_E2E774CF 
X-CRM114-Status: UNSURE (   7.80  )
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

The following changes since commit f2906aa863381afb0015a9eb7fefad885d4e5a56:

  Linux 5.19-rc1 (2022-06-05 17:18:54 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.19-rockchip-dtsfixes1

for you to fetch changes up to 2d56af33d4df94d2b76446ffc3e3654c42232f4b:

  arm64: dts: rockchip: Assign RK3399 VDU clock rate (2022-06-11 17:17:57 +0200)

----------------------------------------------------------------
rk3399 vdu clock-rate fix, otg port fix on Quartz64-A and ethernet
fix on Quartz64-B (actual production model)

----------------------------------------------------------------
Brian Norris (1):
      arm64: dts: rockchip: Assign RK3399 VDU clock rate

Peter Geis (2):
      arm64: dts: rockchip: Fix ethernet on production Quartz64-B
      arm64: dts: rockchip: Fix Quartz64-A dwc3 otg port behavior

 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 4 +++-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi             | 6 ++++--
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts   | 1 +
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts   | 2 +-
 4 files changed, 9 insertions(+), 4 deletions(-)




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
