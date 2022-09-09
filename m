Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BCD1ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 19:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fr8DdoL5fZm0PLfZild9AUEeAaMM5PQEpfINrYsfH0E=; b=I+g6ZyaiqrCb2H
	S8WlBlIiX1w/DiHPsbS54AAMgcptr6stbJr6zxYMQj+ZKTusEVCmiYQ6/NI//lLrRel58RfEuRsws
	Jh9hzH3xqOD2kwpRXDmlszk/p/PBngJl836B9csLHWQHNHHndKGE6QcR0AO3gxTgw7jOgd2YZUXEU
	UUL0PHfPh5MtapbFitTS/HO/2/Kx0RpTenMl7OeiOhhhPJTSnLHglk2e5Cdeye1DThamNGGkfjhGp
	ZY9/C+O9MC9O41zGhq72XHzNDFvlM5wKFmyrn8eKgBNc36CTjS2MtjJ892UsLhooDnfi4JKHuJb21
	jCwsNNyHu7lWFhklfZSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk2l-002CPc-TW; Fri, 09 Sep 2022 19:52:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk2k-002CM7-Br; Fri, 09 Sep 2022 19:52:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=GBUegw456x7lyB5+ywCsGuP/n7U5Q8gK4QGnXYy6myY=; b=n76EZXelQKZhdPba2dIceOWlvr
	iPEbFn4uAa2N8kAKwdmxOgig+kxCbXI3f/oSN8XTa0kd0/mNuRwGOXu6vDhIVrmZN/KhucQCbW9ct
	fO0kHLH0V29Y3QnHaenuyyFVf7+4saYEDifodV2dcCbZvC44sXwGsTqyeSz734WGUI6+k1Ac/kALS
	tqBDUJWjZBWdkZ2iUqGbnmxXDMg/XQku89yLczZcxhYFBQ+Ud/z/HQykv1ANR8vqJmuJnEKk1lgAZ
	lf1e2QLsSBA5DF0NyxQb1OzzH6TjYsS1wiycdJ/Ydy8d1BZIIeZIbSdnGeDWETYyUbFnj36T6+zKS
	HBl4+eIQ==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWk2d-00DWYI-TG; Fri, 09 Sep 2022 19:52:02 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 289Joxei025079;
	Sat, 10 Sep 2022 04:51:00 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/6] arm64: dts: rockchip: rk3399-rock-4c-plus: connect vcca_1v8 to APIO5_VDD
Date: Fri,  9 Sep 2022 19:50:01 +0000
Message-Id: <20220909195006.127957-1-naoki@radxa.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_205156_470594_A6468BAD 
X-CRM114-Status: UNSURE (   7.24  )
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

GPIO pins for LEDs on ROCK 4C+ are in APIO5

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index 3f01772c66ad..d7051b5d4904 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -427,6 +427,7 @@ &i2s2 {
 
 &io_domains {
 	bt656-supply = <&vcc_3v0>;
+	audio-supply = <&vcca_1v8>;
 	gpio1830-supply = <&vcc_3v0>;
 	sdmmc-supply = <&vccio_sd>;
 	status = "okay";
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
