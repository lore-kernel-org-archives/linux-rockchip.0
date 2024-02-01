Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 930D2C4828D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 12:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QlNI0shyL+HnqH9CeYC8/FzRlfdU4KERFufVfS/dFFo=; b=ZCwluKyKJXBz3K
	Wp6sOG29mxRXBImm+8bwQCEe7XOpK5KanD6vS6AMS8w36Qb5+UPq9/vB+IXfr+fwmEbK+X89x+tRR
	gGjo3fKvJjdZFfUN3PePYEY9KJxgpDD0aPkAX+q+Xopjmp99Ffh1ZAH2+1EXEZuB08i/zsVSexERH
	Z5/jBuWzXuNCfTbpjQfwOnfcc6IwN4ltUi4l7aV7IwQFPngxYgMIGhdl7ROUncacydwmvyE1sQZPM
	ryGxegdZ73r5e54l9rCUoP2KeYP65Z1OARGCkZwrkfDz9R1AWyRIjRrZ5eX5uSXehrqbanuLdXBLP
	aL9wGd6Ryvz6ct78XtBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVVvI-00000007hlu-3nhi;
	Thu, 01 Feb 2024 12:12:04 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVVvE-00000007hib-0X8h;
	Thu, 01 Feb 2024 12:12:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=KvYmw
	ZNEjvb9A83FVmZYX/sRC9FmnLhMGuA9Gda7q+0=; b=GI+6UBnhwGYod5utkzp3j
	DEGfcPT4QO8ODjHm6fzt30kdYkPEAEQ9Az9+9c9WSaJsB+4ahzU9zDig1oxzheKk
	KydstvaX2FVA3k3WGWywQUiSfoHShf5QHrNo8AwJgvPvUrd+oJyOCRQpg62jn4Fm
	MveMgKc9/wrKkJ3aMQa3IA=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g1-0 (Coremail) with SMTP id _____wDX_35birtlKEO5AA--.30092S2;
	Thu, 01 Feb 2024 20:11:12 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>,
	Dragan Simic <dsimic@manjaro.org>
Subject: [PATCH v2 1/4] arm64: dts: rockchip: aliase sdmmc as mmc1 for Cool Pi 4B
Date: Thu,  1 Feb 2024 20:11:03 +0800
Message-Id: <20240201121106.1471301-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wDX_35birtlKEO5AA--.30092S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZryDuFyDJw1kuFyDZFyxZrb_yoWfWFX_ta
	47Wr1kXa93Jry3Z3s8tay5Gay7Gayq9w4fK3yYva95JF1Yqan7Jay5Ja9293WUAF4jkrs3
	JrZxZF1xGw1a9jkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sR3n5GPUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEAZ3XmVOCDl11gABsH
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_041200_659212_6F16F625 
X-CRM114-Status: GOOD (  10.45  )
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

Follow others rk3588 based boards, and u-boot only use mmc0/1
as mmc boot targets, so aliase sdmmc as mmc1.

Fixes: 3f5d336d64d6 ("arm64: dts: rockchip: Add support for rk3588s based board Cool Pi 4B")
Signed-off-by: Andy Yan <andyshrk@163.com>
Reviewed-by: Dragan Simic <dsimic@manjaro.org>

---

(no changes since v1)

 arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
index 3fae40b9ae1b..3b9d21a6f8bf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-coolpi-4b.dts
@@ -20,8 +20,8 @@ / {
 
 	aliases {
 		mmc0 = &sdhci;
-		mmc1 = &sdio;
-		mmc2 = &sdmmc;
+		mmc1 = &sdmmc;
+		mmc2 = &sdio;
 	};
 
 	analog-sound {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
