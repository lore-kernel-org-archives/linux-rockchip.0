Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7E35D13570
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Oct 2024 07:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CJicUSBinpCSNHUY8ftqtcfOILIwNtA9e/IT1gWPlC8=; b=uRt57bMYt6cW2T
	N0RYLhQhv5MZga5ujbAwTr0dOyblay8pdIWPoKdDpKKGdODIBzFr9PmDblLQ/+TZTzxDom6oEPM+E
	c9JTCkgGvjNjmqIcrYj0BA63v6z4LwwPGPdLCrXMBKISyRCRGeRE3bmiM1ccpLOtPbUiY5T3SuV4g
	oqgbtZQd+KxMgjJjmMKw9IhxTvfqnyIlcxyEhYSX00Hm/GXgw5jgUQuODCv97xuvVEQWj2Eqk3LYk
	UAwAWNeO1wMze/k6QhM2/rw+27dL2KsIKFCXd4tluLe4kAmEUloOf6e/UCoNFm7PM/FX5bHHOdBQG
	zeHyzv0DsovfcUBhNdVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5K72-00000009r5B-0J1m;
	Mon, 28 Oct 2024 07:24:28 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5K71-00000009r4d-0agd
	for linux-rockchip@bombadil.infradead.org;
	Mon, 28 Oct 2024 07:24:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=rwaKKpLjVIC4cKaHe0ZB/r8hQ6r7djCn6BPBvApCURo=; b=N6uqYtcW9ftO4qMAevrNbGGx4P
	3WSWv4ejK3aJk1OEppiJrCz15vOh728i1LvZY6Ebgj4s4Td7JUjSDRpKQYPRZuzUrTg/aeVlJQqhs
	hxATkLvokD2pQDupF8FiFOYotxaM4idlO1fZ2SwGrPdYKDDOjp9dcixkpvxTLtzINmg8xNnpK06l0
	5FF238WWHBDs/qGA1l/FcElK1M3jsuWWetHQbXDlygPPRkO41KDjdl/Jn3qrGtvucggWCdqpL+oI9
	7nihWSgUT/Hde9P6E80ANKLxP6vLtSRNWaLS7l1pWpS3f0IMSaVzg1qUOXw7OKingglG/cnag+O40
	X9GQOyKQ==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5K6v-000000085NX-28Bc
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Oct 2024 07:24:25 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 49S7NpTp003922;
	Mon, 28 Oct 2024 16:23:51 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: sort files properly in Makefile
Date: Mon, 28 Oct 2024 07:23:44 +0000
Message-ID: <20241028072344.1514-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_072422_756245_63AFDF58 
X-CRM114-Status: UNSURE (   7.34  )
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

sort target dtb files properly in Makefile for rockchip.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 8e1025cb5d20..6821f7a36761 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -156,6 +156,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-indiedroid-nova.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-khadas-edge2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6s.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6c.dtb
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-odroid-m2.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
