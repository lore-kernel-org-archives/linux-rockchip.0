Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7330C982DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2026 12:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=94WzahJiwImFR0XIKaK8qF8TYGiNHjbKVZJ4lO7ZsFs=; b=VqoQ8h8YLZDAa1
	L95oA4dhO04T0hIR8WgQTJKqADE0Vyig5uEmcUzRlXiJE6VoW8ZwMiqTiri9BfWwlRbUrMhBBv5lV
	2MxazC/xx+VKABaBklF58ykJ5p6fYIVKThVXReqjvyBtuR2yESLhzkGb9Dbs8IDWc2vfpkID7zmFQ
	+q3BRAebuk2inndQwLOc64SqsTC0apJ1wrJubI3BfsHwdtWwvhtxh1Gtk1gepbw4CLlrLJrClvkzo
	DBi+Yp68v2v7mJHJLbtYT8VysSt83eY30iFSKUtnnj4cYlC2zJNGQERwZ+tKRvSL6TmT4RTIi9A1u
	wFVg2t5zXWoNdU+85xxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7XNy-0000000EKLq-3taJ;
	Fri, 18 Sep 2026 12:08:10 +0000
Received: from mail-m16023652180.xmail.ntesmail.com ([160.236.52.180])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7XNv-0000000EKJx-0LlW
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Sep 2026 12:08:09 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4e4c12fb9;
	Fri, 18 Sep 2026 20:07:52 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Ulf Hansson <ulfh@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 0/4] Small fixes and improvement for Rockchip pm-domains driver
Date: Fri, 18 Sep 2026 20:07:34 +0800
Message-Id: <1789733258-10133-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0aa0b46a782d03a4kunm5c34220f1640be
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQ09IGFZIQx4eSUgfSB
	hOQk5WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=F/AXD2TOeLqSKJahaSCypAaWwb/TRrrhoBG1lgKEaI59PBJMh9hvmnfF3dhlcqX8nIMN4W0LVIe0a9xFW4pFAEbDZp8EbE3hm5wI58oeIaIE6j0+1VO26ofZk2Dqh53kb1Rdtx+vB9DK0IBaIPNaH+D1nse0r2af3PfuK5BYBCI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=wRrqf1bN80+rcTxNRB4rPoLGxl79KuM+SF//1oHIzCI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_050807_750295_FAA11170 
X-CRM114-Status: UNSURE (   6.22  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


The first 3 patches are for fixing. And the last one is for
improvement.



Shawn Lin (4):
  pmdomain: rockchip: propagate subdomain add errors
  pmdomain: rockchip: fix clock leak on domain probe failure
  pmdomain: rockchip: don't ignore clock lookup errors on attach
  pmdomain: rockchip: drop duplicated errno from supply failure message

 drivers/pmdomain/rockchip/pm-domains.c | 22 ++++++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
