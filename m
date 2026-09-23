Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F1EEC9830B
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 07:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0v+rEtHn4uBOSbjoICwGtuKzz0rYLhmkr/smYnL7F70=; b=vQwGWOMZEgU4Gx
	3o7grbKL44uAz/fqlaQShdf89UESe0mmUdIDwA83ZPmKKqR0ip1RgxkxmnDWCkrya08fp6SKpbPfa
	iqypenIKtJtWCn2bo+zg2qIs4l7QHNQrKw4TRyQrhoh9e5X3U1p4CanwKg71fNMzu6FfASwMGi7mw
	fGM2PAo8HYh1Wppr+mMz5dQT+cCJtu9ujaQblk5PXUnm5CZoTXogZT5Hfue7sLAIL7tXtpT3Jp+YK
	pcOc5bnCSxHZPSHu9FQdSYrEFSzUh804fFyq/dVsy4VBRCiXb3gVCP+5xtrr3ZGICSl13lsTyYf4P
	1BhXlBBruqPp6rM5fiKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9H9J-00000007MUZ-1EuQ;
	Wed, 23 Sep 2026 07:12:13 +0000
Received: from mail-m10313119143.xmail.ntesmail.com ([103.131.191.43])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9H9E-00000007MQJ-3YWa;
	Wed, 23 Sep 2026 07:12:10 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4ed74ab6e;
	Wed, 23 Sep 2026 15:12:03 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH 2/4] arm64: dts: rockchip: Remove cap-sd-highspeed on Rock Pi S eMMC
Date: Wed, 23 Sep 2026 15:11:36 +0800
Message-Id: <1790147498-47766-3-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1790147498-47766-1-git-send-email-shawn.lin@rock-chips.com>
References: <1790147498-47766-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0aa0cd1b74fb03a4kunm59cf9035478c9c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQklOTlZPT08aTh0aSk
	gfTE9WFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=QWS0c2YZjh2gXKXjMWLzuWAohzu1KkDlDzdqREthlQhWfqjBRGRZfHE2KGglFEI8TsxKe/Yjw59w2yWSS6JftFrJlFS6WAmUn7e1bZ60Ys3n9MlxaK3zEuXIKnh0TAXeaD0e89CxeiyrnvAI7iufNB2MPMvcSstlp/R5MhXFydw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Ep5BGf091hcttCSVWbef2Ogcioq4Q0PE79D6mQqQPAM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_001209_173662_06CAA0CA 
X-CRM114-Status: UNSURE (   9.43  )
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

cap-sd-highspeed declares SD high-speed support and has no place on
the non-removable eMMC node. Drop it.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index c1e3098..677d129 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -133,7 +133,6 @@
 
 &emmc {
 	cap-mmc-highspeed;
-	cap-sd-highspeed;
 	no-sdio;
 	non-removable;
 	pinctrl-names = "default";
-- 
2.7.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
