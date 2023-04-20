Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3EEB1C77B72
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Apr 2023 10:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HBu2Jqg8YKi3qIYfWuon0WNQDiXM9/CykWcX+6WlmgE=; b=FgUdXI3P9qXcRo
	Q1BXBm7Z2tzvXiaTTRVO0ToOkPUdw3xoCzWH8JVe2WY0mOX/2CSoZfId4XGykNB1K0IkB9gbtaXaT
	2rsctnoByfbxOITVfhThoHZg9vbG9Zhdtu3Uhjxxa+hpOw34QW3q7fbPh22u2V5w7xvf/SYg86U05
	/IxYVKl1XIkPEg7nAAul7GHHx87Sd/g+oOQADpzLVAtm8EkU34UncyxNMNkPuXMOd6KHnqPKtMpjo
	JY46GdOmAciBUjqrPDZsngbJoIP/L5gaHxWYKVkZ95z7AhmhML7pfOOzFre21QbjC1QaYMhP+MYAM
	ROL5ShYB6eIeXtPvYYqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ppRhD-007ibX-0y;
	Thu, 20 Apr 2023 10:39:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppRhB-007iZv-1c
	for linux-rockchip@bombadil.infradead.org;
	Thu, 20 Apr 2023 10:39:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=+RLgUWV68eKie1ZduWAHqnApCe6rM+LG7oNjrhnUT54=; b=bX19FEXVVvfhG1kVs4NUydhaRC
	MFAf/1JRryTS+NJHNinb4aXgAgltbLmqz5xF+hVoj1kt3Xi7eNo+Uq9pDudArrAwOiB5KJZWu4ZyS
	tjCCTOKlKLNnvFvZGQpLmWeV51a5cWbC0zOw7vrw2WqYRUl/fM724mQKSJ2QV40qMYsxhBmOIri35
	st8xJJwAEEAtoIQqTg/HfQ+udi6o0rwliF78exvwNZ8kwQlyY9JKWtS4Zmv9M65shHkg1xc0l7kT7
	JErixEtxyGtJFLqtFI8Bk62vaVrqoMKARe2paP7E7CBv5Pkt3omZycqOPawGcGM4sLbXJTdU74gvQ
	opLpmQNw==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ppRL0-003kdr-0m
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Apr 2023 10:16:33 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 33KAG2uh025097;
	Thu, 20 Apr 2023 19:16:03 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: radxa-e25: fix typo in vcc3v3-pi6c-05-regulator
Date: Thu, 20 Apr 2023 10:15:55 +0000
Message-Id: <20230420101555.2980-1-naoki@radxa.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230420_111626_942709_7AAAB7BA 
X-CRM114-Status: UNSURE (   7.89  )
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

"gpios" should be "gpio"

Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index 63c4bd873188..bde43c4a5bb1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -89,7 +89,7 @@ vcc3v3_pcie30x1: vcc3v3-pcie30x1-regulator {
 	vcc3v3_pi6c_05: vcc3v3-pi6c-05-regulator {
 		compatible = "regulator-fixed";
 		enable-active-high;
-		gpios = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
+		gpio = <&gpio0 RK_PC7 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie_enable_h>;
 		regulator-name = "vcc3v3_pcie";
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
