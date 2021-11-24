Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0FC0C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 18:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qrkzyXGxkX2gMOHsE3c/Mg692WDx/E6WoFhw0qULgz0=; b=LljCAnsQ/SAIJ3
	ORV76PjGSs6ngxzSxcXiGLluiHQi8kDNwvycJ4Zl36LmvOV4GpIcEF3aeFcFFrRqeeb1A01s2c5kk
	3AIB0T2ibNKnSjU8nxRl4tPVyBWOesiHfNZQAgC1NfD3DAikzepHc9m2G9x6LJ+/1ExQNSxEQCLO2
	f7yQjVLj1+IcWUnrunMJbwIPo/n4Jki2p1frgc2OOUTf8DlwiHgjrf+19YTbYGf43FDoDhoRqxqbQ
	s+Me440CPvx3MU/Fy3n97EqBhhXtlZ2ULKv23tIIA+/YUf9Jtq/8C2bMK9SobeRnJuG+4keQ3LjAf
	bkngwMsbkOFvynhR4F7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpxJ8-005Xo4-5g; Wed, 24 Nov 2021 18:47:50 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpxHc-005Wzk-Sc; Wed, 24 Nov 2021 18:46:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Content-Type:Reply-To:Content-ID:Content-Description:
 In-Reply-To:References; bh=xdJhRT8gHwOG2GAHSWsFdaRNgcw78JPzju2JYRuISc4=; b=5C
 vNWud1YX5zuJYO41GAoZePSVD0hBMY66VLiNR/FufOmli/Yd6lpBGHYlZVV/XRy5JEkJku/r/uQLJ
 GOLtb8KunPQ8wzsSaSEAKkMgObUhQTxqoOZ0oLNhhwIKMj3AMCNiks0i+5bjzxRy3iv91OZl7MUEO
 52qxgoJMOZNxo1xPpI7Zp3grW/zUPonyfU7ZZgUJDLoNo3l9IiBIyNUB2oXBO7YFMzO4Spy9Hf+24
 U1PgLEFN13nYo53f1PvjzXtAm8F8gC4Yjb2YTJMyo05i8k6HY0bikZyN5SbGmR9UycZYfITHfv0E1
 PVmL7qQXwIpMJ7Y9UTPVH0TholPkJdkA==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mpxHU-00007s-C6; Wed, 24 Nov 2021 18:46:08 +0000
From: John Keeping <john@metanate.com>
To: linux-mmc@vger.kernel.org
Cc: John Keeping <john@metanate.com>, Heiko Stuebner <heiko@sntech.de>,
 Jaehoon Chung <jh80.chung@samsung.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 0/4] mmc: dw_mmc: start deprecating mshcN aliases
Date: Wed, 24 Nov 2021 18:45:58 +0000
Message-Id: <20211124184603.3897245-1-john@metanate.com>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_104617_019622_085B9648 
X-CRM114-Status: GOOD (  11.23  )
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

This series is prompted by discussion on a previous patch set [1] but is
a totally different approach and only a partial solution.

With these patches, the dependency on the mshcN alias is totally removed
from dw_mmc-hi3798cv200 and dw_mmc-rockchip and dw_mmc-exynos moves
towards being able to consider the mshcN aliases deprecated.

I haven't changed dw_mci_hi6220_caps here, although it looks like it's
possible to apply MMC_CAP_CMD23 to all controllers there with no change
in behaviour as the final entry is SDIO for which CMD23 is not
applicable IIUC.  But I'm not familiar with that hardware and don't feel
confident making that change.

[1] https://lore.kernel.org/all/20211116190244.1417591-1-john@metanate.com/

John Keeping (4):
  mmc: dw_mmc: add common capabilities to replace caps
  mmc: dw_mmc: hi3798cv200: use common_caps
  mmc: dw_mmc: rockchip: use common_caps
  mmc: dw_mmc: exynos: use common_caps

 drivers/mmc/host/dw_mmc-exynos.c      |  9 +++++----
 drivers/mmc/host/dw_mmc-hi3798cv200.c |  9 +--------
 drivers/mmc/host/dw_mmc-rockchip.c    | 11 +----------
 drivers/mmc/host/dw_mmc.c             |  3 +++
 drivers/mmc/host/dw_mmc.h             |  3 +++
 5 files changed, 13 insertions(+), 22 deletions(-)

-- 
2.34.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
