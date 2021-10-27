Return-Path: <SRS0=/XqT=PP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3BB0C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Oct 2021 13:26:31 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 52A0F610A0
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Oct 2021 13:26:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 52A0F610A0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gpa3TqXX2nwtMMoopGCeebvZTS1JFe8k723lTMHlqHo=; b=jzosXEDKQRjorT
	XCew5Or/eX0SIX/W8YawxbgUDLhjCSdtCrj5f3SbFfPeGCM/khaYr7aRpl80waSCCo/O7/u1uIQxU
	JSVAu5agrt1hOPJJmtf9R8ADnEu1GU3a6GR51QU16VVqJ1ivf4XRYFee4PcFk2bgUMNrSF148/aCZ
	b1fKvgiC3WATy6j+i58KbgBj/zaK3dEQMJnGDqc2+v+z/10Ad4YqrWvNGkYBOZSZqTkOtB+YhFCkI
	0hiPP8qfta2+zmCmWOJiPAv5+V9BZzA01NuuzovCYyi5cHwI8KMFkMAJSjtVGaxpszPtdgiVWd7Jx
	/8Rza7Uv/yzod1yXRaBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfiwj-004yJM-9n; Wed, 27 Oct 2021 13:26:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfiwh-004yIF-33
 for linux-rockchip@lists.infradead.org; Wed, 27 Oct 2021 13:26:24 +0000
Received: from ip5f5a6e92.dynamic.kabel-deutschland.de ([95.90.110.146]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mfiwe-0003TD-TQ; Wed, 27 Oct 2021 15:26:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: sboyd@kernel.org, kernel@esmil.dk, linux-clk@vger.kernel.org,
 mturquette@baylibre.com, heiko@sntech.de
Subject: [PATCH 0/2] clk: rockchip: cleanup errors in (module-)driver handling
Date: Wed, 27 Oct 2021 15:26:14 +0200
Message-Id: <20211027132616.1039814-1-heiko@sntech.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_062623_157129_0BB23953 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Recent conversions or inclusions of rk3399 and rk3568 as platform-drivers
and subsequently allowing them to be built as modules introduced some
problems.

These two patches try to correct them.

Heiko Stuebner (2):
  Revert "clk: rockchip: use module_platform_driver_probe"
  clk: rockchip: drop module parts from rk3399 and rk3568 drivers

 drivers/clk/rockchip/Kconfig      | 4 ++--
 drivers/clk/rockchip/clk-rk3399.c | 6 +-----
 drivers/clk/rockchip/clk-rk3568.c | 6 +-----
 3 files changed, 4 insertions(+), 12 deletions(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
