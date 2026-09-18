Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10228C982DA
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2026 12:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gzetetzW/Xslf3u7u1doVw7BHI+cCFsSFbzV7pv7j4k=; b=efG9ACCnt0+Tzw
	0N0h+2s7z20ZFZ6BOtgR2umqjQxpkOQMhkem3iB+Az4WWkx43Qq8rZU2lWgyQGiZVT1I5FZt43P+c
	PalgYalKAsnOZkBHDNqrH7fojd1JMGla1igsNRgzA/GGSusKsZPsFBxAnOMkNYqYkJBieMtEjyNxo
	SQyjmcuRkI2yuCCGSDA4LVdXVIVooeqxO+rfT1AalEcMzvC4rk9fpiSER2seyjaO2cmkN+buUyAuH
	xKEqmq+Rw76iajQiwkE2BAyRGQGUZZpu0afPdefNLIFqyHYyZlzcuLrRO1m1EJ+ndAgvlad7PZVyu
	nPrECYYxBQ5lGpyi72XQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7XO0-0000000EKM4-0MPh;
	Fri, 18 Sep 2026 12:08:12 +0000
Received: from mail-m9364.xmail.ntesmail.com ([103.126.93.64])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7XNx-0000000EKL4-0Fqq
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Sep 2026 12:08:10 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4e4c12fd2;
	Fri, 18 Sep 2026 20:08:02 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 2/4] pmdomain: rockchip: fix clock leak on domain probe failure
Date: Fri, 18 Sep 2026 20:07:36 +0800
Message-Id: <1789733258-10133-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1789733258-10133-1-git-send-email-shawn.lin@rock-chips.com>
References: <1789733258-10133-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa0b46aa43203a4kunm5c34220f164111
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZGkJOH1YaHR1KGR8aGE
	1PSx5WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=GGe077Ti2GRusO6ujOO7ct4Oqt6QXuocoWQnBGaNG2oDd8WIV7w3J0eQ2qFTRZwDBp9w/9OItKkkxaVZMivEVsaSFmHO+fnx7vdRDAB2uEY7TgxzTeKbKkQ/H1RZh3XRKgtfOufGoWyOYVC7jyCcMtM+gbsTXvObvD2lgMA/afM=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=vyiGmdwYuCiYWaT86c455RYOSqUK1NvHNKSSaModKpU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_050809_300747_7E99935D 
X-CRM114-Status: GOOD (  10.93  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

When of_clk_get() failed in the middle of the loop, the references of
the clocks acquired so far were leaked instead of being released by
the error path.

Fixes: d909072d0521 ("soc: rockchip: power-domain: use clk_bulk APIs")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 drivers/pmdomain/rockchip/pm-domains.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 068dd4b3..b6b099b 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -842,7 +842,7 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
 			dev_err(pmu->dev,
 				"%pOFn: failed to get clk at index %d: %d\n",
 				node, i, error);
-			return error;
+			goto err_put_clocks;
 		}
 	}
 
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
